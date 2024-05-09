;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module screen
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _charDecode_numbers_65536_61
	.globl _epdPrint
	.globl _timerDelay
	.globl _timerGet
	.globl _spiByte
	.globl _spiInit
	.globl _spr
	.globl ___memcpy
	.globl _memset
	.globl _memcmp
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
	.globl _epdSegmentData
	.globl _curEpdSegmentData
	.globl _screen_start_time
	.globl _setEPDIcon_PARM_2
	.globl _epdSetup_PARM_1
	.globl _isInverted
	.globl _display_is_drawing
	.globl _epdWaitRdy
	.globl _setEPDIcon
	.globl _epdEnable
	.globl _epdDisable
	.globl _epdDraw
	.globl _epdUpdate
	.globl _epdSetup
	.globl _epdClear
	.globl _epdSetPos
	.globl _writeCharEPD
	.globl _is_drawing
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_screenPrvTimedWait_sloc0_1_0:
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
_display_is_drawing::
	.ds 1
_isInverted::
	.ds 1
_epdUpdate_sloc0_1_0:
	.ds 1
_epdSetup_PARM_1:
	.ds 1
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
_RADIO_perChannelSetting1	=	0xdffd
_screenPrvTimedWait_maxTicks_65536_54:
	.ds 4
_screenPrvRegWriteGuts_PARM_2:
	.ds 1
_screenPrvRegWriteGuts_val_65536_57:
	.ds 4
_charDecode_c_65536_60:
	.ds 1
_segmentBitSwap_val_65536_66:
	.ds 1
_segmentBitSwap_ret_65536_67:
	.ds 1
_writeDigitToBuffer_PARM_2:
	.ds 1
_writeDigitToBuffer_pos_65536_68:
	.ds 1
_iconSet_PARM_2:
	.ds 1
_iconSet_PARM_3:
	.ds 1
_iconSet_byte_65536_71:
	.ds 1
_setEPDIcon_PARM_2:
	.ds 1
_setEPDIcon_iconvalue_65536_75:
	.ds 2
_epdSetPos_p_65536_87:
	.ds 1
_writeCharEPD_c_65536_90:
	.ds 1
_epdPrint_buffer_65536_94:
	.ds 10
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_screen_start_time::
	.ds 4
_curEpdSegmentData::
	.ds 12
_epdSegmentData::
	.ds 12
_position:
	.ds 1
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
;	board/zbs_segmented_uk/../sem9010.c:12: __bit display_is_drawing = 0;
;	assignBit
	clr	_display_is_drawing
;	board/zbs_segmented_uk/../sem9010.c:14: __bit isInverted = false;
;	assignBit
	clr	_isInverted
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
;Allocation info for local variables in function 'screenPrvTimedWait'
;------------------------------------------------------------
;sloc0                     Allocated with name '_screenPrvTimedWait_sloc0_1_0'
;maxTicks                  Allocated with name '_screenPrvTimedWait_maxTicks_65536_54'
;startTicks                Allocated with name '_screenPrvTimedWait_startTicks_65536_55'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:20: static __bit screenPrvTimedWait(uint32_t maxTicks) {
;	-----------------------------------------
;	 function screenPrvTimedWait
;	-----------------------------------------
_screenPrvTimedWait:
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
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_screenPrvTimedWait_maxTicks_65536_54
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
;	board/zbs_segmented_uk/../sem9010.c:21: uint32_t startTicks = timerGet();
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	board/zbs_segmented_uk/../sem9010.c:23: while (timerGet() - startTicks < maxTicks) {
	mov	dptr,#_screenPrvTimedWait_maxTicks_65536_54
	movx	a,@dptr
	mov	_screenPrvTimedWait_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_screenPrvTimedWait_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_screenPrvTimedWait_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_screenPrvTimedWait_sloc0_1_0 + 3),a
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
	subb	a,_screenPrvTimedWait_sloc0_1_0
	mov	a,r1
	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 1)
	mov	a,r2
	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 2)
	mov	a,r3
	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 3)
	jnc	00105$
;	board/zbs_segmented_uk/../sem9010.c:24: if (!P2_0)
	jb	_P2_0,00103$
;	board/zbs_segmented_uk/../sem9010.c:25: return true;
	setb	c
	sjmp	00106$
00105$:
;	board/zbs_segmented_uk/../sem9010.c:28: return false;
	clr	c
00106$:
;	board/zbs_segmented_uk/../sem9010.c:29: }
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
;Allocation info for local variables in function 'screenPrvRegWriteGuts'
;------------------------------------------------------------
;reg                       Allocated with name '_screenPrvRegWriteGuts_PARM_2'
;val                       Allocated with name '_screenPrvRegWriteGuts_val_65536_57'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:31: static __bit screenPrvRegWriteGuts(uint32_t val, uint8_t reg) {  // order because sdcc sucks
;	-----------------------------------------
;	 function screenPrvRegWriteGuts
;	-----------------------------------------
_screenPrvRegWriteGuts:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_screenPrvRegWriteGuts_val_65536_57
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
;	board/zbs_segmented_uk/../sem9010.c:32: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND / 1000))
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_screenPrvTimedWait
;	board/zbs_segmented_uk/../sem9010.c:33: return false;
	jc	00102$
	sjmp	00103$
00102$:
;	board/zbs_segmented_uk/../sem9010.c:35: P2_1 = 0;
;	assignBit
	clr	_P2_1
;	board/zbs_segmented_uk/../sem9010.c:36: spiByte((uint8_t)0x80 + (uint8_t)(reg << 1));
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	movx	a,@dptr
	add	a,acc
	add	a,#0x80
	mov	dpl,a
	lcall	_spiByte
;	board/zbs_segmented_uk/../sem9010.c:37: spiByte(val >> 16);
	mov	dptr,#_screenPrvRegWriteGuts_val_65536_57
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
	mov	ar3,r6
	mov	dpl,r3
	lcall	_spiByte
