;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module screen
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _loadFixedTempOTPLUT
	.globl _wdtOn
	.globl _timerDelay
	.globl _timerGet
	.globl _sleepForMsec
	.globl _pr
	.globl _spiTXByte
	.globl _spiByte
	.globl _barcodeNextBar
	.globl _barcodeIsDone
	.globl _mathPrvMul8x8
	.globl ___memcpy
	.globl _memset
	.globl _UART_TXE
	.globl _UART_RXF
	.globl _IEN_EA
	.globl _IEN_RF2
	.globl _IEN_RF1
	.globl _IEN_TMR1
	.globl _IEN_TMR0
	.globl _IEN_UART0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _CFGPAGE
	.globl _TCON2
	.globl _SETTINGS
	.globl _TRIGGER
	.globl _UNK_C1
	.globl _RADIO_GOTLEN
	.globl _RADIO_INITSEQ3
	.globl _RADIO_RXLEN
	.globl _RADIO_RXPTRH
	.globl _RADIO_RXPTRL
	.globl _RADIO_INITSEQ5
	.globl _RADIO_INITSEQ4
	.globl _RADIO_INITSEQ0
	.globl _RADIO_TXLEN
	.globl _RADIO_INITSEQ2
	.globl _RADIO_INITSEQ1
	.globl _RADIO_TXPTRH
	.globl _RADIO_TXPTRL
	.globl _TEMPCAL6
	.globl _TEMPCAL5
	.globl _TEMPCAL4
	.globl _TEMPCAL3
	.globl _TEMPRETL
	.globl _TEMPRETH
	.globl _TEMPCFG
	.globl _TEMPCAL2
	.globl _TEMPCAL1
	.globl _FWRTHREE
	.globl _FWRLENH
	.globl _FWRLENL
	.globl _FWRDSTH
	.globl _FWRDSTL
	.globl _FWRSRCH
	.globl _FWRSRCL
	.globl _FPGNO
	.globl _T1
	.globl _T0
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _UARTBRGH
	.globl _UARTBRGL
	.globl _UARTBUF
	.globl _UARTSTA
	.globl _I2CUNKNOWN
	.globl _I2CSPEED
	.globl _I2CCTL
	.globl _I2CBUF
	.globl _I2CSTATE
	.globl _SPIRX
	.globl _SPITX
	.globl _SPIENA
	.globl _SPICFG
	.globl _SPIUNKNOWN
	.globl _WDTCONF
	.globl _WDTRSTVALH
	.globl _WDTRSTVALM
	.globl _WDTRSTVALL
	.globl _WDTPET
	.globl _WDTENA
	.globl _RESET
	.globl _CLKEN
	.globl _CLKSPEED
	.globl _IEN1
	.globl _IEN0
	.globl _XPAGE
	.globl _P2PULL
	.globl _P1PULL
	.globl _P0PULL
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _P2FUNC
	.globl _P1FUNC
	.globl _P0FUNC
	.globl _P2CHSTA
	.globl _P1CHSTA
	.globl _P0CHSTA
	.globl _P2INTEN
	.globl _P1INTEN
	.globl _P0INTEN
	.globl _P2LVLSEL
	.globl _P1LVLSEL
	.globl _P0LVLSEL
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _PERFMON4
	.globl _PCL
	.globl _PCH
	.globl _PERFMON1
	.globl _PERFMON0
	.globl _PCON
	.globl _DPS
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _ACC
	.globl _B
	.globl _waveform7
	.globl _waveform10
	.globl _customLUT
	.globl _epdGPIOActive
	.globl _dispLutSize
	.globl _epdPrintBegin_PARM_5
	.globl _epdPrintBegin_PARM_4
	.globl _epdPrintBegin_PARM_3
	.globl _epdPrintBegin_PARM_2
	.globl _printBarcode_PARM_3
	.globl _printBarcode_PARM_2
	.globl _loadRawBitmap_PARM_4
	.globl _loadRawBitmap_PARM_3
	.globl _loadRawBitmap_PARM_2
	.globl _drawLineVertical_PARM_4
	.globl _drawLineVertical_PARM_3
	.globl _drawLineVertical_PARM_2
	.globl _drawLineHorizontal_PARM_4
	.globl _drawLineHorizontal_PARM_3
	.globl _drawLineHorizontal_PARM_2
	.globl _setColorMode_PARM_2
	.globl _setPosXY_PARM_2
	.globl _setWindowY_PARM_2
	.globl _setWindowX_PARM_2
	.globl _epdConfigGPIO
	.globl _epdEnterSleep
	.globl _epdSetup
	.globl _epdGetBattery
	.globl _selectLUT
	.globl _setWindowX
	.globl _setWindowY
	.globl _setPosXY
	.globl _setColorMode
	.globl _fillWindowWithPattern
	.globl _clearWindow
	.globl _clearScreen
	.globl _draw
	.globl _drawNoWait
	.globl _drawWithSleep
	.globl _epdWaitRdy
	.globl _drawLineHorizontal
	.globl _drawLineVertical
	.globl _beginFullscreenImage
	.globl _beginWriteFramebuffer
	.globl _endWriteFramebuffer
	.globl _loadRawBitmap
	.globl _printBarcode
	.globl _writeCharEPD
	.globl _epdPrintBegin
	.globl _epdPrintEnd
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_B	=	0x00f0
_ACC	=	0x00e0
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_DPS	=	0x0092
_PCON	=	0x0087
_PERFMON0	=	0x00b2
_PERFMON1	=	0x00b3
_PCH	=	0x00b4
_PCL	=	0x00b5
_PERFMON4	=	0x00b6
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P0LVLSEL	=	0x00a3
_P1LVLSEL	=	0x00a4
_P2LVLSEL	=	0x00a5
_P0INTEN	=	0x00a6
_P1INTEN	=	0x00a7
_P2INTEN	=	0x00a9
_P0CHSTA	=	0x00aa
_P1CHSTA	=	0x00ab
_P2CHSTA	=	0x00ac
_P0FUNC	=	0x00ad
_P1FUNC	=	0x00ae
_P2FUNC	=	0x00af
_P0DIR	=	0x00b9
_P1DIR	=	0x00ba
_P2DIR	=	0x00bb
_P0PULL	=	0x00bc
_P1PULL	=	0x00bd
_P2PULL	=	0x00be
_XPAGE	=	0x00a0
_IEN0	=	0x00a8
_IEN1	=	0x00a1
_CLKSPEED	=	0x008e
_CLKEN	=	0x00b7
_RESET	=	0x008f
_WDTENA	=	0x00ba
_WDTPET	=	0x00bb
_WDTRSTVALL	=	0x00bc
_WDTRSTVALM	=	0x00bd
_WDTRSTVALH	=	0x00be
_WDTCONF	=	0x00bf
_SPIUNKNOWN	=	0x00eb
_SPICFG	=	0x00ec
_SPIENA	=	0x00ed
_SPITX	=	0x00ee
_SPIRX	=	0x00ef
_I2CSTATE	=	0x0091
_I2CBUF	=	0x0094
_I2CCTL	=	0x0095
_I2CSPEED	=	0x0096
_I2CUNKNOWN	=	0x00a2
_UARTSTA	=	0x0098
_UARTBUF	=	0x0099
_UARTBRGL	=	0x009a
_UARTBRGH	=	0x009b
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_T0	=	0x8c8a
_T1	=	0x8d8b
_FPGNO	=	0x00d8
_FWRSRCL	=	0x00d9
_FWRSRCH	=	0x00da
_FWRDSTL	=	0x00db
_FWRDSTH	=	0x00dc
_FWRLENL	=	0x00dd
_FWRLENH	=	0x00de
_FWRTHREE	=	0x00df
_TEMPCAL1	=	0x00e6
_TEMPCAL2	=	0x00e7
_TEMPCFG	=	0x00f7
_TEMPRETH	=	0x00f8
_TEMPRETL	=	0x00f9
_TEMPCAL3	=	0x00fb
_TEMPCAL4	=	0x00fc
_TEMPCAL5	=	0x00fd
_TEMPCAL6	=	0x00fe
_RADIO_TXPTRL	=	0x00c9
_RADIO_TXPTRH	=	0x00ca
_RADIO_INITSEQ1	=	0x00cb
_RADIO_INITSEQ2	=	0x00cc
_RADIO_TXLEN	=	0x00cd
_RADIO_INITSEQ0	=	0x00ce
_RADIO_INITSEQ4	=	0x00d1
_RADIO_INITSEQ5	=	0x00d2
_RADIO_RXPTRL	=	0x00d3
_RADIO_RXPTRH	=	0x00d4
_RADIO_RXLEN	=	0x00d5
_RADIO_INITSEQ3	=	0x00d6
_RADIO_GOTLEN	=	0x00fa
_UNK_C1	=	0x00c1
_TRIGGER	=	0x00d7
_SETTINGS	=	0x00c7
_TCON2	=	0x00cf
_CFGPAGE	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_IEN_UART0	=	0x00a8
_IEN_TMR0	=	0x00a9
_IEN_TMR1	=	0x00ab
_IEN_RF1	=	0x00ac
_IEN_RF2	=	0x00ad
_IEN_EA	=	0x00af
_UART_RXF	=	0x0098
_UART_TXE	=	0x0099
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_epdBusyWait_sloc0_1_0:
	.ds 4
_drawLineVertical_sloc0_1_0:
	.ds 2
_loadRawBitmap_sloc0_1_0:
	.ds 2
_epdPrintBegin_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_R0	=	0x0000
_R1	=	0x0001
_R2	=	0x0002
_R3	=	0x0003
_R4	=	0x0004
_R5	=	0x0005
_R6	=	0x0006
_R7	=	0x0007
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_RADIO_command	=	0xdf48
_RADIO_calibration_70	=	0xdf70
_RADIO_calibration_71	=	0xdf71
_RADIO_FLAGS	=	0xdf80
_RADIO_calibration_81	=	0xdf81
_RADIO_unk_83	=	0xdf83
_RADIO_currentRSSI	=	0xdf84
_RADIO_calibration_86	=	0xdf86
_RADIO_ownMac_7	=	0xdf88
_RADIO_ownMac_6	=	0xdf89
_RADIO_ownMac_5	=	0xdf8a
_RADIO_ownMac_4	=	0xdf8b
_RADIO_ownMac_3	=	0xdf8c
_RADIO_ownMac_2	=	0xdf8d
_RADIO_ownMac_1	=	0xdf8e
_RADIO_ownMac_0	=	0xdf8f
_RADIO_PANID_Hi	=	0xdf90
_RADIO_PANID_Lo	=	0xdf91
_RADIO_ownShortAddress_Hi	=	0xdf92
_RADIO_ownShortAddress_Lo	=	0xdf93
_RADIO_calibration_94	=	0xdf94
_RADIO_calibration_95	=	0xdf95
_RADIO_calibration_96	=	0xdf96
_RADIO_rxFirstByte	=	0xdf98
_RADIO_curRfState	=	0xdf9b
_RADIO_calibration_9D	=	0xdf9d
_RADIO_calibration_A1	=	0xdfa1
_RADIO_unk_rxAckSta	=	0xdfa5
_RADIO_unk_A6	=	0xdfa6
_RADIO_IRQ4_pending	=	0xdfad
_RADIO_unk_AF	=	0xdfaf
_RADIO_channel	=	0xdfc0
_RADIO_unk_C1	=	0xdfc1
_RADIO_calibration_C2	=	0xdfc2
_RADIO_calibration_C3	=	0xdfc3
_RADIO_calibration_C4	=	0xdfc4
_RADIO_calibration_C5	=	0xdfc5
_RADIO_calibration_C6	=	0xdfc6
_RADIO_calibration_C7	=	0xdfc7
_RADIO_unk_C8	=	0xdfc8
_RADIO_txPower	=	0xdfc9
_RADIO_unk_CA	=	0xdfca
_RADIO_perChannelSetting2	=	0xdfcb
_RADIO_unk_CD	=	0xdfcd
_RADIO_unk_CE	=	0xdfce
_RADIO_calibration_CF	=	0xdfcf
_RADIO_calibration_D0	=	0xdfd0
_RADIO_calibration_D1	=	0xdfd1
_RADIO_calibration_D2	=	0xdfd2
_RADIO_calibration_D3	=	0xdfd3
_RADIO_calibration_D4	=	0xdfd4
_RADIO_calibration_D5	=	0xdfd5
_RADIO_unk_D7	=	0xdfd7
_RADIO_unk_D8	=	0xdfd8
_RADIO_SleepTimerHi	=	0xdfd9
_RADIO_SleepTimerMid	=	0xdfda
_RADIO_SleepTimerLo	=	0xdfdb
_RADIO_unk_E2	=	0xdfe2
_RADIO_unk_F0	=	0xdff0
_RADIO_SleepTimerSettings	=	0xdff3
_RADIO_RadioPowerCtl	=	0xdff4
_RADIO_Wake_Reason	=	0xdffb
_RADIO_perChannelSetting1	=	0xdffd
_rbuffer:
	.ds 32
_waveformbuffer:
	.ds 128
_epdBusySleep_timeout_65536_120:
	.ds 4
_epdBusySleep_tmp_P2FUNC_65536_121:
	.ds 1
_epdBusySleep_tmp_P2DIR_65536_121:
	.ds 1
_epdBusySleep_tmp_P2PULL_65536_121:
	.ds 1
_epdBusySleep_tmp_P2LVLSEL_65536_121:
	.ds 1
_epdBusyWait_timeout_65536_123:
	.ds 4
_commandReadBegin_cmd_65536_126:
	.ds 1
_epdReadByte_val_65536_132:
	.ds 1
_shortCommand_cmd_65536_135:
	.ds 1
_shortCommand1_PARM_2:
	.ds 1
_shortCommand1_cmd_65536_140:
	.ds 1
_shortCommand2_PARM_2:
	.ds 1
_shortCommand2_PARM_3:
	.ds 1
_shortCommand2_cmd_65536_146:
	.ds 1
_commandBegin_cmd_65536_152:
	.ds 1
_epdConfigGPIO_setup_65536_158:
	.ds 1
_epdGetBattery_voltage_65536_168:
	.ds 2
_getLutSize_ref_65536_180:
	.ds 1
_lutGroupDisable_group_65536_186:
	.ds 1
_lutGroupSpeedup_PARM_2:
	.ds 1
_lutGroupSpeedup_group_65536_190:
	.ds 1
_lutGroupRepeat_PARM_2:
	.ds 1
_lutGroupRepeat_group_65536_198:
	.ds 1
_lutGroupRepeatReduce_PARM_2:
	.ds 1
_lutGroupRepeatReduce_group_65536_202:
	.ds 1
_selectLUT_lut_65536_206:
	.ds 1
_setWindowX_PARM_2:
	.ds 2
_setWindowX_start_65536_216:
	.ds 2
_setWindowY_PARM_2:
	.ds 2
_setWindowY_start_65536_218:
	.ds 2
_setPosXY_PARM_2:
	.ds 2
_setPosXY_x_65536_221:
	.ds 2
_setColorMode_PARM_2:
	.ds 1
_setColorMode_red_65536_224:
	.ds 1
_fillWindowWithPattern_color_65536_226:
	.ds 1
_clearWindow_color_65536_230:
	.ds 1
_drawWithSleep_tmp_P2FUNC_65537_238:
	.ds 1
_drawWithSleep_tmp_P2DIR_65537_238:
	.ds 1
_drawWithSleep_tmp_P2PULL_65537_238:
	.ds 1
_drawWithSleep_tmp_P2LVLSEL_65537_238:
	.ds 1
_drawLineHorizontal_PARM_2:
	.ds 2
_drawLineHorizontal_PARM_3:
	.ds 2
_drawLineHorizontal_PARM_4:
	.ds 2
_drawLineHorizontal_color_65536_241:
	.ds 1
_drawLineVertical_PARM_2:
	.ds 2
_drawLineVertical_PARM_3:
	.ds 2
_drawLineVertical_PARM_4:
	.ds 2
_drawLineVertical_color_65536_245:
	.ds 1
_beginWriteFramebuffer_color_65536_254:
	.ds 1
_loadRawBitmap_PARM_2:
	.ds 2
_loadRawBitmap_PARM_3:
	.ds 2
_loadRawBitmap_PARM_4:
	.ds 1
_loadRawBitmap_bmp_65536_261:
	.ds 3
_loadRawBitmap_xsize_65536_262:
	.ds 2
_loadRawBitmap_size_65537_263:
	.ds 2
_printBarcode_PARM_2:
	.ds 2
_printBarcode_PARM_3:
	.ds 2
_printBarcode_string_65536_268:
	.ds 3
_printBarcode_bci_65537_270:
	.ds 9
_pushXFontBytesToEPD_PARM_2:
	.ds 1
_pushXFontBytesToEPD_byte1_65536_275:
	.ds 1
_pushXFontBytesToEPD_offset_131072_277:
	.ds 1
_pushXFontBytesToEPD_offset_131072_282:
	.ds 1
_bufferByteShift_byte_65536_292:
	.ds 1
_pushYFontBytesToEPD_PARM_2:
	.ds 1
_pushYFontBytesToEPD_byte1_65536_297:
	.ds 1
_pushYFontBytesToEPD_c_262144_301:
	.ds 1
_writeCharEPD_c_65536_309:
	.ds 1
_writeCharEPD_empty_65536_310:
	.ds 1
_writeCharEPD_begin_65537_318:
	.ds 1
_writeCharEPD_end_65538_320:
	.ds 1
_writeCharEPD_pos_131074_322:
	.ds 1
_epdPrintBegin_PARM_2:
	.ds 2
_epdPrintBegin_PARM_3:
	.ds 1
_epdPrintBegin_PARM_4:
	.ds 1
_epdPrintBegin_PARM_5:
	.ds 1
_epdPrintBegin_x_65536_328:
	.ds 2
