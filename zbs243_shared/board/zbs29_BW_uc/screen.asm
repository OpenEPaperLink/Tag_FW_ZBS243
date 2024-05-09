;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module screen
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _setWindowXY
	.globl _wdtSetResetVal
	.globl _wdtOn
	.globl _timerDelay
	.globl _timerGet
	.globl _sleepForMsec
	.globl _spiTXByte
	.globl _spiByte
	.globl _barcodeNextBar
	.globl _barcodeIsDone
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
	.globl _epdGPIOActive
	.globl _epdPrintBegin_PARM_5
	.globl _epdPrintBegin_PARM_4
	.globl _epdPrintBegin_PARM_3
	.globl _epdPrintBegin_PARM_2
	.globl _printBarcode_PARM_3
	.globl _printBarcode_PARM_2
	.globl _setColorMode_PARM_2
	.globl _setWindowXY_PARM_4
	.globl _setWindowXY_PARM_3
	.globl _setWindowXY_PARM_2
	.globl _waveformbuffer
	.globl _epdConfigGPIO
	.globl _epdEnterSleep
	.globl _epdSetup
	.globl _epdGetBattery
	.globl _selectLUT
	.globl _setColorMode
	.globl _clearScreen
	.globl _draw
	.globl _drawNoWait
	.globl _drawWithSleep
	.globl _epdWaitRdy
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
_waveformbuffer::
	.ds 128
_epdBusySleep_timeout_65536_115:
	.ds 4
_epdBusySleep_tmp_P2FUNC_65536_116:
	.ds 1
_epdBusySleep_tmp_P2DIR_65536_116:
	.ds 1
_epdBusySleep_tmp_P2PULL_65536_116:
	.ds 1
_epdBusySleep_tmp_P2LVLSEL_65536_116:
	.ds 1
_epdBusyWait_timeout_65536_118:
	.ds 4
_commandReadBegin_cmd_65536_121:
	.ds 1
_epdReadByte_val_65536_127:
	.ds 1
_shortCommand_cmd_65536_130:
	.ds 1
_shortCommand1_PARM_2:
	.ds 1
_shortCommand1_cmd_65536_135:
	.ds 1
_shortCommand2_PARM_2:
	.ds 1
_shortCommand2_PARM_3:
	.ds 1
_shortCommand2_cmd_65536_141:
	.ds 1
_commandBegin_cmd_65536_147:
	.ds 1
_epdConfigGPIO_setup_65536_153:
	.ds 1
_epdDrawDirection_direction_65536_158:
	.ds 1
_epdDrawDirection_psr_setting_65537_160:
	.ds 1
_selectLUT_lut_65536_170:
	.ds 1
_setWindowXY_PARM_2:
	.ds 2
_setWindowXY_PARM_3:
	.ds 2
_setWindowXY_PARM_4:
	.ds 2
_setWindowXY_xstart_65536_172:
	.ds 2
_setColorMode_PARM_2:
	.ds 1
_setColorMode_red_65536_175:
	.ds 1
_drawWithSleep_tmp_P2FUNC_65537_187:
	.ds 1
_drawWithSleep_tmp_P2DIR_65537_187:
	.ds 1
_drawWithSleep_tmp_P2PULL_65537_187:
	.ds 1
_drawWithSleep_tmp_P2LVLSEL_65537_187:
	.ds 1
_beginWriteFramebuffer_color_65536_191:
	.ds 1
_printBarcode_PARM_2:
	.ds 2
_printBarcode_PARM_3:
	.ds 2
_printBarcode_string_65536_210:
	.ds 3
_printBarcode_bci_65537_212:
	.ds 9
_pushXFontBytesToEPD_PARM_2:
	.ds 1
_pushXFontBytesToEPD_byte1_65536_217:
	.ds 1
_pushXFontBytesToEPD_offset_131072_219:
	.ds 1
_pushXFontBytesToEPD_offset_131072_224:
	.ds 1
_bufferByteShift_byte_65536_234:
	.ds 1
_pushYFontBytesToEPD_PARM_2:
	.ds 1
_pushYFontBytesToEPD_byte1_65536_239:
	.ds 1
_pushYFontBytesToEPD_c_262144_243:
	.ds 1
_writeCharEPD_c_65536_251:
	.ds 1
_writeCharEPD_empty_65537_253:
	.ds 1
_writeCharEPD_begin_65538_261:
	.ds 1
_writeCharEPD_end_65539_263:
	.ds 1
_writeCharEPD_pos_131075_265:
	.ds 1
_epdPrintBegin_PARM_2:
	.ds 2
_epdPrintBegin_PARM_3:
	.ds 1
_epdPrintBegin_PARM_4:
	.ds 1
_epdPrintBegin_PARM_5:
	.ds 1
_epdPrintBegin_x_65536_271:
	.ds 2
_epdPrintBegin_extra_131072_273:
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
_dispLutSize:
	.ds 1
_drawDirection:
	.ds 1
_isInited:
	.ds 1
