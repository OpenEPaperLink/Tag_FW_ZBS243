#define __packed

#include "syncedproto.h"

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include <stdlib.h>

#include "asmUtil.h"
#include "comms.h"
#include "cpu.h"
#include "drawing.h"
#include "eeprom.h"
#include "i2cdevices.h"
#include "powermgt.h"
#include "printf.h"
#include "../shared/oepl-definitions.h"
#include "../shared/oepl-proto.h"
#include "radio.h"
#include "tagtype.h"
#include "settings.h"
#include "sleep.h"
#include "timer.h"
#include "uicommon.h"
#include "wdt.h"
#include "uart.h"
#include "md5.h"
#include "flash.h"

#define MAX_IMAGE_FLIPS 640  // SCREEN_WIDTH
#include "g5/g5dec.h"

// download-stuff
static __xdata struct blockRequest curBlock;  // used by the block-requester, contains the next request that we'll send
static __xdata uint8_t curDispDataVer[8];
static __xdata struct AvailDataInfo xferDataInfo;  // holds the AvailDataInfo during the transfer
static __xdata bool requestPartialBlock = false;   // if we should ask the AP to get this block from the host or not
#define BLOCK_TRANSFER_ATTEMPTS 5

static uint8_t xferImgSlot = 0xFF;          // holds current transfer slot in progress
uint8_t __xdata curImgSlot = 0xFF;          // currently shown image
static __xdata uint32_t curHighSlotId = 0;  // current highest ID, will be incremented before getting written to a new slot
static __xdata uint8_t nextImgSlot = 0;     // next slot in sequence for writing
static __xdata uint8_t imgSlots = 0;
static __xdata uint32_t eeSize = 0;
#define OTA_UPDATE_SIZE 0x10000

// stuff we need to keep track of related to the network/AP
uint8_t __xdata APmac[8];
uint16_t __xdata APsrcPan;
uint8_t __xdata mSelfMac[8];
static uint8_t __xdata seq = 0;
uint8_t __xdata currentChannel = 0;

// buffer we use to prepare/read packets
static __xdata uint8_t inBuffer[128];
static __xdata uint8_t outBuffer[128];

// determines if the tagAssociated loop in main.c performs a rapid next checkin
__xdata bool fastNextCheckin = false;

// other stuff we shouldn't have to put here...
static __xdata uint32_t markerValid = EEPROM_IMG_VALID;

extern void executeCommand(uint8_t cmd);  // this is defined in main.c

// tools
static __xdata uint8_t getPacketType(const __xdata void *buffer) {
    const __xdata struct MacFcs *fcs = buffer;
    if ((fcs->frameType == 1) && (fcs->destAddrType == 2) && (fcs->srcAddrType == 3) && (fcs->panIdCompressed == 0)) {
        // broadcast frame
        uint8_t __xdata type = ((uint8_t *)buffer)[sizeof(struct MacFrameBcast)];
        return type;
    } else if ((fcs->frameType == 1) && (fcs->destAddrType == 3) && (fcs->srcAddrType == 3) && (fcs->panIdCompressed == 1)) {
        // normal frame
        uint8_t __xdata type = ((uint8_t *)buffer)[sizeof(struct MacFrameNormal)];
        return type;
    }
    return 0;
}
static bool pktIsUnicast(const __xdata void *buffer) {
    const __xdata struct MacFcs *fcs = buffer;
    if ((fcs->frameType == 1) && (fcs->destAddrType == 2) && (fcs->srcAddrType == 3) && (fcs->panIdCompressed == 0)) {
        return false;
    } else if ((fcs->frameType == 1) && (fcs->destAddrType == 3) && (fcs->srcAddrType == 3) && (fcs->panIdCompressed == 1)) {
        // normal frame
        return true;
    }
    // unknown type...
    return false;
}
void dump(const __xdata uint8_t *a, const uint16_t l) __reentrant {
    pr("\n        ");
#define ROWS 16
    for (uint8_t c = 0; c < ROWS; c++) {
        pr(" %02X", c);
    }
    pr("\n--------");
    for (uint8_t c = 0; c < ROWS; c++) {
        pr("---");
    }
    for (uint16_t c = 0; c < l; c++) {
        if ((c % ROWS) == 0) {
            pr("\n0x%04X | ", c);
        }
        pr("%02X ", a[c]);
    }
    pr("\n--------");
    for (uint8_t c = 0; c < ROWS; c++) {
        pr("---");
    }
    pr("\n");
}
bool checkCRC(const __xdata void *p, const uint8_t len) __reentrant {
    uint8_t total = 0;
    for (uint8_t c = 1; c < len; c++) {
        total += ((uint8_t *)p)[c];
    }
    // pr("CRC: rx %d, calc %d\n", ((uint8_t *)p)[0], total);
    return ((uint8_t *)p)[0] == total;
}
static void addCRC(__xdata void *p, const uint8_t len) {
    uint8_t total = 0;
    for (uint8_t c = 1; c < len; c++) {
        total += ((uint8_t *)p)[c];
    }
    ((uint8_t *)p)[0] = total;
}

// radio stuff
static void sendPing() {
    struct MacFrameBcast __xdata *txframe = (struct MacFrameBcast *)(outBuffer + 1);
    memset(outBuffer, 0, sizeof(struct MacFrameBcast) + 2 + 4);
    outBuffer[0] = sizeof(struct MacFrameBcast) + 1 + 2;
    outBuffer[sizeof(struct MacFrameBcast) + 1] = PKT_PING;
    memcpy(txframe->src, mSelfMac, 8);
    txframe->fcs.frameType = 1;
    txframe->fcs.ackReqd = 1;
    txframe->fcs.destAddrType = 2;
    txframe->fcs.srcAddrType = 3;
    txframe->seq = seq++;
    txframe->dstPan = PROTO_PAN_ID;
    txframe->dstAddr = 0xFFFF;
    txframe->srcPan = PROTO_PAN_ID;
    commsTxNoCpy(outBuffer);
}
uint8_t detectAP(const uint8_t channel) __reentrant {
    static uint32_t __xdata t;
    radioRxEnable(false, true);
    radioSetChannel(channel);
    radioRxFlush();
    radioRxEnable(true, true);
    for (uint8_t c = 1; c <= MAXIMUM_PING_ATTEMPTS; c++) {
        sendPing();
        t = timerGet() + (TIMER_TICKS_PER_MS * PING_REPLY_WINDOW);
        while (timerGet() < t) {
            static int8_t __xdata ret;
            ret = commsRxUnencrypted(inBuffer);
            if (ret > 1) {
                //                dump(inBuffer+sizeof(struct MacFrameNormal),32);
                if ((inBuffer[sizeof(struct MacFrameNormal) + 1] == channel) && (getPacketType(inBuffer) == PKT_PONG)) {
                    if (pktIsUnicast(inBuffer)) {
                        static struct MacFrameNormal *__xdata f;
                        f = (struct MacFrameNormal *)inBuffer;
                        memcpy(APmac, f->src, 8);
                        APsrcPan = f->pan;
                        return c;
                    }
                }
            }
        }
    }
    return 0;
}

