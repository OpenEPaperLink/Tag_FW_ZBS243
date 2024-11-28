
#include "uicommon.h"

#include <stdbool.h>
#include <string.h>

#include "asmUtil.h"

#include "comms.h"
#include "cpu.h"
#include "font.h"
#include "lut.h"
#include "powermgt.h"
#include "printf.h"
#include "../shared/oepl-definitions.h"
#include "../shared/oepl-proto.h"
#include "tagtype.h"
#include "settings.h"
#include "bitmaps.h"
#include "sleep.h"
#include "spi.h"
#include "syncedproto.h"  // for APmac / Channel
#include "timer.h"

const uint16_t __code fwVersion = FW_VERSION;
const char __code fwVersionSuffix[] = FW_VERSION_SUFFIX;

extern uint8_t __xdata capabilities;

bool __xdata lowBatteryShown = false;
bool __xdata noAPShown = false;

void addCapabilities() {
    if (capabilities) epdpr("Options: ");
    if (capabilities & CAPABILITY_HAS_NFC) {
        epdpr("-NFC");
        if (capabilities & CAPABILITY_NFC_WAKE) {
            epdpr("+WAKE");
        } else {
            epdpr(" ");
        }
    }
    if (capabilities & CAPABILITY_HAS_WAKE_BUTTON) {
        epdpr("-WAKE BUTTON");
    }
}

bool displayCustomImage(uint8_t imagetype) {
    powerUp(INIT_EEPROM);
    uint8_t slot = findSlotDataTypeArg(imagetype << 3);
    if (slot != 0xFF) {
        // found a slot for a custom image type
        uint8_t lut = getEepromImageDataArgument(slot);
        lut &= 0x03;
        powerUp(INIT_EPD);
        drawImageFromEeprom(slot, lut);
        powerDown(INIT_EPD | INIT_EEPROM);
        return true;
    } else {
        powerDown(INIT_EEPROM);
    }
    return false;
}

void externalWakeHandler(uint8_t type) {
    if (displayCustomImage(type)) {
        sleepForMsec(2000);

        // if something else was previously on the display, draw that
        if (curImgSlot != 0xFF) {
            powerUp(INIT_EEPROM);
            uint8_t lut = getEepromImageDataArgument(curImgSlot);
            lut &= 0x03;
            powerUp(INIT_EPD);
            drawImageFromEeprom(curImgSlot, lut);
            powerDown(INIT_EPD | INIT_EEPROM);
        }
    }
}

#ifdef UI_296x128
#include "ui_296x128.c"
#endif

#ifdef UI_400x300
#include "ui_400x300.c"
#endif

#ifdef UI_152x152
#include "ui_152x152.c"
#endif

#ifdef UI_264x176
#include "ui_264x176.c"
#endif