_epdPrintBegin_extra_131072_330:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_epdCharSize:
	.ds 1
_directionY:
	.ds 1
_fontCurXpos:
	.ds 2
_fontCurYpos:
	.ds 2
_currentLut:
	.ds 1
_dispLutSize::
	.ds 1
_isInited:
	.ds 1
_epdGPIOActive::
	.ds 1
_customLUT::
	.ds 128
_waveform10::
	.ds 3
_waveform7::
	.ds 3
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'epdBusySleep'
;------------------------------------------------------------
;timeout                   Allocated with name '_epdBusySleep_timeout_65536_120'
;tmp_P2FUNC                Allocated with name '_epdBusySleep_tmp_P2FUNC_65536_121'
;tmp_P2DIR                 Allocated with name '_epdBusySleep_tmp_P2DIR_65536_121'
;tmp_P2PULL                Allocated with name '_epdBusySleep_tmp_P2PULL_65536_121'
;tmp_P2LVLSEL              Allocated with name '_epdBusySleep_tmp_P2LVLSEL_65536_121'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:98: static void epdBusySleep(uint32_t timeout) {
;	-----------------------------------------
;	 function epdBusySleep
;	-----------------------------------------
_epdBusySleep:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_epdBusySleep_timeout_65536_120
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:99: uint8_t tmp_P2FUNC = P2FUNC;
	mov	dptr,#_epdBusySleep_tmp_P2FUNC_65536_121
	mov	a,_P2FUNC
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:100: uint8_t tmp_P2DIR = P2DIR;
	mov	dptr,#_epdBusySleep_tmp_P2DIR_65536_121
	mov	a,_P2DIR
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:101: uint8_t tmp_P2PULL = P2PULL;
	mov	dptr,#_epdBusySleep_tmp_P2PULL_65536_121
	mov	a,_P2PULL
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:102: uint8_t tmp_P2LVLSEL = P2LVLSEL;
	mov	dptr,#_epdBusySleep_tmp_P2LVLSEL_65536_121
	mov	a,_P2LVLSEL
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:103: P2FUNC &= 0xfd;
	anl	_P2FUNC,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:104: P2DIR |= 2;
	orl	_P2DIR,#0x02
;	board/zbs29_BW_ssd1619/screen.c:105: P2PULL |= 2;
	orl	_P2PULL,#0x02
;	board/zbs29_BW_ssd1619/screen.c:106: P2LVLSEL |= 2;
	orl	_P2LVLSEL,#0x02
;	board/zbs29_BW_ssd1619/screen.c:108: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:109: P2INTEN |= 2;
	orl	_P2INTEN,#0x02
;	board/zbs29_BW_ssd1619/screen.c:110: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:111: sleepForMsec(timeout);
	mov	dptr,#_epdBusySleep_timeout_65536_120
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_sleepForMsec
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:112: wdtOn();
	lcall	_wdtOn
;	board/zbs29_BW_ssd1619/screen.c:113: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:114: P2INTEN &= 0xfd;
	anl	_P2INTEN,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:116: P2FUNC = tmp_P2FUNC;
	mov	dptr,#_epdBusySleep_tmp_P2FUNC_65536_121
	movx	a,@dptr
	mov	_P2FUNC,a
;	board/zbs29_BW_ssd1619/screen.c:117: P2DIR = tmp_P2DIR;
	mov	dptr,#_epdBusySleep_tmp_P2DIR_65536_121
	movx	a,@dptr
	mov	_P2DIR,a
;	board/zbs29_BW_ssd1619/screen.c:118: P2PULL = tmp_P2PULL;
	mov	dptr,#_epdBusySleep_tmp_P2PULL_65536_121
	movx	a,@dptr
	mov	_P2PULL,a
;	board/zbs29_BW_ssd1619/screen.c:119: P2LVLSEL = tmp_P2LVLSEL;
	mov	dptr,#_epdBusySleep_tmp_P2LVLSEL_65536_121
	movx	a,@dptr
	mov	_P2LVLSEL,a
;	board/zbs29_BW_ssd1619/screen.c:120: eepromPrvDeselect();
	nop
	nop
	nop
;	assignBit
	setb	_P1_1
	nop
	nop
	nop
;	board/zbs29_BW_ssd1619/screen.c:121: }
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdBusyWait'
;------------------------------------------------------------
;sloc0                     Allocated with name '_epdBusyWait_sloc0_1_0'
;timeout                   Allocated with name '_epdBusyWait_timeout_65536_123'
;start                     Allocated with name '_epdBusyWait_start_65536_124'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:122: static void epdBusyWait(uint32_t timeout) {
;	-----------------------------------------
;	 function epdBusyWait
;	-----------------------------------------
_epdBusyWait:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_epdBusyWait_timeout_65536_123
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:123: uint32_t __xdata start = timerGet();
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	board/zbs29_BW_ssd1619/screen.c:125: while (timerGet() - start < timeout) {
	mov	dptr,#_epdBusyWait_timeout_65536_123
	movx	a,@dptr
	mov	_epdBusyWait_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_epdBusyWait_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_epdBusyWait_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_epdBusyWait_sloc0_1_0 + 3),a
00103$:
	lcall	_timerGet
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r0,a
	mov	a,r1
	subb	a,r5
	mov	r1,a
	mov	a,r2
	subb	a,r6
	mov	r2,a
	mov	a,r3
	subb	a,r7
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,_epdBusyWait_sloc0_1_0
	mov	a,r1
	subb	a,(_epdBusyWait_sloc0_1_0 + 1)
	mov	a,r2
	subb	a,(_epdBusyWait_sloc0_1_0 + 2)
	mov	a,r3
	subb	a,(_epdBusyWait_sloc0_1_0 + 3)
	jnc	00105$
;	board/zbs29_BW_ssd1619/screen.c:126: if (!P2_1)
	jb	_P2_1,00103$
;	board/zbs29_BW_ssd1619/screen.c:127: return;
	sjmp	00109$
00105$:
;	board/zbs29_BW_ssd1619/screen.c:129: pr("screen timeout %lu ticks :(\n", timerGet() - start);
	lcall	_timerGet
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r1
	subb	a,r5
	mov	r5,a
	mov	a,r2
	subb	a,r6
	mov	r6,a
	mov	a,r3
	subb	a,r7
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_pr
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	board/zbs29_BW_ssd1619/screen.c:130: while (1)
00107$:
	sjmp	00107$
00109$:
;	board/zbs29_BW_ssd1619/screen.c:132: }
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'commandReadBegin'
;------------------------------------------------------------
;cmd                       Allocated with name '_commandReadBegin_cmd_65536_126'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:133: static void commandReadBegin(uint8_t cmd) {
;	-----------------------------------------
;	 function commandReadBegin
;	-----------------------------------------
_commandReadBegin:
	mov	a,dpl
	mov	dptr,#_commandReadBegin_cmd_65536_126
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:134: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:135: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_ssd1619/screen.c:136: spiByte(cmd);  // dump LUT
	mov	dptr,#_commandReadBegin_cmd_65536_126
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiByte
;	board/zbs29_BW_ssd1619/screen.c:138: P0DIR = (P0DIR & ~(1 << 0)) | (1 << 1);
	mov	a,#0xfe
	anl	a,_P0DIR
	orl	a,#0x02
	mov	_P0DIR,a
;	board/zbs29_BW_ssd1619/screen.c:139: P0 &= ~(1 << 0);
	anl	_P0,#0xfe
;	board/zbs29_BW_ssd1619/screen.c:140: P0FUNC &= ~((1 << 0) | (1 << 1));
	anl	_P0FUNC,#0xfc
;	board/zbs29_BW_ssd1619/screen.c:141: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	board/zbs29_BW_ssd1619/screen.c:142: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'commandReadEnd'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:143: static void commandReadEnd() {
;	-----------------------------------------
;	 function commandReadEnd
;	-----------------------------------------
_commandReadEnd:
;	board/zbs29_BW_ssd1619/screen.c:145: P0FUNC |= (1 << 0) | (1 << 1);
	orl	_P0FUNC,#0x03
;	board/zbs29_BW_ssd1619/screen.c:146: epdDeselect();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:147: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdReadByte'
;------------------------------------------------------------
;val                       Allocated with name '_epdReadByte_val_65536_132'
;i                         Allocated with name '_epdReadByte_i_65536_132'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:149: static uint8_t epdReadByte() {
;	-----------------------------------------
;	 function epdReadByte
;	-----------------------------------------
_epdReadByte:
	push	ar7
	push	ar6
;	board/zbs29_BW_ssd1619/screen.c:150: uint8_t val = 0, i;
	mov	dptr,#_epdReadByte_val_65536_132
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:152: for (i = 0; i < 8; i++) {
	mov	r7,#0x00
00104$:
;	board/zbs29_BW_ssd1619/screen.c:153: P0_0 = 1;
;	assignBit
	setb	_P0_0
;	board/zbs29_BW_ssd1619/screen.c:154: __asm__("nop\nnop\nnop\nnop\nnop\nnop\n");
	nop
	nop
	nop
	nop
	nop
	nop
;	board/zbs29_BW_ssd1619/screen.c:155: val <<= 1;
	mov	dptr,#_epdReadByte_val_65536_132
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:156: if (P0_1)
	jnb	_P0_1,00102$
;	board/zbs29_BW_ssd1619/screen.c:157: val++;
	mov	dptr,#_epdReadByte_val_65536_132
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00102$:
;	board/zbs29_BW_ssd1619/screen.c:158: P0_0 = 0;
;	assignBit
	clr	_P0_0
;	board/zbs29_BW_ssd1619/screen.c:159: __asm__("nop\nnop\nnop\nnop\nnop\nnop\n");
	nop
	nop
	nop
	nop
	nop
	nop
;	board/zbs29_BW_ssd1619/screen.c:152: for (i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00122$
00122$:
	jc	00104$
;	board/zbs29_BW_ssd1619/screen.c:162: return val;
	mov	dptr,#_epdReadByte_val_65536_132
	movx	a,@dptr
	mov	dpl,a
;	board/zbs29_BW_ssd1619/screen.c:163: }
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shortCommand'
;------------------------------------------------------------
;cmd                       Allocated with name '_shortCommand_cmd_65536_135'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:164: static void shortCommand(uint8_t cmd) {
;	-----------------------------------------
;	 function shortCommand
;	-----------------------------------------
_shortCommand:
	mov	a,dpl
	mov	dptr,#_shortCommand_cmd_65536_135
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:165: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:166: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_ssd1619/screen.c:167: spiTXByte(cmd);
	mov	dptr,#_shortCommand_cmd_65536_135
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:168: epdDeselect();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:169: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shortCommand1'
;------------------------------------------------------------
;arg                       Allocated with name '_shortCommand1_PARM_2'
;cmd                       Allocated with name '_shortCommand1_cmd_65536_140'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:170: static void shortCommand1(uint8_t cmd, uint8_t arg) {
;	-----------------------------------------
;	 function shortCommand1
;	-----------------------------------------
_shortCommand1:
	mov	a,dpl
	mov	dptr,#_shortCommand1_cmd_65536_140
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:171: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:172: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_ssd1619/screen.c:173: spiTXByte(cmd);
	mov	dptr,#_shortCommand1_cmd_65536_140
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:174: markData();
;	assignBit
	setb	_P2_2
;	board/zbs29_BW_ssd1619/screen.c:175: spiTXByte(arg);
	mov	dptr,#_shortCommand1_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:176: epdDeselect();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shortCommand2'
;------------------------------------------------------------
;arg1                      Allocated with name '_shortCommand2_PARM_2'
;arg2                      Allocated with name '_shortCommand2_PARM_3'
;cmd                       Allocated with name '_shortCommand2_cmd_65536_146'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:178: static void shortCommand2(uint8_t cmd, uint8_t arg1, uint8_t arg2) {
;	-----------------------------------------
;	 function shortCommand2
;	-----------------------------------------
_shortCommand2:
	mov	a,dpl
	mov	dptr,#_shortCommand2_cmd_65536_146
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:179: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:180: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_ssd1619/screen.c:181: spiTXByte(cmd);
	mov	dptr,#_shortCommand2_cmd_65536_146
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:182: markData();
;	assignBit
	setb	_P2_2
;	board/zbs29_BW_ssd1619/screen.c:183: spiTXByte(arg1);
	mov	dptr,#_shortCommand2_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:184: spiTXByte(arg2);
	mov	dptr,#_shortCommand2_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:185: epdDeselect();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:186: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'commandBegin'
;------------------------------------------------------------
;cmd                       Allocated with name '_commandBegin_cmd_65536_152'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:187: static void commandBegin(uint8_t cmd) {
;	-----------------------------------------
;	 function commandBegin
;	-----------------------------------------
_commandBegin:
	mov	a,dpl
	mov	dptr,#_commandBegin_cmd_65536_152
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:188: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:189: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_ssd1619/screen.c:190: spiTXByte(cmd);
	mov	dptr,#_commandBegin_cmd_65536_152
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:191: markData();
;	assignBit
	setb	_P2_2
;	board/zbs29_BW_ssd1619/screen.c:192: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdReset'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:193: static void epdReset() {
;	-----------------------------------------
;	 function epdReset
;	-----------------------------------------
_epdReset:
;	board/zbs29_BW_ssd1619/screen.c:194: timerDelay(TIMER_TICKS_PER_SECOND / 100);
	mov	dptr,#0x3415
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs29_BW_ssd1619/screen.c:195: P2_0 = 0;
;	assignBit
	clr	_P2_0
;	board/zbs29_BW_ssd1619/screen.c:196: timerDelay(TIMER_TICKS_PER_SECOND / 100);
	mov	dptr,#0x3415
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs29_BW_ssd1619/screen.c:197: P2_0 = 1;
;	assignBit
	setb	_P2_0
;	board/zbs29_BW_ssd1619/screen.c:198: timerDelay(TIMER_TICKS_PER_SECOND / 100);
	mov	dptr,#0x3415
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs29_BW_ssd1619/screen.c:200: shortCommand(CMD_SOFT_RESET);  // software reset
	mov	dpl,#0x12
	lcall	_shortCommand
;	board/zbs29_BW_ssd1619/screen.c:201: timerDelay(TIMER_TICKS_PER_SECOND / 100);
	mov	dptr,#0x3415
	clr	a
	mov	b,a
;	board/zbs29_BW_ssd1619/screen.c:204: }
	ljmp	_timerDelay
;------------------------------------------------------------
;Allocation info for local variables in function 'epdConfigGPIO'
;------------------------------------------------------------
;setup                     Allocated with name '_epdConfigGPIO_setup_65536_158'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:205: void epdConfigGPIO(bool setup) {
;	-----------------------------------------
;	 function epdConfigGPIO
;	-----------------------------------------
_epdConfigGPIO:
	mov	a,dpl
	mov	dptr,#_epdConfigGPIO_setup_65536_158
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:215: if (epdGPIOActive == setup) return;
	mov	dptr,#_epdGPIOActive
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_epdConfigGPIO_setup_65536_158
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00102$
	ret
00102$:
;	board/zbs29_BW_ssd1619/screen.c:216: if (setup) {
	mov	a,r6
	jz	00104$
;	board/zbs29_BW_ssd1619/screen.c:217: P2DIR |= (1 << 1);                // busy as input
	orl	_P2DIR,#0x02
;	board/zbs29_BW_ssd1619/screen.c:218: P2DIR &= ~((1 << 2) | (1 << 0));  // D/C and Reset as output
	anl	_P2DIR,#0xfa
;	board/zbs29_BW_ssd1619/screen.c:219: P1DIR &= ~((1 << 7) | (1 << 2) | (1 << 5));  // select and bs1 as output
	anl	_P1DIR,#0x5b
;	board/zbs29_BW_ssd1619/screen.c:221: P1_5 = 0;
;	assignBit
	clr	_P1_5
;	board/zbs29_BW_ssd1619/screen.c:222: P1_7 = 1;                         // deselect EPD
;	assignBit
	setb	_P1_7
	sjmp	00105$
00104$:
;	board/zbs29_BW_ssd1619/screen.c:224: P2DIR |= ((1 << 2) | (1 << 0));  // DC and Reset as input
	orl	_P2DIR,#0x05
;	board/zbs29_BW_ssd1619/screen.c:225: P2 &= ~((1 << 2) | (1 << 0));
	anl	_P2,#0xfa
;	board/zbs29_BW_ssd1619/screen.c:226: P1DIR |= ((1 << 7) | (1 << 2));  // Select and BS1 as input
	orl	_P1DIR,#0x84
;	board/zbs29_BW_ssd1619/screen.c:227: P2 &= ~((1 << 7));
	anl	_P2,#0x7f
00105$:
;	board/zbs29_BW_ssd1619/screen.c:229: epdGPIOActive = setup;
	mov	dptr,#_epdConfigGPIO_setup_65536_158
	movx	a,@dptr
	mov	dptr,#_epdGPIOActive
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:230: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdEnterSleep'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:231: void epdEnterSleep() {
;	-----------------------------------------
;	 function epdEnterSleep
;	-----------------------------------------
_epdEnterSleep:
;	board/zbs29_BW_ssd1619/screen.c:232: P2_0 = 0;
;	assignBit
	clr	_P2_0
;	board/zbs29_BW_ssd1619/screen.c:233: timerDelay(10);
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs29_BW_ssd1619/screen.c:234: P2_0 = 1;
;	assignBit
	setb	_P2_0
;	board/zbs29_BW_ssd1619/screen.c:235: timerDelay(50);
	mov	dptr,#(0x32&0x00ff)
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs29_BW_ssd1619/screen.c:236: epdReset();
	lcall	_epdReset
;	board/zbs29_BW_ssd1619/screen.c:237: shortCommand(CMD_SOFT_RESET2);
	mov	dpl,#0x13
	lcall	_shortCommand
;	board/zbs29_BW_ssd1619/screen.c:238: epdBusyWait(TIMER_TICKS_PER_MS * 15);
	mov	dptr,#0x4e1b
	clr	a
	mov	b,a
	lcall	_epdBusyWait
;	board/zbs29_BW_ssd1619/screen.c:239: shortCommand1(CMD_ENTER_SLEEP, 0x03);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:240: isInited = false;
	mov	dptr,#_isInited
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:241: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdSetup'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:242: void epdSetup() {
;	-----------------------------------------
;	 function epdSetup
;	-----------------------------------------
_epdSetup:
;	board/zbs29_BW_ssd1619/screen.c:243: epdReset();
	lcall	_epdReset
;	board/zbs29_BW_ssd1619/screen.c:244: shortCommand1(CMD_ANALOG_BLK_CTRL, 0x54);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x54
	movx	@dptr,a
	mov	dpl,#0x74
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:245: shortCommand1(CMD_DIGITAL_BLK_CTRL, 0x3B);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x3b
	movx	@dptr,a
	mov	dpl,#0x7e
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:246: shortCommand2(CMD_UNKNOWN_1, 0x04, 0x63);
	mov	dptr,#_shortCommand2_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_shortCommand2_PARM_3
	mov	a,#0x63
	movx	@dptr,a
	mov	dpl,#0x2b
	lcall	_shortCommand2
;	board/zbs29_BW_ssd1619/screen.c:248: commandBegin(CMD_SOFT_START_CTRL);
	mov	dpl,#0x0c
	lcall	_commandBegin
;	board/zbs29_BW_ssd1619/screen.c:249: epdSend(0x8f);
	mov	dpl,#0x8f
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:250: epdSend(0x8f);
	mov	dpl,#0x8f
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:251: epdSend(0x8f);
	mov	dpl,#0x8f
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:252: epdSend(0x3f);
	mov	dpl,#0x3f
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:253: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:255: commandBegin(CMD_DRV_OUTPUT_CTRL);
	mov	dpl,#0x01
	lcall	_commandBegin
;	board/zbs29_BW_ssd1619/screen.c:256: epdSend((SCREEN_HEIGHT - 1) & 0xff);
	mov	dpl,#0x27
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:257: epdSend((SCREEN_HEIGHT - 1) >> 8);
	mov	dpl,#0x01
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:258: epdSend(0x00);
	mov	dpl,#0x00
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:259: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:263: shortCommand1(CMD_BORDER_WAVEFORM_CTRL, 0x01);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x3c
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:264: shortCommand1(CMD_TEMP_SENSOR_CONTROL, 0x80);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dpl,#0x18
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:265: shortCommand1(CMD_DISP_UPDATE_CTRL2, 0xB1);  // mode 1 (i2C)
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xb1
	movx	@dptr,a
	mov	dpl,#0x22
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:267: shortCommand(CMD_ACTIVATION);
	mov	dpl,#0x20
	lcall	_shortCommand
;	board/zbs29_BW_ssd1619/screen.c:268: epdBusyWait(TIMER_TICKS_PER_SECOND);
	mov	dptr,#0x5855
	mov	b,#0x14
	clr	a
	lcall	_epdBusyWait
;	board/zbs29_BW_ssd1619/screen.c:269: isInited = true;
	mov	dptr,#_isInited
	mov	a,#0x01
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:270: currentLut = EPD_LUT_DEFAULT;
	mov	dptr,#_currentLut
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:271: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdGetStatus'
;------------------------------------------------------------
;sta                       Allocated with name '_epdGetStatus_sta_65536_166'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:272: static uint8_t epdGetStatus() {
;	-----------------------------------------
;	 function epdGetStatus
;	-----------------------------------------
_epdGetStatus:
;	board/zbs29_BW_ssd1619/screen.c:274: commandReadBegin(0x2F);
	mov	dpl,#0x2f
	lcall	_commandReadBegin
;	board/zbs29_BW_ssd1619/screen.c:275: sta = epdReadByte();
	lcall	_epdReadByte
	mov	r7,dpl
;	board/zbs29_BW_ssd1619/screen.c:276: commandReadEnd();
	push	ar7
	lcall	_commandReadEnd
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:277: return sta;
	mov	dpl,r7
;	board/zbs29_BW_ssd1619/screen.c:278: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdGetBattery'
;------------------------------------------------------------
;voltage                   Allocated with name '_epdGetBattery_voltage_65536_168'
;val                       Allocated with name '_epdGetBattery_val_65536_168'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:279: uint16_t epdGetBattery(void) {
;	-----------------------------------------
;	 function epdGetBattery
;	-----------------------------------------
_epdGetBattery:
;	board/zbs29_BW_ssd1619/screen.c:280: uint16_t voltage = 2600;
	mov	dptr,#_epdGetBattery_voltage_65536_168
	mov	a,#0x28
	movx	@dptr,a
	mov	a,#0x0a
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:283: epdReset(); 
	lcall	_epdReset
;	board/zbs29_BW_ssd1619/screen.c:285: shortCommand1(CMD_DISP_UPDATE_CTRL2, SCREEN_CMD_CLOCK_ON | SCREEN_CMD_ANALOG_ON);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xc0
	movx	@dptr,a
	mov	dpl,#0x22
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:286: shortCommand(CMD_ACTIVATION);
	mov	dpl,#0x20
	lcall	_shortCommand
;	board/zbs29_BW_ssd1619/screen.c:287: epdBusyWait(TIMER_TICKS_PER_MS * 1000);
	mov	dptr,#0x5708
	mov	b,#0x14
	clr	a
	lcall	_epdBusyWait
;	board/zbs29_BW_ssd1619/screen.c:289: for (val = 3; val < 8; val++) {
	mov	r7,#0x03
00104$:
;	board/zbs29_BW_ssd1619/screen.c:290: shortCommand1(CMD_SETUP_VOLT_DETECT, val);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x15
	push	ar7
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:291: epdBusyWait(TIMER_TICKS_PER_MS * 1000);
	mov	dptr,#0x5708
	mov	b,#0x14
	clr	a
	lcall	_epdBusyWait
;	board/zbs29_BW_ssd1619/screen.c:292: if (epdGetStatus() & 0x10) {  // set if voltage is less than threshold ( == 1.9 + val / 10)
	lcall	_epdGetStatus
	mov	a,dpl
	pop	ar7
	jnb	acc.4,00105$
;	board/zbs29_BW_ssd1619/screen.c:293: voltage = 1850 + mathPrvMul8x8(val, 100);
	mov	a,#0x64
	push	acc
	mov	dpl,r7
	lcall	_mathPrvMul8x8
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	mov	a,#0x3a
	add	a,r5
	mov	r5,a
	mov	a,#0x07
	addc	a,r6
	mov	r6,a
	mov	dptr,#_epdGetBattery_voltage_65536_168
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:294: break;
	sjmp	00103$
00105$:
;	board/zbs29_BW_ssd1619/screen.c:289: for (val = 3; val < 8; val++) {
	inc	r7
	cjne	r7,#0x08,00117$
00117$:
	jc	00104$
00103$:
;	board/zbs29_BW_ssd1619/screen.c:299: shortCommand1(CMD_ENTER_SLEEP, 0x03);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:300: return voltage;
	mov	dptr,#_epdGetBattery_voltage_65536_168
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	board/zbs29_BW_ssd1619/screen.c:301: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loadFixedTempOTPLUT'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:303: void loadFixedTempOTPLUT() {
;	-----------------------------------------
;	 function loadFixedTempOTPLUT
;	-----------------------------------------
_loadFixedTempOTPLUT:
;	board/zbs29_BW_ssd1619/screen.c:304: shortCommand1(0x18, 0x48);                   // external temp sensor
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x48
	movx	@dptr,a
	mov	dpl,#0x18
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:305: shortCommand2(0x1A, 0x05, 0x00);             // < temp register
	mov	dptr,#_shortCommand2_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_shortCommand2_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,#0x1a
	lcall	_shortCommand2
;	board/zbs29_BW_ssd1619/screen.c:306: shortCommand1(CMD_DISP_UPDATE_CTRL2, 0xB1);  // mode 1 (i2C)
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xb1
	movx	@dptr,a
	mov	dpl,#0x22
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:307: shortCommand(CMD_ACTIVATION);
	mov	dpl,#0x20
	lcall	_shortCommand
;	board/zbs29_BW_ssd1619/screen.c:308: epdBusyWait(TIMER_TICKS_PER_SECOND);
	mov	dptr,#0x5855
	mov	b,#0x14
	clr	a
;	board/zbs29_BW_ssd1619/screen.c:309: }
	ljmp	_epdBusyWait
;------------------------------------------------------------
;Allocation info for local variables in function 'writeLut'
;------------------------------------------------------------
;i                         Allocated with name '_writeLut_i_131072_174'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:310: static void writeLut() {
;	-----------------------------------------
;	 function writeLut
;	-----------------------------------------
_writeLut:
;	board/zbs29_BW_ssd1619/screen.c:311: commandBegin(CMD_WRITE_LUT);
	mov	dpl,#0x32
	lcall	_commandBegin
;	board/zbs29_BW_ssd1619/screen.c:312: for (uint8_t i = 0; i < (dispLutSize * 10); i++)
	mov	r7,#0x00
00106$:
	mov	dptr,#_dispLutSize
	movx	a,@dptr
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	board/zbs29_BW_ssd1619/screen.c:313: epdSend(waveformbuffer[i]);
	mov	a,r7
	add	a,#_waveformbuffer
	mov	dpl,a
	clr	a
	addc	a,#(_waveformbuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:312: for (uint8_t i = 0; i < (dispLutSize * 10); i++)
	inc	r7
;	board/zbs29_BW_ssd1619/screen.c:314: commandEnd();
	sjmp	00106$
00102$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:315: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readLut'
;------------------------------------------------------------
;checksum                  Allocated with name '_readLut_checksum_65537_177'
;ident                     Allocated with name '_readLut_ident_65537_177'
;shortl                    Allocated with name '_readLut_shortl_65537_177'
;c                         Allocated with name '_readLut_c_131073_178'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:316: static void readLut() {
;	-----------------------------------------
;	 function readLut
;	-----------------------------------------
_readLut:
;	board/zbs29_BW_ssd1619/screen.c:317: commandReadBegin(0x33);
	mov	dpl,#0x33
	lcall	_commandReadBegin
;	board/zbs29_BW_ssd1619/screen.c:321: for (uint16_t c = 0; c < LUT_BUFFER_SIZE; c++) {
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,#0x80
	mov	a,r5
	subb	a,#0x00
	jnc	00101$
;	board/zbs29_BW_ssd1619/screen.c:322: waveformbuffer[c] = epdReadByte();
	mov	a,r6
	add	a,#_waveformbuffer
	mov	r4,a
	mov	a,r7
	addc	a,#(_waveformbuffer >> 8)
	mov	r5,a
	lcall	_epdReadByte
	mov	r3,dpl
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:321: for (uint16_t c = 0; c < LUT_BUFFER_SIZE; c++) {
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	board/zbs29_BW_ssd1619/screen.c:324: commandReadEnd();
;	board/zbs29_BW_ssd1619/screen.c:325: }
	ljmp	_commandReadEnd
;------------------------------------------------------------
;Allocation info for local variables in function 'getLutSize'
;------------------------------------------------------------
;ref                       Allocated with name '_getLutSize_ref_65536_180'
;c                         Allocated with name '_getLutSize_c_131072_181'
;check                     Allocated with name '_getLutSize_check_196608_182'
;d                         Allocated with name '_getLutSize_d_262144_183'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:326: static uint8_t getLutSize() {
;	-----------------------------------------
;	 function getLutSize
;	-----------------------------------------
_getLutSize:
;	board/zbs29_BW_ssd1619/screen.c:327: uint8_t ref = 0;
	mov	dptr,#_getLutSize_ref_65536_180
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:328: for (uint8_t c = (LUT_BUFFER_SIZE - 4); c > 16; c--) {
	mov	r7,#0x7c
00110$:
	mov	a,r7
	add	a,#0xff - 0x10
	jnc	00105$
;	board/zbs29_BW_ssd1619/screen.c:329: uint8_t check = waveformbuffer[c];
	mov	a,r7
	add	a,#_waveformbuffer
	mov	dpl,a
	clr	a
	addc	a,#(_waveformbuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
;	board/zbs29_BW_ssd1619/screen.c:330: for (uint8_t d = 1; d < 4; d++) {
	mov	r5,#0x01
00107$:
	cjne	r5,#0x04,00135$
00135$:
	jnc	00111$
;	board/zbs29_BW_ssd1619/screen.c:331: if (waveformbuffer[c + d] != check) {
	mov	ar3,r7
	mov	r4,#0x00
	mov	ar1,r5
	mov	r2,#0x00
	mov	a,r1
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,#_waveformbuffer
	mov	dpl,a
	mov	a,r4
	addc	a,#(_waveformbuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	a,ar6,00137$
	sjmp	00108$
00137$:
;	board/zbs29_BW_ssd1619/screen.c:332: ref = c;
	mov	dptr,#_getLutSize_ref_65536_180
	mov	a,r7
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:333: goto end;
	sjmp	00105$
00108$:
;	board/zbs29_BW_ssd1619/screen.c:330: for (uint8_t d = 1; d < 4; d++) {
	inc	r5
	sjmp	00107$
00111$:
;	board/zbs29_BW_ssd1619/screen.c:328: for (uint8_t c = (LUT_BUFFER_SIZE - 4); c > 16; c--) {
	dec	r7
;	board/zbs29_BW_ssd1619/screen.c:337: end:;
	sjmp	00110$
00105$:
;	board/zbs29_BW_ssd1619/screen.c:338: return ref + 1;
	mov	dptr,#_getLutSize_ref_65536_180
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dpl,r7
;	board/zbs29_BW_ssd1619/screen.c:339: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lutGroupDisable'
;------------------------------------------------------------
;group                     Allocated with name '_lutGroupDisable_group_65536_186'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:340: static void lutGroupDisable(uint8_t group) {
;	-----------------------------------------
;	 function lutGroupDisable
;	-----------------------------------------
_lutGroupDisable:
	mov	a,dpl
	mov	dptr,#_lutGroupDisable_group_65536_186
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:341: if (dispLutSize == 7) {
	mov	dptr,#_dispLutSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x07,00102$
;	board/zbs29_BW_ssd1619/screen.c:342: memset(&(waveform7->group[group]), 0x00, 5);
	mov	dptr,#_waveform7
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x23
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_lutGroupDisable_group_65536_186
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_memset
00102$:
;	board/zbs29_BW_ssd1619/screen.c:344: memset(&(waveform10->group[group]), 0x00, 5);
	mov	dptr,#_waveform10
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_lutGroupDisable_group_65536_186
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	board/zbs29_BW_ssd1619/screen.c:346: }
	ljmp	_memset
;------------------------------------------------------------
;Allocation info for local variables in function 'lutGroupSpeedup'
;------------------------------------------------------------
;speed                     Allocated with name '_lutGroupSpeedup_PARM_2'
;group                     Allocated with name '_lutGroupSpeedup_group_65536_190'
;i                         Allocated with name '_lutGroupSpeedup_i_196608_193'
;i                         Allocated with name '_lutGroupSpeedup_i_196608_196'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:347: static void lutGroupSpeedup(uint8_t group, uint8_t speed) {
;	-----------------------------------------
;	 function lutGroupSpeedup
;	-----------------------------------------
_lutGroupSpeedup:
	mov	a,dpl
	mov	dptr,#_lutGroupSpeedup_group_65536_190
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:348: if (dispLutSize == 7) {
	mov	dptr,#_dispLutSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x07,00118$
;	board/zbs29_BW_ssd1619/screen.c:349: for (uint8_t i = 0; i < 4; i++) {
	mov	dptr,#_lutGroupSpeedup_group_65536_190
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	mov	r7,a
	mov	dptr,#_lutGroupSpeedup_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00107$:
	cjne	r5,#0x04,00138$
00138$:
	jc	00139$
	ret
00139$:
;	board/zbs29_BW_ssd1619/screen.c:350: waveform7->group[group].phaselength[i] = 1 + (waveform7->group[group].phaselength[i] / speed);
	mov	dptr,#_waveform7
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x23
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r7
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	b,r6
	div	ab
	mov	r1,a
	inc	r1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	board/zbs29_BW_ssd1619/screen.c:349: for (uint8_t i = 0; i < 4; i++) {
	inc	r5
;	board/zbs29_BW_ssd1619/screen.c:353: for (uint8_t i = 0; i < 4; i++) {
	sjmp	00107$
00118$:
	mov	dptr,#_lutGroupSpeedup_group_65536_190
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	mov	r7,a
	mov	dptr,#_lutGroupSpeedup_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00110$:
	cjne	r5,#0x04,00140$
00140$:
	jnc	00112$
;	board/zbs29_BW_ssd1619/screen.c:354: waveform10->group[group].phaselength[i] = 1 + (waveform10->group[group].phaselength[i] / speed);
	mov	dptr,#_waveform10
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x32
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r7
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	b,r6
	div	ab
	mov	r1,a
	inc	r1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	board/zbs29_BW_ssd1619/screen.c:353: for (uint8_t i = 0; i < 4; i++) {
	inc	r5
	sjmp	00110$
00112$:
;	board/zbs29_BW_ssd1619/screen.c:357: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lutGroupRepeat'
;------------------------------------------------------------
;repeat                    Allocated with name '_lutGroupRepeat_PARM_2'
;group                     Allocated with name '_lutGroupRepeat_group_65536_198'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:358: static void lutGroupRepeat(uint8_t group, uint8_t repeat) {
;	-----------------------------------------
;	 function lutGroupRepeat
;	-----------------------------------------
_lutGroupRepeat:
	mov	a,dpl
	mov	dptr,#_lutGroupRepeat_group_65536_198
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:359: if (dispLutSize == 7) {
	mov	dptr,#_dispLutSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x07,00102$
;	board/zbs29_BW_ssd1619/screen.c:360: waveform7->group[group].repeat = repeat;
	mov	dptr,#_waveform7
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x23
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_lutGroupRepeat_group_65536_198
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_lutGroupRepeat_PARM_2
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__gptrput
00102$:
;	board/zbs29_BW_ssd1619/screen.c:362: waveform10->group[group].repeat = repeat;
	mov	dptr,#_waveform10
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_lutGroupRepeat_group_65536_198
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_lutGroupRepeat_PARM_2
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	board/zbs29_BW_ssd1619/screen.c:364: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'lutGroupRepeatReduce'
;------------------------------------------------------------
;factor                    Allocated with name '_lutGroupRepeatReduce_PARM_2'
;group                     Allocated with name '_lutGroupRepeatReduce_group_65536_202'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:365: static void lutGroupRepeatReduce(uint8_t group, uint8_t factor) {
;	-----------------------------------------
;	 function lutGroupRepeatReduce
;	-----------------------------------------
_lutGroupRepeatReduce:
	mov	a,dpl
	mov	dptr,#_lutGroupRepeatReduce_group_65536_202
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:366: if (dispLutSize == 7) {
	mov	dptr,#_dispLutSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x07,00102$
;	board/zbs29_BW_ssd1619/screen.c:367: waveform7->group[group].repeat = waveform7->group[group].repeat / factor;
	mov	dptr,#_waveform7
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x23
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_lutGroupRepeatReduce_group_65536_202
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_lutGroupRepeatReduce_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	b,r3
	mov	a,r4
	div	ab
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__gptrput
00102$:
;	board/zbs29_BW_ssd1619/screen.c:369: waveform10->group[group].repeat = waveform10->group[group].repeat / factor;
	mov	dptr,#_waveform10
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_lutGroupRepeatReduce_group_65536_202
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_lutGroupRepeatReduce_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	b,r3
	mov	a,r4
	div	ab
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	board/zbs29_BW_ssd1619/screen.c:371: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'selectLUT'
;------------------------------------------------------------
;lut                       Allocated with name '_selectLUT_lut_65536_206'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:372: void selectLUT(uint8_t lut) {
;	-----------------------------------------
;	 function selectLUT
;	-----------------------------------------
_selectLUT:
	mov	a,dpl
	mov	dptr,#_selectLUT_lut_65536_206
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:373: if (currentLut == lut) {
	mov	dptr,#_currentLut
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_selectLUT_lut_65536_206
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00102$
;	board/zbs29_BW_ssd1619/screen.c:374: return;
	ret
00102$:
;	board/zbs29_BW_ssd1619/screen.c:377: if (currentLut != EPD_LUT_DEFAULT) {
	mov	a,r7
	jz	00104$
;	board/zbs29_BW_ssd1619/screen.c:379: shortCommand1(CMD_DISP_UPDATE_CTRL2, 0xB1);  // mode 1?
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xb1
	movx	@dptr,a
	mov	dpl,#0x22
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:380: shortCommand(CMD_ACTIVATION);
	mov	dpl,#0x20
	lcall	_shortCommand
;	board/zbs29_BW_ssd1619/screen.c:381: epdBusyWait(TIMER_TICKS_PER_SECOND);
	mov	dptr,#0x5855
	mov	b,#0x14
	clr	a
	lcall	_epdBusyWait
00104$:
;	board/zbs29_BW_ssd1619/screen.c:384: currentLut = lut;
	mov	dptr,#_selectLUT_lut_65536_206
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_currentLut
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:387: if (lut == EPD_LUT_DEFAULT) {
	mov	a,r7
	jnz	00106$
;	board/zbs29_BW_ssd1619/screen.c:388: return;
	ret
00106$:
;	board/zbs29_BW_ssd1619/screen.c:392: readLut();
	lcall	_readLut
;	board/zbs29_BW_ssd1619/screen.c:394: if (dispLutSize == 0) {
	mov	dptr,#_dispLutSize
	movx	a,@dptr
	jnz	00108$
;	board/zbs29_BW_ssd1619/screen.c:395: dispLutSize = getLutSize();
	lcall	_getLutSize
	mov	r7,dpl
;	board/zbs29_BW_ssd1619/screen.c:396: dispLutSize /= 10;
	mov	r6,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	dptr,#_dispLutSize
	mov	a,r6
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:397: pr("lut size = %d\n", dispLutSize);
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_pr
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	board/zbs29_BW_ssd1619/screen.c:401: memcpy(customLUT, waveformbuffer, dispLutSize * 10);
	mov	dptr,#_dispLutSize
	movx	a,@dptr
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_waveformbuffer
	movx	@dptr,a
	mov	a,#(_waveformbuffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_customLUT
	mov	b,#0x00
	lcall	___memcpy
00108$:
;	board/zbs29_BW_ssd1619/screen.c:404: switch (lut) {
	mov	dptr,#_selectLUT_lut_65536_206
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00160$
	sjmp	00110$
00160$:
	cjne	r7,#0x02,00161$
	sjmp	00111$
00161$:
	cjne	r7,#0x03,00162$
	ljmp	00112$
00162$:
;	board/zbs29_BW_ssd1619/screen.c:406: case EPD_LUT_NO_REPEATS:
00110$:
;	board/zbs29_BW_ssd1619/screen.c:407: lutGroupDisable(LUTGROUP_NEGATIVE);
	mov	dpl,#0x00
	push	ar7
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:408: lutGroupDisable(LUTGROUP_FASTBLINK);
	mov	dpl,#0x01
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:409: lutGroupRepeat(LUTGROUP_SLOWBLINK, 0);
	mov	dptr,#_lutGroupRepeat_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_lutGroupRepeat
;	board/zbs29_BW_ssd1619/screen.c:410: lutGroupSpeedup(LUTGROUP_SET, 2);
	mov	dptr,#_lutGroupSpeedup_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_lutGroupSpeedup
;	board/zbs29_BW_ssd1619/screen.c:411: lutGroupSpeedup(LUTGROUP_IMPROVE_SHARPNESS, 2);
	mov	dptr,#_lutGroupSpeedup_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_lutGroupSpeedup
;	board/zbs29_BW_ssd1619/screen.c:412: lutGroupRepeatReduce(LUTGROUP_IMPROVE_SHARPNESS, 2);
	mov	dptr,#_lutGroupRepeatReduce_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_lutGroupRepeatReduce
;	board/zbs29_BW_ssd1619/screen.c:413: lutGroupSpeedup(LUTGROUP_IMPROVE_REDS, 2);
	mov	dptr,#_lutGroupSpeedup_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_lutGroupSpeedup
;	board/zbs29_BW_ssd1619/screen.c:414: lutGroupRepeatReduce(LUTGROUP_IMPROVE_REDS, 2);
	mov	dptr,#_lutGroupRepeatReduce_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_lutGroupRepeatReduce
;	board/zbs29_BW_ssd1619/screen.c:415: lutGroupDisable(LUTGROUP_UNUSED);
	mov	dpl,#0x06
	lcall	_lutGroupDisable
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:416: break;
;	board/zbs29_BW_ssd1619/screen.c:417: case EPD_LUT_FAST_NO_REDS:
	sjmp	00113$
00111$:
;	board/zbs29_BW_ssd1619/screen.c:418: lutGroupDisable(LUTGROUP_NEGATIVE);
	mov	dpl,#0x00
	push	ar7
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:419: lutGroupDisable(LUTGROUP_FASTBLINK);
	mov	dpl,#0x01
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:420: lutGroupDisable(LUTGROUP_SLOWBLINK);
	mov	dpl,#0x02
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:421: lutGroupSpeedup(LUTGROUP_SET, 2);
	mov	dptr,#_lutGroupSpeedup_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_lutGroupSpeedup
;	board/zbs29_BW_ssd1619/screen.c:422: lutGroupDisable(LUTGROUP_IMPROVE_REDS);
	mov	dpl,#0x05
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:423: lutGroupDisable(LUTGROUP_IMPROVE_SHARPNESS);
	mov	dpl,#0x04
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:424: lutGroupDisable(LUTGROUP_UNUSED);
	mov	dpl,#0x06
	lcall	_lutGroupDisable
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:425: break;
;	board/zbs29_BW_ssd1619/screen.c:426: case EPD_LUT_FAST:
	sjmp	00113$
00112$:
;	board/zbs29_BW_ssd1619/screen.c:427: lutGroupDisable(LUTGROUP_NEGATIVE);
	mov	dpl,#0x00
	push	ar7
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:428: lutGroupDisable(LUTGROUP_FASTBLINK);
	mov	dpl,#0x01
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:429: lutGroupDisable(LUTGROUP_SLOWBLINK);
	mov	dpl,#0x02
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:430: lutGroupRepeat(LUTGROUP_SET, 1);
	mov	dptr,#_lutGroupRepeat_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_lutGroupRepeat
;	board/zbs29_BW_ssd1619/screen.c:431: lutGroupSpeedup(LUTGROUP_SET, 2);
	mov	dptr,#_lutGroupSpeedup_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_lutGroupSpeedup
;	board/zbs29_BW_ssd1619/screen.c:432: lutGroupDisable(LUTGROUP_IMPROVE_SHARPNESS);
	mov	dpl,#0x04
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:433: lutGroupDisable(LUTGROUP_IMPROVE_REDS);
	mov	dpl,#0x05
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:434: lutGroupDisable(LUTGROUP_UNUSED);
	mov	dpl,#0x06
	lcall	_lutGroupDisable
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:436: }
00113$:
;	board/zbs29_BW_ssd1619/screen.c:439: if (lut == EPD_LUT_OTA) {
	cjne	r7,#0x10,00163$
	sjmp	00164$
00163$:
	ljmp	00118$
00164$:
;	board/zbs29_BW_ssd1619/screen.c:440: memcpy(waveformbuffer, customLUT, dispLutSize * 10);
	mov	dptr,#_dispLutSize
	movx	a,@dptr
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_customLUT
	movx	@dptr,a
	mov	a,#(_customLUT >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_waveformbuffer
	mov	b,#0x00
	lcall	___memcpy
;	board/zbs29_BW_ssd1619/screen.c:441: writeLut();
	lcall	_writeLut
;	board/zbs29_BW_ssd1619/screen.c:442: shortCommand1(CMD_GATE_LEVEL, customLUT[70]);
	mov	dptr,#(_customLUT + 0x0046)
	movx	a,@dptr
	mov	dptr,#_shortCommand1_PARM_2
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:443: commandBegin(CMD_SOURCE_LEVEL);
	mov	dpl,#0x04
	lcall	_commandBegin
;	board/zbs29_BW_ssd1619/screen.c:444: epdSend(customLUT[71]);
	mov	dptr,#(_customLUT + 0x0047)
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:445: epdSend(customLUT[72]);
	mov	dptr,#(_customLUT + 0x0048)
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:446: epdSend(customLUT[73]);
	mov	dptr,#(_customLUT + 0x0049)
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:447: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:448: shortCommand1(CMD_DUMMY_PERIOD, customLUT[74]);
	mov	dptr,#(_customLUT + 0x004a)
	movx	a,@dptr
	mov	dptr,#_shortCommand1_PARM_2
	movx	@dptr,a
	mov	dpl,#0x3a
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:449: shortCommand1(CMD_GATE_LINE_WIDTH, customLUT[75]);
	mov	dptr,#(_customLUT + 0x004b)
	movx	a,@dptr
	mov	dptr,#_shortCommand1_PARM_2
	movx	@dptr,a
	mov	dpl,#0x3b
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:450: currentLut = lut;
	mov	dptr,#_selectLUT_lut_65536_206
	movx	a,@dptr
	mov	dptr,#_currentLut
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:451: return;
	ret
00118$:
;	board/zbs29_BW_ssd1619/screen.c:454: if (dispLutSize == 10) {
	mov	dptr,#_dispLutSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00120$
;	board/zbs29_BW_ssd1619/screen.c:455: lutGroupDisable(LUTGROUP_UNUSED);
	mov	dpl,#0x06
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:456: lutGroupDisable(LUTGROUP_UNKNOWN);
	mov	dpl,#0x07
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:457: lutGroupDisable(LUTGROUP_UNUSED3);
	mov	dpl,#0x08
	lcall	_lutGroupDisable
;	board/zbs29_BW_ssd1619/screen.c:458: lutGroupDisable(LUTGROUP_UNUSED4);
	mov	dpl,#0x09
	lcall	_lutGroupDisable
00120$:
;	board/zbs29_BW_ssd1619/screen.c:460: writeLut();
;	board/zbs29_BW_ssd1619/screen.c:461: }
	ljmp	_writeLut
;------------------------------------------------------------
;Allocation info for local variables in function 'setWindowX'
;------------------------------------------------------------
;end                       Allocated with name '_setWindowX_PARM_2'
;start                     Allocated with name '_setWindowX_start_65536_216'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:463: void setWindowX(uint16_t start, uint16_t end) {
;	-----------------------------------------
;	 function setWindowX
;	-----------------------------------------
_setWindowX:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_setWindowX_start_65536_216
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:464: shortCommand2(CMD_WINDOW_X_SIZE, start / 8, end / 8 - 1);
	mov	dptr,#_setWindowX_start_65536_216
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	dptr,#_setWindowX_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	swap	a
	rl	a
	xch	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x1f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	dec	r5
	mov	dptr,#_shortCommand2_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_shortCommand2_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,#0x44
;	board/zbs29_BW_ssd1619/screen.c:465: }
	ljmp	_shortCommand2
;------------------------------------------------------------
;Allocation info for local variables in function 'setWindowY'
;------------------------------------------------------------
;end                       Allocated with name '_setWindowY_PARM_2'
;start                     Allocated with name '_setWindowY_start_65536_218'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:466: void setWindowY(uint16_t start, uint16_t end) {
;	-----------------------------------------
;	 function setWindowY
;	-----------------------------------------
_setWindowY:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_setWindowY_start_65536_218
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:467: commandBegin(CMD_WINDOW_Y_SIZE);
	mov	dpl,#0x45
	lcall	_commandBegin
;	board/zbs29_BW_ssd1619/screen.c:468: epdSend((start)&0xff);
	mov	dptr,#_setWindowY_start_65536_218
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dpl,r5
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:469: epdSend((start) >> 8);
	mov	ar6,r7
	mov	dpl,r6
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:470: epdSend((end - 1) & 0xff);
	mov	dptr,#_setWindowY_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	dec	r5
	mov	dpl,r5
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:471: epdSend((end - 1) >> 8);
	dec	r6
	cjne	r6,#0xff,00106$
	dec	r7
00106$:
	mov	ar6,r7
	mov	dpl,r6
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:472: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:473: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPosXY'
;------------------------------------------------------------
;y                         Allocated with name '_setPosXY_PARM_2'
;x                         Allocated with name '_setPosXY_x_65536_221'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:474: void setPosXY(uint16_t x, uint16_t y) {
;	-----------------------------------------
;	 function setPosXY
;	-----------------------------------------
_setPosXY:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_setPosXY_x_65536_221
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:475: shortCommand1(CMD_XSTART_POS, (uint8_t)(x / 8));
	mov	dptr,#_setPosXY_x_65536_221
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,#0x4e
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:476: commandBegin(CMD_YSTART_POS);
	mov	dpl,#0x4f
	lcall	_commandBegin
;	board/zbs29_BW_ssd1619/screen.c:477: epdSend((y)&0xff);
	mov	dptr,#_setPosXY_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dpl,r5
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:478: epdSend((y) >> 8);
	mov	ar6,r7
	mov	dpl,r6
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:479: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:480: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorMode'
;------------------------------------------------------------
;bw                        Allocated with name '_setColorMode_PARM_2'
;red                       Allocated with name '_setColorMode_red_65536_224'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:481: void setColorMode(uint8_t red, uint8_t bw) {
;	-----------------------------------------
;	 function setColorMode
;	-----------------------------------------
_setColorMode:
	mov	a,dpl
	mov	dptr,#_setColorMode_red_65536_224
;	board/zbs29_BW_ssd1619/screen.c:482: shortCommand1(CMD_DISP_UPDATE_CTRL, (red << 4) | bw);
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	dptr,#_setColorMode_PARM_2
	movx	a,@dptr
	mov	dptr,#_shortCommand1_PARM_2
	orl	a,r7
	movx	@dptr,a
	mov	dpl,#0x21
;	board/zbs29_BW_ssd1619/screen.c:483: }
	ljmp	_shortCommand1
;------------------------------------------------------------
;Allocation info for local variables in function 'fillWindowWithPattern'
;------------------------------------------------------------
;color                     Allocated with name '_fillWindowWithPattern_color_65536_226'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:484: void fillWindowWithPattern(bool color) {
;	-----------------------------------------
;	 function fillWindowWithPattern
;	-----------------------------------------
_fillWindowWithPattern:
	mov	a,dpl
	mov	dptr,#_fillWindowWithPattern_color_65536_226
;	board/zbs29_BW_ssd1619/screen.c:485: if (color == EPD_COLOR_RED) {
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	jz	00102$
;	board/zbs29_BW_ssd1619/screen.c:486: shortCommand1(CMD_WRITE_PATTERN_RED, 0x00);
	mov	dptr,#_shortCommand1_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x46
	ljmp	_shortCommand1
00102$:
;	board/zbs29_BW_ssd1619/screen.c:488: shortCommand1(CMD_WRITE_PATTERN_BW, 0x00);
	mov	dptr,#_shortCommand1_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x47
;	board/zbs29_BW_ssd1619/screen.c:490: }
	ljmp	_shortCommand1
;------------------------------------------------------------
;Allocation info for local variables in function 'clearWindow'
;------------------------------------------------------------
;color                     Allocated with name '_clearWindow_color_65536_230'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:491: void clearWindow(bool color) {
;	-----------------------------------------
;	 function clearWindow
;	-----------------------------------------
_clearWindow:
	mov	a,dpl
	mov	dptr,#_clearWindow_color_65536_230
;	board/zbs29_BW_ssd1619/screen.c:492: if (color == EPD_COLOR_RED) {
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	jz	00102$
;	board/zbs29_BW_ssd1619/screen.c:493: shortCommand1(CMD_WRITE_PATTERN_RED, 0x66);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x66
	movx	@dptr,a
	mov	dpl,#0x46
	ljmp	_shortCommand1
00102$:
;	board/zbs29_BW_ssd1619/screen.c:495: shortCommand1(CMD_WRITE_PATTERN_BW, 0x66);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x66
	movx	@dptr,a
	mov	dpl,#0x47
;	board/zbs29_BW_ssd1619/screen.c:497: }
	ljmp	_shortCommand1
;------------------------------------------------------------
;Allocation info for local variables in function 'clearScreen'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:498: void clearScreen() {
;	-----------------------------------------
;	 function clearScreen
;	-----------------------------------------
_clearScreen:
;	board/zbs29_BW_ssd1619/screen.c:499: setWindowX(0, SCREEN_WIDTH);
	mov	dptr,#_setWindowX_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_setWindowX
;	board/zbs29_BW_ssd1619/screen.c:500: setWindowY(0, SCREEN_HEIGHT);
	mov	dptr,#_setWindowY_PARM_2
	mov	a,#0x28
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_setWindowY
;	board/zbs29_BW_ssd1619/screen.c:501: setPosXY(0, 0);
	mov	dptr,#_setPosXY_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_setPosXY
;	board/zbs29_BW_ssd1619/screen.c:502: shortCommand1(CMD_DATA_ENTRY_MODE, 3);  // was 3
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x11
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:503: shortCommand1(CMD_WRITE_PATTERN_BW, 0x66);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x66
	movx	@dptr,a
	mov	dpl,#0x47
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:504: epdBusyWait(TIMER_TICKS_PER_MS * 100);
	mov	dptr,#0x08b4
	mov	b,#0x02
	clr	a
	lcall	_epdBusyWait
;	board/zbs29_BW_ssd1619/screen.c:505: shortCommand1(CMD_WRITE_PATTERN_RED, 0x66);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x66
	movx	@dptr,a
	mov	dpl,#0x46
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:506: epdBusyWait(TIMER_TICKS_PER_MS * 100);
	mov	dptr,#0x08b4
	mov	b,#0x02
	clr	a
;	board/zbs29_BW_ssd1619/screen.c:507: }
	ljmp	_epdBusyWait
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:508: void draw() {
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
;	board/zbs29_BW_ssd1619/screen.c:509: shortCommand1(0x22, 0xCF);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xcf
	movx	@dptr,a
	mov	dpl,#0x22
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:511: shortCommand(0x20);
	mov	dpl,#0x20
	lcall	_shortCommand
;	board/zbs29_BW_ssd1619/screen.c:512: epdBusyWait(TIMER_TICKS_PER_SECOND * 120);
	mov	dptr,#0x67d8
	mov	b,#0x89
	mov	a,#0x09
;	board/zbs29_BW_ssd1619/screen.c:513: }
	ljmp	_epdBusyWait
;------------------------------------------------------------
;Allocation info for local variables in function 'drawNoWait'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:514: void drawNoWait() {
;	-----------------------------------------
;	 function drawNoWait
;	-----------------------------------------
_drawNoWait:
;	board/zbs29_BW_ssd1619/screen.c:515: shortCommand1(0x22, 0xCF);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xcf
	movx	@dptr,a
	mov	dpl,#0x22
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:517: shortCommand(0x20);
	mov	dpl,#0x20
;	board/zbs29_BW_ssd1619/screen.c:518: }
	ljmp	_shortCommand
;------------------------------------------------------------
;Allocation info for local variables in function 'drawWithSleep'
;------------------------------------------------------------
;tmp_P2FUNC                Allocated with name '_drawWithSleep_tmp_P2FUNC_65537_238'
;tmp_P2DIR                 Allocated with name '_drawWithSleep_tmp_P2DIR_65537_238'
;tmp_P2PULL                Allocated with name '_drawWithSleep_tmp_P2PULL_65537_238'
;tmp_P2LVLSEL              Allocated with name '_drawWithSleep_tmp_P2LVLSEL_65537_238'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:519: void drawWithSleep() {
;	-----------------------------------------
;	 function drawWithSleep
;	-----------------------------------------
_drawWithSleep:
;	board/zbs29_BW_ssd1619/screen.c:520: shortCommand1(0x22, 0xCF);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xcf
	movx	@dptr,a
	mov	dpl,#0x22
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:522: shortCommand(0x20);
	mov	dpl,#0x20
	lcall	_shortCommand
;	board/zbs29_BW_ssd1619/screen.c:523: uint8_t tmp_P2FUNC = P2FUNC;
	mov	dptr,#_drawWithSleep_tmp_P2FUNC_65537_238
	mov	a,_P2FUNC
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:524: uint8_t tmp_P2DIR = P2DIR;
	mov	dptr,#_drawWithSleep_tmp_P2DIR_65537_238
	mov	a,_P2DIR
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:525: uint8_t tmp_P2PULL = P2PULL;
	mov	dptr,#_drawWithSleep_tmp_P2PULL_65537_238
	mov	a,_P2PULL
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:526: uint8_t tmp_P2LVLSEL = P2LVLSEL;
	mov	dptr,#_drawWithSleep_tmp_P2LVLSEL_65537_238
	mov	a,_P2LVLSEL
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:527: P2FUNC &= 0xfd;
	anl	_P2FUNC,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:528: P2DIR |= 2;
	orl	_P2DIR,#0x02
;	board/zbs29_BW_ssd1619/screen.c:529: P2PULL |= 2;
	orl	_P2PULL,#0x02
;	board/zbs29_BW_ssd1619/screen.c:530: P2LVLSEL |= 2;
	orl	_P2LVLSEL,#0x02
;	board/zbs29_BW_ssd1619/screen.c:532: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:533: P2INTEN |= 2;
	orl	_P2INTEN,#0x02
;	board/zbs29_BW_ssd1619/screen.c:534: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:535: sleepForMsec(TIMER_TICKS_PER_SECOND * 120);
	mov	dptr,#0x67d8
	mov	b,#0x89
	mov	a,#0x09
	lcall	_sleepForMsec
;	board/zbs29_BW_ssd1619/screen.c:536: wdtOn();
	lcall	_wdtOn
;	board/zbs29_BW_ssd1619/screen.c:537: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:538: P2INTEN &= 0xfd;
	anl	_P2INTEN,#0xfd
;	board/zbs29_BW_ssd1619/screen.c:540: P2FUNC = tmp_P2FUNC;
	mov	dptr,#_drawWithSleep_tmp_P2FUNC_65537_238
	movx	a,@dptr
	mov	_P2FUNC,a
;	board/zbs29_BW_ssd1619/screen.c:541: P2DIR = tmp_P2DIR;
	mov	dptr,#_drawWithSleep_tmp_P2DIR_65537_238
	movx	a,@dptr
	mov	_P2DIR,a
;	board/zbs29_BW_ssd1619/screen.c:542: P2PULL = tmp_P2PULL;
	mov	dptr,#_drawWithSleep_tmp_P2PULL_65537_238
	movx	a,@dptr
	mov	_P2PULL,a
;	board/zbs29_BW_ssd1619/screen.c:543: P2LVLSEL = tmp_P2LVLSEL;
	mov	dptr,#_drawWithSleep_tmp_P2LVLSEL_65537_238
	movx	a,@dptr
	mov	_P2LVLSEL,a
;	board/zbs29_BW_ssd1619/screen.c:544: eepromPrvDeselect();
	nop
	nop
	nop
;	assignBit
	setb	_P1_1
	nop
	nop
	nop
;	board/zbs29_BW_ssd1619/screen.c:545: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdWaitRdy'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:546: void epdWaitRdy() {
;	-----------------------------------------
;	 function epdWaitRdy
;	-----------------------------------------
_epdWaitRdy:
;	board/zbs29_BW_ssd1619/screen.c:547: epdBusyWait(TIMER_TICKS_PER_SECOND * 120);
	mov	dptr,#0x67d8
	mov	b,#0x89
	mov	a,#0x09
;	board/zbs29_BW_ssd1619/screen.c:548: }
	ljmp	_epdBusyWait
;------------------------------------------------------------
;Allocation info for local variables in function 'drawLineHorizontal'
;------------------------------------------------------------
;x1                        Allocated with name '_drawLineHorizontal_PARM_2'
;x2                        Allocated with name '_drawLineHorizontal_PARM_3'
;y                         Allocated with name '_drawLineHorizontal_PARM_4'
;color                     Allocated with name '_drawLineHorizontal_color_65536_241'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:549: void drawLineHorizontal(bool color, uint16_t x1, uint16_t x2, uint16_t y) {
;	-----------------------------------------
;	 function drawLineHorizontal
;	-----------------------------------------
_drawLineHorizontal:
	mov	a,dpl
	mov	dptr,#_drawLineHorizontal_color_65536_241
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:550: setWindowX(x1, x2);
	mov	dptr,#_drawLineHorizontal_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_drawLineHorizontal_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_setWindowX_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_setWindowX
;	board/zbs29_BW_ssd1619/screen.c:551: setWindowY(y, y + 1);
	mov	dptr,#_drawLineHorizontal_PARM_4
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	inc	r4
	cjne	r4,#0x00,00110$
	inc	r5
00110$:
	mov	dptr,#_setWindowY_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_setWindowY
;	board/zbs29_BW_ssd1619/screen.c:552: if (color) {
	mov	dptr,#_drawLineHorizontal_color_65536_241
	movx	a,@dptr
	jz	00102$
;	board/zbs29_BW_ssd1619/screen.c:553: shortCommand1(CMD_WRITE_PATTERN_RED, 0xE6);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xe6
	movx	@dptr,a
	mov	dpl,#0x46
	lcall	_shortCommand1
	sjmp	00103$
00102$:
;	board/zbs29_BW_ssd1619/screen.c:555: shortCommand1(CMD_WRITE_PATTERN_BW, 0xE6);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xe6
	movx	@dptr,a
	mov	dpl,#0x47
	lcall	_shortCommand1
00103$:
;	board/zbs29_BW_ssd1619/screen.c:557: epdBusyWait(TIMER_TICKS_PER_MS * 100);
	mov	dptr,#0x08b4
	mov	b,#0x02
	clr	a
;	board/zbs29_BW_ssd1619/screen.c:558: }
	ljmp	_epdBusyWait
;------------------------------------------------------------
;Allocation info for local variables in function 'drawLineVertical'
;------------------------------------------------------------
;sloc0                     Allocated with name '_drawLineVertical_sloc0_1_0'
;x                         Allocated with name '_drawLineVertical_PARM_2'
;y1                        Allocated with name '_drawLineVertical_PARM_3'
;y2                        Allocated with name '_drawLineVertical_PARM_4'
;color                     Allocated with name '_drawLineVertical_color_65536_245'
;c                         Allocated with name '_drawLineVertical_c_65537_249'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:559: void drawLineVertical(bool color, uint16_t x, uint16_t y1, uint16_t y2) {
;	-----------------------------------------
;	 function drawLineVertical
;	-----------------------------------------
_drawLineVertical:
	mov	a,dpl
	mov	dptr,#_drawLineVertical_color_65536_245
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:560: setWindowY(y1, y2);
	mov	dptr,#_drawLineVertical_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_drawLineVertical_PARM_4
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_setWindowY_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setWindowY
;	board/zbs29_BW_ssd1619/screen.c:561: setWindowX(x, x + 8);
	mov	dptr,#_drawLineVertical_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_drawLineVertical_sloc0_1_0,r2
	mov	(_drawLineVertical_sloc0_1_0 + 1),r3
	mov	a,#0x08
	add	a,_drawLineVertical_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_drawLineVertical_sloc0_1_0 + 1)
	mov	r1,a
	mov	dptr,#_setWindowX_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	lcall	_setWindowX
;	board/zbs29_BW_ssd1619/screen.c:562: shortCommand1(CMD_DATA_ENTRY_MODE, 3);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x11
	lcall	_shortCommand1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:563: setPosXY(x, y1);
	mov	dptr,#_setPosXY_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setPosXY
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:564: if (color) {
	mov	dptr,#_drawLineVertical_color_65536_245
	movx	a,@dptr
	jz	00102$
;	board/zbs29_BW_ssd1619/screen.c:565: commandBegin(CMD_WRITE_FB_RED);
	mov	dpl,#0x26
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_commandBegin
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	board/zbs29_BW_ssd1619/screen.c:567: commandBegin(CMD_WRITE_FB_BW);
	mov	dpl,#0x24
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_commandBegin
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00103$:
;	board/zbs29_BW_ssd1619/screen.c:570: c >>= (x % 8);
	mov	a,#0x07
	anl	a,_drawLineVertical_sloc0_1_0
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x80
	sjmp	00128$
00127$:
	clr	c
	rrc	a
00128$:
	djnz	b,00127$
	mov	r3,a
00109$:
;	board/zbs29_BW_ssd1619/screen.c:571: for (; y1 < y2; y1++) {
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00105$
;	board/zbs29_BW_ssd1619/screen.c:572: epdSend(c);
	mov	dpl,r3
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:571: for (; y1 < y2; y1++) {
	inc	r6
;	board/zbs29_BW_ssd1619/screen.c:574: commandEnd();
	cjne	r6,#0x00,00109$
	inc	r7
	sjmp	00109$
00105$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:575: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'beginFullscreenImage'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:576: void beginFullscreenImage() {
;	-----------------------------------------
;	 function beginFullscreenImage
;	-----------------------------------------
_beginFullscreenImage:
;	board/zbs29_BW_ssd1619/screen.c:577: setColorMode(EPD_MODE_NORMAL, EPD_MODE_INVERT);
	mov	dptr,#_setColorMode_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_setColorMode
;	board/zbs29_BW_ssd1619/screen.c:578: setWindowX(0, SCREEN_WIDTH);
	mov	dptr,#_setWindowX_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_setWindowX
;	board/zbs29_BW_ssd1619/screen.c:579: setWindowY(0, SCREEN_HEIGHT);
	mov	dptr,#_setWindowY_PARM_2
	mov	a,#0x28
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_setWindowY
;	board/zbs29_BW_ssd1619/screen.c:580: shortCommand1(CMD_DATA_ENTRY_MODE, 3);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x11
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:581: setPosXY(0, 0);
	mov	dptr,#_setPosXY_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
;	board/zbs29_BW_ssd1619/screen.c:582: }
	ljmp	_setPosXY
;------------------------------------------------------------
;Allocation info for local variables in function 'beginWriteFramebuffer'
;------------------------------------------------------------
;color                     Allocated with name '_beginWriteFramebuffer_color_65536_254'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:583: void beginWriteFramebuffer(bool color) {
;	-----------------------------------------
;	 function beginWriteFramebuffer
;	-----------------------------------------
_beginWriteFramebuffer:
	mov	a,dpl
	mov	dptr,#_beginWriteFramebuffer_color_65536_254
;	board/zbs29_BW_ssd1619/screen.c:584: if (color == EPD_COLOR_RED) {
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	jz	00102$
;	board/zbs29_BW_ssd1619/screen.c:585: commandBegin(CMD_WRITE_FB_RED);
	mov	dpl,#0x26
	lcall	_commandBegin
	sjmp	00104$
00102$:
;	board/zbs29_BW_ssd1619/screen.c:587: commandBegin(CMD_WRITE_FB_BW);
	mov	dpl,#0x24
	lcall	_commandBegin
;	board/zbs29_BW_ssd1619/screen.c:589: epdDeselect();
00104$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:590: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'endWriteFramebuffer'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:591: void endWriteFramebuffer() {
;	-----------------------------------------
;	 function endWriteFramebuffer
;	-----------------------------------------
_endWriteFramebuffer:
;	board/zbs29_BW_ssd1619/screen.c:592: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:593: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loadRawBitmap'
;------------------------------------------------------------
;sloc0                     Allocated with name '_loadRawBitmap_sloc0_1_0'
;x                         Allocated with name '_loadRawBitmap_PARM_2'
;y                         Allocated with name '_loadRawBitmap_PARM_3'
;color                     Allocated with name '_loadRawBitmap_PARM_4'
;bmp                       Allocated with name '_loadRawBitmap_bmp_65536_261'
;xsize                     Allocated with name '_loadRawBitmap_xsize_65536_262'
;size                      Allocated with name '_loadRawBitmap_size_65537_263'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:594: void loadRawBitmap(uint8_t* bmp, uint16_t x, uint16_t y, bool color) {
;	-----------------------------------------
;	 function loadRawBitmap
;	-----------------------------------------
_loadRawBitmap:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_loadRawBitmap_bmp_65536_261
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:595: uint16_t xsize = bmp[0] / 8;
	mov	dptr,#_loadRawBitmap_bmp_65536_261
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r7
	push	ar7
	push	ar5
	lcall	__divsint
	mov	r4,dpl
	mov	r6,dph
	pop	ar5
	pop	ar7
	mov	dptr,#_loadRawBitmap_xsize_65536_262
	mov	a,r4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:596: if (bmp[0] % 8) xsize++;
	mov	a,r5
	anl	a,#0x07
	jz	00102$
	mov	dptr,#_loadRawBitmap_xsize_65536_262
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
00102$:
;	board/zbs29_BW_ssd1619/screen.c:597: uint16_t size = xsize * bmp[1];
	mov	dptr,#_loadRawBitmap_bmp_65536_261
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00132$
	inc	r6
00132$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_loadRawBitmap_xsize_65536_262
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	mov	dptr,#_loadRawBitmap_size_65537_263
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:598: setWindowX(x, x + (xsize * 8));
	mov	dptr,#_loadRawBitmap_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	_loadRawBitmap_sloc0_1_0,r2
	mov	a,r3
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,_loadRawBitmap_sloc0_1_0
	swap	a
	rr	a
	xch	a,_loadRawBitmap_sloc0_1_0
	xrl	a,_loadRawBitmap_sloc0_1_0
	xch	a,_loadRawBitmap_sloc0_1_0
	anl	a,#0xf8
	xch	a,_loadRawBitmap_sloc0_1_0
	xrl	a,_loadRawBitmap_sloc0_1_0
	mov	(_loadRawBitmap_sloc0_1_0 + 1),a
	mov	ar0,r1
	mov	ar3,r4
	mov	a,_loadRawBitmap_sloc0_1_0
	add	a,r0
	mov	r0,a
	mov	a,(_loadRawBitmap_sloc0_1_0 + 1)
	addc	a,r3
	mov	r3,a
	mov	dptr,#_setWindowX_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r4
	push	ar4
	push	ar1
	lcall	_setWindowX
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:599: setWindowY(y, bmp[1] + y);
	mov	dptr,#_loadRawBitmap_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	dptr,#_setWindowY_PARM_2
	mov	a,r2
	add	a,r5
	movx	@dptr,a
	mov	a,r3
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_setWindowY
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	board/zbs29_BW_ssd1619/screen.c:600: setPosXY(x, y);
	mov	dptr,#_setPosXY_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r4
	lcall	_setPosXY
;	board/zbs29_BW_ssd1619/screen.c:601: shortCommand1(CMD_DATA_ENTRY_MODE, 3);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x11
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:602: if (color) {
	mov	dptr,#_loadRawBitmap_PARM_4
	movx	a,@dptr
	jz	00104$
;	board/zbs29_BW_ssd1619/screen.c:603: commandBegin(CMD_WRITE_FB_RED);
	mov	dpl,#0x26
	lcall	_commandBegin
	sjmp	00105$
00104$:
;	board/zbs29_BW_ssd1619/screen.c:605: commandBegin(CMD_WRITE_FB_BW);
	mov	dpl,#0x24
	lcall	_commandBegin
00105$:
;	board/zbs29_BW_ssd1619/screen.c:607: bmp += 2;
	mov	dptr,#_loadRawBitmap_bmp_65536_261
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_loadRawBitmap_bmp_65536_261
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:608: while (size--) {
	mov	dptr,#_loadRawBitmap_bmp_65536_261
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_loadRawBitmap_size_65537_263
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00106$:
	mov	ar1,r3
	mov	ar2,r4
	dec	r3
	cjne	r3,#0xff,00134$
	dec	r4
00134$:
	mov	a,r1
	orl	a,r2
	jz	00118$
;	board/zbs29_BW_ssd1619/screen.c:609: epdSend(*(bmp++));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_loadRawBitmap_bmp_65536_261
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:611: commandEnd();
	sjmp	00106$
00118$:
	mov	dptr,#_loadRawBitmap_bmp_65536_261
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:612: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printBarcode'
;------------------------------------------------------------
;x                         Allocated with name '_printBarcode_PARM_2'
;y                         Allocated with name '_printBarcode_PARM_3'
;string                    Allocated with name '_printBarcode_string_65536_268'
;bci                       Allocated with name '_printBarcode_bci_65537_270'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:613: void printBarcode(const uint8_t* string, uint16_t x, uint16_t y) {
;	-----------------------------------------
;	 function printBarcode
;	-----------------------------------------
_printBarcode:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_printBarcode_string_65536_268
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:614: setWindowY(y, 1);
	mov	dptr,#_printBarcode_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_setWindowY_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_setWindowY
;	board/zbs29_BW_ssd1619/screen.c:615: setWindowX(x, x + 8);
	mov	dptr,#_printBarcode_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	ar3,r5
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_setWindowX_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_setWindowX
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:616: setPosXY(x, y);
	mov	dptr,#_setPosXY_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_setPosXY
;	board/zbs29_BW_ssd1619/screen.c:617: shortCommand1(CMD_DATA_ENTRY_MODE, 1);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x11
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:618: commandBegin(CMD_WRITE_FB_BW);
	mov	dpl,#0x24
	lcall	_commandBegin
;	board/zbs29_BW_ssd1619/screen.c:619: struct BarcodeInfo __xdata bci = {
	mov	dptr,#_printBarcode_string_65536_268
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_printBarcode_bci_65537_270
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_270 + 0x0003)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_270 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_270 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_270 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_270 + 0x0008)
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:622: while (!barcodeIsDone(&bci)) {
00104$:
	mov	dptr,#_printBarcode_bci_65537_270
	lcall	_barcodeIsDone
	jc	00107$
;	board/zbs29_BW_ssd1619/screen.c:623: if (barcodeNextBar(&bci)) {
	mov	dptr,#_printBarcode_bci_65537_270
	lcall	_barcodeNextBar
	jnc	00102$
;	board/zbs29_BW_ssd1619/screen.c:624: epdSend(0xFF);
	mov	dpl,#0xff
	lcall	_spiTXByte
	sjmp	00104$
00102$:
;	board/zbs29_BW_ssd1619/screen.c:626: epdSend(0x00);
	mov	dpl,#0x00
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:629: commandEnd();
	sjmp	00104$
00107$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:630: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pushXFontBytesToEPD'
;------------------------------------------------------------
;byte2                     Allocated with name '_pushXFontBytesToEPD_PARM_2'
;byte1                     Allocated with name '_pushXFontBytesToEPD_byte1_65536_275'
;offset                    Allocated with name '_pushXFontBytesToEPD_offset_131072_277'
;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_278'
;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_280'
;offset                    Allocated with name '_pushXFontBytesToEPD_offset_131072_282'
;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_283'
;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_286'
;i                         Allocated with name '_pushXFontBytesToEPD_i_196608_290'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:632: static void pushXFontBytesToEPD(uint8_t byte1, uint8_t byte2) {
;	-----------------------------------------
;	 function pushXFontBytesToEPD
;	-----------------------------------------
_pushXFontBytesToEPD:
	mov	a,dpl
	mov	dptr,#_pushXFontBytesToEPD_byte1_65536_275
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:633: if (epdCharSize == 1) {
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00205$
	sjmp	00206$
00205$:
	ljmp	00114$
00206$:
;	board/zbs29_BW_ssd1619/screen.c:634: uint8_t offset = 7 - (fontCurXpos % 8);
	mov	dptr,#_fontCurXpos
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	anl	ar6,#0x07
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r6,a
	mov	dptr,#_pushXFontBytesToEPD_offset_131072_277
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:635: for (uint8_t c = 0; c < 8; c++) {
	mov	ar7,r6
	mov	dptr,#_pushXFontBytesToEPD_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00120$:
	cjne	r5,#0x08,00207$
00207$:
	jnc	00103$
;	board/zbs29_BW_ssd1619/screen.c:636: if (byte2 & (1 << (7 - c))) rbuffer[c] |= (1 << offset);
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	r4,a
	mov	b,r4
	inc	b
	mov	r4,#0x01
	mov	r3,#0x00
	sjmp	00210$
00209$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
00210$:
	djnz	b,00209$
	mov	ar1,r6
	mov	r2,#0x00
	mov	a,r1
	anl	ar4,a
	mov	a,r2
	anl	ar3,a
	mov	a,r4
	orl	a,r3
	jz	00121$
	mov	a,r5
	add	a,#_rbuffer
	mov	r3,a
	clr	a
	addc	a,#(_rbuffer >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	mov	ar1,r7
	mov	b,r1
	inc	b
	mov	a,#0x01
	sjmp	00214$
00212$:
	add	a,acc
00214$:
	djnz	b,00212$
	mov	r1,a
	orl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
00121$:
;	board/zbs29_BW_ssd1619/screen.c:635: for (uint8_t c = 0; c < 8; c++) {
	inc	r5
	sjmp	00120$
00103$:
;	board/zbs29_BW_ssd1619/screen.c:638: for (uint8_t c = 0; c < 8; c++) {
	mov	dptr,#_pushXFontBytesToEPD_offset_131072_277
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pushXFontBytesToEPD_byte1_65536_275
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00123$:
	cjne	r5,#0x08,00215$
00215$:
	jnc	00106$
;	board/zbs29_BW_ssd1619/screen.c:639: if (byte1 & (1 << (7 - c))) rbuffer[8 + c] |= (1 << offset);
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	r4,a
	mov	b,r4
	inc	b
	mov	r4,#0x01
	mov	r3,#0x00
	sjmp	00218$
00217$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
00218$:
	djnz	b,00217$
	mov	ar1,r6
	mov	r2,#0x00
	mov	a,r1
	anl	ar4,a
	mov	a,r2
	anl	ar3,a
	mov	a,r4
	orl	a,r3
	jz	00124$
	mov	ar4,r5
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a,#_rbuffer
	mov	r4,a
	mov	a,r3
	addc	a,#(_rbuffer >> 8)
	mov	r3,a
	mov	dpl,r4
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	mov	ar1,r7
	mov	b,r1
	inc	b
	mov	a,#0x01
	sjmp	00222$
00220$:
	add	a,acc
00222$:
	djnz	b,00220$
	mov	r1,a
	orl	ar2,a
	mov	dpl,r4
	mov	dph,r3
	mov	a,r2
	movx	@dptr,a
00124$:
;	board/zbs29_BW_ssd1619/screen.c:638: for (uint8_t c = 0; c < 8; c++) {
	inc	r5
	sjmp	00123$
00106$:
;	board/zbs29_BW_ssd1619/screen.c:641: fontCurXpos++;
	mov	dptr,#_fontCurXpos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00115$
00114$:
;	board/zbs29_BW_ssd1619/screen.c:643: uint8_t offset = 6 - (fontCurXpos % 8);
	mov	dptr,#_fontCurXpos
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	anl	ar6,#0x07
	mov	a,#0x06
	clr	c
	subb	a,r6
	mov	r6,a
	mov	dptr,#_pushXFontBytesToEPD_offset_131072_282
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:645: for (uint8_t c = 0; c < 8; c++) {
	mov	ar7,r6
	mov	dptr,#_pushXFontBytesToEPD_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00126$:
	cjne	r5,#0x08,00223$
00223$:
	jc	00224$
	ljmp	00109$
00224$:
;	board/zbs29_BW_ssd1619/screen.c:646: if (byte2 & (1 << (7 - c))) {
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	r4,a
	mov	b,r4
	inc	b
	mov	r4,#0x01
	mov	r3,#0x00
	sjmp	00226$
00225$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
00226$:
	djnz	b,00225$
	mov	ar1,r6
	mov	r2,#0x00
	mov	a,r1
	anl	ar4,a
	mov	a,r2
	anl	ar3,a
	mov	a,r4
	orl	a,r3
	jz	00127$
;	board/zbs29_BW_ssd1619/screen.c:647: rbuffer[c * 2] |= (3 << offset);
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,#_rbuffer
	mov	r3,a
	mov	a,r4
	addc	a,#(_rbuffer >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	mov	ar1,r7
	mov	b,r1
	inc	b
	mov	a,#0x03
	sjmp	00230$
00228$:
	add	a,acc
00230$:
	djnz	b,00228$
	mov	r1,a
	orl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:648: rbuffer[(c * 2) + 1] |= (3 << offset);
	mov	ar4,r5
	mov	a,r4
	add	a,r4
	mov	r4,a
	inc	r4
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a,#_rbuffer
	mov	r4,a
	mov	a,r3
	addc	a,#(_rbuffer >> 8)
	mov	r3,a
	mov	dpl,r4
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	orl	ar1,a
	mov	dpl,r4
	mov	dph,r3
	mov	a,r1
	movx	@dptr,a
00127$:
;	board/zbs29_BW_ssd1619/screen.c:645: for (uint8_t c = 0; c < 8; c++) {
	inc	r5
	ljmp	00126$
00109$:
;	board/zbs29_BW_ssd1619/screen.c:651: for (uint8_t c = 0; c < 8; c++) {
	mov	dptr,#_pushXFontBytesToEPD_offset_131072_282
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pushXFontBytesToEPD_byte1_65536_275
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00129$:
	cjne	r5,#0x08,00231$
00231$:
	jc	00232$
	ljmp	00112$
00232$:
;	board/zbs29_BW_ssd1619/screen.c:652: if (byte1 & (1 << (7 - c))) {
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	r4,a
	mov	b,r4
	inc	b
	mov	r4,#0x01
	mov	r3,#0x00
	sjmp	00234$
00233$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
00234$:
	djnz	b,00233$
	mov	ar1,r6
	mov	r2,#0x00
	mov	a,r1
	anl	ar4,a
	mov	a,r2
	anl	ar3,a
	mov	a,r4
	orl	a,r3
	jz	00130$
;	board/zbs29_BW_ssd1619/screen.c:653: rbuffer[(c * 2) + 16] |= (3 << offset);
	mov	ar4,r5
	mov	a,r4
	add	a,r4
	mov	r4,a
	add	a,#0x10
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	add	a,#_rbuffer
	mov	r3,a
	mov	a,r2
	addc	a,#(_rbuffer >> 8)
	mov	r2,a
	mov	dpl,r3
	mov	dph,r2
	movx	a,@dptr
	mov	r1,a
	mov	ar0,r7
	mov	b,r0
	inc	b
	mov	a,#0x03
	sjmp	00238$
00236$:
	add	a,acc
00238$:
	djnz	b,00236$
	mov	r0,a
	orl	ar1,a
	mov	dpl,r3
	mov	dph,r2
	mov	a,r1
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:654: rbuffer[(c * 2) + 17] |= (3 << offset);
	mov	a,#0x11
	add	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a,#_rbuffer
	mov	r4,a
	mov	a,r3
	addc	a,#(_rbuffer >> 8)
	mov	r3,a
	mov	dpl,r4
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	orl	ar0,a
	mov	dpl,r4
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
00130$:
;	board/zbs29_BW_ssd1619/screen.c:651: for (uint8_t c = 0; c < 8; c++) {
	inc	r5
	ljmp	00129$
00112$:
;	board/zbs29_BW_ssd1619/screen.c:657: fontCurXpos += 2;
	mov	dptr,#_fontCurXpos
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_fontCurXpos
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00115$:
;	board/zbs29_BW_ssd1619/screen.c:659: if (fontCurXpos % 8 == 0) {
	mov	dptr,#_fontCurXpos
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	anl	a,#0x07
	jz	00240$
	ret
00240$:
;	board/zbs29_BW_ssd1619/screen.c:661: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
	mov	r7,#0x00
00132$:
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	mov	r6,a
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r5,a
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
;	board/zbs29_BW_ssd1619/screen.c:662: epdSend(rbuffer[i]);
	mov	a,r7
	add	a,#_rbuffer
	mov	dpl,a
	clr	a
	addc	a,#(_rbuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:661: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
	inc	r7
	sjmp	00132$
00116$:
;	board/zbs29_BW_ssd1619/screen.c:664: memset(rbuffer, 0, 32);
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rbuffer
	mov	b,#0x00
;	board/zbs29_BW_ssd1619/screen.c:666: }
	ljmp	_memset
;------------------------------------------------------------
;Allocation info for local variables in function 'bufferByteShift'
;------------------------------------------------------------
;byte                      Allocated with name '_bufferByteShift_byte_65536_292'
;offset                    Allocated with name '_bufferByteShift_offset_131072_295'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:667: static void bufferByteShift(uint8_t byte) {
;	-----------------------------------------
;	 function bufferByteShift
;	-----------------------------------------
_bufferByteShift:
	mov	a,dpl
	mov	dptr,#_bufferByteShift_byte_65536_292
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:675: if (rbuffer[1] == 0) {
	mov	dptr,#(_rbuffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	board/zbs29_BW_ssd1619/screen.c:676: epdSend(byte);
	mov	dptr,#_bufferByteShift_byte_65536_292
	movx	a,@dptr
	mov	dpl,a
	ljmp	_spiTXByte
00104$:
;	board/zbs29_BW_ssd1619/screen.c:679: rbuffer[0] |= (byte >> offset);
	mov	dptr,#_rbuffer
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_bufferByteShift_byte_65536_292
	movx	a,@dptr
	mov	r5,a
	mov	b,r7
	inc	b
	mov	a,r5
	sjmp	00118$
00117$:
	clr	c
	rrc	a
00118$:
	djnz	b,00117$
	orl	ar6,a
	mov	dptr,#_rbuffer
	mov	a,r6
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:680: epdSend(rbuffer[0]);
	mov	dpl,r6
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:682: rbuffer[0] = (byte << (8 - offset));
	mov	a,#0x08
	clr	c
	subb	a,r7
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,r5
	sjmp	00121$
00119$:
	add	a,acc
00121$:
	djnz	b,00119$
	mov	dptr,#_rbuffer
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:683: rbuffer[2]++;
	mov	dptr,#(_rbuffer + 0x0002)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_rbuffer + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:684: if (rbuffer[2] == rbuffer[3]) {
	mov	dptr,#(_rbuffer + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00106$
;	board/zbs29_BW_ssd1619/screen.c:685: epdSend(rbuffer[0]);
	mov	dptr,#_rbuffer
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:686: rbuffer[0] = 0;
	mov	dptr,#_rbuffer
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:687: rbuffer[2] = 0;
	mov	dptr,#(_rbuffer + 0x0002)
	movx	@dptr,a
00106$:
;	board/zbs29_BW_ssd1619/screen.c:690: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pushYFontBytesToEPD'
;------------------------------------------------------------
;byte2                     Allocated with name '_pushYFontBytesToEPD_PARM_2'
;byte1                     Allocated with name '_pushYFontBytesToEPD_byte1_65536_297'
;j                         Allocated with name '_pushYFontBytesToEPD_j_196608_300'
;c                         Allocated with name '_pushYFontBytesToEPD_c_262144_301'
;i                         Allocated with name '_pushYFontBytesToEPD_i_327680_302'
;i                         Allocated with name '_pushYFontBytesToEPD_i_327680_305'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:691: static void pushYFontBytesToEPD(uint8_t byte1, uint8_t byte2) {
;	-----------------------------------------
;	 function pushYFontBytesToEPD
;	-----------------------------------------
_pushYFontBytesToEPD:
	mov	a,dpl
	mov	dptr,#_pushYFontBytesToEPD_byte1_65536_297
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:692: if (epdCharSize == 2) {
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00184$
	sjmp	00185$
00184$:
	ljmp	00113$
00185$:
;	board/zbs29_BW_ssd1619/screen.c:693: for (uint8_t j = 0; j < 2; j++) {
	mov	dptr,#_pushYFontBytesToEPD_byte1_65536_297
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pushYFontBytesToEPD_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00122$:
	cjne	r5,#0x02,00186$
00186$:
	jc	00187$
	ret
00187$:
;	board/zbs29_BW_ssd1619/screen.c:694: uint8_t c = 0;
	mov	dptr,#_pushYFontBytesToEPD_c_262144_301
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:695: for (uint8_t i = 7; i != 255; i--) {
	mov	r4,#0x07
00116$:
	cjne	r4,#0xff,00188$
	sjmp	00105$
00188$:
;	board/zbs29_BW_ssd1619/screen.c:696: if (byte1 & (1 << i)) c |= (0x03 << ((i % 4) * 2));
	mov	b,r4
	inc	b
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00190$
00189$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
00190$:
	djnz	b,00189$
	mov	ar0,r7
	mov	r1,#0x00
	mov	a,r0
	anl	ar2,a
	mov	a,r1
	anl	ar3,a
	mov	a,r2
	orl	a,r3
	jz	00102$
	mov	a,#0x03
	anl	a,r4
	add	a,acc
	mov	r3,a
	mov	b,r3
	inc	b
	mov	a,#0x03
	sjmp	00194$
00192$:
	add	a,acc
00194$:
	djnz	b,00192$
	mov	r3,a
	mov	dptr,#_pushYFontBytesToEPD_c_262144_301
	movx	a,@dptr
	orl	a,r3
	movx	@dptr,a
00102$:
;	board/zbs29_BW_ssd1619/screen.c:697: if ((i % 4) == 0) {
	mov	a,r4
	anl	a,#0x03
	jz	00196$
	sjmp	00117$
00196$:
;	board/zbs29_BW_ssd1619/screen.c:698: bufferByteShift(c);
	mov	dptr,#_pushYFontBytesToEPD_c_262144_301
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_bufferByteShift
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:699: c = 0;
	mov	dptr,#_pushYFontBytesToEPD_c_262144_301
	clr	a
	movx	@dptr,a
00117$:
;	board/zbs29_BW_ssd1619/screen.c:695: for (uint8_t i = 7; i != 255; i--) {
	dec	r4
	sjmp	00116$
00105$:
;	board/zbs29_BW_ssd1619/screen.c:702: for (uint8_t i = 7; i != 255; i--) {
	mov	r4,#0x07
00119$:
	cjne	r4,#0xff,00197$
	sjmp	00123$
00197$:
;	board/zbs29_BW_ssd1619/screen.c:703: if (byte2 & (1 << i)) c |= (0x03 << ((i % 4) * 2));
	mov	b,r4
	inc	b
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00199$
00198$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
00199$:
	djnz	b,00198$
	mov	ar0,r6
	mov	r1,#0x00
	mov	a,r0
	anl	ar2,a
	mov	a,r1
	anl	ar3,a
	mov	a,r2
	orl	a,r3
	jz	00107$
	mov	a,#0x03
	anl	a,r4
	add	a,acc
	mov	r3,a
	mov	b,r3
	inc	b
	mov	a,#0x03
	sjmp	00203$
00201$:
	add	a,acc
00203$:
	djnz	b,00201$
	mov	r3,a
	mov	dptr,#_pushYFontBytesToEPD_c_262144_301
	movx	a,@dptr
	orl	a,r3
	movx	@dptr,a
00107$:
;	board/zbs29_BW_ssd1619/screen.c:704: if ((i % 4) == 0) {
	mov	a,r4
	anl	a,#0x03
	jz	00205$
	sjmp	00120$
00205$:
;	board/zbs29_BW_ssd1619/screen.c:705: bufferByteShift(c);
	mov	dptr,#_pushYFontBytesToEPD_c_262144_301
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_bufferByteShift
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:706: c = 0;
	mov	dptr,#_pushYFontBytesToEPD_c_262144_301
	clr	a
	movx	@dptr,a
00120$:
;	board/zbs29_BW_ssd1619/screen.c:702: for (uint8_t i = 7; i != 255; i--) {
	dec	r4
	sjmp	00119$
00123$:
;	board/zbs29_BW_ssd1619/screen.c:693: for (uint8_t j = 0; j < 2; j++) {
	inc	r5
	ljmp	00122$
00113$:
;	board/zbs29_BW_ssd1619/screen.c:711: bufferByteShift(byte1);
	mov	dptr,#_pushYFontBytesToEPD_byte1_65536_297
	movx	a,@dptr
	mov	dpl,a
	lcall	_bufferByteShift
;	board/zbs29_BW_ssd1619/screen.c:712: bufferByteShift(byte2);
	mov	dptr,#_pushYFontBytesToEPD_PARM_2
	movx	a,@dptr
	mov	dpl,a
;	board/zbs29_BW_ssd1619/screen.c:714: }
	ljmp	_bufferByteShift
;------------------------------------------------------------
;Allocation info for local variables in function 'writeCharEPD'
;------------------------------------------------------------
;c                         Allocated with name '_writeCharEPD_c_65536_309'
;empty                     Allocated with name '_writeCharEPD_empty_65536_310'
;i                         Allocated with name '_writeCharEPD_i_131072_311'
;i                         Allocated with name '_writeCharEPD_i_196608_314'
;begin                     Allocated with name '_writeCharEPD_begin_65537_318'
;end                       Allocated with name '_writeCharEPD_end_65538_320'
;pos                       Allocated with name '_writeCharEPD_pos_131074_322'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:715: void writeCharEPD(uint8_t c) {
;	-----------------------------------------
;	 function writeCharEPD
;	-----------------------------------------
_writeCharEPD:
	mov	a,dpl
	mov	dptr,#_writeCharEPD_c_65536_309
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:717: bool empty = true;
	mov	dptr,#_writeCharEPD_empty_65536_310
	mov	a,#0x01
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:718: for (uint8_t i = 0; i < 20; i++) {
	mov	dptr,#_writeCharEPD_c_65536_309
	movx	a,@dptr
	mov	b,#0x14
	mul	ab
	add	a,#_font
	mov	r6,a
	mov	a,#(_font >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
00126$:
	cjne	r5,#0x14,00206$
00206$:
	jnc	00103$
;	board/zbs29_BW_ssd1619/screen.c:719: if (font[c][i]) empty = false;
	mov	a,r5
	add	a,r6
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movc	a,@a+dptr
	jz	00127$
	mov	dptr,#_writeCharEPD_empty_65536_310
	clr	a
	movx	@dptr,a
00127$:
;	board/zbs29_BW_ssd1619/screen.c:718: for (uint8_t i = 0; i < 20; i++) {
	inc	r5
	sjmp	00126$
00103$:
;	board/zbs29_BW_ssd1619/screen.c:721: if (empty) {
	mov	dptr,#_writeCharEPD_empty_65536_310
	movx	a,@dptr
	jz	00109$
;	board/zbs29_BW_ssd1619/screen.c:722: for (uint8_t i = 0; i < 8; i++) {
	mov	r7,#0x00
00129$:
	cjne	r7,#0x08,00210$
00210$:
	jnc	00107$
;	board/zbs29_BW_ssd1619/screen.c:723: if (directionY) {
	mov	dptr,#_directionY
	movx	a,@dptr
	jz	00105$
;	board/zbs29_BW_ssd1619/screen.c:724: pushYFontBytesToEPD(0x00, 0x00);
	mov	dptr,#_pushYFontBytesToEPD_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	lcall	_pushYFontBytesToEPD
	pop	ar7
	sjmp	00130$
00105$:
;	board/zbs29_BW_ssd1619/screen.c:726: pushXFontBytesToEPD(0x00, 0x00);
	mov	dptr,#_pushXFontBytesToEPD_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	lcall	_pushXFontBytesToEPD
	pop	ar7
00130$:
;	board/zbs29_BW_ssd1619/screen.c:722: for (uint8_t i = 0; i < 8; i++) {
	inc	r7
	sjmp	00129$
00107$:
;	board/zbs29_BW_ssd1619/screen.c:729: return;
	ret
00109$:
;	board/zbs29_BW_ssd1619/screen.c:732: uint8_t begin = 0;
	mov	dptr,#_writeCharEPD_begin_65537_318
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:733: while (font[c][begin] == 0x00 && font[c][begin + 1] == 0x00) {
	mov	dptr,#_writeCharEPD_c_65536_309
	movx	a,@dptr
	mov	b,#0x14
	mul	ab
	mov	r6,a
	mov	r7,b
	add	a,#_font
	mov	r4,a
	mov	a,r7
	addc	a,#(_font >> 8)
	mov	r5,a
00111$:
	mov	dptr,#_writeCharEPD_begin_65537_318
	movx	a,@dptr
	mov	r3,a
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	clr	a
	movc	a,@a+dptr
	jnz	00113$
	mov	a,r6
	add	a,#_font
	mov	r1,a
	mov	a,r7
	addc	a,#(_font >> 8)
	mov	r2,a
	mov	a,r3
	inc	a
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	clr	a
	movc	a,@a+dptr
	jnz	00113$
;	board/zbs29_BW_ssd1619/screen.c:734: begin += 2;
	mov	dptr,#_writeCharEPD_begin_65537_318
	mov	a,#0x02
	add	a,r3
	movx	@dptr,a
	sjmp	00111$
00113$:
;	board/zbs29_BW_ssd1619/screen.c:737: uint8_t end = 20;
	mov	dptr,#_writeCharEPD_end_65538_320
	mov	a,#0x14
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:738: while (font[c][end - 1] == 0x00 && font[c][end - 2] == 0x00) {
	mov	dptr,#_writeCharEPD_c_65536_309
	movx	a,@dptr
	mov	b,#0x14
	mul	ab
	mov	r6,a
	mov	r7,b
	add	a,#_font
	mov	r4,a
	mov	a,r7
	addc	a,#(_font >> 8)
	mov	r5,a
00115$:
	mov	dptr,#_writeCharEPD_end_65538_320
	movx	a,@dptr
	mov	r3,a
	dec	a
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	clr	a
	movc	a,@a+dptr
	jnz	00117$
	mov	a,r6
	add	a,#_font
	mov	r1,a
	mov	a,r7
	addc	a,#(_font >> 8)
	mov	r2,a
	mov	a,r3
	add	a,#0xfe
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	clr	a
	movc	a,@a+dptr
	jnz	00117$
;	board/zbs29_BW_ssd1619/screen.c:739: end -= 2;
	mov	a,r3
	add	a,#0xfe
	mov	dptr,#_writeCharEPD_end_65538_320
	movx	@dptr,a
	sjmp	00115$
00117$:
;	board/zbs29_BW_ssd1619/screen.c:742: for (uint8_t pos = begin; pos < end; pos += 2) {
	mov	dptr,#_writeCharEPD_begin_65537_318
	movx	a,@dptr
	mov	dptr,#_writeCharEPD_pos_131074_322
	movx	@dptr,a
	mov	dptr,#_writeCharEPD_c_65536_309
	movx	a,@dptr
	mov	b,#0x14
	mul	ab
	add	a,#_font
	mov	r6,a
	mov	a,#(_font >> 8)
	addc	a,b
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	mov	dptr,#_writeCharEPD_end_65538_320
	movx	a,@dptr
	mov	r3,a
00132$:
	mov	dptr,#_writeCharEPD_pos_131074_322
	movx	a,@dptr
	mov	r2,a
	clr	c
	subb	a,r3
	jnc	00121$
;	board/zbs29_BW_ssd1619/screen.c:743: if (directionY) {
	mov	dptr,#_directionY
	movx	a,@dptr
	jz	00119$
;	board/zbs29_BW_ssd1619/screen.c:744: pushYFontBytesToEPD(font[c][pos + 1], font[c][pos]);
	mov	ar1,r2
	mov	a,r1
	inc	a
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	mov	a,r2
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_pushYFontBytesToEPD_PARM_2
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_pushYFontBytesToEPD
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00133$
00119$:
;	board/zbs29_BW_ssd1619/screen.c:746: pushXFontBytesToEPD(font[c][pos], font[c][pos + 1]);
	mov	a,r2
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	mov	a,r2
	inc	a
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_pushXFontBytesToEPD_PARM_2
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_pushXFontBytesToEPD
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00133$:
;	board/zbs29_BW_ssd1619/screen.c:742: for (uint8_t pos = begin; pos < end; pos += 2) {
	mov	dptr,#_writeCharEPD_pos_131074_322
	movx	a,@dptr
	mov	r2,a
	add	a,#0x02
	movx	@dptr,a
	ljmp	00132$
00121$:
;	board/zbs29_BW_ssd1619/screen.c:751: if (directionY) {
	mov	dptr,#_directionY
	movx	a,@dptr
	jz	00123$
;	board/zbs29_BW_ssd1619/screen.c:752: pushYFontBytesToEPD(0x00, 0x00);
	mov	dptr,#_pushYFontBytesToEPD_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	ljmp	_pushYFontBytesToEPD
00123$:
;	board/zbs29_BW_ssd1619/screen.c:754: pushXFontBytesToEPD(0x00, 0x00);
	mov	dptr,#_pushXFontBytesToEPD_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
;	board/zbs29_BW_ssd1619/screen.c:756: }
	ljmp	_pushXFontBytesToEPD
;------------------------------------------------------------
;Allocation info for local variables in function 'epdPrintBegin'
;------------------------------------------------------------
;sloc0                     Allocated with name '_epdPrintBegin_sloc0_1_0'
;y                         Allocated with name '_epdPrintBegin_PARM_2'
;direction                 Allocated with name '_epdPrintBegin_PARM_3'
;fontsize                  Allocated with name '_epdPrintBegin_PARM_4'
;color                     Allocated with name '_epdPrintBegin_PARM_5'
;x                         Allocated with name '_epdPrintBegin_x_65536_328'
;extra                     Allocated with name '_epdPrintBegin_extra_131072_330'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:759: void epdPrintBegin(uint16_t x, uint16_t y, bool direction, bool fontsize, bool color) {
;	-----------------------------------------
;	 function epdPrintBegin
;	-----------------------------------------
_epdPrintBegin:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_epdPrintBegin_x_65536_328
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:760: directionY = direction;
	mov	dptr,#_epdPrintBegin_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_directionY
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:761: epdCharSize = 1 + fontsize;
	mov	dptr,#_epdPrintBegin_PARM_4
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#_epdCharSize
	mov	a,r6
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:762: if (directionY) {
	mov	a,r7
	jnz	00138$
	ljmp	00111$
00138$:
;	board/zbs29_BW_ssd1619/screen.c:763: uint8_t extra = 0;
	mov	dptr,#_epdPrintBegin_extra_131072_330
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:766: if (x % 8) {
	mov	dptr,#_epdPrintBegin_x_65536_328
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	anl	ar5,#0x07
	mov	r7,#0x00
	mov	a,r5
	orl	a,r7
	jz	00102$
;	board/zbs29_BW_ssd1619/screen.c:767: extra = 8;
	mov	dptr,#_epdPrintBegin_extra_131072_330
	mov	a,#0x08
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:768: rbuffer[0] = 0;      // previous value
	mov	dptr,#_rbuffer
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:769: rbuffer[1] = x % 8;  // offset
	mov	dptr,#(_rbuffer + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:770: rbuffer[2] = 0;      // current byte counter;
	mov	dptr,#(_rbuffer + 0x0002)
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:771: rbuffer[3] = (epdCharSize * 2);
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	add	a,acc
	mov	r7,a
	mov	dptr,#(_rbuffer + 0x0003)
	movx	@dptr,a
	sjmp	00103$
00102$:
;	board/zbs29_BW_ssd1619/screen.c:773: rbuffer[1] = 0;
	mov	dptr,#(_rbuffer + 0x0001)
	clr	a
	movx	@dptr,a
00103$:
;	board/zbs29_BW_ssd1619/screen.c:776: setWindowY(y, 1);
	mov	dptr,#_epdPrintBegin_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_setWindowY_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r7
	push	ar7
	push	ar5
	lcall	_setWindowY
	pop	ar5
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:777: if (epdCharSize == 2) {
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x02,00105$
;	board/zbs29_BW_ssd1619/screen.c:778: setWindowX(x, x + 32 + extra);
	mov	dptr,#_epdPrintBegin_x_65536_328
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar1,r3
	mov	ar2,r4
	mov	a,#0x20
	add	a,r1
	mov	_epdPrintBegin_sloc0_1_0,a
	clr	a
	addc	a,r2
	mov	(_epdPrintBegin_sloc0_1_0 + 1),a
	mov	dptr,#_epdPrintBegin_extra_131072_330
	movx	a,@dptr
	mov	r2,#0x00
	add	a,_epdPrintBegin_sloc0_1_0
	mov	r0,a
	mov	a,r2
	addc	a,(_epdPrintBegin_sloc0_1_0 + 1)
	mov	r2,a
	mov	dptr,#_setWindowX_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_setWindowX
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:779: setPosXY(x, y);
	mov	dptr,#_setPosXY_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	lcall	_setPosXY
	sjmp	00106$
00105$:
;	board/zbs29_BW_ssd1619/screen.c:781: setWindowX(x, x + 16 + extra);
	mov	dptr,#_epdPrintBegin_x_65536_328
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar1,r3
	mov	ar2,r4
	mov	a,#0x10
	add	a,r1
	mov	_epdPrintBegin_sloc0_1_0,a
	clr	a
	addc	a,r2
	mov	(_epdPrintBegin_sloc0_1_0 + 1),a
	mov	dptr,#_epdPrintBegin_extra_131072_330
	movx	a,@dptr
	mov	r2,#0x00
	add	a,_epdPrintBegin_sloc0_1_0
	mov	r0,a
	mov	a,r2
	addc	a,(_epdPrintBegin_sloc0_1_0 + 1)
	mov	r2,a
	mov	dptr,#_setWindowX_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_setWindowX
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:782: setPosXY(x, y);
	mov	dptr,#_setPosXY_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	lcall	_setPosXY
00106$:
;	board/zbs29_BW_ssd1619/screen.c:784: shortCommand1(CMD_DATA_ENTRY_MODE, 1);  // was 3
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x11
	lcall	_shortCommand1
	ljmp	00112$
00111$:
;	board/zbs29_BW_ssd1619/screen.c:786: if (epdCharSize == 2) {
	cjne	r6,#0x02,00108$
;	board/zbs29_BW_ssd1619/screen.c:787: x /= 2;
	mov	dptr,#_epdPrintBegin_x_65536_328
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	dptr,#_epdPrintBegin_x_65536_328
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:788: x *= 2;
	mov	dptr,#_epdPrintBegin_x_65536_328
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	dptr,#_epdPrintBegin_x_65536_328
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:789: setWindowY(y, y + 32);
	mov	dptr,#_epdPrintBegin_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x20
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#_setWindowY_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_setWindowY
	sjmp	00109$
00108$:
;	board/zbs29_BW_ssd1619/screen.c:791: setWindowY(y, y + 16);
	mov	dptr,#_epdPrintBegin_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#_setWindowY_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_setWindowY
00109$:
;	board/zbs29_BW_ssd1619/screen.c:793: setPosXY(x, y);
	mov	dptr,#_epdPrintBegin_x_65536_328
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_epdPrintBegin_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_setPosXY_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_setPosXY
	pop	ar6
	pop	ar7
;	board/zbs29_BW_ssd1619/screen.c:794: fontCurXpos = x;
	mov	dptr,#_fontCurXpos
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_ssd1619/screen.c:795: setWindowX(x, SCREEN_WIDTH);
	mov	dptr,#_setWindowX_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_setWindowX
;	board/zbs29_BW_ssd1619/screen.c:796: shortCommand1(CMD_DATA_ENTRY_MODE, 7);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x11
	lcall	_shortCommand1
;	board/zbs29_BW_ssd1619/screen.c:797: memset(rbuffer, 0, 32);
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rbuffer
	mov	b,#0x00
	lcall	_memset
00112$:
;	board/zbs29_BW_ssd1619/screen.c:800: if (color) {
	mov	dptr,#_epdPrintBegin_PARM_5
	movx	a,@dptr
	jz	00114$
;	board/zbs29_BW_ssd1619/screen.c:801: commandBegin(CMD_WRITE_FB_RED);
	mov	dpl,#0x26
	ljmp	_commandBegin
00114$:
;	board/zbs29_BW_ssd1619/screen.c:803: commandBegin(CMD_WRITE_FB_BW);
	mov	dpl,#0x24
;	board/zbs29_BW_ssd1619/screen.c:805: }
	ljmp	_commandBegin
;------------------------------------------------------------
;Allocation info for local variables in function 'epdPrintEnd'
;------------------------------------------------------------
;i                         Allocated with name '_epdPrintEnd_i_196608_342'
;------------------------------------------------------------
;	board/zbs29_BW_ssd1619/screen.c:806: void epdPrintEnd() {
;	-----------------------------------------
;	 function epdPrintEnd
;	-----------------------------------------
_epdPrintEnd:
;	board/zbs29_BW_ssd1619/screen.c:807: if (!directionY && ((fontCurXpos % 8) != 0)) {
	mov	dptr,#_directionY
	movx	a,@dptr
	jnz	00105$
	mov	dptr,#_fontCurXpos
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	anl	a,#0x07
	jz	00105$
;	board/zbs29_BW_ssd1619/screen.c:808: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
	mov	r7,#0x00
00109$:
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	mov	r6,a
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r5,a
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	board/zbs29_BW_ssd1619/screen.c:809: epdSend(rbuffer[i]);
	mov	a,r7
	add	a,#_rbuffer
	mov	dpl,a
	clr	a
	addc	a,#(_rbuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_ssd1619/screen.c:808: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
	inc	r7
;	board/zbs29_BW_ssd1619/screen.c:812: commandEnd();
	sjmp	00109$
00105$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_ssd1619/screen.c:813: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_font:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x30	; 48	'0'
	.db #0x03	; 3
	.db #0x50	; 80	'P'
	.db #0x02	; 2
	.db #0x28	; 40
	.db #0x05	; 5
	.db #0x28	; 40
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x05	; 5
	.db #0x50	; 80	'P'
	.db #0x02	; 2
	.db #0x30	; 48	'0'
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0xf0	; 240
	.db #0x03	; 3
	.db #0xb0	; 176
	.db #0x03	; 3
	.db #0xd8	; 216
	.db #0x06	; 6
	.db #0xd8	; 216
	.db #0x07	; 7
	.db #0xd8	; 216
	.db #0x07	; 7
	.db #0xd8	; 216
	.db #0x06	; 6
	.db #0xb0	; 176
	.db #0x03	; 3
	.db #0xf0	; 240
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xe0	; 224
	.db #0x7f	; 127
	.db #0xf0	; 240
	.db #0x7f	; 127
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0xf0	; 240
	.db #0x7f	; 127
	.db #0xe0	; 224
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0xf0	; 240
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0xc0	; 192
	.db #0x07	; 7
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x07	; 7
	.db #0xc0	; 192
	.db #0x07	; 7
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0xb8	; 184
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x07	; 7
	.db #0xc0	; 192
	.db #0x07	; 7
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x07	; 7
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0xc0	; 192
	.db #0x1f	; 31
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0xb8	; 184
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0x1f	; 31
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0xc0	; 192
	.db #0x07	; 7
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x10	; 16
	.db #0x2e	; 46
	.db #0xe0	; 224
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0xf8	; 248
	.db #0x40	; 64
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0xa0	; 160
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0xc0	; 192
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x60	; 96
	.db #0x18	; 24
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x04	; 4
	.db #0xc0	; 192
	.db #0x0c	; 12
	.db #0xc0	; 192
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd8	; 216
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd8	; 216
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x3b	; 59
	.db #0xc2	; 194
	.db #0x4c	; 76	'L'
	.db #0x42	; 66	'B'
	.db #0x44	; 68	'D'
	.db #0x62	; 98	'b'
	.db #0x46	; 70	'F'
	.db #0x32	; 50	'2'
	.db #0x42	; 66	'B'
	.db #0xdc	; 220
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x10	; 16
	.db #0x09	; 9
	.db #0x20	; 32
	.db #0xfd	; 253
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x20	; 32
	.db #0x11	; 17
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x02	; 2
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0xa0	; 160
	.db #0x02	; 2
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0xa0	; 160
	.db #0x02	; 2
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x02	; 2
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0xf8	; 248
	.db #0x0f	; 15
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0xf8	; 248
	.db #0x0f	; 15
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0x80	; 128
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd8	; 216
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x98	; 152
	.db #0x04	; 4
	.db #0xe0	; 224
	.db #0x05	; 5
	.db #0x80	; 128
	.db #0x1e	; 30
	.db #0x98	; 152
	.db #0x64	; 100	'd'
	.db #0xe0	; 224
	.db #0x05	; 5
	.db #0x80	; 128
	.db #0x1e	; 30
	.db #0x80	; 128
	.db #0x64	; 100	'd'
	.db #0x80	; 128
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x88	; 136
	.db #0x41	; 65	'A'
	.db #0xf0	; 240
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x44	; 68	'D'
	.db #0x20	; 32
	.db #0x44	; 68	'D'
	.db #0xc0	; 192
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x39	; 57	'9'
	.db #0x70	; 112	'p'
	.db #0x02	; 2
	.db #0x88	; 136
	.db #0x0c	; 12
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x3a	; 58
	.db #0x08	; 8
	.db #0x46	; 70	'F'
	.db #0x88	; 136
	.db #0x45	; 69	'E'
	.db #0xc8	; 200
	.db #0x4c	; 76	'L'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x30	; 48	'0'
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x0c	; 12
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x60	; 96
	.db #0x28	; 40
	.db #0x40	; 64
	.db #0x48	; 72	'H'
	.db #0x40	; 64
	.db #0x88	; 136
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x43	; 67	'C'
	.db #0x08	; 8
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0xf0	; 240
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x40	; 64
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x18	; 24
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x10	; 16
	.db #0x42	; 66	'B'
	.db #0xe0	; 224
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x32	; 50	'2'
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x10	; 16
	.db #0x42	; 66	'B'
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x18	; 24
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x45	; 69	'E'
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0x08	; 8
	.db #0x45	; 69	'E'
	.db #0x90	; 144
	.db #0x45	; 69	'E'
	.db #0x60	; 96
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x08	; 8
	.db #0x21	; 33
	.db #0x88	; 136
	.db #0x40	; 64
	.db #0x88	; 136
	.db #0x40	; 64
	.db #0x88	; 136
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x21	; 33
	.db #0xc0	; 192
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x06	; 6
	.db #0x1e	; 30
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xd8	; 216
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x64	; 100	'd'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0xc8	; 200
	.db #0x47	; 71	'G'
	.db #0x28	; 40
	.db #0x48	; 72	'H'
	.db #0x68	; 104	'h'
	.db #0x50	; 80	'P'
	.db #0xd8	; 216
	.db #0x51	; 81	'Q'
	.db #0xe0	; 224
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x0e	; 14
	.db #0x40	; 64
	.db #0x18	; 24
	.db #0x40	; 64
	.db #0x0c	; 12
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x88	; 136
	.db #0x12	; 18
	.db #0x70	; 112	'p'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x03	; 3
	.db #0x30	; 48	'0'
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x03	; 3
	.db #0x30	; 48	'0'
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x80	; 128
	.db #0x07	; 7
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x08	; 8
	.db #0xe2	; 226
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x11	; 17
	.db #0x10	; 16
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x12	; 18
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x90	; 144
	.db #0x10	; 16
	.db #0x70	; 112	'p'
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xc0	; 192
	.db #0x07	; 7
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x48	; 72	'H'
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x12	; 18
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x90	; 144
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x06	; 6
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x90	; 144
	.db #0x02	; 2
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x19	; 25
	.db #0x02	; 2
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x64	; 100	'd'
	.db #0xf8	; 248
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x64	; 100	'd'
	.db #0xfe	; 254
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x06	; 6
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x03	; 3
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x48	; 72	'H'
	.db #0x04	; 4
	.db #0x48	; 72	'H'
	.db #0x04	; 4
	.db #0x30	; 48	'0'
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xc1	; 193
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x04	; 4
	.db #0x48	; 72	'H'
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x3f	; 63
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x03	; 3
	.db #0x30	; 48	'0'
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x09	; 9
	.db #0x10	; 16
	.db #0x0d	; 13
	.db #0x10	; 16
	.db #0x0b	; 11
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x90	; 144
	.db #0x02	; 2
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x24	; 36
	.db #0x88	; 136
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x24	; 36
	.db #0x88	; 136
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x44	; 68	'D'
	.db #0x90	; 144
	.db #0x24	; 36
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x24	; 36
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x90	; 144
	.db #0x24	; 36
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x24	; 36
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x90	; 144
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0xa4	; 164
	.db #0x90	; 144
	.db #0x44	; 68	'D'
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x0d	; 13
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x90	; 144
	.db #0x22	; 34
	.db #0x88	; 136
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x24	; 36
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x90	; 144
	.db #0x02	; 2
	.db #0x88	; 136
	.db #0x24	; 36
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x24	; 36
	.db #0x88	; 136
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x90	; 144
	.db #0x02	; 2
	.db #0x88	; 136
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x24	; 36
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xf8	; 248
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xf8	; 248
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x0e	; 14
	.db #0x40	; 64
	.db #0x18	; 24
	.db #0x40	; 64
	.db #0x0c	; 12
	.db #0x40	; 64
	.db #0x83	; 131
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x4e	; 78	'N'
	.db #0x40	; 64
	.db #0xb0	; 176
	.db #0x40	; 64
	.db #0xb8	; 184
	.db #0x40	; 64
	.db #0x4f	; 79	'O'
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x50	; 80	'P'
	.db #0x88	; 136
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x04	; 4
	.db #0xc8	; 200
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x03	; 3
	.db #0x98	; 152
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x42	; 66	'B'
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xc1	; 193
	.db #0x20	; 32
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe8	; 232
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x28	; 40
	.db #0x04	; 4
	.db #0xc8	; 200
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0xe0	; 224
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x02	; 2
	.db #0xe8	; 232
	.db #0x3f	; 63
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe8	; 232
	.db #0x07	; 7
	.db #0x30	; 48	'0'
	.db #0x08	; 8
	.db #0x68	; 104	'h'
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x16	; 22
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0xe0	; 224
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x24	; 36
	.db #0x90	; 144
	.db #0x44	; 68	'D'
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x40	; 64
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x80	; 128
	.db #0xc1	; 193
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x5d	; 93
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x5d	; 93
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x31	; 49	'1'
	.db #0x38	; 56	'8'
	.db #0x41	; 65	'A'
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0xc8	; 200
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x60	; 96
	.db #0x08	; 8
	.db #0xa0	; 160
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x41	; 65	'A'
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x36	; 54	'6'
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x0e	; 14
	.db #0x40	; 64
	.db #0x58	; 88	'X'
	.db #0x40	; 64
	.db #0x8c	; 140
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x4e	; 78	'N'
	.db #0x40	; 64
	.db #0x98	; 152
	.db #0x40	; 64
	.db #0x8c	; 140
	.db #0x40	; 64
	.db #0x43	; 67	'C'
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x8e	; 142
	.db #0x40	; 64
	.db #0x58	; 88	'X'
	.db #0x40	; 64
	.db #0x0c	; 12
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x67	; 103	'g'
	.db #0xc8	; 200
	.db #0x4c	; 76	'L'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x58	; 88	'X'
	.db #0x68	; 104	'h'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x19	; 25
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x20	; 32
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x24	; 36
	.db #0x88	; 136
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x24	; 36
	.db #0x90	; 144
	.db #0x24	; 36
	.db #0xf8	; 248
	.db #0x43	; 67	'C'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x41	; 65	'A'
	.db #0x40	; 64
	.db #0x8e	; 142
	.db #0x40	; 64
	.db #0xd8	; 216
	.db #0x40	; 64
	.db #0x4c	; 76	'L'
	.db #0x40	; 64
	.db #0x83	; 131
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x41	; 65	'A'
	.db #0x10	; 16
	.db #0x52	; 82	'R'
	.db #0x08	; 8
	.db #0x74	; 116	't'
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x08	; 8
	.db #0x54	; 84	'T'
	.db #0x10	; 16
	.db #0x0e	; 14
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x50	; 80	'P'
	.db #0x88	; 136
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x50	; 80	'P'
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x88	; 136
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x50	; 80	'P'
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x5f	; 95
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x50	; 80	'P'
	.db #0xf8	; 248
	.db #0x9f	; 159
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x50	; 80	'P'
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0xf8	; 248
	.db #0x5f	; 95
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x50	; 80	'P'
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x47	; 71	'G'
	.db #0x88	; 136
	.db #0x38	; 56	'8'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x50	; 80	'P'
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x50	; 80	'P'
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x10	; 16
	.db #0x42	; 66	'B'
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x48	; 72	'H'
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0xd0	; 208
	.db #0x08	; 8
	.db #0x50	; 80	'P'
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x06	; 6
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x04	; 4
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xc1	; 193
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0xc8	; 200
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0x10	; 16
	.db #0x52	; 82	'R'
	.db #0x20	; 32
	.db #0x5a	; 90	'Z'
	.db #0xc0	; 192
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x60	; 96
	.db #0x02	; 2
	.db #0xa0	; 160
	.db #0x0c	; 12
	.db #0x20	; 32
	.db #0x11	; 17
	.db #0xf8	; 248
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x3b	; 59
	.db #0xc2	; 194
	.db #0x4c	; 76	'L'
	.db #0x42	; 66	'B'
	.db #0x44	; 68	'D'
	.db #0x62	; 98	'b'
	.db #0x46	; 70	'F'
	.db #0x32	; 50	'2'
	.db #0x42	; 66	'B'
	.db #0xdc	; 220
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x58	; 88	'X'
	.db #0x06	; 6
	.db #0x58	; 88	'X'
	.db #0x06	; 6
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x4a	; 74	'J'
	.db #0x00	; 0
	.db #0x4a	; 74	'J'
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CONST   (CODE)
___str_0:
	.ascii "screen timeout %lu ticks :("
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "lut size = %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__epdCharSize:
	.db #0x01	; 1
__xinit__directionY:
	.db #0x01	;  1
__xinit__fontCurXpos:
	.byte #0x00, #0x00	; 0
__xinit__fontCurYpos:
	.byte #0x00, #0x00	; 0
__xinit__currentLut:
	.db #0x00	; 0
__xinit__dispLutSize:
	.db #0x00	; 0
__xinit__isInited:
	.db #0x00	;  0
__xinit__epdGPIOActive:
	.db #0x00	;  0
__xinit__customLUT:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__waveform10:
	.byte _waveformbuffer, (_waveformbuffer >> 8),#0x00
__xinit__waveform7:
	.byte _waveformbuffer, (_waveformbuffer >> 8),#0x00
	.area CABS    (ABS,CODE)