// data xfer stuff
static void sendShortAvailDataReq() {
    __xdata struct MacFrameBcast *txframe = (struct MacFrameBcast *)(outBuffer + 1);
    outBuffer[0] = sizeof(struct MacFrameBcast) + 1 + 2;
    outBuffer[sizeof(struct MacFrameBcast) + 1] = PKT_AVAIL_DATA_SHORTREQ;
    memcpy(txframe->src, mSelfMac, 8);
    outBuffer[1] = 0x21;
    outBuffer[2] = 0xC8;  // quickly set txframe fcs structure for broadcast packet
    txframe->seq = seq++;
    txframe->dstPan = PROTO_PAN_ID;
    txframe->dstAddr = 0xFFFF;
    txframe->srcPan = PROTO_PAN_ID;
    commsTxNoCpy(outBuffer);
}
static void sendAvailDataReq() {
    __xdata struct MacFrameBcast *txframe = (__xdata struct MacFrameBcast *)(outBuffer + 1);
    memset(outBuffer, 0, sizeof(struct MacFrameBcast) + sizeof(struct AvailDataReq) + 2 + 4);
    __xdata struct AvailDataReq *availreq = (__xdata struct AvailDataReq *)(outBuffer + 2 + sizeof(struct MacFrameBcast));
    outBuffer[0] = sizeof(struct MacFrameBcast) + sizeof(struct AvailDataReq) + 2 + 2;
    outBuffer[sizeof(struct MacFrameBcast) + 1] = PKT_AVAIL_DATA_REQ;
    memcpy(txframe->src, mSelfMac, 8);
    txframe->fcs.frameType = 1;
    txframe->fcs.ackReqd = 1;
    txframe->fcs.destAddrType = 2;
    txframe->fcs.srcAddrType = 3;
    txframe->seq = seq++;
    txframe->dstPan = PROTO_PAN_ID;
    txframe->dstAddr = 0xFFFF;
    txframe->srcPan = PROTO_PAN_ID;
    // TODO: send some (more) meaningful data
    availreq->hwType = HW_TYPE;
    availreq->wakeupReason = wakeUpReason;
    availreq->lastPacketRSSI = mLastRSSI;
    availreq->lastPacketLQI = mLastLqi;
    availreq->temperature = temperature;
    availreq->batteryMv = batteryVoltage;
    availreq->capabilities = capabilities;
    availreq->tagSoftwareVersion = fwVersion;
    availreq->currentChannel = currentChannel;
    availreq->customMode = tagSettings.customMode;
    addCRC(availreq, sizeof(struct AvailDataReq));
    commsTxNoCpy(outBuffer);
}
__xdata struct AvailDataInfo *getAvailDataInfo() {
#ifdef DEBUGPROTO
    pr("PROTO: Full AvailData\n");
#endif
    radioRxEnable(true, true);
    __xdata uint32_t t;
    for (uint8_t c = 0; c < DATA_REQ_MAX_ATTEMPTS; c++) {
        sendAvailDataReq();
        t = timerGet() + (TIMER_TICKS_PER_MS * DATA_REQ_RX_WINDOW_SIZE);
        while (timerGet() < t) {
            __xdata int8_t ret = commsRxUnencrypted(inBuffer);
            if (ret > 1) {
                if (getPacketType(inBuffer) == PKT_AVAIL_DATA_INFO) {
                    if (checkCRC(inBuffer + sizeof(struct MacFrameNormal) + 1, sizeof(struct AvailDataInfo))) {
                        __xdata struct MacFrameNormal *f = (struct MacFrameNormal *)inBuffer;
                        memcpy(APmac, f->src, 8);
                        APsrcPan = f->pan;
                        dataReqLastAttempt = c;
                        return (struct AvailDataInfo *)(inBuffer + sizeof(struct MacFrameNormal) + 1);
                    }
                }
            }
        }
    }
    dataReqLastAttempt = DATA_REQ_MAX_ATTEMPTS;
    return NULL;
}
__xdata struct AvailDataInfo *getShortAvailDataInfo() {
#ifdef DEBUGPROTO
    pr("PROTO: Short AvailData\n");
#endif
    radioRxEnable(true, true);
    __xdata uint32_t t;
    for (uint8_t c = 0; c < DATA_REQ_MAX_ATTEMPTS; c++) {
        sendShortAvailDataReq();
        // sendAvailDataReq();
        t = timerGet() + (TIMER_TICKS_PER_MS * DATA_REQ_RX_WINDOW_SIZE);
        while (timerGet() < t) {
            int8_t __xdata ret = commsRxUnencrypted(inBuffer);
            if (ret > 1) {
                if (getPacketType(inBuffer) == PKT_AVAIL_DATA_INFO) {
                    if (checkCRC(inBuffer + sizeof(struct MacFrameNormal) + 1, sizeof(struct AvailDataInfo))) {
                        __xdata struct MacFrameNormal *f = (__xdata struct MacFrameNormal *)inBuffer;
                        memcpy(APmac, f->src, 8);
                        APsrcPan = f->pan;
                        dataReqLastAttempt = c;
                        return (struct AvailDataInfo *)(inBuffer + sizeof(struct MacFrameNormal) + 1);
                    }
                }
            }
        }
    }
    dataReqLastAttempt = DATA_REQ_MAX_ATTEMPTS;
    return NULL;
}

#ifdef ENABLE_RETURN_DATA
static void sendTagReturnDataPacket(const uint8_t *data, uint8_t len, uint8_t type) {
    struct MacFrameBcast __xdata *txframe = (struct MacFrameBcast *)(outBuffer + 1);
    memset(outBuffer, 0, sizeof(struct MacFrameBcast) + sizeof(struct AvailDataReq) + 2 + 4);
    struct tagReturnData *__xdata trd = (struct tagReturnData *)(outBuffer + 2 + sizeof(struct MacFrameBcast));
    outBuffer[0] = sizeof(struct MacFrameBcast) + 11 + len + 1 + 2;
    outBuffer[sizeof(struct MacFrameBcast) + 1] = PKT_TAG_RETURN_DATA;
    memcpy(txframe->src, mSelfMac, 8);
    txframe->fcs.frameType = 1;
    txframe->fcs.ackReqd = 1;
    txframe->fcs.destAddrType = 2;
    txframe->fcs.srcAddrType = 3;
    txframe->seq = seq++;
    txframe->dstPan = PROTO_PAN_ID;
    txframe->dstAddr = 0xFFFF;
    txframe->srcPan = PROTO_PAN_ID;
    memcpy(trd->data, data, len);
    trd->dataType = type;
    memcpy(&trd->dataVer, mSelfMac, 8);
    memcpy(&trd->dataVer, data, 4);
    addCRC(trd, 11 + len);
    commsTxNoCpy(outBuffer);
}