;	board/zbs_segmented_uk/../sem9010.c:38: spiByte(val >> 8);
	mov	ar3,r5
	mov	dpl,r3
	lcall	_spiByte
;	board/zbs_segmented_uk/../sem9010.c:39: spiByte(val);
	mov	dpl,r4
	lcall	_spiByte
;	board/zbs_segmented_uk/../sem9010.c:40: P2_1 = 1;
;	assignBit
	setb	_P2_1
;	board/zbs_segmented_uk/../sem9010.c:42: return true;
	setb	c
00103$:
;	board/zbs_segmented_uk/../sem9010.c:43: }
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdWaitRdy'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:45: void epdWaitRdy() {
;	-----------------------------------------
;	 function epdWaitRdy
;	-----------------------------------------
_epdWaitRdy:
;	board/zbs_segmented_uk/../sem9010.c:46: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND / 1000))
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_screenPrvTimedWait
	jc	00103$
;	board/zbs_segmented_uk/../sem9010.c:47: return;
00103$:
;	board/zbs_segmented_uk/../sem9010.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'charDecode'
;------------------------------------------------------------
;c                         Allocated with name '_charDecode_c_65536_60'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:50: static uint8_t charDecode(uint8_t c) {
;	-----------------------------------------
;	 function charDecode
;	-----------------------------------------
_charDecode:
	mov	a,dpl
	mov	dptr,#_charDecode_c_65536_60
;	board/zbs_segmented_uk/../sem9010.c:111: if (c > 0x2F && c < 0x3A) {
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	mov  r7,a
	add	a,#0xff - 0x2f
	jnc	00102$
	cjne	r7,#0x3a,00199$
00199$:
	jnc	00102$
;	board/zbs_segmented_uk/../sem9010.c:112: return numbers[c - 0x30];
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#_charDecode_numbers_65536_61
	mov	dpl,a
	mov	a,r6
	addc	a,#(_charDecode_numbers_65536_61 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00102$:
;	board/zbs_segmented_uk/../sem9010.c:115: if (c > 0x60 && c < 0x7b) {
	mov	dptr,#_charDecode_c_65536_60
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x60
	jnc	00105$
	cjne	r7,#0x7b,00202$
00202$:
	jnc	00105$
;	board/zbs_segmented_uk/../sem9010.c:116: return lowercase[c - 0x61];
	mov	a,r7
	add	a,#0x9f
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#_charDecode_lowercase_65536_61
	mov	dpl,a
	mov	a,r6
	addc	a,#(_charDecode_lowercase_65536_61 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00105$:
;	board/zbs_segmented_uk/../sem9010.c:119: if (c > 0x40 && c < 0x5B) {
	mov	dptr,#_charDecode_c_65536_60
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x40
	jnc	00108$
	cjne	r7,#0x5b,00205$
00205$:
	jnc	00108$
;	board/zbs_segmented_uk/../sem9010.c:120: return uppercase[c - 0x41];
	mov	a,r7
	add	a,#0xbf
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#_charDecode_uppercase_65536_61
	mov	dpl,a
	mov	a,r6
	addc	a,#(_charDecode_uppercase_65536_61 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00108$:
;	board/zbs_segmented_uk/../sem9010.c:132: switch (c) {
	mov	dptr,#_charDecode_c_65536_60
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x20,00207$
	sjmp	00110$
00207$:
	cjne	r7,#0x23,00208$
	sjmp	00121$
00208$:
	cjne	r7,#0x28,00209$
	sjmp	00113$
00209$:
	cjne	r7,#0x29,00210$
	sjmp	00115$
00210$:
	cjne	r7,#0x2d,00211$
	sjmp	00111$
00211$:
	cjne	r7,#0x3c,00212$
	sjmp	00116$
00212$:
	cjne	r7,#0x3d,00213$
	sjmp	00120$
00213$:
	cjne	r7,#0x3e,00214$
	sjmp	00117$
00214$:
	cjne	r7,#0x5b,00215$
	sjmp	00113$
00215$:
	cjne	r7,#0x5d,00216$
	sjmp	00115$
00216$:
	cjne	r7,#0x5e,00217$
	sjmp	00119$
00217$:
;	board/zbs_segmented_uk/../sem9010.c:133: case 0x20:  // space
	cjne	r7,#0x5f,00122$
	sjmp	00118$
00110$:
;	board/zbs_segmented_uk/../sem9010.c:134: return 0x00;
	mov	dpl,#0x00
;	board/zbs_segmented_uk/../sem9010.c:135: case 0x2D:  // -
	ret
00111$:
;	board/zbs_segmented_uk/../sem9010.c:136: return 0b00001000;
	mov	dpl,#0x08
;	board/zbs_segmented_uk/../sem9010.c:138: case 0x5B:  // [
	ret
00113$:
;	board/zbs_segmented_uk/../sem9010.c:139: return 0b00110110;
	mov	dpl,#0x36
;	board/zbs_segmented_uk/../sem9010.c:141: case 0x5D:  // ]
	ret
00115$:
;	board/zbs_segmented_uk/../sem9010.c:142: return 0b11100010;
	mov	dpl,#0xe2
;	board/zbs_segmented_uk/../sem9010.c:143: case 0x3C:  // <
	ret
00116$:
;	board/zbs_segmented_uk/../sem9010.c:144: return 0b00001110;
	mov	dpl,#0x0e
;	board/zbs_segmented_uk/../sem9010.c:145: case 0x3E:  // >
	ret
00117$:
;	board/zbs_segmented_uk/../sem9010.c:146: return 0b10001010;
	mov	dpl,#0x8a
;	board/zbs_segmented_uk/../sem9010.c:147: case 0x5F:  // _
	ret
00118$:
;	board/zbs_segmented_uk/../sem9010.c:148: return 0b00000010;
	mov	dpl,#0x02
;	board/zbs_segmented_uk/../sem9010.c:149: case 0x5E:  // ^
	ret
00119$:
;	board/zbs_segmented_uk/../sem9010.c:150: return 0b01111000;
	mov	dpl,#0x78
;	board/zbs_segmented_uk/../sem9010.c:151: case 0x3D:  // =
	ret
00120$:
;	board/zbs_segmented_uk/../sem9010.c:152: return 0b00001010;
	mov	dpl,#0x0a
;	board/zbs_segmented_uk/../sem9010.c:153: case 0x23:  // #
	ret
00121$:
;	board/zbs_segmented_uk/../sem9010.c:154: return 0b10000100;
	mov	dpl,#0x84
;	board/zbs_segmented_uk/../sem9010.c:155: default:
	ret
00122$:
;	board/zbs_segmented_uk/../sem9010.c:156: return 0x00;
	mov	dpl,#0x00
;	board/zbs_segmented_uk/../sem9010.c:157: }
;	board/zbs_segmented_uk/../sem9010.c:158: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'segmentBitSwap'
;------------------------------------------------------------
;val                       Allocated with name '_segmentBitSwap_val_65536_66'
;ret                       Allocated with name '_segmentBitSwap_ret_65536_67'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:159: static uint8_t segmentBitSwap(uint8_t val) {
;	-----------------------------------------
;	 function segmentBitSwap
;	-----------------------------------------
_segmentBitSwap:
	mov	a,dpl
	mov	dptr,#_segmentBitSwap_val_65536_66
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:160: uint8_t __xdata ret = 0;
	mov	dptr,#_segmentBitSwap_ret_65536_67
	clr	a
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:161: if (val & 0x02) ret |= (1 << 5);
	mov	dptr,#_segmentBitSwap_val_65536_66
	movx	a,@dptr
	jnb	acc.1,00102$
	mov	dptr,#_segmentBitSwap_ret_65536_67
	mov	a,#0x20
	movx	@dptr,a
00102$:
;	board/zbs_segmented_uk/../sem9010.c:162: if (val & 0x04) ret |= (1 << 6);
	mov	dptr,#_segmentBitSwap_val_65536_66
	movx	a,@dptr
	jnb	acc.2,00104$
	mov	dptr,#_segmentBitSwap_ret_65536_67
	movx	a,@dptr
	orl	acc,#0x40
	movx	@dptr,a
00104$:
;	board/zbs_segmented_uk/../sem9010.c:163: if (val & 0x08) ret |= (1 << 3);
	mov	dptr,#_segmentBitSwap_val_65536_66
	movx	a,@dptr
	jnb	acc.3,00106$
	mov	dptr,#_segmentBitSwap_ret_65536_67
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
00106$:
;	board/zbs_segmented_uk/../sem9010.c:164: if (val & 0x10) ret |= (1 << 7);
	mov	dptr,#_segmentBitSwap_val_65536_66
	movx	a,@dptr
	jnb	acc.4,00108$
	mov	dptr,#_segmentBitSwap_ret_65536_67
	movx	a,@dptr
	orl	acc,#0x80
	movx	@dptr,a
00108$:
;	board/zbs_segmented_uk/../sem9010.c:165: if (val & 0x20) ret |= (1 << 1);
	mov	dptr,#_segmentBitSwap_val_65536_66
	movx	a,@dptr
	jnb	acc.5,00110$
	mov	dptr,#_segmentBitSwap_ret_65536_67
	movx	a,@dptr
	orl	acc,#0x02
	movx	@dptr,a
00110$:
;	board/zbs_segmented_uk/../sem9010.c:166: if (val & 0x40) ret |= (1 << 2);
	mov	dptr,#_segmentBitSwap_val_65536_66
	movx	a,@dptr
	jnb	acc.6,00112$
	mov	dptr,#_segmentBitSwap_ret_65536_67
	movx	a,@dptr
	orl	acc,#0x04
	movx	@dptr,a
00112$:
;	board/zbs_segmented_uk/../sem9010.c:167: if (val & 0x80) ret |= (1 << 4);
	mov	dptr,#_segmentBitSwap_val_65536_66
	movx	a,@dptr
	jnb	acc.7,00114$
	mov	dptr,#_segmentBitSwap_ret_65536_67
	movx	a,@dptr
	orl	acc,#0x10
	movx	@dptr,a
00114$:
;	board/zbs_segmented_uk/../sem9010.c:168: return ret;
	mov	dptr,#_segmentBitSwap_ret_65536_67
	movx	a,@dptr
;	board/zbs_segmented_uk/../sem9010.c:169: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeDigitToBuffer'
;------------------------------------------------------------
;c                         Allocated with name '_writeDigitToBuffer_PARM_2'
;pos                       Allocated with name '_writeDigitToBuffer_pos_65536_68'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:170: static void writeDigitToBuffer(uint8_t pos, uint8_t c) {
;	-----------------------------------------
;	 function writeDigitToBuffer
;	-----------------------------------------
_writeDigitToBuffer:
	mov	a,dpl
	mov	dptr,#_writeDigitToBuffer_pos_65536_68
;	board/zbs_segmented_uk/../sem9010.c:171: switch (pos) {
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	mov  r7,a
	add	a,#0xff - 0x09
	jnc	00118$
	ret
00118$:
	mov	a,r7
	add	a,#(00119$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00120$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00119$:
	.db	00105$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00105$
	.db	00105$
	.db	00105$
	.db	00108$
	.db	00109$
	.db	00110$
00120$:
	.db	00105$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00105$>>8
	.db	00105$>>8
	.db	00105$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
;	board/zbs_segmented_uk/../sem9010.c:176: case 6:
00105$:
;	board/zbs_segmented_uk/../sem9010.c:177: epdSegmentData[pos] &= 0x01;
	mov	a,r7
	add	a,#_epdSegmentData
	mov	r7,a
	clr	a
	addc	a,#(_epdSegmentData >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x01
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:178: epdSegmentData[pos] |= charDecode(c);
	mov	dptr,#_writeDigitToBuffer_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_charDecode
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	orl	ar5,a
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:179: break;
	ret
;	board/zbs_segmented_uk/../sem9010.c:180: case 2:
00106$:
;	board/zbs_segmented_uk/../sem9010.c:181: epdSegmentData[3] &= 0x01;
	mov	dptr,#(_epdSegmentData + 0x0003)
	movx	a,@dptr
	anl	a,#0x01
	mov	r7,a
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:182: epdSegmentData[3] |= segmentBitSwap(charDecode(c));
	mov	dptr,#_writeDigitToBuffer_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_charDecode
	lcall	_segmentBitSwap
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	orl	ar7,a
	mov	dptr,#(_epdSegmentData + 0x0003)
	mov	a,r7
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:183: break;
	ret
;	board/zbs_segmented_uk/../sem9010.c:184: case 3:
00107$:
;	board/zbs_segmented_uk/../sem9010.c:185: epdSegmentData[2] &= 0x01;
	mov	dptr,#(_epdSegmentData + 0x0002)
	movx	a,@dptr
	anl	a,#0x01
	mov	r7,a
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:186: epdSegmentData[2] |= segmentBitSwap(charDecode(c));
	mov	dptr,#_writeDigitToBuffer_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_charDecode
	lcall	_segmentBitSwap
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	orl	ar7,a
	mov	dptr,#(_epdSegmentData + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:187: break;
	ret
;	board/zbs_segmented_uk/../sem9010.c:188: case 7:
00108$:
;	board/zbs_segmented_uk/../sem9010.c:189: epdSegmentData[9] &= 0x01;
	mov	dptr,#(_epdSegmentData + 0x0009)
	movx	a,@dptr
	anl	a,#0x01
	mov	r7,a
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:190: epdSegmentData[9] |= segmentBitSwap(charDecode(c));
	mov	dptr,#_writeDigitToBuffer_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_charDecode
	lcall	_segmentBitSwap
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	orl	ar7,a
	mov	dptr,#(_epdSegmentData + 0x0009)
	mov	a,r7
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:191: break;
;	board/zbs_segmented_uk/../sem9010.c:192: case 8:
	ret
00109$:
;	board/zbs_segmented_uk/../sem9010.c:193: epdSegmentData[8] &= 0x01;
	mov	dptr,#(_epdSegmentData + 0x0008)
	movx	a,@dptr
	anl	a,#0x01
	mov	r7,a
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:194: epdSegmentData[8] |= segmentBitSwap(charDecode(c));
	mov	dptr,#_writeDigitToBuffer_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_charDecode
	lcall	_segmentBitSwap
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	orl	ar7,a
	mov	dptr,#(_epdSegmentData + 0x0008)
	mov	a,r7
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:195: break;
;	board/zbs_segmented_uk/../sem9010.c:196: case 9:
	ret
00110$:
;	board/zbs_segmented_uk/../sem9010.c:197: epdSegmentData[7] &= 0x01;
	mov	dptr,#(_epdSegmentData + 0x0007)
	movx	a,@dptr
	anl	a,#0x01
	mov	r7,a
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:198: epdSegmentData[7] |= segmentBitSwap(charDecode(c));
	mov	dptr,#_writeDigitToBuffer_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_charDecode
	lcall	_segmentBitSwap
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	orl	ar7,a
	mov	dptr,#(_epdSegmentData + 0x0007)
	mov	a,r7
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:200: }
;	board/zbs_segmented_uk/../sem9010.c:201: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iconSet'
;------------------------------------------------------------
;bit                       Allocated with name '_iconSet_PARM_2'
;on                        Allocated with name '_iconSet_PARM_3'
;byte                      Allocated with name '_iconSet_byte_65536_71'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:202: static void iconSet(uint8_t byte, uint8_t bit, bool on) {
;	-----------------------------------------
;	 function iconSet
;	-----------------------------------------
_iconSet:
	mov	a,dpl
	mov	dptr,#_iconSet_byte_65536_71
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:203: if (on) {
	mov	dptr,#_iconSet_PARM_3
	movx	a,@dptr
	jz	00102$
;	board/zbs_segmented_uk/../sem9010.c:204: epdSegmentData[byte] |= (1 << bit);
	mov	dptr,#_iconSet_byte_65536_71
	movx	a,@dptr
	add	a,#_epdSegmentData
	mov	r7,a
	clr	a
	addc	a,#(_epdSegmentData >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_iconSet_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	b,r4
	inc	b
	mov	a,#0x01
	sjmp	00113$
00111$:
	add	a,acc
00113$:
	djnz	b,00111$
	orl	ar5,a
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
	ret
00102$:
;	board/zbs_segmented_uk/../sem9010.c:206: epdSegmentData[byte] &= ~(1 << bit);
	mov	dptr,#_iconSet_byte_65536_71
	movx	a,@dptr
	add	a,#_epdSegmentData
	mov	r7,a
	clr	a
	addc	a,#(_epdSegmentData >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_iconSet_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	b,r4
	inc	b
	mov	a,#0x01
	sjmp	00116$
00114$:
	add	a,acc
00116$:
	djnz	b,00114$
	cpl	a
	anl	ar5,a
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:208: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setEPDIcon'
;------------------------------------------------------------
;on                        Allocated with name '_setEPDIcon_PARM_2'
;iconvalue                 Allocated with name '_setEPDIcon_iconvalue_65536_75'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:210: void setEPDIcon(uint16_t iconvalue, bool on) {
;	-----------------------------------------
;	 function setEPDIcon
;	-----------------------------------------
_setEPDIcon:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:211: if (iconvalue & EPD_SIGN_POUND_LARGE)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jnb	acc.0,00102$
;	board/zbs_segmented_uk/../sem9010.c:212: iconSet(2, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_iconSet
00102$:
;	board/zbs_segmented_uk/../sem9010.c:213: if (iconvalue & EPD_DIGIT_ONE_LARGE)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jnb	acc.1,00104$
;	board/zbs_segmented_uk/../sem9010.c:214: iconSet(1, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_iconSet
00104$:
;	board/zbs_segmented_uk/../sem9010.c:215: if (iconvalue & EPD_PERIOD_LARGE)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jnb	acc.2,00106$
;	board/zbs_segmented_uk/../sem9010.c:216: iconSet(3, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_iconSet
00106$:
;	board/zbs_segmented_uk/../sem9010.c:217: if (iconvalue & EPD_SIGN_PENCE_LARGE)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jnb	acc.3,00108$
;	board/zbs_segmented_uk/../sem9010.c:218: iconSet(4, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_iconSet
00108$:
;	board/zbs_segmented_uk/../sem9010.c:219: if (iconvalue & EPD_BG_COLOR)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.0,00110$
;	board/zbs_segmented_uk/../sem9010.c:220: iconSet(0, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_iconSet
00110$:
;	board/zbs_segmented_uk/../sem9010.c:221: if (iconvalue & EPD_SIGN_POUND_SMALL)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jnb	acc.4,00112$
;	board/zbs_segmented_uk/../sem9010.c:222: iconSet(6, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_iconSet
00112$:
;	board/zbs_segmented_uk/../sem9010.c:223: if (iconvalue & EPD_DIGIT_ONE_SMALL)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jnb	acc.5,00114$
;	board/zbs_segmented_uk/../sem9010.c:224: iconSet(7, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_iconSet
00114$:
;	board/zbs_segmented_uk/../sem9010.c:225: if (iconvalue & EPD_PERIOD_SMALL)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jnb	acc.6,00116$
;	board/zbs_segmented_uk/../sem9010.c:226: iconSet(9, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x09
	lcall	_iconSet
00116$:
;	board/zbs_segmented_uk/../sem9010.c:227: if (iconvalue & EPD_SIGN_PENCE_SMALL)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jnb	acc.7,00118$
;	board/zbs_segmented_uk/../sem9010.c:228: iconSet(8, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x08
	lcall	_iconSet
00118$:
;	board/zbs_segmented_uk/../sem9010.c:229: if (iconvalue & EPD_ICON_DIAMOND)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.1,00120$
;	board/zbs_segmented_uk/../sem9010.c:230: iconSet(10, 0, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_iconSet
00120$:
;	board/zbs_segmented_uk/../sem9010.c:231: if (iconvalue & EPD_ICON_ARROW)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.2,00122$
;	board/zbs_segmented_uk/../sem9010.c:232: iconSet(10, 1, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_iconSet
00122$:
;	board/zbs_segmented_uk/../sem9010.c:233: if (iconvalue & EPD_ICON_STAR)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.3,00124$
;	board/zbs_segmented_uk/../sem9010.c:234: iconSet(10, 2, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_iconSet
00124$:
;	board/zbs_segmented_uk/../sem9010.c:235: if (iconvalue & EPD_ICON_CIRCLE)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.4,00126$
;	board/zbs_segmented_uk/../sem9010.c:236: iconSet(10, 3, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_iconSet
00126$:
;	board/zbs_segmented_uk/../sem9010.c:237: if (iconvalue & EPD_ICON_SQUARE)
	mov	dptr,#_setEPDIcon_iconvalue_65536_75
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.5,00129$
;	board/zbs_segmented_uk/../sem9010.c:238: iconSet(10, 4, on);
	mov	dptr,#_setEPDIcon_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iconSet_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_iconSet_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x0a
;	board/zbs_segmented_uk/../sem9010.c:239: }
	ljmp	_iconSet
00129$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdEnable'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:240: void epdEnable() {
;	-----------------------------------------
;	 function epdEnable
;	-----------------------------------------
_epdEnable:
;	board/zbs_segmented_uk/../sem9010.c:249: P2FUNC &= ~((1 << 0) | (1 << 1) | (1 << 2));  // disable functions on busy, _cs, power
	anl	_P2FUNC,#0xf8
;	board/zbs_segmented_uk/../sem9010.c:250: P2DIR &= ~((1 << 1) | (1 << 2));              // _CS 2.1 and POWER 2.2(output)
	anl	_P2DIR,#0xf9
;	board/zbs_segmented_uk/../sem9010.c:251: P2DIR |= (1 << 0);                            // BUSY (input)
	orl	_P2DIR,#0x01
;	board/zbs_segmented_uk/../sem9010.c:253: P1DIR &= ~((1 << 7) | (1 << 6));  // _RESET and EPD_EXT_CLK as output
	anl	_P1DIR,#0x3f
;	board/zbs_segmented_uk/../sem9010.c:254: P1FUNC &= ~(1 << 7);              // disable function on _reset
	anl	_P1FUNC,#0x7f
;	board/zbs_segmented_uk/../sem9010.c:255: P1FUNC |= (1 << 6);               // EPD_EXT_CLK-out enable
	orl	_P1FUNC,#0x40
;	board/zbs_segmented_uk/../sem9010.c:257: P0FUNC |= (1 << 0) | (1 << 1) | (1 << 2);  // enable clk, mosi, miso functions
	orl	_P0FUNC,#0x07
;	board/zbs_segmented_uk/../sem9010.c:258: P0DIR &= ~((1 << 0) | (1 << 1));           // enable output on clk, mosi
	anl	_P0DIR,#0xfc
;	board/zbs_segmented_uk/../sem9010.c:259: P0DIR |= (1 << 2);                         // miso as input
	orl	_P0DIR,#0x04
;	board/zbs_segmented_uk/../sem9010.c:260: P0PULL = (1 << 2);                         // pullup on miso
	mov	_P0PULL,#0x04
;	board/zbs_segmented_uk/../sem9010.c:262: spiInit();
;	board/zbs_segmented_uk/../sem9010.c:263: }
	ljmp	_spiInit
;------------------------------------------------------------
;Allocation info for local variables in function 'epdDisable'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:264: void epdDisable() {
;	-----------------------------------------
;	 function epdDisable
;	-----------------------------------------
_epdDisable:
;	board/zbs_segmented_uk/../sem9010.c:265: P1_7 = 0;  // assert reset
;	assignBit
	clr	_P1_7
;	board/zbs_segmented_uk/../sem9010.c:267: P2_2 = 0;  // power it down
;	assignBit
	clr	_P2_2
;	board/zbs_segmented_uk/../sem9010.c:270: P2DIR |= (1 << 1) | (1 << 2);                 // _cs and power as input
	orl	_P2DIR,#0x06
;	board/zbs_segmented_uk/../sem9010.c:271: P1DIR |= (1 << 7) | (1 << 6);                 // reset and epd-ext-clk as input
	orl	_P1DIR,#0xc0
;	board/zbs_segmented_uk/../sem9010.c:272: P0DIR |= (1 << 0) | (1 << 1);                 // mosi/clk as input
	orl	_P0DIR,#0x03
;	board/zbs_segmented_uk/../sem9010.c:273: P0PULL &= ~(1 << 2);                          // disable miso pullup
	anl	_P0PULL,#0xfb
;	board/zbs_segmented_uk/../sem9010.c:274: P1FUNC &= ~(1 << 6);                          // disable clock output
	anl	_P1FUNC,#0xbf
;	board/zbs_segmented_uk/../sem9010.c:275: P0FUNC &= ~((1 << 0) | (1 << 1) | (1 << 2));  // disable SPI functions
	anl	_P0FUNC,#0xf8
;	board/zbs_segmented_uk/../sem9010.c:276: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdDraw'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:278: __bit epdDraw() {
;	-----------------------------------------
;	 function epdDraw
;	-----------------------------------------
_epdDraw:
;	board/zbs_segmented_uk/../sem9010.c:280: if (!screenPrvRegWrite(0x0d, *(uint32_t __xdata *)(epdSegmentData + 0)))
	mov	dptr,#_epdSegmentData
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:281: return false;
	jc	00102$
	ret
00102$:
;	board/zbs_segmented_uk/../sem9010.c:282: if (!screenPrvRegWrite(0x0e, *(uint32_t __xdata *)(epdSegmentData + 3)))
	mov	dptr,#(_epdSegmentData + 0x0003)
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x0e
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:283: return false;
	jc	00104$
	ret
00104$:
;	board/zbs_segmented_uk/../sem9010.c:284: if (!screenPrvRegWrite(0x0f, *(uint32_t __xdata *)(epdSegmentData + 6)))
	mov	dptr,#(_epdSegmentData + 0x0006)
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x0f
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:285: return false;
	jc	00106$
	ret
00106$:
;	board/zbs_segmented_uk/../sem9010.c:286: if (!screenPrvRegWrite(0x10, *(uint32_t __xdata *)(epdSegmentData + 9)))
	mov	dptr,#(_epdSegmentData + 0x0009)
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:287: return false;
	jc	00108$
	ret
00108$:
;	board/zbs_segmented_uk/../sem9010.c:289: if (!screenPrvRegWrite(0x00, isInverted ? 0xa0001c : 0x80001c))
	jnb	_isInverted,00113$
	mov	r4,#0x1c
	mov	r5,#0x00
	mov	r6,#0xa0
	mov	r7,#0x00
	sjmp	00114$
00113$:
	mov	r4,#0x1c
	mov	r5,#0x00
	mov	r6,#0x80
	mov	r7,#0x00
00114$:
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:290: return false;
	jc	00110$
	ret
00110$:
;	board/zbs_segmented_uk/../sem9010.c:292: timerDelay(TIMER_TICKS_PER_SECOND / 10000);
	mov	dptr,#(0x85&0x00ff)
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs_segmented_uk/../sem9010.c:293: memcpy(curEpdSegmentData, epdSegmentData, sizeof(epdSegmentData));
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_epdSegmentData
	movx	@dptr,a
	mov	a,#(_epdSegmentData >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_curEpdSegmentData
	mov	b,#0x00
	lcall	___memcpy
;	board/zbs_segmented_uk/../sem9010.c:294: screen_start_time = timerGet();
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_screen_start_time
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:295: display_is_drawing = 1;
;	assignBit
	setb	_display_is_drawing
;	board/zbs_segmented_uk/../sem9010.c:296: return true;
	setb	c
;	board/zbs_segmented_uk/../sem9010.c:297: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdUpdate'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:299: __bit epdUpdate() {
;	-----------------------------------------
;	 function epdUpdate
;	-----------------------------------------
_epdUpdate:
;	board/zbs_segmented_uk/../sem9010.c:300: if (memcmp(curEpdSegmentData, epdSegmentData, sizeof(epdSegmentData)) == 0) {
	mov	dptr,#_memcmp_PARM_2
	mov	a,#_epdSegmentData
	movx	@dptr,a
	mov	a,#(_epdSegmentData >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcmp_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_curEpdSegmentData
	mov	b,#0x00
	lcall	_memcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
;	board/zbs_segmented_uk/../sem9010.c:301: return false;
	clr	c
	ret
00102$:
;	board/zbs_segmented_uk/../sem9010.c:303: return epdDraw();
	lcall	_epdDraw
	mov  _epdUpdate_sloc0_1_0,c
;	board/zbs_segmented_uk/../sem9010.c:305: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdSetup'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:307: __bit epdSetup(__bit inverted) {
;	-----------------------------------------
;	 function epdSetup
;	-----------------------------------------
_epdSetup:
;	board/zbs_segmented_uk/../sem9010.c:309: isInverted = inverted;
;	assignBit
	mov	c,_epdSetup_PARM_1
	mov	_isInverted,c
;	board/zbs_segmented_uk/../sem9010.c:310: display_is_drawing = 0;
;	assignBit
	clr	_display_is_drawing
;	board/zbs_segmented_uk/../sem9010.c:311: P2_1 = 1;
;	assignBit
	setb	_P2_1
;	board/zbs_segmented_uk/../sem9010.c:312: P2_2 = 1;  // power it up
;	assignBit
	setb	_P2_2
;	board/zbs_segmented_uk/../sem9010.c:313: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs_segmented_uk/../sem9010.c:314: P1_7 = 0;  // assert reset
;	assignBit
	clr	_P1_7
;	board/zbs_segmented_uk/../sem9010.c:315: timerDelay(TIMER_TICKS_PER_SECOND / 100);
	mov	dptr,#0x3415
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs_segmented_uk/../sem9010.c:316: P1_7 = 1;  // release reset
;	assignBit
	setb	_P1_7
;	board/zbs_segmented_uk/../sem9010.c:317: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_timerDelay
;	board/zbs_segmented_uk/../sem9010.c:320: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND)) {
	mov	dptr,#0x5855
	mov	b,#0x14
	clr	a
	lcall	_screenPrvTimedWait
;	board/zbs_segmented_uk/../sem9010.c:321: return false;
	jc	00102$
	ret
00102$:
;	board/zbs_segmented_uk/../sem9010.c:328: if (!screenPrvRegWrite(0x01, 0x070000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x07
	clr	a
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:329: return false;
	jc	00104$
	ret
00104$:
;	board/zbs_segmented_uk/../sem9010.c:330: if (!screenPrvRegWrite(0x03, 0x400000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x40
	clr	a
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:331: return false;
	jc	00106$
	ret
00106$:
;	board/zbs_segmented_uk/../sem9010.c:332: if (!screenPrvRegWrite(0x04, 0xfc0000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0xfc
	clr	a
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:333: return false;
	jc	00108$
	ret
00108$:
;	board/zbs_segmented_uk/../sem9010.c:335: if (!screenPrvRegWrite(0x14, 0x440000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x44
	clr	a
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:336: return false;
	jc	00110$
	ret
00110$:
;	board/zbs_segmented_uk/../sem9010.c:337: if (!screenPrvRegWrite(0x15, inverted ? 0x680001 : 0x860000))
	jnb	_epdSetup_PARM_1,00121$
	mov	r4,#0x01
	mov	r5,#0x00
	mov	r6,#0x68
	mov	r7,#0x00
	sjmp	00122$
00121$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x86
	mov	r7,#0x00
00122$:
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x15
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:338: return false;
	jc	00112$
	ret
00112$:
;	board/zbs_segmented_uk/../sem9010.c:339: if (!screenPrvRegWrite(0x16, inverted ? 0x240000 : 0x040000))
	jnb	_epdSetup_PARM_1,00123$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x24
	mov	r7,#0x00
	sjmp	00124$
00123$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x04
	mov	r7,#0x00
00124$:
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x16
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:340: return false;
	jc	00114$
	ret
00114$:
;	board/zbs_segmented_uk/../sem9010.c:342: if (!screenPrvRegWrite(0x19, 0x082514))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#0x2514
	mov	b,#0x08
	clr	a
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:343: return false;
	jc	00116$
	ret
00116$:
;	board/zbs_segmented_uk/../sem9010.c:344: if (!screenPrvRegWrite(0x1a, 0xa02000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x1a
	movx	@dptr,a
	mov	dptr,#0x2000
	mov	b,#0xa0
	clr	a
	lcall	_screenPrvRegWriteGuts
;	board/zbs_segmented_uk/../sem9010.c:345: return false;
	jc	00118$
	ret
00118$:
;	board/zbs_segmented_uk/../sem9010.c:346: memset(curEpdSegmentData, 0, sizeof(epdSegmentData));
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_curEpdSegmentData
	mov	b,#0x00
	lcall	_memset
;	board/zbs_segmented_uk/../sem9010.c:347: return true;
	setb	c
;	board/zbs_segmented_uk/../sem9010.c:348: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdClear'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:349: void epdClear() {
;	-----------------------------------------
;	 function epdClear
;	-----------------------------------------
_epdClear:
;	board/zbs_segmented_uk/../sem9010.c:350: memset(epdSegmentData, 0, sizeof(epdSegmentData));
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_epdSegmentData
	mov	b,#0x00
;	board/zbs_segmented_uk/../sem9010.c:351: }
	ljmp	_memset
;------------------------------------------------------------
;Allocation info for local variables in function 'epdSetPos'
;------------------------------------------------------------
;p                         Allocated with name '_epdSetPos_p_65536_87'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:355: void epdSetPos(uint8_t p) {
;	-----------------------------------------
;	 function epdSetPos
;	-----------------------------------------
_epdSetPos:
	mov	a,dpl
	mov	dptr,#_epdSetPos_p_65536_87
;	board/zbs_segmented_uk/../sem9010.c:356: if (p >= sizeof(epdSegmentData)) {
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	mov	r7,a
	cjne	r7,#0x0c,00109$
00109$:
	jc	00102$
;	board/zbs_segmented_uk/../sem9010.c:357: p = 0;
	mov	dptr,#_epdSetPos_p_65536_87
	clr	a
	movx	@dptr,a
00102$:
;	board/zbs_segmented_uk/../sem9010.c:359: position = p;
	mov	dptr,#_epdSetPos_p_65536_87
	movx	a,@dptr
	mov	dptr,#_position
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:360: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeCharEPD'
;------------------------------------------------------------
;c                         Allocated with name '_writeCharEPD_c_65536_90'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:362: void writeCharEPD(char c) {
;	-----------------------------------------
;	 function writeCharEPD
;	-----------------------------------------
_writeCharEPD:
	mov	a,dpl
	mov	dptr,#_writeCharEPD_c_65536_90
	movx	@dptr,a
;	board/zbs_segmented_uk/../sem9010.c:363: writeDigitToBuffer(position, c);
	mov	dptr,#_position
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_writeCharEPD_c_65536_90
	movx	a,@dptr
	mov	dptr,#_writeDigitToBuffer_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	lcall	_writeDigitToBuffer
;	board/zbs_segmented_uk/../sem9010.c:364: position++;
	mov	dptr,#_position
	movx	a,@dptr
	add	a,#0x01
;	board/zbs_segmented_uk/../sem9010.c:365: if (position >= sizeof(epdSegmentData)) {
	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
	mov	r7,a
	cjne	r7,#0x0c,00109$
00109$:
	jc	00103$
;	board/zbs_segmented_uk/../sem9010.c:366: position = 0;
	mov	dptr,#_position
	clr	a
	movx	@dptr,a
00103$:
;	board/zbs_segmented_uk/../sem9010.c:368: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'epdPrint'
;------------------------------------------------------------
;pos                       Allocated to stack - sp -2
;fmt                       Allocated to stack - sp -4
;vl                        Allocated to registers r7 
;p                         Allocated to registers 
;buffer                    Allocated with name '_epdPrint_buffer_65536_94'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:370: void epdPrint(uint8_t pos, const char __code *fmt, ...) __reentrant {
;	-----------------------------------------
;	 function epdPrint
;	-----------------------------------------
_epdPrint:
;	board/zbs_segmented_uk/../sem9010.c:373: va_start(vl, fmt);
	mov	a,sp
	add	a,#0xfc
	mov	r7,a
;	board/zbs_segmented_uk/../sem9010.c:374: spr(buffer, fmt, vl);
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#_epdPrint_buffer_65536_94
	push	acc
	mov	a,#(_epdPrint_buffer_65536_94 >> 8)
	push	acc
	lcall	_spr
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	board/zbs_segmented_uk/../sem9010.c:375: char *p = buffer;
	mov	r5,#_epdPrint_buffer_65536_94
	mov	r6,#(_epdPrint_buffer_65536_94 >> 8)
	mov	r7,#0x00
;	board/zbs_segmented_uk/../sem9010.c:376: while (*p && pos < sizeof(epdSegmentData)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar4,@r0
00102$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	jz	00105$
	cjne	r4,#0x0c,00121$
00121$:
	jnc	00105$
;	board/zbs_segmented_uk/../sem9010.c:377: writeDigitToBuffer(pos++, *p++);
	mov	ar2,r4
	inc	r4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	mov	dptr,#_writeDigitToBuffer_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	r5
	cjne	r5,#0x00,00123$
	inc	r6
00123$:
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_writeDigitToBuffer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	board/zbs_segmented_uk/../sem9010.c:379: va_end(vl);
	sjmp	00102$
00105$:
;	board/zbs_segmented_uk/../sem9010.c:380: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_drawing'
;------------------------------------------------------------
;	board/zbs_segmented_uk/../sem9010.c:381: uint8_t is_drawing() {
;	-----------------------------------------
;	 function is_drawing
;	-----------------------------------------
_is_drawing:
;	board/zbs_segmented_uk/../sem9010.c:382: if (display_is_drawing) {
	jnb	_display_is_drawing,00105$
;	board/zbs_segmented_uk/../sem9010.c:383: if (!P2_0 || (timerGet() - screen_start_time > (TIMER_TICKS_PER_SECOND * 3))) {
	jnb	_P2_0,00101$
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_screen_start_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,r5
	subb	a,r1
	mov	r5,a
	mov	a,r6
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r3
	mov	r7,a
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x08
	subb	a,r5
	mov	a,#0x3d
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00102$
00101$:
;	board/zbs_segmented_uk/../sem9010.c:384: display_is_drawing = 0;
;	assignBit
	clr	_display_is_drawing
;	board/zbs_segmented_uk/../sem9010.c:385: return 0;
	mov	dpl,#0x00
	ret
00102$:
;	board/zbs_segmented_uk/../sem9010.c:387: return 1;
	mov	dpl,#0x01
	ret
00105$:
;	board/zbs_segmented_uk/../sem9010.c:389: return 0;
	mov	dpl,#0x00
;	board/zbs_segmented_uk/../sem9010.c:390: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_charDecode_numbers_65536_61:
	.db #0xf6	; 246
	.db #0xc0	; 192
	.db #0x6e	; 110	'n'
	.db #0xea	; 234
	.db #0xd8	; 216
	.db #0xba	; 186
	.db #0xbe	; 190
	.db #0xe0	; 224
	.db #0xfe	; 254
	.db #0xfa	; 250
_charDecode_lowercase_65536_61:
	.db #0xfc	; 252
	.db #0x9e	; 158
	.db #0x0e	; 14
	.db #0xce	; 206
	.db #0x3e	; 62
	.db #0x3c	; 60
	.db #0xfa	; 250
	.db #0x9c	; 156
	.db #0x80	; 128
	.db #0xc2	; 194
	.db #0x1c	; 28
	.db #0x06	; 6
	.db #0xac	; 172
	.db #0x8c	; 140
	.db #0x8e	; 142
	.db #0x7c	; 124
	.db #0xf8	; 248
	.db #0x0c	; 12
	.db #0xba	; 186
	.db #0x1e	; 30
	.db #0x86	; 134
	.db #0x96	; 150
	.db #0x5a	; 90	'Z'
	.db #0x88	; 136
	.db #0xda	; 218
	.db #0x6e	; 110	'n'
_charDecode_uppercase_65536_61:
	.db #0xfc	; 252
	.db #0x9e	; 158
	.db #0x36	; 54	'6'
	.db #0xce	; 206
	.db #0x3e	; 62
	.db #0x3c	; 60
	.db #0xb6	; 182
	.db #0xdc	; 220
	.db #0xc0	; 192
	.db #0xc2	; 194
	.db #0x1c	; 28
	.db #0x16	; 22
	.db #0xac	; 172
	.db #0xf4	; 244
	.db #0xf6	; 246
	.db #0x7c	; 124
	.db #0xf8	; 248
	.db #0x0c	; 12
	.db #0xba	; 186
	.db #0x1e	; 30
	.db #0xd6	; 214
	.db #0x96	; 150
	.db #0x5a	; 90	'Z'
	.db #0x88	; 136
	.db #0xda	; 218
	.db #0x6e	; 110	'n'
	.area XINIT   (CODE)
__xinit__screen_start_time:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__curEpdSegmentData:
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
__xinit__epdSegmentData:
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
__xinit__position:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
