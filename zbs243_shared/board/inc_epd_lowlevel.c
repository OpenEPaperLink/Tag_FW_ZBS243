#pragma callee_saves epdBusyWait
static bool epdBusyWait(uint32_t timeout) {
    uint32_t __xdata start = timerGet();

    while (timerGet() - start < timeout) {
#ifdef EPD_POLARITY_SSD
        if (!P2_1)
#else
        if (P2_1)
#endif
            return true;
    }
    return false;
}

static bool epdWaitUntilBusy(uint32_t timeout) {
    uint32_t __xdata start = timerGet();

    while (timerGet() - start < timeout) {
#ifdef EPD_POLARITY_SSD
        if (P2_1)
#else
        if (!P2_1)
#endif
            return true;
    }
#ifdef DEBUGEPD
    pr("Waited until the EPD would start doing anything, timeout %lu ticks :(\n", timerGet() - start);
#endif
    return false;
}

void epdWrite(uint8_t reg, uint8_t len, ...) {
    va_list valist;
    va_start(valist, len);
    markCommand();
    epdSelect();
    epdSend(reg);
#ifdef EPD_POLARITY_SSD
    markData();
    for (uint8_t i = 0; i < len; i++) {
        spiTXByte(va_arg(valist, int));
    }
    epdDeselect();
#else
    epdDeselect();
    markData();
    for (uint8_t i = 0; i < len; i++) {
        epdSelect();
        epdSend(va_arg(valist, int));
        epdDeselect();
    }
#endif
    va_end(valist);
}

static bool epdReset() {
    for (uint8_t attempt = 1;; attempt += 20) {
        timerDelay(TIMER_TICKS_PER_MS * attempt);
        P2_0 = 0;
        timerDelay(TIMER_TICKS_PER_MS * attempt);
        P2_0 = 1;
        if (epdBusyWait(TIMER_TICKS_PER_MS * 100)) {
#ifndef EPD_POLARITY_SSD
            timerDelay(TIMER_TICKS_PER_MS * attempt);  // we have an additional wait for UC-style controllers
#endif
            break;
        } else {
            if (attempt >= EPD_RESET_MAX) {
#ifdef DEBUGEPD
                pr("EPD: Failed to reset!\n");
#endif
                return false;
            }
        }
    }
#ifdef EPD_POLARITY_SSD
    epdWrite(CMD_SOFT_RESET, 0);  // software reset
    bool res = epdBusyWait(TIMER_TICKS_PER_MS * 5);
    if (!res)
        return false;
    epdWrite(CMD_SOFT_RESET2, 0);
    res = epdBusyWait(TIMER_TICKS_PER_MS * 5);
    if (!res)
        return false;
#endif
    return true;
}
static void commandReadBegin(uint8_t cmd) {
    epdSelect();
    markCommand();
    spiByte(cmd);  // dump LUT

    P0DIR = (P0DIR & ~(1 << 0)) | (1 << 1);
    P0 &= ~(1 << 0);
    P0FUNC &= ~((1 << 0) | (1 << 1));
    P2_2 = 1;
}
static void commandReadEnd() {
    // set up pins for spi (0.0,0.1,0.2)
    P0FUNC |= (1 << 0) | (1 << 1);
    epdDeselect();
}
#pragma callee_saves epdReadByte
static uint8_t epdReadByte() {
    uint8_t val = 0, i;

    for (i = 0; i < 8; i++) {
        P0_0 = 1;
        __asm__("nop\nnop\nnop\nnop\nnop\nnop\n");
        val <<= 1;
        if (P0_1)
            val++;
        P0_0 = 0;
        __asm__("nop\nnop\nnop\nnop\nnop\nnop\n");
    }

    return val;
}