bool sendTagReturnData(uint8_t __xdata *data, uint8_t len, uint8_t type) {
    radioRxEnable(true, true);
    uint32_t __xdata t;
    for (uint8_t c = 0; c < MAX_RETURN_DATA_ATTEMPTS; c++) {
        sendTagReturnDataPacket(data, len, type);
        t = timerGet() + (TIMER_TICKS_PER_MS * DATA_REQ_RX_WINDOW_SIZE);
        while (timerGet() < t) {
            int8_t __xdata ret = commsRxUnencrypted(inBuffer);
            if (ret > 1) {
                if ((getPacketType(inBuffer) == PKT_TAG_RETURN_DATA_ACK) && (pktIsUnicast(inBuffer))) {
                    return true;
                }
            }
        }
    }
    return false;
}
#endif

static void processBlockPart(const __xdata struct blockPart *bp, __xdata uint8_t *blockbuffer) {
    uint16_t start = bp->blockPart * BLOCK_PART_DATA_SIZE;
    uint16_t size = BLOCK_PART_DATA_SIZE;
    // validate if it's okay to copy data
    if (bp->blockId != curBlock.blockId) {
        return;
    }
    if (start >= (BLOCK_XFER_BUFFER_SIZE - 1)) return;
    if (bp->blockPart > BLOCK_MAX_PARTS) return;
    if ((start + size) > BLOCK_XFER_BUFFER_SIZE) {
        size = BLOCK_XFER_BUFFER_SIZE - start;
    }

    if (checkCRC(bp, sizeof(struct blockPart) + BLOCK_PART_DATA_SIZE)) {
        //  copy block data to buffer
        xMemCopy((void *)(blockbuffer + start), (const void *)bp->data, size);
        // we don't need this block anymore, set bit to 0 so we don't request it again
        curBlock.requestedParts[bp->blockPart / 8] &= ~(1 << (bp->blockPart % 8));
    }
}
static void blockRxLoop(const uint32_t timeout, __xdata uint8_t *blockbuffer) {
    uint32_t t;
    radioRxEnable(true, true);
    t = timerGet() + (TIMER_TICKS_PER_MS * (timeout + 20));
    bool blockComplete = false;
    do {
        int8_t ret = commsRxUnencrypted(inBuffer);
        if (ret > 1) {
            if (getPacketType(inBuffer) == PKT_BLOCK_PART) {
                __xdata struct blockPart *bp = (struct blockPart *)(inBuffer + sizeof(struct MacFrameNormal) + 1);
                processBlockPart(bp, blockbuffer);
            }
        } else {
            blockComplete = true;
            for (uint8_t c1 = 0; c1 < BLOCK_MAX_PARTS; c1++) {
                if (curBlock.requestedParts[c1 / 8] & (1 << (c1 % 8))) {
                    blockComplete = false;
                    break;
                }
            }
        }
    } while ((timerGet() < t) && (blockComplete == false));
    radioRxEnable(false, true);
    radioRxFlush();
}
static __xdata struct blockRequestAck *continueToRX() {
    __xdata struct blockRequestAck *ack = (struct blockRequestAck *)(inBuffer + sizeof(struct MacFrameNormal) + 1);
    ack->pleaseWaitMs = 0;
    return ack;
}
static __xdata void sendBlockRequest() {
    memset(outBuffer, 0, sizeof(struct MacFrameNormal) + sizeof(struct blockRequest) + 2 + 2);
    __xdata struct MacFrameNormal *f = (struct MacFrameNormal *)(outBuffer + 1);
    __xdata struct blockRequest *blockreq = (struct blockRequest *)(outBuffer + 2 + sizeof(struct MacFrameNormal));
    outBuffer[0] = sizeof(struct MacFrameNormal) + sizeof(struct blockRequest) + 2 + 2;
    if (requestPartialBlock) {
        ;
        outBuffer[sizeof(struct MacFrameNormal) + 1] = PKT_BLOCK_PARTIAL_REQUEST;
    } else {
        outBuffer[sizeof(struct MacFrameNormal) + 1] = PKT_BLOCK_REQUEST;
    }
    memcpy(f->src, mSelfMac, 8);
    memcpy(f->dst, APmac, 8);
    f->fcs.frameType = 1;
    f->fcs.secure = 0;
    f->fcs.framePending = 0;
    f->fcs.ackReqd = 0;
    f->fcs.panIdCompressed = 1;
    f->fcs.destAddrType = 3;
    f->fcs.frameVer = 0;
    f->fcs.srcAddrType = 3;
    f->seq = seq++;
    f->pan = APsrcPan;
    memcpy(blockreq, &curBlock, sizeof(struct blockRequest));
    addCRC(blockreq, sizeof(struct blockRequest));
    commsTxNoCpy(outBuffer);
}
static __xdata struct blockRequestAck *performBlockRequest() __reentrant {
    static __xdata uint32_t t;
    radioRxEnable(true, true);
    radioRxFlush();
    for (uint8_t c = 0; c < 30; c++) {
        sendBlockRequest();
        t = timerGet() + (TIMER_TICKS_PER_MS * (7UL + c / 10));
        do {
            static __xdata int8_t ret;
            ret = commsRxUnencrypted(inBuffer);
            if (ret > 1) {
                switch (getPacketType(inBuffer)) {
                    case PKT_BLOCK_REQUEST_ACK:
                        if (checkCRC((inBuffer + sizeof(struct MacFrameNormal) + 1), sizeof(struct blockRequestAck)))
                            return (struct blockRequestAck *)(inBuffer + sizeof(struct MacFrameNormal) + 1);
                        break;
                    case PKT_BLOCK_PART:
                        // block already started while we were waiting for a get block reply
                        // pr("!");
                        // processBlockPart((struct blockPart *)(inBuffer + sizeof(struct MacFrameNormal) + 1));
                        return continueToRX();
                        break;
                    case PKT_CANCEL_XFER:
                        return NULL;
                    default:
#ifdef DEBUGPROTO
                        pr("PROTO: pkt w/type %02X\n", getPacketType(inBuffer));
#endif
                        break;
                }
            }

        } while (timerGet() < t);
    }
    return continueToRX();
    // return NULL;
}
static void sendXferCompletePacket() {
    memset(outBuffer, 0, sizeof(struct MacFrameNormal) + 2 + 4);
    __xdata struct MacFrameNormal *f = (struct MacFrameNormal *)(outBuffer + 1);
    outBuffer[0] = sizeof(struct MacFrameNormal) + 2 + 2;
    outBuffer[sizeof(struct MacFrameNormal) + 1] = PKT_XFER_COMPLETE;
    memcpy(f->src, mSelfMac, 8);
    memcpy(f->dst, APmac, 8);
    f->fcs.frameType = 1;
    f->fcs.secure = 0;
    f->fcs.framePending = 0;
    f->fcs.ackReqd = 0;
    f->fcs.panIdCompressed = 1;
    f->fcs.destAddrType = 3;
    f->fcs.frameVer = 0;
    f->fcs.srcAddrType = 3;
    f->pan = APsrcPan;
    f->seq = seq++;
    commsTxNoCpy(outBuffer);
}
static void sendXferComplete() __reentrant {
    radioRxEnable(true, true);

    for (uint8_t c = 0; c < 16; c++) {
        sendXferCompletePacket();
        int32_t start = timerGet();
        while ((timerGet() - start) < (TIMER_TICKS_PER_MS * 6UL)) {
            int8_t ret = commsRxUnencrypted(inBuffer);
            if (ret > 1) {
                if (getPacketType(inBuffer) == PKT_XFER_COMPLETE_ACK) {
#ifdef DEBUGPROTO
                    pr("PROTO: XFC ACK\n");
#endif
                    return;
                }
            }
        }
    }
#ifdef DEBUGPROTO
    pr("PROTO: XFC NACK!\n");
#endif
    return;
}
bool validateBlockData(__xdata uint8_t *blockbuffer) {
    __xdata struct blockData *bd = (struct blockData *)blockbuffer;
    // pr("expected len = %04X, checksum=%04X\n", bd->size, bd->checksum);
    uint16_t t = 0;
    for (uint16_t c = 0; c < bd->size; c++) {
        t += bd->data[c];
    }
    return bd->checksum == t;
}

