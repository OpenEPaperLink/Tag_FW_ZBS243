
void addOverlay() {
    if ((currentChannel == 0) && (tagSettings.enableNoRFSymbol)) {
        loadRawBitmap(ant, SCREEN_WIDTH - 16, 0, EPD_COLOR_BLACK);
        loadRawBitmap(cross, SCREEN_WIDTH - 8, 7, EPD_COLOR_RED);
        noAPShown = true;
    } else {
        noAPShown = false;
    }

    if ((batteryVoltage < tagSettings.batLowVoltage) && (tagSettings.enableLowBatSymbol)) {
        loadRawBitmap(battery, SCREEN_WIDTH - 16, SCREEN_HEIGHT - 10, EPD_COLOR_BLACK);

        lowBatteryShown = true;
    } else {
        lowBatteryShown = false;
    }

#ifdef ISDEBUGBUILD

    loadRawBitmap(debugbuild, 144, 2, EPD_COLOR_RED);
#endif
}

void afterFlashScreenSaver() {
    if (displayCustomImage(CUSTOM_IMAGE_LONGTERMSLEEP)) return;
    selectLUT(EPD_LUT_DEFAULT);
    clearScreen();
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);


    epdPrintBegin(0, 0, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("OpenEPaperLink");
    epdPrintEnd();

    epdPrintBegin(100, 32, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_RED);
    epdpr("v%04X", fwVersion);
    epdPrintEnd();

    epdPrintBegin(0, 16, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("I'm fast asleep");
    epdPrintEnd();

    epdPrintBegin(0, 32, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("UwU");
    epdPrintEnd();

    epdPrintBegin(0, 48, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("To wake me:");
    epdPrintEnd();

    epdPrintBegin(0, 64, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("-Remove batteries");
    epdPrintEnd();
    epdPrintBegin(0, 80, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("-Short contacts");
    epdPrintEnd();
    epdPrintBegin(0, 96, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("-Reinsert batteries");
    epdPrintEnd();
    epdPrintBegin(0, 112, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("openepaperlink.de");
    epdPrintEnd();

    epdPrintBegin(0, 128, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_RED);
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

    epdPrintBegin(1, SCREEN_HEIGHT - 2, EPD_DIRECTION_Y, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("OpenEPaperLink");
    epdPrintEnd();

#ifdef ISDEBUGBUILD
    epdPrintBegin(35, SCREEN_HEIGHT - 16, EPD_DIRECTION_Y, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("DEBUG");
    epdPrintEnd();
#endif

    epdPrintBegin(64, SCREEN_HEIGHT - 1, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    addCapabilities();
    epdPrintEnd();

    epdPrintBegin(SCREEN_WIDTH - 36, SCREEN_HEIGHT - 1, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("zbs27 %04X%s", fwVersion, fwVersionSuffix);
    epdPrintEnd();

    epdPrintBegin(SCREEN_WIDTH - 17, SCREEN_HEIGHT - 26, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_RED);
    epdpr("MAC: %02X:%02X", mSelfMac[7], mSelfMac[6]);
    epdpr(":%02X:%02X", mSelfMac[5], mSelfMac[4]);
    epdpr(":%02X:%02X", mSelfMac[3], mSelfMac[2]);
    epdpr(":%02X:%02X", mSelfMac[1], mSelfMac[0]);
    epdPrintEnd();

    uint8_t __xdata buffer[17];
    spr(buffer, "%02X%02X", mSelfMac[7], mSelfMac[6]);
    spr(buffer + 4, "%02X%02X", mSelfMac[5], mSelfMac[4]);
    spr(buffer + 8, "%02X%02X", mSelfMac[3], mSelfMac[2]);
    spr(buffer + 12, "%02X%02X", mSelfMac[1], mSelfMac[0]);
    printBarcode(buffer, 120, 284);
#ifndef LEAN_VERSION
    loadRawBitmap(oepli, 24, 12, EPD_COLOR_BLACK);
    loadRawBitmap(cloud, 24, 0, EPD_COLOR_RED);
#endif

    drawWithSleep();
    powerDown(INIT_EPD);
}

void showApplyUpdate() {
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);
    selectLUT(1);
    clearScreen();
    setColorMode(EPD_MODE_IGNORE, EPD_MODE_NORMAL);

    epdPrintBegin(12, 60, EPD_DIRECTION_X, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);

    epdpr("Updating!");
    epdPrintEnd();
    drawNoWait();
}

void showFailedUpdate() {
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);
    selectLUT(1);
    clearScreen();
    setColorMode(EPD_MODE_IGNORE, EPD_MODE_NORMAL);

    epdPrintBegin(18, 60, EPD_DIRECTION_X, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);

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

    epdPrintBegin(0, SCREEN_HEIGHT - 10, EPD_DIRECTION_Y, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("Waiting for data");
    epdPrintEnd();
    epdPrintBegin(48, SCREEN_HEIGHT - 17, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("Found the following AP:");
    epdPrintEnd();

    epdPrintBegin(64, SCREEN_HEIGHT - 3, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("AP MAC: %02X:%02X", APmac[7], APmac[6]);
    epdpr(":%02X:%02X", APmac[5], APmac[4]);
    epdpr(":%02X:%02X", APmac[3], APmac[2]);
    epdpr(":%02X:%02X", APmac[1], APmac[0]);
    epdPrintEnd();
    epdPrintBegin(80, SCREEN_HEIGHT - 3, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("Ch: %d RSSI: %d LQI: %d", currentChannel, mLastRSSI, mLastLqi);
    epdPrintEnd();

    epdPrintBegin(SCREEN_WIDTH - 30, SCREEN_HEIGHT - 18, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
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
    printBarcode(buffer, 168, SCREEN_HEIGHT - 30);
#ifndef LEAN_VERSION
    loadRawBitmap(receive, 36, 1, EPD_COLOR_BLACK);
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
    epdPrintBegin(0, 285, EPD_DIRECTION_Y, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("No AP found :(");
    epdPrintEnd();
    epdPrintBegin(48, 285, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("We'll try again in a");
    epdPrintEnd();
    epdPrintBegin(64, 285, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("little while...");
    epdPrintEnd();
#ifndef LEAN_VERSION
    loadRawBitmap(receive, 36, 24, EPD_COLOR_BLACK);
    loadRawBitmap(failed, 42, 26, EPD_COLOR_RED);
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


    epdPrintBegin(1, 260, EPD_DIRECTION_Y, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("EEPROM FAILED :(");
    epdPrintEnd();
    epdPrintBegin(160, 200, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("Sleeping forever :'(");
    epdPrintEnd();
#ifndef LEAN_VERSION
    loadRawBitmap(failed, 80, 114, EPD_COLOR_RED);
#endif
    drawWithSleep();
}

void showNoMAC() {
    selectLUT(EPD_LUT_NO_REPEATS);
    clearScreen();
    setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);

    epdPrintBegin(0, 285, EPD_DIRECTION_Y, EPD_SIZE_DOUBLE, EPD_COLOR_BLACK);
    epdpr("NO MAC SET :(");
    epdPrintEnd();
    epdPrintBegin(64, 285, EPD_DIRECTION_Y, EPD_SIZE_SINGLE, EPD_COLOR_BLACK);
    epdpr("Sleeping forever :'(");
    epdPrintEnd();
#ifndef LEAN_VERSION
    loadRawBitmap(failed, 42, 26, EPD_COLOR_RED);
#endif

    drawWithSleep();
}