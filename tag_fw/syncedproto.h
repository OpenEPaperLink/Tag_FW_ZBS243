#ifndef SYNCED_H
#define SYNCED_H

#include <stdint.h>
#include "settings.h"

extern uint8_t __xdata mSelfMac[];
extern uint8_t __xdata currentChannel;
extern uint8_t __xdata APmac[];

extern uint8_t __xdata curImgSlot;
extern bool __xdata fastNextCheckin;

// extern void setupRadio(void);
// extern void killRadio(void);

#ifdef ENABLE_RETURN_DATA
extern bool sendTagReturnData(__xdata uint8_t *data, uint8_t len, uint8_t type);
#endif

extern void dump(const __xdata uint8_t *a, const __xdata uint16_t l) __reentrant;
extern bool checkCRC(const __xdata void *p, const uint8_t len) __reentrant;

extern uint8_t __xdata findSlotDataTypeArg(uint8_t arg) __reentrant;
extern uint8_t __xdata findNextSlideshowImage(uint8_t start) __reentrant;
extern uint8_t getEepromImageDataArgument(const uint8_t slot);

extern __xdata struct AvailDataInfo *getAvailDataInfo();
extern __xdata struct AvailDataInfo *getShortAvailDataInfo();

extern void drawImageFromEeprom(const uint8_t imgSlot, uint8_t lut) __reentrant;
extern void eraseImageBlocks();
extern bool processAvailDataInfo(__xdata struct AvailDataInfo *avail);
extern void initializeProto();
extern uint8_t detectAP(const uint8_t channel);

extern bool validateMD5(uint32_t addr, uint16_t len) __reentrant;
extern bool validateFWMagic() __reentrant;

#endif