// EEprom related stuff
static uint32_t getAddressForSlot(const uint8_t s) {
    return EEPROM_IMG_START + (EEPROM_IMG_EACH * s);
}
static void getNumSlots() {
    eeSize = eepromGetSize();
    uint16_t nSlots = mathPrvDiv32x16(eeSize - EEPROM_IMG_START, EEPROM_IMG_EACH >> 8) >> 8;
    if (eeSize < EEPROM_IMG_START || !nSlots) {
#ifdef DEBUGEEPROM
        pr("EEPROM: eeprom is too small\n");
#endif
        while (1);
    } else if (nSlots >> 8) {
#ifdef DEBUGEEPROM
        pr("EEPROM: eeprom is too big, some will be unused\n");
#endif
        imgSlots = 254;
    } else
        imgSlots = nSlots;
#ifdef DEBUGPROTO
    pr("PROTO: %d image slots total\n", imgSlots);
#endif
}
static uint8_t findSlotVer(const __xdata uint8_t *ver) {
#ifdef DEBUGBLOCKS
    return 0xFF;
#endif
    // return 0xFF;  // remove me! This forces the tag to re-download each and every upload without checking if it's already in the eeprom somewhere
    for (uint8_t c = 0; c < imgSlots; c++) {
        struct EepromImageHeader __xdata eih;
        eepromRead(getAddressForSlot(c), &eih, sizeof(struct EepromImageHeader));
        if (xMemEqual4(&eih.validMarker, &markerValid)) {
            if (xMemEqual(&eih.version, (void *)ver, 8)) {
                return c;
            }
        }
    }
    return 0xFF;
}

// making this reentrant saves one byte of idata...
__xdata uint8_t findSlotDataTypeArg(uint8_t arg) {
    arg &= (0xF8);  // unmatch with the 'preload' bit and LUT bits
    for (uint8_t c = 0; c < imgSlots; c++) {
        struct EepromImageHeader __xdata eih;
        eepromRead(getAddressForSlot(c), &eih, sizeof(struct EepromImageHeader));
        if (xMemEqual4(&eih.validMarker, &markerValid)) {
            if ((eih.argument & 0xF8) == arg) {
                return c;
            }
        }
    }
    return 0xFF;
}
uint8_t getEepromImageDataArgument(const uint8_t slot) {
    struct EepromImageHeader __xdata eih;
    eepromRead(getAddressForSlot(slot), &eih, sizeof(struct EepromImageHeader));
    return eih.argument;
}
__xdata uint8_t findNextSlideshowImage(uint8_t start) {
    struct EepromImageHeader __xdata eih;
    uint8_t c = start;
    while (1) {
        c++;
        if (c > imgSlots) c = 0;
        if (c == start) return c;
        eepromRead(getAddressForSlot(c), &eih, sizeof(struct EepromImageHeader));
        if (xMemEqual4(&eih.validMarker, &markerValid)) {
            if ((eih.argument & 0xF8) == (CUSTOM_IMAGE_SLIDESHOW << 3)) {
                return c;
            }
        }
    }
}

static void eraseUpdateBlock() {
    eepromErase(eeSize - OTA_UPDATE_SIZE, OTA_UPDATE_SIZE / EEPROM_ERZ_SECTOR_SZ);
}
static void eraseImageBlock(const uint8_t c) {
    eepromErase(getAddressForSlot(c), EEPROM_IMG_EACH / EEPROM_ERZ_SECTOR_SZ);
}
static void saveUpdateBlockData(uint8_t blockId, __xdata uint8_t *blockbuffer) __reentrant {
    eepromWrite(eeSize - OTA_UPDATE_SIZE + (blockId * BLOCK_DATA_SIZE), blockbuffer + sizeof(struct blockData), BLOCK_DATA_SIZE);
}
static void saveImgBlockData(const uint8_t imgSlot, const uint8_t blockId, __xdata uint8_t *blockbuffer) __reentrant {
    uint16_t length = EEPROM_IMG_EACH - (sizeof(struct EepromImageHeader) + (blockId * BLOCK_DATA_SIZE));
    if (length > 4096) length = 4096;

    eepromWrite(getAddressForSlot(imgSlot) + sizeof(struct EepromImageHeader) + (blockId * BLOCK_DATA_SIZE), blockbuffer + sizeof(struct blockData), length);
}
void eraseImageBlocks() {
    for (uint8_t c = 0; c < imgSlots; c++) {
        eraseImageBlock(c);
    }
}
void drawImageFromEeprom(const uint8_t imgSlot, uint8_t lut) __reentrant {
    drawImageAtAddress(getAddressForSlot(imgSlot), lut);
}

static uint32_t getHighSlotId() {
    uint32_t temp = 0;
    for (__xdata uint8_t c = 0; c < imgSlots; c++) {
        struct EepromImageHeader __xdata eih;
        eepromRead(getAddressForSlot(c), &eih, sizeof(struct EepromImageHeader));
        if (xMemEqual4(&eih.validMarker, &markerValid)) {
            if (temp < eih.id) {
                temp = eih.id;
                nextImgSlot = c;
            }
        }
    }
#ifdef DEBUGPROTO
    pr("PROTO: found high id=%lu in slot %d\n", temp, nextImgSlot);
#endif
    return temp;
}

