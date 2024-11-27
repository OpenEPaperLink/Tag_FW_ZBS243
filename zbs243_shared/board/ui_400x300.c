
void addOverlay() {
    if ((currentChannel == 0) && (tagSettings.enableNoRFSymbol)) {
        loadRawBitmap(ant, SCREEN_WIDTH - 24, 6, EPD_COLOR_BLACK);
        loadRawBitmap(cross, SCREEN_WIDTH - 16, 13, EPD_COLOR_RED);
        noAPShown = true;
    } else {
        noAPShown = false;
    }

    if ((batteryVoltage < tagSettings.batLowVoltage) && (tagSettings.enableLowBatSymbol)) {
        loadRawBitmap(battery, SCREEN_WIDTH - 24, SCREEN_HEIGHT - 16, EPD_COLOR_BLACK);
        lowBatteryShown = true;
    } else {
        lowBatteryShown = false;
    }

#ifdef ISDEBUGBUILD
    loadRawBitmap(debugbuild, 371, 285, EPD_COLOR_RED);
#endif
}

void afterFlashScreenSaver() {
    if (displayCustomImage(CUSTOM_IMAGE_LONGTERMSLEEP)) return;
    selectLUT(EPD_LUT_DEFAULT);
    clearScreen();
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);

    epdPrintBegin(3, 3, EPD_DIRECTION_X, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("OpenEPaperLink");
    epdPrintEnd();

    epdPrintBegin(360, 8, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("v%04X", fwVersion);
    epdPrintEnd();

    epdPrintBegin(10, 48, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("I'm fast asleep... UwU   To wake me:");
    epdPrintEnd();

    epdPrintBegin(20, 70, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("- Remove both batteries");
    epdPrintEnd();
    epdPrintBegin(20, 86, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("- Short battery contacts");
    epdPrintEnd();
    epdPrintBegin(20, 102, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("- Reinsert batteries");
    epdPrintEnd();
    epdPrintBegin(3, 283, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("openepaperlink.de");
    epdPrintEnd();

    epdPrintBegin(255, 283, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_RED);
    epdpr("%02X:%02X", mSelfMac[7], mSelfMac[6]);
    epdpr(":%02X:%02X", mSelfMac[5], mSelfMac[4]);
    epdpr(":%02X:%02X", mSelfMac[3], mSelfMac[2]);
    epdpr(":%02X:%02X", mSelfMac[1], mSelfMac[0]);
    epdPrintEnd();

    drawWithSleep();
}

void showSplashScreen() {
    if (displayCustomImage(CUSTOM_IMAGE_SPLASHSCREEN)) return;
    powerUp(INIT_EPD);

#if (HW_TYPE != SOLUM_M2_BW_29_LOWTEMP)
    selectLUT(EPD_LUT_NO_REPEATS);
#endif

    clearScreen();
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);

    epdPrintBegin(3, 3, EPD_DIRECTION_X, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("Starting");
    epdPrintEnd();

    epdPrintBegin(2, 252, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    addCapabilities();
    epdPrintEnd();

    epdPrintBegin(3, 268, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("zbs42 %04X%s", fwVersion, fwVersionSuffix);
    epdPrintEnd();
    epdPrintBegin(3, 284, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_RED);
    epdpr("MAC: %02X:%02X", mSelfMac[7], mSelfMac[6]);
    epdpr(":%02X:%02X", mSelfMac[5], mSelfMac[4]);
    epdpr(":%02X:%02X", mSelfMac[3], mSelfMac[2]);
    epdpr(":%02X:%02X", mSelfMac[1], mSelfMac[0]);
    epdPrintEnd();
#ifndef LEAN_VERSION
    loadRawBitmap(oepli, 136, 22, EPD_COLOR_BLACK);
    loadRawBitmap(cloud, 136, 10, EPD_COLOR_RED);
#endif
    uint8_t __xdata buffer[17];
    spr(buffer, "%02X%02X", mSelfMac[7], mSelfMac[6]);
    spr(buffer + 4, "%02X%02X", mSelfMac[5], mSelfMac[4]);
    spr(buffer + 8, "%02X%02X", mSelfMac[3], mSelfMac[2]);
    spr(buffer + 12, "%02X%02X", mSelfMac[1], mSelfMac[0]);
    printBarcode(buffer, 392, 264);
    printBarcode(buffer, 384, 264);

    drawWithSleep();
    powerDown(INIT_EPD);
}

void showApplyUpdate() {
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);
    selectLUT(1);
    clearScreen();
    setColorMode(EPD_MODE_IGNORE, EPD_MODE_NORMAL);

    epdPrintBegin(136, 134, EPD_DIRECTION_X, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);

    epdpr("Updating!");
    epdPrintEnd();
    drawNoWait();
}

void showFailedUpdate() {
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);
    selectLUT(1);
    clearScreen();
    setColorMode(EPD_MODE_IGNORE, EPD_MODE_NORMAL);

    epdPrintBegin(68, 134, EPD_DIRECTION_X, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);

    epdpr("Invalid OTA FW!");
    epdPrintEnd();
    drawWithSleep();
}

void showAPFound() {
    if (displayCustomImage(CUSTOM_IMAGE_APFOUND)) return;
    powerUp(INIT_EPD);

    clearScreen();
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);
#if (HW_TYPE != SOLUM_M2_BW_29_LOWTEMP)
    selectLUT(1);
#endif

    epdPrintBegin(10, 10, EPD_DIRECTION_X, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("Waiting for data...");
    epdPrintEnd();
    epdPrintBegin(48, 80, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("Found the following AP:");
    epdPrintEnd();
    epdPrintBegin(48, 96, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("AP MAC: %02X:%02X", APmac[7], APmac[6]);
    epdpr(":%02X:%02X", APmac[5], APmac[4]);
    epdpr(":%02X:%02X", APmac[3], APmac[2]);
    epdpr(":%02X:%02X", APmac[1], APmac[0]);
    epdPrintEnd();
    epdPrintBegin(48, 112, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("Ch: %d RSSI: %d LQI: %d", currentChannel, mLastRSSI, mLastLqi);
    epdPrintEnd();

    epdPrintBegin(366, 258, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("Tag MAC: %02X:%02X", mSelfMac[7], mSelfMac[6]);
    epdpr(":%02X:%02X", mSelfMac[5], mSelfMac[4]);
    epdpr(":%02X:%02X", mSelfMac[3], mSelfMac[2]);
    epdpr(":%02X:%02X", mSelfMac[1], mSelfMac[0]);
    epdPrintEnd();

    uint8_t __xdata buffer[17];
    spr(buffer, "%02X%02X", mSelfMac[7], mSelfMac[6]);
    spr(buffer + 4, "%02X%02X", mSelfMac[5], mSelfMac[4]);
    spr(buffer + 8, "%02X%02X", mSelfMac[3], mSelfMac[2]);
    spr(buffer + 12, "%02X%02X", mSelfMac[1], mSelfMac[0]);
    printBarcode(buffer, 392, 253);
    printBarcode(buffer, 384, 253);
#ifndef LEAN_VERSION
    loadRawBitmap(receive, 100, 170, EPD_COLOR_BLACK);
#endif

    addOverlay();
    drawWithSleep();
    powerDown(INIT_EPD);
}

void showNoAP() {
    if (displayCustomImage(CUSTOM_IMAGE_NOAPFOUND)) return;
    powerUp(INIT_EPD);
#if (HW_TYPE != SOLUM_M2_BW_29_LOWTEMP)
    selectLUT(EPD_LUT_NO_REPEATS);
#endif

    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);
    clearScreen();

    epdPrintBegin(10, 10, EPD_DIRECTION_X, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("No AP found :(");
    epdPrintEnd();
    epdPrintBegin(10, 274, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("We'll try again in a little while");
    epdPrintEnd();
#ifndef LEAN_VERSION
    loadRawBitmap(receive, 76, 120, EPD_COLOR_BLACK);
    loadRawBitmap(failed, 82, 122, EPD_COLOR_RED);
#endif

    addOverlay();
    drawWithSleep();
    powerDown(INIT_EPD);
}

void showLongTermSleep() {
    if (displayCustomImage(CUSTOM_IMAGE_LONGTERMSLEEP)) return;
    selectLUT(EPD_LUT_NO_REPEATS);
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);
    clearScreen();

    epdPrintBegin(2, SCREEN_HEIGHT - 16, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("zZ");
    epdPrintEnd();

    addOverlay();
    drawWithSleep();
}
void showNoEEPROM() {
    selectLUT(EPD_LUT_NO_REPEATS);
    clearScreen();
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);

    epdPrintBegin(50, 3, EPD_DIRECTION_X, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("EEPROM FAILED :(");
    epdPrintEnd();
#ifndef LEAN_VERSION
    loadRawBitmap(failed, 176, 126, EPD_COLOR_RED);
#endif
    epdPrintBegin(100, 284, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("Sleeping forever :'(");
    epdPrintEnd();

    drawWithSleep();
}

void showNoMAC() {
    selectLUT(EPD_LUT_NO_REPEATS);
    clearScreen();
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);

    epdPrintBegin(100, 3, EPD_DIRECTION_X, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("NO MAC SET :(");
    epdPrintEnd();
#ifndef LEAN_VERSION
    loadRawBitmap(failed, 176, 126, EPD_COLOR_RED);
#endif
    epdPrintBegin(100, 284, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("Sleeping forever :'(");
    epdPrintEnd();

    drawWithSleep();
}