_epdGPIOActive::
	.ds 1
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
;timeout                   Allocated with name '_epdBusySleep_timeout_65536_115'
;tmp_P2FUNC                Allocated with name '_epdBusySleep_tmp_P2FUNC_65536_116'
;tmp_P2DIR                 Allocated with name '_epdBusySleep_tmp_P2DIR_65536_116'
;tmp_P2PULL                Allocated with name '_epdBusySleep_tmp_P2PULL_65536_116'
;tmp_P2LVLSEL              Allocated with name '_epdBusySleep_tmp_P2LVLSEL_65536_116'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:206: static void epdBusySleep(uint32_t timeout) {
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
	mov	dptr,#_epdBusySleep_timeout_65536_115
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
;	board/zbs29_BW_uc/../uc8151.c:207: uint8_t tmp_P2FUNC = P2FUNC;
	mov	dptr,#_epdBusySleep_tmp_P2FUNC_65536_116
	mov	a,_P2FUNC
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:208: uint8_t tmp_P2DIR = P2DIR;
	mov	dptr,#_epdBusySleep_tmp_P2DIR_65536_116
	mov	a,_P2DIR
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:209: uint8_t tmp_P2PULL = P2PULL;
	mov	dptr,#_epdBusySleep_tmp_P2PULL_65536_116
	mov	a,_P2PULL
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:210: uint8_t tmp_P2LVLSEL = P2LVLSEL;
	mov	dptr,#_epdBusySleep_tmp_P2LVLSEL_65536_116
	mov	a,_P2LVLSEL
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:211: P2FUNC &= 0xfd;
	anl	_P2FUNC,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:212: P2DIR |= 2;
	orl	_P2DIR,#0x02
;	board/zbs29_BW_uc/../uc8151.c:213: P2PULL |= 2;
	orl	_P2PULL,#0x02
;	board/zbs29_BW_uc/../uc8151.c:214: P2LVLSEL &= ~(2);
	anl	_P2LVLSEL,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:216: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:217: P2INTEN |= 2;
	orl	_P2INTEN,#0x02
;	board/zbs29_BW_uc/../uc8151.c:218: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:219: sleepForMsec(timeout);
	mov	dptr,#_epdBusySleep_timeout_65536_115
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
;	board/zbs29_BW_uc/../uc8151.c:220: wdtOn();
	lcall	_wdtOn
;	board/zbs29_BW_uc/../uc8151.c:221: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:222: P2INTEN &= 0xfd;
	anl	_P2INTEN,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:224: P2FUNC = tmp_P2FUNC;
	mov	dptr,#_epdBusySleep_tmp_P2FUNC_65536_116
	movx	a,@dptr
	mov	_P2FUNC,a
;	board/zbs29_BW_uc/../uc8151.c:225: P2DIR = tmp_P2DIR;
	mov	dptr,#_epdBusySleep_tmp_P2DIR_65536_116
	movx	a,@dptr
	mov	_P2DIR,a
;	board/zbs29_BW_uc/../uc8151.c:226: P2PULL = tmp_P2PULL;
	mov	dptr,#_epdBusySleep_tmp_P2PULL_65536_116
	movx	a,@dptr
	mov	_P2PULL,a
;	board/zbs29_BW_uc/../uc8151.c:227: P2LVLSEL = tmp_P2LVLSEL;
	mov	dptr,#_epdBusySleep_tmp_P2LVLSEL_65536_116
	movx	a,@dptr
	mov	_P2LVLSEL,a
;	board/zbs29_BW_uc/../uc8151.c:228: eepromPrvDeselect();
	nop
	nop
	nop
;	assignBit
	setb	_P1_1
	nop
	nop
	nop
;	board/zbs29_BW_uc/../uc8151.c:229: }
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdBusyWait'
;------------------------------------------------------------
;sloc0                     Allocated with name '_epdBusyWait_sloc0_1_0'
;timeout                   Allocated with name '_epdBusyWait_timeout_65536_118'
;start                     Allocated with name '_epdBusyWait_start_65536_119'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:230: static void epdBusyWait(uint32_t timeout) {
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
	mov	dptr,#_epdBusyWait_timeout_65536_118
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
;	board/zbs29_BW_uc/../uc8151.c:231: uint32_t __xdata start = timerGet();
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	board/zbs29_BW_uc/../uc8151.c:233: while (timerGet() - start < timeout) {
	mov	dptr,#_epdBusyWait_timeout_65536_118
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
	jnc	00107$
;	board/zbs29_BW_uc/../uc8151.c:234: if (P2_1)
	jnb	_P2_1,00103$
;	board/zbs29_BW_uc/../uc8151.c:235: return;
;	board/zbs29_BW_uc/../uc8151.c:240: while (1)
	sjmp	00109$
00107$:
	sjmp	00107$
00109$:
;	board/zbs29_BW_uc/../uc8151.c:242: }
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
;cmd                       Allocated with name '_commandReadBegin_cmd_65536_121'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:243: static void commandReadBegin(uint8_t cmd) {
;	-----------------------------------------
;	 function commandReadBegin
;	-----------------------------------------
_commandReadBegin:
	mov	a,dpl
	mov	dptr,#_commandReadBegin_cmd_65536_121
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:244: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:245: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_uc/../uc8151.c:246: spiByte(cmd);  // dump LUT
	mov	dptr,#_commandReadBegin_cmd_65536_121
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiByte
;	board/zbs29_BW_uc/../uc8151.c:248: P0DIR = (P0DIR & ~(1 << 0)) | (1 << 1);
	mov	a,#0xfe
	anl	a,_P0DIR
	orl	a,#0x02
	mov	_P0DIR,a
;	board/zbs29_BW_uc/../uc8151.c:249: P0 &= ~(1 << 0);
	anl	_P0,#0xfe
;	board/zbs29_BW_uc/../uc8151.c:250: P0FUNC &= ~((1 << 0) | (1 << 1));
	anl	_P0FUNC,#0xfc
;	board/zbs29_BW_uc/../uc8151.c:251: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	board/zbs29_BW_uc/../uc8151.c:252: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'commandReadEnd'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:253: static void commandReadEnd() {
;	-----------------------------------------
;	 function commandReadEnd
;	-----------------------------------------
_commandReadEnd:
;	board/zbs29_BW_uc/../uc8151.c:255: P0FUNC |= (1 << 0) | (1 << 1);
	orl	_P0FUNC,#0x03
;	board/zbs29_BW_uc/../uc8151.c:256: epdDeselect();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:257: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdReadByte'
;------------------------------------------------------------
;val                       Allocated with name '_epdReadByte_val_65536_127'
;i                         Allocated with name '_epdReadByte_i_65536_127'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:259: static uint8_t epdReadByte() {
;	-----------------------------------------
;	 function epdReadByte
;	-----------------------------------------
_epdReadByte:
	push	ar7
	push	ar6
;	board/zbs29_BW_uc/../uc8151.c:260: uint8_t val = 0, i;
	mov	dptr,#_epdReadByte_val_65536_127
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:262: for (i = 0; i < 8; i++) {
	mov	r7,#0x00
00104$:
;	board/zbs29_BW_uc/../uc8151.c:263: P0_0 = 1;
;	assignBit
	setb	_P0_0
;	board/zbs29_BW_uc/../uc8151.c:264: __asm__("nop\nnop\nnop\nnop\nnop\nnop\n");
	nop
	nop
	nop
	nop
	nop
	nop
;	board/zbs29_BW_uc/../uc8151.c:265: val <<= 1;
	mov	dptr,#_epdReadByte_val_65536_127
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:266: if (P0_1)
	jnb	_P0_1,00102$
;	board/zbs29_BW_uc/../uc8151.c:267: val++;
	mov	dptr,#_epdReadByte_val_65536_127
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00102$:
;	board/zbs29_BW_uc/../uc8151.c:268: P0_0 = 0;
;	assignBit
	clr	_P0_0
;	board/zbs29_BW_uc/../uc8151.c:269: __asm__("nop\nnop\nnop\nnop\nnop\nnop\n");
	nop
	nop
	nop
	nop
	nop
	nop
;	board/zbs29_BW_uc/../uc8151.c:262: for (i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00122$
00122$:
	jc	00104$
;	board/zbs29_BW_uc/../uc8151.c:272: return val;
	mov	dptr,#_epdReadByte_val_65536_127
	movx	a,@dptr
	mov	dpl,a
;	board/zbs29_BW_uc/../uc8151.c:273: }
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shortCommand'
;------------------------------------------------------------
;cmd                       Allocated with name '_shortCommand_cmd_65536_130'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:274: static void shortCommand(uint8_t cmd) {
;	-----------------------------------------
;	 function shortCommand
;	-----------------------------------------
_shortCommand:
	mov	a,dpl
	mov	dptr,#_shortCommand_cmd_65536_130
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:275: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:276: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_uc/../uc8151.c:277: spiTXByte(cmd);
	mov	dptr,#_shortCommand_cmd_65536_130
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:278: epdDeselect();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:279: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shortCommand1'
;------------------------------------------------------------
;arg                       Allocated with name '_shortCommand1_PARM_2'
;cmd                       Allocated with name '_shortCommand1_cmd_65536_135'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:280: static void shortCommand1(uint8_t cmd, uint8_t arg) {
;	-----------------------------------------
;	 function shortCommand1
;	-----------------------------------------
_shortCommand1:
	mov	a,dpl
	mov	dptr,#_shortCommand1_cmd_65536_135
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:281: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:282: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_uc/../uc8151.c:283: spiTXByte(cmd);
	mov	dptr,#_shortCommand1_cmd_65536_135
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:284: markData();
;	assignBit
	setb	_P2_2
;	board/zbs29_BW_uc/../uc8151.c:285: spiTXByte(arg);
	mov	dptr,#_shortCommand1_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:286: epdDeselect();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:287: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shortCommand2'
;------------------------------------------------------------
;arg1                      Allocated with name '_shortCommand2_PARM_2'
;arg2                      Allocated with name '_shortCommand2_PARM_3'
;cmd                       Allocated with name '_shortCommand2_cmd_65536_141'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:288: static void shortCommand2(uint8_t cmd, uint8_t arg1, uint8_t arg2) {
;	-----------------------------------------
;	 function shortCommand2
;	-----------------------------------------
_shortCommand2:
	mov	a,dpl
	mov	dptr,#_shortCommand2_cmd_65536_141
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:289: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:290: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_uc/../uc8151.c:291: spiTXByte(cmd);
	mov	dptr,#_shortCommand2_cmd_65536_141
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:292: markData();
;	assignBit
	setb	_P2_2
;	board/zbs29_BW_uc/../uc8151.c:293: spiTXByte(arg1);
	mov	dptr,#_shortCommand2_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:294: spiTXByte(arg2);
	mov	dptr,#_shortCommand2_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:295: epdDeselect();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:296: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'commandBegin'
;------------------------------------------------------------
;cmd                       Allocated with name '_commandBegin_cmd_65536_147'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:297: static void commandBegin(uint8_t cmd) {
;	-----------------------------------------
;	 function commandBegin
;	-----------------------------------------
_commandBegin:
	mov	a,dpl
	mov	dptr,#_commandBegin_cmd_65536_147
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:298: epdSelect();
;	assignBit
	clr	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:299: markCommand();
;	assignBit
	clr	_P2_2
;	board/zbs29_BW_uc/../uc8151.c:300: spiTXByte(cmd);
	mov	dptr,#_commandBegin_cmd_65536_147
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:301: markData();
;	assignBit
	setb	_P2_2
;	board/zbs29_BW_uc/../uc8151.c:302: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdReset'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:303: static void epdReset() {
;	-----------------------------------------
;	 function epdReset
;	-----------------------------------------
_epdReset:
;	board/zbs29_BW_uc/../uc8151.c:304: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs29_BW_uc/../uc8151.c:305: P2_0 = 0;
;	assignBit
	clr	_P2_0
;	board/zbs29_BW_uc/../uc8151.c:306: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs29_BW_uc/../uc8151.c:307: P2_0 = 1;
;	assignBit
	setb	_P2_0
;	board/zbs29_BW_uc/../uc8151.c:308: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
	mov	dptr,#0x0535
	clr	a
	mov	b,a
;	board/zbs29_BW_uc/../uc8151.c:309: }
	ljmp	_timerDelay
;------------------------------------------------------------
;Allocation info for local variables in function 'epdConfigGPIO'
;------------------------------------------------------------
;setup                     Allocated with name '_epdConfigGPIO_setup_65536_153'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:310: void epdConfigGPIO(bool setup) {
;	-----------------------------------------
;	 function epdConfigGPIO
;	-----------------------------------------
_epdConfigGPIO:
	mov	a,dpl
	mov	dptr,#_epdConfigGPIO_setup_65536_153
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:320: if (epdGPIOActive == setup) return;
	mov	dptr,#_epdGPIOActive
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_epdConfigGPIO_setup_65536_153
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00102$
	ret
00102$:
;	board/zbs29_BW_uc/../uc8151.c:321: if (setup) {
	mov	a,r6
	jz	00104$
;	board/zbs29_BW_uc/../uc8151.c:322: P2DIR |= (1 << 1);                // busy as input
	orl	_P2DIR,#0x02
;	board/zbs29_BW_uc/../uc8151.c:323: P2DIR &= ~((1 << 2) | (1 << 0));  // D/C and Reset as output
	anl	_P2DIR,#0xfa
;	board/zbs29_BW_uc/../uc8151.c:324: P1DIR &= ~((1 << 7) | (1 << 2));  // select and bs1 as output
	anl	_P1DIR,#0x7b
;	board/zbs29_BW_uc/../uc8151.c:325: P1_2 = 0;                         // select 4-wire SPI / BS1 = low
;	assignBit
	clr	_P1_2
;	board/zbs29_BW_uc/../uc8151.c:326: P1_7 = 1;                         // deselect EPD
;	assignBit
	setb	_P1_7
	sjmp	00105$
00104$:
;	board/zbs29_BW_uc/../uc8151.c:328: P2DIR |= ((1 << 2) | (1 << 0));  // DC and Reset as input
	orl	_P2DIR,#0x05
;	board/zbs29_BW_uc/../uc8151.c:329: P2 &= ~((1 << 2) | (1 << 0));
	anl	_P2,#0xfa
;	board/zbs29_BW_uc/../uc8151.c:330: P1DIR |= ((1 << 7) | (1 << 2));  // Select and BS1 as input
	orl	_P1DIR,#0x84
;	board/zbs29_BW_uc/../uc8151.c:331: P2 &= ~((1 << 7));
	anl	_P2,#0x7f
00105$:
;	board/zbs29_BW_uc/../uc8151.c:333: epdGPIOActive = setup;
	mov	dptr,#_epdConfigGPIO_setup_65536_153
	movx	a,@dptr
	mov	dptr,#_epdGPIOActive
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:334: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdEnterSleep'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:335: void epdEnterSleep() {
;	-----------------------------------------
;	 function epdEnterSleep
;	-----------------------------------------
_epdEnterSleep:
;	board/zbs29_BW_uc/../uc8151.c:336: timerDelay(20 * TIMER_TICKS_PER_MS);
	mov	dptr,#0x6824
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs29_BW_uc/../uc8151.c:337: epdReset();
	lcall	_epdReset
;	board/zbs29_BW_uc/../uc8151.c:338: timerDelay(20 * TIMER_TICKS_PER_MS);
	mov	dptr,#0x6824
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs29_BW_uc/../uc8151.c:339: shortCommand1(CMD_VCOM_INTERVAL, 0x17);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x17
	movx	@dptr,a
	mov	dpl,#0x50
	lcall	_shortCommand1
;	board/zbs29_BW_uc/../uc8151.c:340: shortCommand1(CMD_VCOM_DC_SETTING, 0x00);
	mov	dptr,#_shortCommand1_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x82
	lcall	_shortCommand1
;	board/zbs29_BW_uc/../uc8151.c:343: shortCommand1(CMD_DEEP_SLEEP, 0xA5);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0xa5
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_shortCommand1
;	board/zbs29_BW_uc/../uc8151.c:344: isInited = false;
	mov	dptr,#_isInited
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:345: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdDrawDirection'
;------------------------------------------------------------
;direction                 Allocated with name '_epdDrawDirection_direction_65536_158'
;psr_setting               Allocated with name '_epdDrawDirection_psr_setting_65537_160'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:347: static void epdDrawDirection(bool direction) {
;	-----------------------------------------
;	 function epdDrawDirection
;	-----------------------------------------
_epdDrawDirection:
	mov	a,dpl
	mov	dptr,#_epdDrawDirection_direction_65536_158
;	board/zbs29_BW_uc/../uc8151.c:348: if (direction == drawDirection) return;
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	mov	r7,a
	mov	dptr,#_drawDirection
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00102$
	ret
00102$:
;	board/zbs29_BW_uc/../uc8151.c:350: drawDirection = direction;
	mov	dptr,#_drawDirection
	mov	a,r7
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:361: if (drawDirection) {
	mov	a,r7
	jz	00104$
;	board/zbs29_BW_uc/../uc8151.c:362: psr_setting |= SCAN_DOWN;
	mov	dptr,#_epdDrawDirection_psr_setting_65537_160
	mov	a,#0x97
	movx	@dptr,a
	sjmp	00105$
00104$:
;	board/zbs29_BW_uc/../uc8151.c:364: psr_setting |= SCAN_UP;
	mov	dptr,#_epdDrawDirection_psr_setting_65537_160
	mov	a,#0x9f
	movx	@dptr,a
00105$:
;	board/zbs29_BW_uc/../uc8151.c:366: shortCommand2(CMD_PANEL_SETTING, psr_setting, 0b00001011);
	mov	dptr,#_epdDrawDirection_psr_setting_65537_160
	movx	a,@dptr
	mov	dptr,#_shortCommand2_PARM_2
	movx	@dptr,a
	mov	dptr,#_shortCommand2_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	mov	dpl,#0x00
;	board/zbs29_BW_uc/../uc8151.c:369: }
	ljmp	_shortCommand2
;------------------------------------------------------------
;Allocation info for local variables in function 'epdSetup'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:371: void epdSetup() {
;	-----------------------------------------
;	 function epdSetup
;	-----------------------------------------
_epdSetup:
;	board/zbs29_BW_uc/../uc8151.c:372: epdReset();
	lcall	_epdReset
;	board/zbs29_BW_uc/../uc8151.c:374: drawDirection = false;
	mov	dptr,#_drawDirection
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:375: epdDrawDirection(true);
	mov	dpl,#0x01
	lcall	_epdDrawDirection
;	board/zbs29_BW_uc/../uc8151.c:385: commandBegin(CMD_POWER_SETTING);
	mov	dpl,#0x01
	lcall	_commandBegin
;	board/zbs29_BW_uc/../uc8151.c:386: epdSend(VDS_INTERNAL | VDG_INTERNAL);
	mov	dpl,#0x03
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:387: epdSend(VCOM_VD | VGHL_15V);
	mov	dpl,#0x01
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:388: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:392: commandBegin(CMD_BOOSTER_SOFT_START);
	mov	dpl,#0x06
	lcall	_commandBegin
;	board/zbs29_BW_uc/../uc8151.c:393: epdSend(START_10MS | STRENGTH_3 | OFF_6_58US);
	mov	dpl,#0x17
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:394: epdSend(START_10MS | STRENGTH_3 | OFF_6_58US);
	mov	dpl,#0x17
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:395: epdSend(START_10MS | STRENGTH_3 | OFF_6_58US);
	mov	dpl,#0x17
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:396: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:398: shortCommand(CMD_POWER_ON);
	mov	dpl,#0x04
	lcall	_shortCommand
;	board/zbs29_BW_uc/../uc8151.c:399: epdWaitRdy();
	lcall	_epdWaitRdy
;	board/zbs29_BW_uc/../uc8151.c:402: commandBegin(CMD_RESOLUTION_SETING);
	mov	dpl,#0x61
	lcall	_commandBegin
;	board/zbs29_BW_uc/../uc8151.c:403: epdSend(SCREEN_WIDTH);
	mov	dpl,#0x80
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:404: epdSend(SCREEN_HEIGHT >> 8);
	mov	dpl,#0x01
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:405: epdSend(SCREEN_HEIGHT & 0xFF);
	mov	dpl,#0x28
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:406: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:407: shortCommand1(CMD_POWER_OFF_SEQUENCE, FRAMES_1);
	mov	dptr,#_shortCommand1_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_shortCommand1
;	board/zbs29_BW_uc/../uc8151.c:408: shortCommand1(CMD_TEMPERATURE_SELECT, TEMP_INTERNAL | OFFSET_0);
	mov	dptr,#_shortCommand1_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x41
	lcall	_shortCommand1
;	board/zbs29_BW_uc/../uc8151.c:409: shortCommand1(CMD_TCON_SETTING, 0x22);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x22
	movx	@dptr,a
	mov	dpl,#0x60
	lcall	_shortCommand1
;	board/zbs29_BW_uc/../uc8151.c:413: shortCommand1(CMD_VCOM_INTERVAL, 0x4d);  // 0x87
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x4d
	movx	@dptr,a
	mov	dpl,#0x50
	lcall	_shortCommand1
;	board/zbs29_BW_uc/../uc8151.c:415: shortCommand1(CMD_PLL_CONTROL, HZ_200);
	mov	dptr,#_shortCommand1_PARM_2
	mov	a,#0x39
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_shortCommand1
;	board/zbs29_BW_uc/../uc8151.c:416: epdWaitRdy();
	lcall	_epdWaitRdy
;	board/zbs29_BW_uc/../uc8151.c:417: shortCommand(CMD_POWER_ON);
	mov	dpl,#0x04
	lcall	_shortCommand
;	board/zbs29_BW_uc/../uc8151.c:418: epdWaitRdy();
;	board/zbs29_BW_uc/../uc8151.c:419: }
	ljmp	_epdWaitRdy
;------------------------------------------------------------
;Allocation info for local variables in function 'epdGetStatus'
;------------------------------------------------------------
;sta                       Allocated with name '_epdGetStatus_sta_65536_167'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:420: static uint8_t epdGetStatus() {
;	-----------------------------------------
;	 function epdGetStatus
;	-----------------------------------------
_epdGetStatus:
;	board/zbs29_BW_uc/../uc8151.c:422: commandReadBegin(0x2F);
	mov	dpl,#0x2f
	lcall	_commandReadBegin
;	board/zbs29_BW_uc/../uc8151.c:423: sta = epdReadByte();
	lcall	_epdReadByte
	mov	r7,dpl
;	board/zbs29_BW_uc/../uc8151.c:424: commandReadEnd();
	push	ar7
	lcall	_commandReadEnd
	pop	ar7
;	board/zbs29_BW_uc/../uc8151.c:425: return sta;
	mov	dpl,r7
;	board/zbs29_BW_uc/../uc8151.c:426: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdGetBattery'
;------------------------------------------------------------
;sta                       Allocated with name '_epdGetBattery_sta_65536_169'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:427: uint16_t epdGetBattery(void) {
;	-----------------------------------------
;	 function epdGetBattery
;	-----------------------------------------
_epdGetBattery:
;	board/zbs29_BW_uc/../uc8151.c:429: commandReadBegin(0x51);
	mov	dpl,#0x51
	lcall	_commandReadBegin
;	board/zbs29_BW_uc/../uc8151.c:430: sta = epdReadByte();
	lcall	_epdReadByte
	mov	r7,dpl
;	board/zbs29_BW_uc/../uc8151.c:431: commandReadEnd();
	push	ar7
	lcall	_commandReadEnd
	pop	ar7
;	board/zbs29_BW_uc/../uc8151.c:432: if (sta) return 3000;
	mov	a,r7
	jz	00102$
	mov	dptr,#0x0bb8
	ret
00102$:
;	board/zbs29_BW_uc/../uc8151.c:433: return 2100;
	mov	dptr,#0x0834
;	board/zbs29_BW_uc/../uc8151.c:434: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'selectLUT'
;------------------------------------------------------------
;lut                       Allocated with name '_selectLUT_lut_65536_170'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:437: void selectLUT(uint8_t lut) {
;	-----------------------------------------
;	 function selectLUT
;	-----------------------------------------
_selectLUT:
	mov	a,dpl
	mov	dptr,#_selectLUT_lut_65536_170
;	board/zbs29_BW_uc/../uc8151.c:440: lut += 1;                    // make the compiler a happy camper
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	inc	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:441: wdtSetResetVal(0xFF8E797F);  // 120 s
	mov	dptr,#0x797f
	mov	b,#0x8e
	mov	a,#0xff
	lcall	_wdtSetResetVal
;	board/zbs29_BW_uc/../uc8151.c:442: wdtOn();
;	board/zbs29_BW_uc/../uc8151.c:443: return;
;	board/zbs29_BW_uc/../uc8151.c:444: }
	ljmp	_wdtOn
;------------------------------------------------------------
;Allocation info for local variables in function 'setWindowXY'
;------------------------------------------------------------
;xend                      Allocated with name '_setWindowXY_PARM_2'
;ystart                    Allocated with name '_setWindowXY_PARM_3'
;yend                      Allocated with name '_setWindowXY_PARM_4'
;xstart                    Allocated with name '_setWindowXY_xstart_65536_172'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:446: void setWindowXY(uint16_t xstart, uint16_t xend, uint16_t ystart, uint16_t yend) {
;	-----------------------------------------
;	 function setWindowXY
;	-----------------------------------------
_setWindowXY:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_setWindowXY_xstart_65536_172
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:447: shortCommand(CMD_PARTIAL_IN);
	mov	dpl,#0x91
	lcall	_shortCommand
;	board/zbs29_BW_uc/../uc8151.c:448: commandBegin(CMD_PARTIAL_WINDOW);
	mov	dpl,#0x90
	lcall	_commandBegin
;	board/zbs29_BW_uc/../uc8151.c:449: epdSend((xstart / 8) << 3);
	mov	dptr,#_setWindowXY_xstart_65536_172
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
	mov	a,r6
	swap	a
	rr	a
	anl	a,#0xf8
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:450: epdSend(((xend / 8 - 1) << 3) | 0x07);
	mov	dptr,#_setWindowXY_PARM_2
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
	dec	r6
	mov	a,r6
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	orl	ar6,#0x07
	mov	dpl,r6
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:451: epdSend(ystart >> 8);
	mov	dptr,#_setWindowXY_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:452: epdSend(ystart & 0xFF);
	mov	dpl,r6
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:453: epdSend((yend - 1) >> 8);
	mov	dptr,#_setWindowXY_PARM_4
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	dec	r4
	cjne	r4,#0xff,00106$
	dec	r5
00106$:
	mov	ar4,r5
	mov	dpl,r4
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:454: epdSend((yend - 1) & 0xff);
	dec	r6
	mov	dpl,r6
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:455: epdSend(0x01);
	mov	dpl,#0x01
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:456: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:457: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setColorMode'
;------------------------------------------------------------
;bw                        Allocated with name '_setColorMode_PARM_2'
;red                       Allocated with name '_setColorMode_red_65536_175'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:459: void setColorMode(uint8_t red, uint8_t bw) {
;	-----------------------------------------
;	 function setColorMode
;	-----------------------------------------
_setColorMode:
;	board/zbs29_BW_uc/../uc8151.c:461: red = 1;
	mov	dptr,#_setColorMode_red_65536_175
	mov	a,#0x01
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:463: return;
;	board/zbs29_BW_uc/../uc8151.c:464: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearScreen'
;------------------------------------------------------------
;c                         Allocated with name '_clearScreen_c_131072_178'
;c                         Allocated with name '_clearScreen_c_131072_181'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:465: void clearScreen() {
;	-----------------------------------------
;	 function clearScreen
;	-----------------------------------------
_clearScreen:
;	board/zbs29_BW_uc/../uc8151.c:466: shortCommand(CMD_PARTIAL_OUT);
	mov	dpl,#0x92
	lcall	_shortCommand
;	board/zbs29_BW_uc/../uc8151.c:467: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM2);
	mov	dpl,#0x13
	lcall	_commandBegin
;	board/zbs29_BW_uc/../uc8151.c:468: for (uint16_t c = 0; c < ((1UL * SCREEN_HEIGHT * SCREEN_WIDTH) / 8); c++) {
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
	clr	c
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	subb	a,#0x12
	jnc	00102$
;	board/zbs29_BW_uc/../uc8151.c:469: epdSend(0x00);
	mov	dpl,#0x00
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:468: for (uint16_t c = 0; c < ((1UL * SCREEN_HEIGHT * SCREEN_WIDTH) / 8); c++) {
	inc	r6
;	board/zbs29_BW_uc/../uc8151.c:471: commandEnd();
	cjne	r6,#0x00,00110$
	inc	r7
	sjmp	00110$
00102$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:472: epdWaitRdy();
	lcall	_epdWaitRdy
;	board/zbs29_BW_uc/../uc8151.c:473: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
	mov	dpl,#0x13
	lcall	_commandBegin
;	board/zbs29_BW_uc/../uc8151.c:474: for (uint16_t c = 0; c < ((1UL * SCREEN_HEIGHT * SCREEN_WIDTH) / 8); c++) {
	mov	r6,#0x00
	mov	r7,#0x00
00113$:
	clr	c
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	subb	a,#0x12
	jnc	00106$
;	board/zbs29_BW_uc/../uc8151.c:475: epdSend(0x00);
	mov	dpl,#0x00
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:474: for (uint16_t c = 0; c < ((1UL * SCREEN_HEIGHT * SCREEN_WIDTH) / 8); c++) {
	inc	r6
;	board/zbs29_BW_uc/../uc8151.c:477: commandEnd();
	cjne	r6,#0x00,00113$
	inc	r7
	sjmp	00113$
00106$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:478: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:479: void draw() {
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
;	board/zbs29_BW_uc/../uc8151.c:480: shortCommand(CMD_DISPLAY_REFRESH);
	mov	dpl,#0x12
	lcall	_shortCommand
;	board/zbs29_BW_uc/../uc8151.c:481: epdWaitRdy();
;	board/zbs29_BW_uc/../uc8151.c:482: }
	ljmp	_epdWaitRdy
;------------------------------------------------------------
;Allocation info for local variables in function 'drawNoWait'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:483: void drawNoWait() {
;	-----------------------------------------
;	 function drawNoWait
;	-----------------------------------------
_drawNoWait:
;	board/zbs29_BW_uc/../uc8151.c:484: shortCommand(CMD_DISPLAY_REFRESH);
	mov	dpl,#0x12
;	board/zbs29_BW_uc/../uc8151.c:485: }
	ljmp	_shortCommand
;------------------------------------------------------------
;Allocation info for local variables in function 'drawWithSleep'
;------------------------------------------------------------
;tmp_P2FUNC                Allocated with name '_drawWithSleep_tmp_P2FUNC_65537_187'
;tmp_P2DIR                 Allocated with name '_drawWithSleep_tmp_P2DIR_65537_187'
;tmp_P2PULL                Allocated with name '_drawWithSleep_tmp_P2PULL_65537_187'
;tmp_P2LVLSEL              Allocated with name '_drawWithSleep_tmp_P2LVLSEL_65537_187'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:486: void drawWithSleep() {
;	-----------------------------------------
;	 function drawWithSleep
;	-----------------------------------------
_drawWithSleep:
;	board/zbs29_BW_uc/../uc8151.c:487: shortCommand(CMD_DISPLAY_REFRESH);
	mov	dpl,#0x12
	lcall	_shortCommand
;	board/zbs29_BW_uc/../uc8151.c:488: uint8_t tmp_P2FUNC = P2FUNC;
	mov	dptr,#_drawWithSleep_tmp_P2FUNC_65537_187
	mov	a,_P2FUNC
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:489: uint8_t tmp_P2DIR = P2DIR;
	mov	dptr,#_drawWithSleep_tmp_P2DIR_65537_187
	mov	a,_P2DIR
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:490: uint8_t tmp_P2PULL = P2PULL;
	mov	dptr,#_drawWithSleep_tmp_P2PULL_65537_187
	mov	a,_P2PULL
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:491: uint8_t tmp_P2LVLSEL = P2LVLSEL;
	mov	dptr,#_drawWithSleep_tmp_P2LVLSEL_65537_187
	mov	a,_P2LVLSEL
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:492: P2FUNC &= 0xfd;
	anl	_P2FUNC,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:493: P2DIR |= 2;
	orl	_P2DIR,#0x02
;	board/zbs29_BW_uc/../uc8151.c:494: P2PULL |= 2;
	orl	_P2PULL,#0x02
;	board/zbs29_BW_uc/../uc8151.c:495: P2LVLSEL &= ~(2);
	anl	_P2LVLSEL,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:497: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:498: P2INTEN = 2;
	mov	_P2INTEN,#0x02
;	board/zbs29_BW_uc/../uc8151.c:499: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:500: sleepForMsec(TIMER_TICKS_PER_SECOND * 120);
	mov	dptr,#0x67d8
	mov	b,#0x89
	mov	a,#0x09
	lcall	_sleepForMsec
;	board/zbs29_BW_uc/../uc8151.c:501: wdtOn();
	lcall	_wdtOn
;	board/zbs29_BW_uc/../uc8151.c:502: P2CHSTA &= 0xfd;
	anl	_P2CHSTA,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:503: P2INTEN &= 0xfd;
	anl	_P2INTEN,#0xfd
;	board/zbs29_BW_uc/../uc8151.c:505: P2FUNC = tmp_P2FUNC;
	mov	dptr,#_drawWithSleep_tmp_P2FUNC_65537_187
	movx	a,@dptr
	mov	_P2FUNC,a
;	board/zbs29_BW_uc/../uc8151.c:506: P2DIR = tmp_P2DIR;
	mov	dptr,#_drawWithSleep_tmp_P2DIR_65537_187
	movx	a,@dptr
	mov	_P2DIR,a
;	board/zbs29_BW_uc/../uc8151.c:507: P2PULL = tmp_P2PULL;
	mov	dptr,#_drawWithSleep_tmp_P2PULL_65537_187
	movx	a,@dptr
	mov	_P2PULL,a
;	board/zbs29_BW_uc/../uc8151.c:508: P2LVLSEL = tmp_P2LVLSEL;
	mov	dptr,#_drawWithSleep_tmp_P2LVLSEL_65537_187
	movx	a,@dptr
	mov	_P2LVLSEL,a
;	board/zbs29_BW_uc/../uc8151.c:509: eepromPrvDeselect();
	nop
	nop
	nop
;	assignBit
	setb	_P1_1
	nop
	nop
	nop
;	board/zbs29_BW_uc/../uc8151.c:510: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdWaitRdy'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:511: void epdWaitRdy() {
;	-----------------------------------------
;	 function epdWaitRdy
;	-----------------------------------------
_epdWaitRdy:
;	board/zbs29_BW_uc/../uc8151.c:512: epdBusyWait(TIMER_TICKS_PER_SECOND * 120);
	mov	dptr,#0x67d8
	mov	b,#0x89
	mov	a,#0x09
;	board/zbs29_BW_uc/../uc8151.c:513: }
	ljmp	_epdBusyWait
;------------------------------------------------------------
;Allocation info for local variables in function 'beginFullscreenImage'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:514: void beginFullscreenImage() {
;	-----------------------------------------
;	 function beginFullscreenImage
;	-----------------------------------------
_beginFullscreenImage:
;	board/zbs29_BW_uc/../uc8151.c:515: shortCommand(CMD_PARTIAL_OUT);
	mov	dpl,#0x92
	lcall	_shortCommand
;	board/zbs29_BW_uc/../uc8151.c:516: epdDrawDirection(false);
	mov	dpl,#0x00
;	board/zbs29_BW_uc/../uc8151.c:519: }
	ljmp	_epdDrawDirection
;------------------------------------------------------------
;Allocation info for local variables in function 'beginWriteFramebuffer'
;------------------------------------------------------------
;color                     Allocated with name '_beginWriteFramebuffer_color_65536_191'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:520: void beginWriteFramebuffer(bool color) {
;	-----------------------------------------
;	 function beginWriteFramebuffer
;	-----------------------------------------
_beginWriteFramebuffer:
	mov	a,dpl
	mov	dptr,#_beginWriteFramebuffer_color_65536_191
;	board/zbs29_BW_uc/../uc8151.c:522: if (color == EPD_COLOR_RED) {
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	jz	00102$
;	board/zbs29_BW_uc/../uc8151.c:523: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM2);
	mov	dpl,#0x13
	lcall	_commandBegin
	sjmp	00104$
00102$:
;	board/zbs29_BW_uc/../uc8151.c:525: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
	mov	dpl,#0x13
	lcall	_commandBegin
;	board/zbs29_BW_uc/../uc8151.c:527: epdDeselect();
00104$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:528: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'endWriteFramebuffer'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:529: void endWriteFramebuffer() {
;	-----------------------------------------
;	 function endWriteFramebuffer
;	-----------------------------------------
_endWriteFramebuffer:
;	board/zbs29_BW_uc/../uc8151.c:530: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:531: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loadRawBitmap'
;------------------------------------------------------------
;x                         Allocated to stack - sp -13
;y                         Allocated to stack - sp -15
;color                     Allocated to stack - sp -16
;bmp                       Allocated to registers 
;xsize                     Allocated to stack - sp -3
;ysize                     Allocated to registers 
;size                      Allocated to registers 
;c                         Allocated to stack - sp -1
;curY                      Allocated to registers 
;sloc0                     Allocated to stack - sp -9
;sloc1                     Allocated to stack - sp -7
;sloc2                     Allocated to stack - sp -5
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:533: void loadRawBitmap(uint8_t* bmp, uint16_t x, uint16_t y, bool color) __reentrant {
;	-----------------------------------------
;	 function loadRawBitmap
;	-----------------------------------------
_loadRawBitmap:
	mov	a,sp
	add	a,#0x0a
	mov	sp,a
;	board/zbs29_BW_uc/../uc8151.c:537: uint16_t xsize = bmp[0] / 8;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r2,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
;	board/zbs29_BW_uc/../uc8151.c:538: if (bmp[0] % 8) xsize++;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	anl	a,#0x07
	jz	00102$
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00156$
	inc	r0
	inc	@r0
00156$:
00102$:
;	board/zbs29_BW_uc/../uc8151.c:540: uint16_t size = xsize * bmp[1];
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	xch	a,r0
	mov	a,sp
	add	a,#0xf6
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs29_BW_uc/../uc8151.c:544: bmp += 2;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	board/zbs29_BW_uc/../uc8151.c:547: uint16_t curY = y;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,sp
	add	a,#0xf7
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
;	board/zbs29_BW_uc/../uc8151.c:548: while (1) {
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00117$:
;	board/zbs29_BW_uc/../uc8151.c:549: if (c % xsize == 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dptr,#__moduint_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00157$
	ljmp	00113$
00157$:
;	board/zbs29_BW_uc/../uc8151.c:550: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:551: if (drawDirection) {
	mov	dptr,#_drawDirection
	movx	a,@dptr
	jnz	00158$
	ljmp	00107$
00158$:
;	board/zbs29_BW_uc/../uc8151.c:552: setWindowXY(x, x + xsize * 8, SCREEN_HEIGHT - curY - 1, SCREEN_HEIGHT - curY);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	mov	a,r4
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,@r0
	swap	a
	rr	a
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0xf8
	xch	a,@r0
	xrl	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	mov	dptr,#_setWindowXY_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dptr,#_setWindowXY_PARM_3
	mov	a,#0x27
	clr	c
	subb	a,@r0
	movx	@dptr,a
	mov	a,#0x01
	inc	r0
	subb	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dptr,#_setWindowXY_PARM_4
	mov	a,#0x28
	clr	c
	subb	a,@r0
	movx	@dptr,a
	mov	a,#0x01
	inc	r0
	subb	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_setWindowXY
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00108$
00107$:
;	board/zbs29_BW_uc/../uc8151.c:554: setWindowXY(x, x + xsize * 8, curY - 1, curY);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	mov	a,r4
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,@r0
	swap	a
	rr	a
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0xf8
	xch	a,@r0
	xrl	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	mov	dptr,#_setWindowXY_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	dec	r3
	cjne	r3,#0xff,00159$
	dec	r4
00159$:
	mov	dptr,#_setWindowXY_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dptr,#_setWindowXY_PARM_4
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_setWindowXY
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs29_BW_uc/../uc8151.c:568: shortCommand(CMD_PARTIAL_OUT);
;	board/zbs29_BW_uc/../uc8151.c:554: setWindowXY(x, x + xsize * 8, curY - 1, curY);
00108$:
;	board/zbs29_BW_uc/../uc8151.c:556: curY++;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00160$
	inc	r0
	inc	@r0
00160$:
;	board/zbs29_BW_uc/../uc8151.c:557: if (color) {
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	jz	00110$
;	board/zbs29_BW_uc/../uc8151.c:558: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM2);
	mov	dpl,#0x13
	push	ar7
	push	ar6
	push	ar5
	lcall	_commandBegin
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00113$
00110$:
;	board/zbs29_BW_uc/../uc8151.c:560: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
	mov	dpl,#0x13
	push	ar7
	push	ar6
	push	ar5
	lcall	_commandBegin
	pop	ar5
	pop	ar6
	pop	ar7
00113$:
;	board/zbs29_BW_uc/../uc8151.c:563: epdSend(*(bmp++));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r3
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:564: c++;
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00162$
	inc	r0
	inc	@r0
00162$:
;	board/zbs29_BW_uc/../uc8151.c:565: if (!size--) break;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xff,00163$
	inc	r0
	dec	@r0
00163$:
	mov	a,r3
	orl	a,r4
	jz	00164$
	ljmp	00117$
00164$:
;	board/zbs29_BW_uc/../uc8151.c:567: commandEnd();
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:568: shortCommand(CMD_PARTIAL_OUT);
	mov	dpl,#0x92
	lcall	_shortCommand
;	board/zbs29_BW_uc/../uc8151.c:569: }
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printBarcode'
;------------------------------------------------------------
;x                         Allocated with name '_printBarcode_PARM_2'
;y                         Allocated with name '_printBarcode_PARM_3'
;string                    Allocated with name '_printBarcode_string_65536_210'
;bci                       Allocated with name '_printBarcode_bci_65537_212'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:570: void printBarcode(const uint8_t* string, uint16_t x, uint16_t y) {
;	-----------------------------------------
;	 function printBarcode
;	-----------------------------------------
_printBarcode:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_printBarcode_string_65536_210
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:571: setWindowXY(x, x + 8, SCREEN_HEIGHT - y, SCREEN_HEIGHT);
	mov	dptr,#_printBarcode_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#_printBarcode_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x28
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0x01
	subb	a,r3
	mov	r3,a
	mov	dptr,#_setWindowXY_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_4
	mov	a,#0x28
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_setWindowXY
;	board/zbs29_BW_uc/../uc8151.c:572: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
	mov	dpl,#0x13
	lcall	_commandBegin
;	board/zbs29_BW_uc/../uc8151.c:573: struct BarcodeInfo __xdata bci = {
	mov	dptr,#_printBarcode_string_65536_210
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_printBarcode_bci_65537_212
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0003)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0008)
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:576: while (!barcodeIsDone(&bci)) {
00104$:
	mov	dptr,#_printBarcode_bci_65537_212
	lcall	_barcodeIsDone
	jc	00107$
;	board/zbs29_BW_uc/../uc8151.c:577: if (barcodeNextBar(&bci)) {
	mov	dptr,#_printBarcode_bci_65537_212
	lcall	_barcodeNextBar
	jnc	00102$
;	board/zbs29_BW_uc/../uc8151.c:578: epdSend(0xFF);
	mov	dpl,#0xff
	lcall	_spiTXByte
	sjmp	00104$
00102$:
;	board/zbs29_BW_uc/../uc8151.c:580: epdSend(0x00);
	mov	dpl,#0x00
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:583: commandEnd();
	sjmp	00104$
00107$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:584: shortCommand(CMD_PARTIAL_OUT);
	mov	dpl,#0x92
;	board/zbs29_BW_uc/../uc8151.c:585: }
	ljmp	_shortCommand
;------------------------------------------------------------
;Allocation info for local variables in function 'pushXFontBytesToEPD'
;------------------------------------------------------------
;byte2                     Allocated with name '_pushXFontBytesToEPD_PARM_2'
;byte1                     Allocated with name '_pushXFontBytesToEPD_byte1_65536_217'
;offset                    Allocated with name '_pushXFontBytesToEPD_offset_131072_219'
;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_220'
;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_222'
;offset                    Allocated with name '_pushXFontBytesToEPD_offset_131072_224'
;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_225'
;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_228'
;i                         Allocated with name '_pushXFontBytesToEPD_i_196608_232'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:587: static void pushXFontBytesToEPD(uint8_t byte1, uint8_t byte2) {
;	-----------------------------------------
;	 function pushXFontBytesToEPD
;	-----------------------------------------
_pushXFontBytesToEPD:
	mov	a,dpl
	mov	dptr,#_pushXFontBytesToEPD_byte1_65536_217
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:588: if (epdCharSize == 1) {
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00205$
	sjmp	00206$
00205$:
	ljmp	00114$
00206$:
;	board/zbs29_BW_uc/../uc8151.c:589: uint8_t offset = 7 - (fontCurXpos % 8);
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
	mov	dptr,#_pushXFontBytesToEPD_offset_131072_219
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:590: for (uint8_t c = 0; c < 8; c++) {
	mov	ar7,r6
	mov	dptr,#_pushXFontBytesToEPD_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00120$:
	cjne	r5,#0x08,00207$
00207$:
	jnc	00103$
;	board/zbs29_BW_uc/../uc8151.c:591: if (byte2 & (1 << (7 - c))) rbuffer[c] |= (1 << offset);
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
;	board/zbs29_BW_uc/../uc8151.c:590: for (uint8_t c = 0; c < 8; c++) {
	inc	r5
	sjmp	00120$
00103$:
;	board/zbs29_BW_uc/../uc8151.c:593: for (uint8_t c = 0; c < 8; c++) {
	mov	dptr,#_pushXFontBytesToEPD_offset_131072_219
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pushXFontBytesToEPD_byte1_65536_217
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00123$:
	cjne	r5,#0x08,00215$
00215$:
	jnc	00106$
;	board/zbs29_BW_uc/../uc8151.c:594: if (byte1 & (1 << (7 - c))) rbuffer[8 + c] |= (1 << offset);
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
;	board/zbs29_BW_uc/../uc8151.c:593: for (uint8_t c = 0; c < 8; c++) {
	inc	r5
	sjmp	00123$
00106$:
;	board/zbs29_BW_uc/../uc8151.c:596: fontCurXpos++;
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
;	board/zbs29_BW_uc/../uc8151.c:598: uint8_t offset = 6 - (fontCurXpos % 8);
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
	mov	dptr,#_pushXFontBytesToEPD_offset_131072_224
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:600: for (uint8_t c = 0; c < 8; c++) {
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
;	board/zbs29_BW_uc/../uc8151.c:601: if (byte2 & (1 << (7 - c))) {
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
;	board/zbs29_BW_uc/../uc8151.c:602: rbuffer[c * 2] |= (3 << offset);
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
;	board/zbs29_BW_uc/../uc8151.c:603: rbuffer[(c * 2) + 1] |= (3 << offset);
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
;	board/zbs29_BW_uc/../uc8151.c:600: for (uint8_t c = 0; c < 8; c++) {
	inc	r5
	ljmp	00126$
00109$:
;	board/zbs29_BW_uc/../uc8151.c:606: for (uint8_t c = 0; c < 8; c++) {
	mov	dptr,#_pushXFontBytesToEPD_offset_131072_224
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pushXFontBytesToEPD_byte1_65536_217
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00129$:
	cjne	r5,#0x08,00231$
00231$:
	jc	00232$
	ljmp	00112$
00232$:
;	board/zbs29_BW_uc/../uc8151.c:607: if (byte1 & (1 << (7 - c))) {
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
;	board/zbs29_BW_uc/../uc8151.c:608: rbuffer[(c * 2) + 16] |= (3 << offset);
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
;	board/zbs29_BW_uc/../uc8151.c:609: rbuffer[(c * 2) + 17] |= (3 << offset);
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
;	board/zbs29_BW_uc/../uc8151.c:606: for (uint8_t c = 0; c < 8; c++) {
	inc	r5
	ljmp	00129$
00112$:
;	board/zbs29_BW_uc/../uc8151.c:612: fontCurXpos += 2;
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
;	board/zbs29_BW_uc/../uc8151.c:614: if (fontCurXpos % 8 == 0) {
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
;	board/zbs29_BW_uc/../uc8151.c:616: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
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
;	board/zbs29_BW_uc/../uc8151.c:617: epdSend(rbuffer[i]);
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
;	board/zbs29_BW_uc/../uc8151.c:616: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
	inc	r7
	sjmp	00132$
00116$:
;	board/zbs29_BW_uc/../uc8151.c:619: memset(rbuffer, 0, 32);
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
;	board/zbs29_BW_uc/../uc8151.c:621: }
	ljmp	_memset
;------------------------------------------------------------
;Allocation info for local variables in function 'bufferByteShift'
;------------------------------------------------------------
;byte                      Allocated with name '_bufferByteShift_byte_65536_234'
;offset                    Allocated with name '_bufferByteShift_offset_131072_237'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:622: static void bufferByteShift(uint8_t byte) {
;	-----------------------------------------
;	 function bufferByteShift
;	-----------------------------------------
_bufferByteShift:
	mov	a,dpl
	mov	dptr,#_bufferByteShift_byte_65536_234
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:630: if (rbuffer[1] == 0) {
	mov	dptr,#(_rbuffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	board/zbs29_BW_uc/../uc8151.c:631: epdSend(byte);
	mov	dptr,#_bufferByteShift_byte_65536_234
	movx	a,@dptr
	mov	dpl,a
	ljmp	_spiTXByte
00104$:
;	board/zbs29_BW_uc/../uc8151.c:634: rbuffer[0] |= (byte >> offset);
	mov	dptr,#_rbuffer
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_bufferByteShift_byte_65536_234
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
;	board/zbs29_BW_uc/../uc8151.c:635: epdSend(rbuffer[0]);
	mov	dpl,r6
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:637: rbuffer[0] = (byte << (8 - offset));
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
;	board/zbs29_BW_uc/../uc8151.c:638: rbuffer[2]++;
	mov	dptr,#(_rbuffer + 0x0002)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_rbuffer + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:639: if (rbuffer[2] == rbuffer[3]) {
	mov	dptr,#(_rbuffer + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00106$
;	board/zbs29_BW_uc/../uc8151.c:640: epdSend(rbuffer[0]);
	mov	dptr,#_rbuffer
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	lcall	_spiTXByte
;	board/zbs29_BW_uc/../uc8151.c:641: rbuffer[0] = 0;
	mov	dptr,#_rbuffer
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:642: rbuffer[2] = 0;
	mov	dptr,#(_rbuffer + 0x0002)
	movx	@dptr,a
00106$:
;	board/zbs29_BW_uc/../uc8151.c:645: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pushYFontBytesToEPD'
;------------------------------------------------------------
;byte2                     Allocated with name '_pushYFontBytesToEPD_PARM_2'
;byte1                     Allocated with name '_pushYFontBytesToEPD_byte1_65536_239'
;j                         Allocated with name '_pushYFontBytesToEPD_j_196608_242'
;c                         Allocated with name '_pushYFontBytesToEPD_c_262144_243'
;i                         Allocated with name '_pushYFontBytesToEPD_i_327680_244'
;i                         Allocated with name '_pushYFontBytesToEPD_i_327680_247'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:646: static void pushYFontBytesToEPD(uint8_t byte1, uint8_t byte2) {
;	-----------------------------------------
;	 function pushYFontBytesToEPD
;	-----------------------------------------
_pushYFontBytesToEPD:
	mov	a,dpl
	mov	dptr,#_pushYFontBytesToEPD_byte1_65536_239
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:647: if (epdCharSize == 2) {
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00184$
	sjmp	00185$
00184$:
	ljmp	00113$
00185$:
;	board/zbs29_BW_uc/../uc8151.c:648: for (uint8_t j = 0; j < 2; j++) {
	mov	dptr,#_pushYFontBytesToEPD_byte1_65536_239
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
;	board/zbs29_BW_uc/../uc8151.c:649: uint8_t c = 0;
	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:650: for (uint8_t i = 7; i != 255; i--) {
	mov	r4,#0x07
00116$:
	cjne	r4,#0xff,00188$
	sjmp	00105$
00188$:
;	board/zbs29_BW_uc/../uc8151.c:651: if (byte1 & (1 << i)) c |= (0x03 << ((i % 4) * 2));
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
	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
	movx	a,@dptr
	orl	a,r3
	movx	@dptr,a
00102$:
;	board/zbs29_BW_uc/../uc8151.c:652: if ((i % 4) == 0) {
	mov	a,r4
	anl	a,#0x03
	jz	00196$
	sjmp	00117$
00196$:
;	board/zbs29_BW_uc/../uc8151.c:653: bufferByteShift(c);
	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
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
;	board/zbs29_BW_uc/../uc8151.c:654: c = 0;
	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
	clr	a
	movx	@dptr,a
00117$:
;	board/zbs29_BW_uc/../uc8151.c:650: for (uint8_t i = 7; i != 255; i--) {
	dec	r4
	sjmp	00116$
00105$:
;	board/zbs29_BW_uc/../uc8151.c:657: for (uint8_t i = 7; i != 255; i--) {
	mov	r4,#0x07
00119$:
	cjne	r4,#0xff,00197$
	sjmp	00123$
00197$:
;	board/zbs29_BW_uc/../uc8151.c:658: if (byte2 & (1 << i)) c |= (0x03 << ((i % 4) * 2));
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
	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
	movx	a,@dptr
	orl	a,r3
	movx	@dptr,a
00107$:
;	board/zbs29_BW_uc/../uc8151.c:659: if ((i % 4) == 0) {
	mov	a,r4
	anl	a,#0x03
	jz	00205$
	sjmp	00120$
00205$:
;	board/zbs29_BW_uc/../uc8151.c:660: bufferByteShift(c);
	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
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
;	board/zbs29_BW_uc/../uc8151.c:661: c = 0;
	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
	clr	a
	movx	@dptr,a
00120$:
;	board/zbs29_BW_uc/../uc8151.c:657: for (uint8_t i = 7; i != 255; i--) {
	dec	r4
	sjmp	00119$
00123$:
;	board/zbs29_BW_uc/../uc8151.c:648: for (uint8_t j = 0; j < 2; j++) {
	inc	r5
	ljmp	00122$
00113$:
;	board/zbs29_BW_uc/../uc8151.c:666: bufferByteShift(byte1);
	mov	dptr,#_pushYFontBytesToEPD_byte1_65536_239
	movx	a,@dptr
	mov	dpl,a
	lcall	_bufferByteShift
;	board/zbs29_BW_uc/../uc8151.c:667: bufferByteShift(byte2);
	mov	dptr,#_pushYFontBytesToEPD_PARM_2
	movx	a,@dptr
	mov	dpl,a
;	board/zbs29_BW_uc/../uc8151.c:669: }
	ljmp	_bufferByteShift
;------------------------------------------------------------
;Allocation info for local variables in function 'writeCharEPD'
;------------------------------------------------------------
;c                         Allocated with name '_writeCharEPD_c_65536_251'
;empty                     Allocated with name '_writeCharEPD_empty_65537_253'
;i                         Allocated with name '_writeCharEPD_i_131073_254'
;i                         Allocated with name '_writeCharEPD_i_196609_257'
;begin                     Allocated with name '_writeCharEPD_begin_65538_261'
;end                       Allocated with name '_writeCharEPD_end_65539_263'
;pos                       Allocated with name '_writeCharEPD_pos_131075_265'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:670: void writeCharEPD(uint8_t c) {
;	-----------------------------------------
;	 function writeCharEPD
;	-----------------------------------------
_writeCharEPD:
	mov	a,dpl
	mov	dptr,#_writeCharEPD_c_65536_251
;	board/zbs29_BW_uc/../uc8151.c:671: c-=0x20;
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	add	a,#0xe0
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:673: bool empty = true;
	mov	dptr,#_writeCharEPD_empty_65537_253
	mov	a,#0x01
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:674: for (uint8_t i = 0; i < 20; i++) {
	mov	dptr,#_writeCharEPD_c_65536_251
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
;	board/zbs29_BW_uc/../uc8151.c:675: if (font[c][i]) empty = false;
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
	mov	dptr,#_writeCharEPD_empty_65537_253
	clr	a
	movx	@dptr,a
00127$:
;	board/zbs29_BW_uc/../uc8151.c:674: for (uint8_t i = 0; i < 20; i++) {
	inc	r5
	sjmp	00126$
00103$:
;	board/zbs29_BW_uc/../uc8151.c:677: if (empty) {
	mov	dptr,#_writeCharEPD_empty_65537_253
	movx	a,@dptr
	jz	00109$
;	board/zbs29_BW_uc/../uc8151.c:678: for (uint8_t i = 0; i < 8; i++) {
	mov	r7,#0x00
00129$:
	cjne	r7,#0x08,00210$
00210$:
	jnc	00107$
;	board/zbs29_BW_uc/../uc8151.c:679: if (directionY) {
	mov	dptr,#_directionY
	movx	a,@dptr
	jz	00105$
;	board/zbs29_BW_uc/../uc8151.c:680: pushYFontBytesToEPD(0x00, 0x00);
	mov	dptr,#_pushYFontBytesToEPD_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	lcall	_pushYFontBytesToEPD
	pop	ar7
	sjmp	00130$
00105$:
;	board/zbs29_BW_uc/../uc8151.c:682: pushXFontBytesToEPD(0x00, 0x00);
	mov	dptr,#_pushXFontBytesToEPD_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	lcall	_pushXFontBytesToEPD
	pop	ar7
00130$:
;	board/zbs29_BW_uc/../uc8151.c:678: for (uint8_t i = 0; i < 8; i++) {
	inc	r7
	sjmp	00129$
00107$:
;	board/zbs29_BW_uc/../uc8151.c:685: return;
	ret
00109$:
;	board/zbs29_BW_uc/../uc8151.c:688: uint8_t begin = 0;
	mov	dptr,#_writeCharEPD_begin_65538_261
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:689: while (font[c][begin] == 0x00 && font[c][begin + 1] == 0x00) {
	mov	dptr,#_writeCharEPD_c_65536_251
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
	mov	dptr,#_writeCharEPD_begin_65538_261
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
;	board/zbs29_BW_uc/../uc8151.c:690: begin += 2;
	mov	dptr,#_writeCharEPD_begin_65538_261
	mov	a,#0x02
	add	a,r3
	movx	@dptr,a
	sjmp	00111$
00113$:
;	board/zbs29_BW_uc/../uc8151.c:693: uint8_t end = 20;
	mov	dptr,#_writeCharEPD_end_65539_263
	mov	a,#0x14
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:694: while (font[c][end - 1] == 0x00 && font[c][end - 2] == 0x00) {
	mov	dptr,#_writeCharEPD_c_65536_251
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
	mov	dptr,#_writeCharEPD_end_65539_263
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
;	board/zbs29_BW_uc/../uc8151.c:695: end -= 2;
	mov	a,r3
	add	a,#0xfe
	mov	dptr,#_writeCharEPD_end_65539_263
	movx	@dptr,a
	sjmp	00115$
00117$:
;	board/zbs29_BW_uc/../uc8151.c:698: for (uint8_t pos = begin; pos < end; pos += 2) {
	mov	dptr,#_writeCharEPD_begin_65538_261
	movx	a,@dptr
	mov	dptr,#_writeCharEPD_pos_131075_265
	movx	@dptr,a
	mov	dptr,#_writeCharEPD_c_65536_251
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
	mov	dptr,#_writeCharEPD_end_65539_263
	movx	a,@dptr
	mov	r3,a
00132$:
	mov	dptr,#_writeCharEPD_pos_131075_265
	movx	a,@dptr
	mov	r2,a
	clr	c
	subb	a,r3
	jnc	00121$
;	board/zbs29_BW_uc/../uc8151.c:699: if (directionY) {
	mov	dptr,#_directionY
	movx	a,@dptr
	jz	00119$
;	board/zbs29_BW_uc/../uc8151.c:700: pushYFontBytesToEPD(font[c][pos + 1], font[c][pos]);
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
;	board/zbs29_BW_uc/../uc8151.c:702: pushXFontBytesToEPD(font[c][pos], font[c][pos + 1]);
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
;	board/zbs29_BW_uc/../uc8151.c:698: for (uint8_t pos = begin; pos < end; pos += 2) {
	mov	dptr,#_writeCharEPD_pos_131075_265
	movx	a,@dptr
	mov	r2,a
	add	a,#0x02
	movx	@dptr,a
	ljmp	00132$
00121$:
;	board/zbs29_BW_uc/../uc8151.c:707: if (directionY) {
	mov	dptr,#_directionY
	movx	a,@dptr
	jz	00123$
;	board/zbs29_BW_uc/../uc8151.c:708: pushYFontBytesToEPD(0x00, 0x00);
	mov	dptr,#_pushYFontBytesToEPD_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	ljmp	_pushYFontBytesToEPD
00123$:
;	board/zbs29_BW_uc/../uc8151.c:710: pushXFontBytesToEPD(0x00, 0x00);
	mov	dptr,#_pushXFontBytesToEPD_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
;	board/zbs29_BW_uc/../uc8151.c:712: }
	ljmp	_pushXFontBytesToEPD
;------------------------------------------------------------
;Allocation info for local variables in function 'epdPrintBegin'
;------------------------------------------------------------
;y                         Allocated with name '_epdPrintBegin_PARM_2'
;direction                 Allocated with name '_epdPrintBegin_PARM_3'
;fontsize                  Allocated with name '_epdPrintBegin_PARM_4'
;color                     Allocated with name '_epdPrintBegin_PARM_5'
;x                         Allocated with name '_epdPrintBegin_x_65536_271'
;extra                     Allocated with name '_epdPrintBegin_extra_131072_273'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:715: void epdPrintBegin(uint16_t x, uint16_t y, bool direction, bool fontsize, bool color) {
;	-----------------------------------------
;	 function epdPrintBegin
;	-----------------------------------------
_epdPrintBegin:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_epdPrintBegin_x_65536_271
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:716: directionY = direction;
	mov	dptr,#_epdPrintBegin_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_directionY
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:717: epdCharSize = 1 + fontsize;
	mov	dptr,#_epdPrintBegin_PARM_4
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#_epdCharSize
	mov	a,r6
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:718: if (directionY) {
	mov	a,r7
	jnz	00138$
	ljmp	00111$
00138$:
;	board/zbs29_BW_uc/../uc8151.c:719: uint8_t extra = 0;
	mov	dptr,#_epdPrintBegin_extra_131072_273
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:722: if (x % 8) {
	mov	dptr,#_epdPrintBegin_x_65536_271
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	anl	ar5,#0x07
	mov	r7,#0x00
	mov	a,r5
	orl	a,r7
	jz	00102$
;	board/zbs29_BW_uc/../uc8151.c:723: extra = 8;
	mov	dptr,#_epdPrintBegin_extra_131072_273
	mov	a,#0x08
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:724: rbuffer[0] = 0;      // previous value
	mov	dptr,#_rbuffer
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:725: rbuffer[1] = x % 8;  // offset
	mov	dptr,#(_rbuffer + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:726: rbuffer[2] = 0;      // current byte counter;
	mov	dptr,#(_rbuffer + 0x0002)
	clr	a
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:727: rbuffer[3] = (epdCharSize * 2);
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	add	a,acc
	mov	r7,a
	mov	dptr,#(_rbuffer + 0x0003)
	movx	@dptr,a
	sjmp	00103$
00102$:
;	board/zbs29_BW_uc/../uc8151.c:729: rbuffer[1] = 0;
	mov	dptr,#(_rbuffer + 0x0001)
	clr	a
	movx	@dptr,a
00103$:
;	board/zbs29_BW_uc/../uc8151.c:733: if (epdCharSize == 2) {
	mov	dptr,#_epdCharSize
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00105$
;	board/zbs29_BW_uc/../uc8151.c:734: setWindowXY(x, x + 32 + extra, SCREEN_HEIGHT - y, SCREEN_HEIGHT);
	mov	dptr,#_epdPrintBegin_x_65536_271
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar3,r5
	mov	ar4,r7
	mov	a,#0x20
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#_epdPrintBegin_extra_131072_273
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,r1
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	mov	dptr,#_epdPrintBegin_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x28
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,#0x01
	subb	a,r2
	mov	r2,a
	mov	dptr,#_setWindowXY_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_4
	mov	a,#0x28
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r7
	lcall	_setWindowXY
	ljmp	00112$
00105$:
;	board/zbs29_BW_uc/../uc8151.c:737: setWindowXY(x, x + 16 + extra, SCREEN_HEIGHT - y, SCREEN_HEIGHT);
	mov	dptr,#_epdPrintBegin_x_65536_271
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar3,r5
	mov	ar4,r7
	mov	a,#0x10
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#_epdPrintBegin_extra_131072_273
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,r1
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	mov	dptr,#_epdPrintBegin_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x28
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,#0x01
	subb	a,r2
	mov	r2,a
	mov	dptr,#_setWindowXY_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_4
	mov	a,#0x28
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r7
	lcall	_setWindowXY
	ljmp	00112$
00111$:
;	board/zbs29_BW_uc/../uc8151.c:742: if (epdCharSize == 2) {
	cjne	r6,#0x02,00108$
;	board/zbs29_BW_uc/../uc8151.c:743: x /= 2;
	mov	dptr,#_epdPrintBegin_x_65536_271
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
	mov	dptr,#_epdPrintBegin_x_65536_271
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:744: x *= 2;
	mov	dptr,#_epdPrintBegin_x_65536_271
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
	mov	dptr,#_epdPrintBegin_x_65536_271
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:745: setWindowXY(x, SCREEN_WIDTH, y, y + 32);
	mov	dptr,#_epdPrintBegin_x_65536_271
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
	mov	ar2,r4
	mov	ar3,r5
	mov	a,#0x20
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_setWindowXY_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_4
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_setWindowXY
	sjmp	00109$
00108$:
;	board/zbs29_BW_uc/../uc8151.c:747: setWindowXY(x, SCREEN_WIDTH, y, y + 16);
	mov	dptr,#_epdPrintBegin_x_65536_271
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
	mov	ar2,r4
	mov	ar3,r5
	mov	a,#0x10
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_setWindowXY_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_setWindowXY_PARM_4
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_setWindowXY
00109$:
;	board/zbs29_BW_uc/../uc8151.c:750: fontCurXpos = x;
	mov	dptr,#_epdPrintBegin_x_65536_271
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_fontCurXpos
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs29_BW_uc/../uc8151.c:753: memset(rbuffer, 0, 32);
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
;	board/zbs29_BW_uc/../uc8151.c:755: if (color) {
	mov	dptr,#_epdPrintBegin_PARM_5
	movx	a,@dptr
	jz	00114$
;	board/zbs29_BW_uc/../uc8151.c:756: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM2);
	mov	dpl,#0x13
	ljmp	_commandBegin
00114$:
;	board/zbs29_BW_uc/../uc8151.c:758: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
	mov	dpl,#0x13
;	board/zbs29_BW_uc/../uc8151.c:760: }
	ljmp	_commandBegin
;------------------------------------------------------------
;Allocation info for local variables in function 'epdPrintEnd'
;------------------------------------------------------------
;i                         Allocated with name '_epdPrintEnd_i_196608_285'
;------------------------------------------------------------
;	board/zbs29_BW_uc/../uc8151.c:761: void epdPrintEnd() {
;	-----------------------------------------
;	 function epdPrintEnd
;	-----------------------------------------
_epdPrintEnd:
;	board/zbs29_BW_uc/../uc8151.c:762: if (!directionY && ((fontCurXpos % 8) != 0)) {
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
;	board/zbs29_BW_uc/../uc8151.c:763: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
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
;	board/zbs29_BW_uc/../uc8151.c:764: epdSend(rbuffer[i]);
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
;	board/zbs29_BW_uc/../uc8151.c:763: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
	inc	r7
;	board/zbs29_BW_uc/../uc8151.c:767: commandEnd();
	sjmp	00109$
00105$:
;	assignBit
	setb	_P1_7
;	board/zbs29_BW_uc/../uc8151.c:768: shortCommand(CMD_PARTIAL_OUT);
	mov	dpl,#0x92
	lcall	_shortCommand
;	board/zbs29_BW_uc/../uc8151.c:769: epdDrawDirection(true);
	mov	dpl,#0x01
;	board/zbs29_BW_uc/../uc8151.c:770: }
	ljmp	_epdDrawDirection
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
__xinit__drawDirection:
	.db #0x00	;  0
__xinit__isInited:
	.db #0x00	;  0
__xinit__epdGPIOActive:
	.db #0x00	;  0
__xinit__waveform10:
	.byte _waveformbuffer, (_waveformbuffer >> 8),#0x00
__xinit__waveform7:
	.byte _waveformbuffer, (_waveformbuffer >> 8),#0x00
	.area CABS    (ABS,CODE)