static uint8_t findNextSlot(const __xdata struct AvailDataInfo *avail) {
    // new transfer
    powerUp(INIT_EEPROM);

    // go to the next image slot
    uint8_t startingSlot = nextImgSlot;

    // if we encounter a special image type, start looking from slot 0, to prevent the image being overwritten when we do an OTA update
    if (avail->dataTypeArgument & 0xFC != 0x00) {
        startingSlot = 0;
    }

    while (1) {
        nextImgSlot++;
        if (nextImgSlot >= imgSlots) nextImgSlot = 0;
        if (nextImgSlot == startingSlot) {
            powerDown(INIT_EEPROM);
#ifdef DEBUGPROTO
            pr("PROTO: No slots available. Too many images in the slideshow?\n");
#endif
            return 0;
        }
        struct EepromImageHeader __xdata eih;
        eepromRead(getAddressForSlot(nextImgSlot), &eih, sizeof(struct EepromImageHeader));
        // check if the marker is indeed valid
        if (xMemEqual4(&eih.validMarker, &markerValid)) {
            struct imageDataTypeArgStruct *eepromDataArgument = (struct imageDataTypeArgStruct *)&(eih.argument);
            // normal type, we can overwrite this
            if (eepromDataArgument->specialType == 0x00) break;
        } else {
            // bullshit marker, so safe to overwrite
            break;
        }
    }

    uint8_t __xdata attempt = 5;
    while (attempt--) {
        if (eepromErase(getAddressForSlot(nextImgSlot), EEPROM_IMG_EACH / EEPROM_ERZ_SECTOR_SZ)) goto eraseSuccess;
    }
eepromFail:
    powerDown(INIT_RADIO);
    powerUp(INIT_EPD);
    showNoEEPROM();
    powerDown(INIT_EEPROM | INIT_EPD);
    doSleep(-1);
    wdtDeviceReset();
eraseSuccess:
    powerDown(INIT_EEPROM);
    return nextImgSlot;
}

static uint8_t decompressImageG5(const __xdata struct AvailDataInfo *avail, uint8_t compressedImgSlot) __reentrant {
    // find next slot to decompress image into
    uint8_t decompressedSlot = findNextSlot(avail);
#ifdef DEBUGG5DEC
    pr("G5: reading data from slot %d\n", compressedImgSlot);
#endif
    powerUp(INIT_EEPROM);

#define READBUFFERSIZE 1024UL
#define MIN_REMAINING_READBUFFER 256UL
    uint32_t readCurOffset = getAddressForSlot(compressedImgSlot) + sizeof(struct EepromImageHeader);

    __xdata uint8_t *readbuffer = malloc(READBUFFERSIZE);
    __xdata uint8_t *writebuffer = malloc((SCREEN_WIDTH / 8) + 1);  // hmm.

    // start reading the first block
    eepromRead(readCurOffset, readbuffer, READBUFFERSIZE);

    uint8_t imageHeaderSize = readbuffer[0];
    uint8_t imageBpp = readbuffer[5];
    if (imageBpp > 0x20) imageBpp -= 0x20;

    uint16_t max_y = SCREEN_HEIGHT;
    if (imageBpp == 2) max_y *= 2;  // we use double the height for the second color layer

    __xdata G5DECIMAGE *g5dec = (__xdata G5DECIMAGE *)malloc(sizeof(G5DECIMAGE));  // max about 2600 bytes
    if (!g5dec) {
#ifdef DEBUGG5DEC
        pr("G5: Failed to allocate g5 struct\n");
#endif
    }

    int rc = g5_decode_init(g5dec, SCREEN_WIDTH, max_y, readbuffer + imageHeaderSize, READBUFFERSIZE);  //(int)avail->dataSize);
    if (rc != G5_SUCCESS) {
#ifdef DEBUGG5DEC
        pr("G5: Failed to init: Error %d\n", rc);
#endif
    }

    for (uint16_t y = 0; y < max_y; y++) {
        rc = g5_decode_line(g5dec, writebuffer);
        // check for highwater, load a new block if we're near the end of the buffer
        if (((uint32_t)g5dec->pBuf) > ((uint32_t)readbuffer + (READBUFFERSIZE - MIN_REMAINING_READBUFFER))) {
#ifdef DEBUGG5DEC
            pr("G5: Loading new compressed block\n");
#endif
            uint16_t curBlockReadOffset = g5dec->pBuf - readbuffer;
            readCurOffset += curBlockReadOffset;
            g5dec->pBuf = readbuffer;
            // load new block

            eepromRead(readCurOffset, readbuffer, READBUFFERSIZE);
            wdt10s();
        }
        eepromWrite(getAddressForSlot(decompressedSlot) + sizeof(struct EepromImageHeader) + ((SCREEN_WIDTH / 8) * y), writebuffer, SCREEN_WIDTH / 8);
        if ((rc != G5_SUCCESS) && (rc != G5_DECODE_COMPLETE)) {
#ifdef DEBUGG5DEC
            pr("G5: Error at line y=%d\n", y);
#endif
            break;
        }
    }
#ifdef DEBUGG5DEC
    pr("G5: Last block status code %d\n", rc);
#endif
    free(readbuffer);
    free(writebuffer);
    free(g5dec);

    // mark slot with compressed dataver, corrected datatype
    __xdata struct EepromImageHeader *eih = (__xdata struct EepromImageHeader *)malloc(sizeof(struct EepromImageHeader));
    xMemCopy8(&eih->version, &avail->dataVer);
    eih->validMarker = EEPROM_IMG_VALID;
    eih->id = ++curHighSlotId;
    eih->size = avail->dataSize;  // THIS SHOULD BE UPDATED TO THE DECOMPRESSED SIZE! (but we don't really use this stuff anyway)
    if (imageBpp == 1) {
        eih->dataType = DATATYPE_IMG_RAW_1BPP;
    } else {
        eih->dataType = DATATYPE_IMG_RAW_2BPP;
    }
    eih->argument = avail->dataTypeArgument;
    eepromWrite(getAddressForSlot(decompressedSlot), eih, sizeof(struct EepromImageHeader));
    free(eih);

    // invalidate slot with compressed data
    __xdata uint8_t *temp = malloc(16);
    memset(temp, 0x00, 16);
    eepromWrite(getAddressForSlot(compressedImgSlot), temp, 16);
    free(temp);

    return decompressedSlot;
}

// data transfer stuff
__xdata static uint8_t partsThisBlock = 0;
__xdata static uint8_t blockAttempts = 0;  // these CAN be local to the function, but for some reason, they won't survive sleep?
                                           // they get overwritten with  7F 32 44 20 00 00 00 00 11, I don't know why.

__xdata uint8_t *getDataBlock(const uint16_t blockSize) {
    blockAttempts = BLOCK_TRANSFER_ATTEMPTS;
    if (blockSize == BLOCK_DATA_SIZE) {
        partsThisBlock = BLOCK_MAX_PARTS;
        memset(curBlock.requestedParts, 0xFF, BLOCK_REQ_PARTS_BYTES);
    } else {
        partsThisBlock = (sizeof(struct blockData) + blockSize) / BLOCK_PART_DATA_SIZE;
        if ((sizeof(struct blockData) + blockSize) % BLOCK_PART_DATA_SIZE) partsThisBlock++;
        memset(curBlock.requestedParts, 0x00, BLOCK_REQ_PARTS_BYTES);
        for (uint8_t c = 0; c < partsThisBlock; c++) {
            curBlock.requestedParts[c / 8] |= (1 << (c % 8));
        }
    }

    requestPartialBlock = false;  // this forces the AP to request the block data from the host
    __xdata uint8_t *blockbuffer = NULL;

    while (blockAttempts--) {
#ifndef DEBUGBLOCKS
        pr("REQ %d ", curBlock.blockId);
#else
        pr("REQ %d[", curBlock.blockId);
        for (uint8_t c = 0; c < BLOCK_MAX_PARTS; c++) {
            if ((c != 0) && (c % 8 == 0)) pr("][");
            if (curBlock.requestedParts[c / 8] & (1 << (c % 8))) {
                pr("R");
            } else {
                pr("_");
            }
        }
        pr("]\n");
#endif
        powerUp(INIT_RADIO);
        struct blockRequestAck *__xdata ack = performBlockRequest();

        if (ack == NULL) {
#ifdef DEBUGPROTO
            pr("PROTO: Cancelled request\n");
#endif
            if (blockbuffer) free(blockbuffer);
            return NULL;
        }

        if (!blockbuffer) {
            blockbuffer = malloc(BLOCK_XFER_BUFFER_SIZE + 16);
            if (!blockbuffer) {
                pr("failed to malloc blockbuffer. This sucks.\n");
                return NULL;
            }
        }

        if (ack->pleaseWaitMs) {  // SLEEP - until the AP is ready with the data
            if (ack->pleaseWaitMs < 35) {
                timerDelay(ack->pleaseWaitMs * TIMER_TICKS_PER_MS);
            } else {
                doSleep(ack->pleaseWaitMs - 15);
                powerUp(INIT_UART | INIT_RADIO);
                radioRxEnable(true, true);
            }
        } else {
            // immediately start with the reception of the block data
        }
        blockRxLoop(295, blockbuffer);  // BLOCK RX LOOP - receive a block, until the timeout has passed
        powerDown(INIT_RADIO);

#ifdef DEBUGBLOCKS
        pr("RX  %d[", curBlock.blockId);
        for (uint8_t c = 0; c < BLOCK_MAX_PARTS; c++) {
            if ((c != 0) && (c % 8 == 0)) pr("][");
            if (curBlock.requestedParts[c / 8] & (1 << (c % 8))) {
                pr(".");
            } else {
                pr("R");
            }
        }
        pr("]\n");
#endif
        // check if we got all the parts we needed, e.g: has the block been completed?
        bool blockComplete = true;
        for (uint8_t c1 = 0; c1 < partsThisBlock; c1++) {
            if (curBlock.requestedParts[c1 / 8] & (1 << (c1 % 8))) blockComplete = false;
        }

        if (blockComplete) {
#ifndef DEBUGBLOCKS
            pr("- COMPLETE\n");
#endif
            if (validateBlockData(blockbuffer)) {
                // block download complete, validated
                return blockbuffer;
            } else {
                for (uint8_t c = 0; c < partsThisBlock; c++) {
                    curBlock.requestedParts[c / 8] |= (1 << (c % 8));
                }
                requestPartialBlock = false;
#ifdef DEBUGPROTO
                pr("PROTO: blk failed validation!\n");
#endif
            }
        } else {
#ifndef DEBUGBLOCKS
            pr("- INCOMPLETE\n");
#endif
            // block incomplete, re-request a partial block
            requestPartialBlock = true;
        }
    }
#ifdef DEBUGPROTO
    pr("PROTO: failed getting block\n");
#endif
    if (blockbuffer) free(blockbuffer);
    return NULL;
}

__xdata uint16_t dataRequestSize = 0;
__xdata uint16_t otaSize = 0;
static bool downloadFWUpdate(const __xdata struct AvailDataInfo *avail) {
    // check if we already started the transfer of this information & haven't completed it
    if (xMemEqual((const void *__xdata) & avail->dataVer, (const void *__xdata) & xferDataInfo.dataVer, 8) && xferDataInfo.dataSize) {
        // looks like we did. We'll carry on where we left off.
    } else {
#if defined(DEBUGOTA)
        pr("OTA: Start update!\n");
#endif
        // start, or restart the transfer from 0. Copy data from the AvailDataInfo struct, and the struct intself. This forces a new transfer
        curBlock.blockId = 0;
        xMemCopy8(&(curBlock.ver), &(avail->dataVer));
        curBlock.type = avail->dataType;
        xMemCopyShort(&xferDataInfo, (void *)avail, sizeof(struct AvailDataInfo));
        eraseUpdateBlock();
        otaSize = xferDataInfo.dataSize;
    }

    while (xferDataInfo.dataSize) {
        wdt10s();
        if (xferDataInfo.dataSize > BLOCK_DATA_SIZE) {
            // more than one block remaining
            dataRequestSize = BLOCK_DATA_SIZE;
        } else {
            // only one block remains
            dataRequestSize = xferDataInfo.dataSize;
        }
        __xdata uint8_t *blockbuffer = getDataBlock(dataRequestSize);
        if (blockbuffer) {
            // succesfully downloaded datablock, save to eeprom
            powerUp(INIT_EEPROM);
            saveUpdateBlockData(curBlock.blockId, blockbuffer);
            free(blockbuffer);
            powerDown(INIT_EEPROM);
            curBlock.blockId++;
            xferDataInfo.dataSize -= dataRequestSize;
        } else {
            // failed to get the block we wanted, we'll stop for now, maybe resume later
            return false;
        }
    }
    wdt60s();
    powerUp(INIT_EEPROM);
    if (!validateMD5(eeSize - OTA_UPDATE_SIZE, otaSize)) {
#if defined(DEBUGOTA)
        pr("OTA: MD5 verification failed!\n");
#endif
        // if not valid, restart transfer from the beginning
        curBlock.blockId = 0;
        powerDown(INIT_EEPROM);
        return false;
    }
#if defined(DEBUGOTA)
    pr("OTA: MD5 pass!\n");
#endif

    // no more data, download complete
    return true;
}

__xdata uint16_t imageSize = 0;
static bool downloadImageDataToEEPROM(const __xdata struct AvailDataInfo *avail) {
    //  check if we already started the transfer of this information & haven't completed it
    if (xMemEqual((const __xdata void *)&avail->dataVer, (const __xdata void *)&xferDataInfo.dataVer, 8) &&
        (xferDataInfo.dataTypeArgument == avail->dataTypeArgument) &&
        xferDataInfo.dataSize) {
        // looks like we did. We'll carry on where we left off.
#ifdef DEBUGPROTO
        pr("PROTO: restarting image download\n");
#endif
    } else {
        xferImgSlot = findNextSlot(avail);
#ifdef DEBUGPROTO
        pr("PROTO: new download, writing to slot %d\n", xferImgSlot);
#endif
        // start, or restart the transfer. Copy data from the AvailDataInfo struct, and the struct intself. This forces a new transfer
        curBlock.blockId = 0;
        xMemCopy8(&(curBlock.ver), &(avail->dataVer));
        curBlock.type = avail->dataType;
        xMemCopyShort(&xferDataInfo, (void *)avail, sizeof(struct AvailDataInfo));
        imageSize = xferDataInfo.dataSize;
    }

    while (xferDataInfo.dataSize) {
        wdt10s();
        if (xferDataInfo.dataSize > BLOCK_DATA_SIZE) {
            // more than one block remaining
            dataRequestSize = BLOCK_DATA_SIZE;
        } else {
            // only one block remains
            dataRequestSize = xferDataInfo.dataSize;
        }
        __xdata uint8_t *blockbuffer = getDataBlock(dataRequestSize);
        if (blockbuffer) {
            // succesfully downloaded datablock, save to eeprom
            powerUp(INIT_EEPROM);
            timerDelay(TIMER_TICKS_PER_MS * 100);
#ifdef DEBUGBLOCKS
            pr("BLOCKS: Saving block %d to slot %d\n", curBlock.blockId, xferImgSlot);
#endif
            saveImgBlockData(xferImgSlot, curBlock.blockId, blockbuffer);
            free(blockbuffer);
            timerDelay(TIMER_TICKS_PER_MS * 100);
            powerDown(INIT_EEPROM);
            curBlock.blockId++;
            xferDataInfo.dataSize -= dataRequestSize;
        } else {
            // failed to get the block we wanted, we'll stop for now, probably resume later
            return false;
        }
    }
    // no more data, download complete

    // validate MD5
    powerUp(INIT_EEPROM);
#ifdef VALIDATE_IMAGE_MD5
    if (!validateMD5(getAddressForSlot(xferImgSlot) + sizeof(struct EepromImageHeader), imageSize)) {
        // if not valid, restart transfer from the beginning
        curBlock.blockId = 0;
        powerDown(INIT_EEPROM);
        return false;
    }
#endif
    // borrow the blockbuffer temporarily
    struct EepromImageHeader __xdata eih;
    xMemCopy8(&eih.version, &xferDataInfo.dataVer);
    eih.validMarker = EEPROM_IMG_VALID;
    eih.id = ++curHighSlotId;
    eih.size = imageSize;
    eih.dataType = xferDataInfo.dataType;
    eih.argument = xferDataInfo.dataTypeArgument;

#ifdef DEBUGBLOCKS
    pr("BLOCKS: Now writing datatype 0x%02X to slot %d\n", xferDataInfo.dataType, xferImgSlot);
#endif
    eepromWrite(getAddressForSlot(xferImgSlot), &eih, sizeof(struct EepromImageHeader));
    powerDown(INIT_EEPROM);

    // check if we need to decompress a G5-compressed image
    if (xferDataInfo.dataType == DATATYPE_IMG_G5) {
        xferImgSlot = decompressImageG5(&xferDataInfo, xferImgSlot);
    }

    return true;
}

inline bool processImageDataAvail(__xdata struct AvailDataInfo *avail) {
    struct imageDataTypeArgStruct arg;
    *((uint8_t *)&arg) = avail->dataTypeArgument;
    if (arg.preloadImage) {
#ifdef DEBUGPROTO
        pr("PROTO: Preloading image with type 0x%02X from arg 0x%02X\n", arg.specialType, avail->dataTypeArgument);
#endif
        powerUp(INIT_EEPROM);
        switch (arg.specialType) {
            // check if a slot with this argument is already set; if so, erase. Only one of each arg type should exist
            default: {
                uint8_t slot = findSlotDataTypeArg(avail->dataTypeArgument);
                if (slot != 0xFF) {
                    eepromErase(getAddressForSlot(slot), EEPROM_IMG_EACH / EEPROM_ERZ_SECTOR_SZ);
                }
            } break;
            // regular image preload, there can be multiple of this type in the EEPROM
            case CUSTOM_IMAGE_NOCUSTOM: {
                // check if a version of this already exists
                uint8_t slot = findSlotVer(&(avail->dataVer));
                if (slot != 0xFF) {
                    powerUp(INIT_RADIO);
                    sendXferComplete();
                    powerDown(INIT_RADIO);
                    return true;
                }
            } break;
            case CUSTOM_IMAGE_SLIDESHOW:
                break;
        }
        powerDown(INIT_EEPROM);
#ifdef DEBUGPROTO
        pr("PROTO: downloading preload image...\n");
#endif
        if (downloadImageDataToEEPROM(avail)) {
            // sets xferImgSlot to the right slot
#ifdef DEBUGPROTO
            pr("PROTO: preload complete!\n");
#endif
            powerUp(INIT_RADIO);
            sendXferComplete();
            powerDown(INIT_RADIO);
            return true;
        } else {
            return false;
        }

    } else {
        // check if we're currently displaying this data payload
        if (xMemEqual((const __xdata void *)&avail->dataVer, (const __xdata void *)curDispDataVer, 8)) {
            // currently displayed, not doing anything except for sending an XFC
#ifdef DEBUGPROTO
            pr("PROTO: currently shown image, send xfc\n");
#endif
            powerUp(INIT_RADIO);
            sendXferComplete();
            powerDown(INIT_RADIO);
            return true;

        } else {
            // currently not displayed
#ifdef DEBUGPROTO
            pr("PROTO: currently not shown image\n");
#endif
            // try to find the data in the SPI EEPROM
            powerUp(INIT_EEPROM);
            uint8_t findImgSlot = findSlotVer(&(avail->dataVer));
            powerDown(INIT_EEPROM);

            // Is this image already in a slot somewhere
            if (findImgSlot != 0xFF) {
#ifdef DEBUGPROTO
                pr("PROTO: Found image in EEPROM\n");
#endif
                // found a (complete)valid image slot for this version
                powerUp(INIT_RADIO);
                sendXferComplete();
                powerDown(INIT_RADIO);

                // mark as completed and draw from EEPROM
                xMemCopyShort(&xferDataInfo, (void *)avail, sizeof(struct AvailDataInfo));
                xferDataInfo.dataSize = 0;  // mark as transfer not pending

                wdt60s();
                curImgSlot = findImgSlot;
                powerUp(INIT_EPD | INIT_EEPROM);
                drawImageFromEeprom(findImgSlot, arg.lut);
                powerDown(INIT_EPD | INIT_EEPROM);
            } else {
                // not found in cache, prepare to download
#ifdef DEBUGPROTO
                pr("PROTO: downloading image...\n");
#endif
                if (downloadImageDataToEEPROM(avail)) {
                    // sets xferImgSlot to the right slot
#ifdef DEBUGPROTO
                    pr("PROTO: download complete!\n");
#endif
                    powerUp(INIT_RADIO);
                    sendXferComplete();
                    powerDown(INIT_RADIO);

                    // not preload, draw now
                    wdt60s();

                    curImgSlot = xferImgSlot;
                    powerUp(INIT_EPD | INIT_EEPROM);
                    drawImageFromEeprom(xferImgSlot, arg.lut);
                    powerDown(INIT_EPD | INIT_EEPROM);
                } else {
                    return false;
                }
            }
            //  keep track on what is currently displayed
            xMemCopy8(curDispDataVer, &xferDataInfo.dataVer);
            return true;
        }
    }
}

bool processAvailDataInfo(__xdata struct AvailDataInfo *avail) __reentrant {
    if (((avail->dataType == DATATYPE_FW_UPDATE) && (avail->dataSize > 65536)) || ((avail->dataType != DATATYPE_FW_UPDATE) && (avail->dataSize > EEPROM_IMG_EACH))) {
        powerUp(INIT_RADIO);
        sendXferComplete();
        powerDown(INIT_RADIO);
#ifdef DEBUGPROTO
        pr("PROTO: availData too large\n");
#endif
        return true;
    }

    switch (avail->dataType) {
        case DATATYPE_IMG_BMP:
        case DATATYPE_IMG_DIFF:
        case DATATYPE_IMG_RAW_1BPP:
        case DATATYPE_IMG_RAW_2BPP:
        case DATATYPE_IMG_G5:
            return processImageDataAvail(avail);
            break;
        case DATATYPE_FW_UPDATE:
            powerUp(INIT_EEPROM);
            if (downloadFWUpdate(avail)) {
#if defined(DEBUGOTA)
                pr("OTA: Download complete\n");
#endif
                powerUp(INIT_RADIO);
                sendXferComplete();
                powerDown(INIT_RADIO);

                powerUp(INIT_EEPROM);
                if (validateFWMagic()) {
#if defined(DEBUGOTA)
                    pr("OTA: Valid magic number\n");
#endif
                    powerUp(INIT_EPD);
                    showApplyUpdate();
                    wdt60s();
                    eepromReadStart(eeSize - OTA_UPDATE_SIZE);
                    selfUpdate();
                    // ends in WDT reset
                } else {
#if defined(DEBUGOTA)
                    pr("OTA: Invalid magic number!\n");
#endif
                    fastNextCheckin = true;
                    powerDown(INIT_EEPROM);
                    wakeUpReason = WAKEUP_REASON_FAILED_OTA_FW;
                    powerUp(INIT_EPD);
                    showFailedUpdate();
                    powerDown(INIT_EPD);
                    memset(curDispDataVer, 0x00, 8);
                }

            } else {
                return false;
            }
            break;

        case DATATYPE_NFC_URL_DIRECT:
        case DATATYPE_NFC_RAW_CONTENT:
            // Handle data for the NFC IC (if we have it)

            // check if we actually have the capability to do NFC
            if (!(capabilities & CAPABILITY_HAS_NFC)) {
                // looks like we don't. mark as complete and then bail!
                powerUp(INIT_RADIO);
                sendXferComplete();
                powerDown(INIT_RADIO);
                return true;
            }
#ifndef LEAN_VERSION
    #ifdef DEBUGPROTO
            pr("NFC URL received\n");
    #endif
            if (xferDataInfo.dataSize == 0 && xMemEqual((const __xdata void *)&avail->dataVer, (const __xdata void *)&xferDataInfo.dataVer, 8)) {
                // we've already downloaded this NFC data, disregard and send XFC
    #ifdef DEBUGPROTO
                pr("this was the same as the last transfer, disregard\n");
    #endif
                powerUp(INIT_RADIO);
                sendXferComplete();
                powerDown(INIT_RADIO);
                return true;
            }
            curBlock.blockId = 0;
            xMemCopy8(&(curBlock.ver), &(avail->dataVer));
            curBlock.type = avail->dataType;
            xMemCopyShort(&xferDataInfo, (void *)avail, sizeof(struct AvailDataInfo));
            uint16_t nfcsize = avail->dataSize;
            wdt10s();
            if (getDataBlock(avail->dataSize)) {
                xferDataInfo.dataSize = 0;  // mark as transfer not pending
                powerUp(INIT_I2C);
                if (avail->dataType == DATATYPE_NFC_URL_DIRECT) {
                    // only one URL (handle NDEF records on the tag)
                    loadURLtoNTag();
                } else {
                    // raw NFC data upload to the NFC IC
                    loadRawNTag(nfcsize);
                }
                timerDelay(39990);
                powerDown(INIT_I2C);
                powerUp(INIT_RADIO);
                sendXferComplete();
                powerDown(INIT_RADIO);
                return true;
            }
            return false;
#endif
            break;

        case DATATYPE_TAG_CONFIG_DATA:
            if (xferDataInfo.dataSize == 0 && xMemEqual((const __xdata void *)&avail->dataVer, (const __xdata void *)&xferDataInfo.dataVer, 8)) {
#ifdef DEBUGPROTO
                pr("PROTO: this was the same as the last transfer, disregard\n");
#endif
                powerUp(INIT_RADIO);
                sendXferComplete();
                powerDown(INIT_RADIO);
                return true;
            }
            curBlock.blockId = 0;
            xMemCopy8(&(curBlock.ver), &(avail->dataVer));
            curBlock.type = avail->dataType;
            xMemCopyShort(&xferDataInfo, (void *)avail, sizeof(struct AvailDataInfo));
            wdt10s();
            __xdata uint8_t *blockbuffer = getDataBlock(avail->dataSize);
            if (blockbuffer) {
                xferDataInfo.dataSize = 0;  // mark as transfer not pending
                powerUp(INIT_EEPROM);
                loadSettingsFromBuffer(sizeof(struct blockData) + blockbuffer);
                powerDown(INIT_EEPROM);
                powerUp(INIT_RADIO);
                sendXferComplete();
                powerDown(INIT_RADIO);
                free(blockbuffer);
                return true;
            }
            return false;
            break;
        case DATATYPE_COMMAND_DATA:
#ifdef DEBUGPROTO
            pr("PROTO: CMD received\n");
#endif
            powerUp(INIT_RADIO);
            sendXferComplete();
            powerDown(INIT_RADIO);
            executeCommand(avail->dataTypeArgument);
            return true;
            break;
    }
    return true;
}

bool validateMD5(uint32_t addr, uint16_t len) __reentrant {
    md5Init();
    __xdata uint8_t *blockbuffer = malloc(256);
    while (len) {
        eepromRead(addr, blockbuffer, 256);
        if (len >= 256) {
            md5Update(blockbuffer, 256);
            len -= 256;
            addr += 256;
        } else {
            md5Update(blockbuffer, len);
            len = 0;
        }
    }
    md5Finalize();
    free(blockbuffer);
    if (xMemEqual((const __xdata void *)ctxdigest, (const __xdata void *)&xferDataInfo.dataVer, 8)) {
#ifdef DEBUGPROTO
        pr("PROTO: MD5 pass!\n");
#endif
        return true;
    } else {
#ifdef DEBUGPROTO
        pr("PROTO: MD5 fail...\n");
#endif
        return false;
    }
}

bool validateFWMagic() __reentrant {
    __xdata uint8_t *flashmem = malloc(256);
    __xdata uint8_t *spimem = malloc(256);

    flashRead(0x8b, (void *)(flashmem), 256);
    eepromRead(eeSize - OTA_UPDATE_SIZE, spimem, 256);
    int res = xMemEqual((const __xdata void *)flashmem, (const __xdata void *)(spimem + 0x8b), 8);
    free(flashmem);
    free(spimem);
    if (res) {
#ifdef DEBUGOTA
        pr("OTA: magic number matches! good fw\n");
#endif
        return true;
    } else {
#ifdef DEBUGOTA
        pr("OTA: this probably isn't a (recent) firmware file\n");
#endif
        return false;
    }
}
void initializeProto() {
    getNumSlots();
    curHighSlotId = getHighSlotId();
}
