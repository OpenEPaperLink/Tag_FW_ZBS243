                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module screen
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _charDecode_numbers_65536_61
                                     12 	.globl _epdPrint
                                     13 	.globl _timerDelay
                                     14 	.globl _timerGet
                                     15 	.globl _spiByte
                                     16 	.globl _spiInit
                                     17 	.globl _spr
                                     18 	.globl ___memcpy
                                     19 	.globl _memset
                                     20 	.globl _memcmp
                                     21 	.globl _UART_TXE
                                     22 	.globl _UART_RXF
                                     23 	.globl _IEN_EA
                                     24 	.globl _IEN_RF2
                                     25 	.globl _IEN_RF1
                                     26 	.globl _IEN_TMR1
                                     27 	.globl _IEN_TMR0
                                     28 	.globl _IEN_UART0
                                     29 	.globl _P2_7
                                     30 	.globl _P2_6
                                     31 	.globl _P2_5
                                     32 	.globl _P2_4
                                     33 	.globl _P2_3
                                     34 	.globl _P2_2
                                     35 	.globl _P2_1
                                     36 	.globl _P2_0
                                     37 	.globl _P1_7
                                     38 	.globl _P1_6
                                     39 	.globl _P1_5
                                     40 	.globl _P1_4
                                     41 	.globl _P1_3
                                     42 	.globl _P1_2
                                     43 	.globl _P1_1
                                     44 	.globl _P1_0
                                     45 	.globl _P0_7
                                     46 	.globl _P0_6
                                     47 	.globl _P0_5
                                     48 	.globl _P0_4
                                     49 	.globl _P0_3
                                     50 	.globl _P0_2
                                     51 	.globl _P0_1
                                     52 	.globl _P0_0
                                     53 	.globl _CFGPAGE
                                     54 	.globl _TCON2
                                     55 	.globl _SETTINGS
                                     56 	.globl _TRIGGER
                                     57 	.globl _UNK_C1
                                     58 	.globl _RADIO_GOTLEN
                                     59 	.globl _RADIO_INITSEQ3
                                     60 	.globl _RADIO_RXLEN
                                     61 	.globl _RADIO_RXPTRH
                                     62 	.globl _RADIO_RXPTRL
                                     63 	.globl _RADIO_INITSEQ5
                                     64 	.globl _RADIO_INITSEQ4
                                     65 	.globl _RADIO_INITSEQ0
                                     66 	.globl _RADIO_TXLEN
                                     67 	.globl _RADIO_INITSEQ2
                                     68 	.globl _RADIO_INITSEQ1
                                     69 	.globl _RADIO_TXPTRH
                                     70 	.globl _RADIO_TXPTRL
                                     71 	.globl _TEMPCAL6
                                     72 	.globl _TEMPCAL5
                                     73 	.globl _TEMPCAL4
                                     74 	.globl _TEMPCAL3
                                     75 	.globl _TEMPRETL
                                     76 	.globl _TEMPRETH
                                     77 	.globl _TEMPCFG
                                     78 	.globl _TEMPCAL2
                                     79 	.globl _TEMPCAL1
                                     80 	.globl _FWRTHREE
                                     81 	.globl _FWRLENH
                                     82 	.globl _FWRLENL
                                     83 	.globl _FWRDSTH
                                     84 	.globl _FWRDSTL
                                     85 	.globl _FWRSRCH
                                     86 	.globl _FWRSRCL
                                     87 	.globl _FPGNO
                                     88 	.globl _T1
                                     89 	.globl _T0
                                     90 	.globl _TH1
                                     91 	.globl _TH0
                                     92 	.globl _TL1
                                     93 	.globl _TL0
                                     94 	.globl _TMOD
                                     95 	.globl _TCON
                                     96 	.globl _UARTBRGH
                                     97 	.globl _UARTBRGL
                                     98 	.globl _UARTBUF
                                     99 	.globl _UARTSTA
                                    100 	.globl _I2CUNKNOWN
                                    101 	.globl _I2CSPEED
                                    102 	.globl _I2CCTL
                                    103 	.globl _I2CBUF
                                    104 	.globl _I2CSTATE
                                    105 	.globl _SPIRX
                                    106 	.globl _SPITX
                                    107 	.globl _SPIENA
                                    108 	.globl _SPICFG
                                    109 	.globl _SPIUNKNOWN
                                    110 	.globl _WDTCONF
                                    111 	.globl _WDTRSTVALH
                                    112 	.globl _WDTRSTVALM
                                    113 	.globl _WDTRSTVALL
                                    114 	.globl _WDTPET
                                    115 	.globl _WDTENA
                                    116 	.globl _RESET
                                    117 	.globl _CLKEN
                                    118 	.globl _CLKSPEED
                                    119 	.globl _IEN1
                                    120 	.globl _IEN0
                                    121 	.globl _XPAGE
                                    122 	.globl _P2PULL
                                    123 	.globl _P1PULL
                                    124 	.globl _P0PULL
                                    125 	.globl _P2DIR
                                    126 	.globl _P1DIR
                                    127 	.globl _P0DIR
                                    128 	.globl _P2FUNC
                                    129 	.globl _P1FUNC
                                    130 	.globl _P0FUNC
                                    131 	.globl _P2CHSTA
                                    132 	.globl _P1CHSTA
                                    133 	.globl _P0CHSTA
                                    134 	.globl _P2INTEN
                                    135 	.globl _P1INTEN
                                    136 	.globl _P0INTEN
                                    137 	.globl _P2LVLSEL
                                    138 	.globl _P1LVLSEL
                                    139 	.globl _P0LVLSEL
                                    140 	.globl _P2
                                    141 	.globl _P1
                                    142 	.globl _P0
                                    143 	.globl _PERFMON4
                                    144 	.globl _PCL
                                    145 	.globl _PCH
                                    146 	.globl _PERFMON1
                                    147 	.globl _PERFMON0
                                    148 	.globl _PCON
                                    149 	.globl _DPS
                                    150 	.globl _DPH1
                                    151 	.globl _DPL1
                                    152 	.globl _DPH
                                    153 	.globl _DPL
                                    154 	.globl _ACC
                                    155 	.globl _B
                                    156 	.globl _epdSegmentData
                                    157 	.globl _curEpdSegmentData
                                    158 	.globl _screen_start_time
                                    159 	.globl _setEPDIcon_PARM_2
                                    160 	.globl _epdSetup_PARM_1
                                    161 	.globl _isInverted
                                    162 	.globl _display_is_drawing
                                    163 	.globl _epdWaitRdy
                                    164 	.globl _setEPDIcon
                                    165 	.globl _epdEnable
                                    166 	.globl _epdDisable
                                    167 	.globl _epdDraw
                                    168 	.globl _epdUpdate
                                    169 	.globl _epdSetup
                                    170 	.globl _epdClear
                                    171 	.globl _epdSetPos
                                    172 	.globl _writeCharEPD
                                    173 	.globl _is_drawing
                                    174 ;--------------------------------------------------------
                                    175 ; special function registers
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           0000F0   179 _B	=	0x00f0
                           0000E0   180 _ACC	=	0x00e0
                           000082   181 _DPL	=	0x0082
                           000083   182 _DPH	=	0x0083
                           000084   183 _DPL1	=	0x0084
                           000085   184 _DPH1	=	0x0085
                           000092   185 _DPS	=	0x0092
                           000087   186 _PCON	=	0x0087
                           0000B2   187 _PERFMON0	=	0x00b2
                           0000B3   188 _PERFMON1	=	0x00b3
                           0000B4   189 _PCH	=	0x00b4
                           0000B5   190 _PCL	=	0x00b5
                           0000B6   191 _PERFMON4	=	0x00b6
                           000080   192 _P0	=	0x0080
                           000090   193 _P1	=	0x0090
                           0000A0   194 _P2	=	0x00a0
                           0000A3   195 _P0LVLSEL	=	0x00a3
                           0000A4   196 _P1LVLSEL	=	0x00a4
                           0000A5   197 _P2LVLSEL	=	0x00a5
                           0000A6   198 _P0INTEN	=	0x00a6
                           0000A7   199 _P1INTEN	=	0x00a7
                           0000A9   200 _P2INTEN	=	0x00a9
                           0000AA   201 _P0CHSTA	=	0x00aa
                           0000AB   202 _P1CHSTA	=	0x00ab
                           0000AC   203 _P2CHSTA	=	0x00ac
                           0000AD   204 _P0FUNC	=	0x00ad
                           0000AE   205 _P1FUNC	=	0x00ae
                           0000AF   206 _P2FUNC	=	0x00af
                           0000B9   207 _P0DIR	=	0x00b9
                           0000BA   208 _P1DIR	=	0x00ba
                           0000BB   209 _P2DIR	=	0x00bb
                           0000BC   210 _P0PULL	=	0x00bc
                           0000BD   211 _P1PULL	=	0x00bd
                           0000BE   212 _P2PULL	=	0x00be
                           0000A0   213 _XPAGE	=	0x00a0
                           0000A8   214 _IEN0	=	0x00a8
                           0000A1   215 _IEN1	=	0x00a1
                           00008E   216 _CLKSPEED	=	0x008e
                           0000B7   217 _CLKEN	=	0x00b7
                           00008F   218 _RESET	=	0x008f
                           0000BA   219 _WDTENA	=	0x00ba
                           0000BB   220 _WDTPET	=	0x00bb
                           0000BC   221 _WDTRSTVALL	=	0x00bc
                           0000BD   222 _WDTRSTVALM	=	0x00bd
                           0000BE   223 _WDTRSTVALH	=	0x00be
                           0000BF   224 _WDTCONF	=	0x00bf
                           0000EB   225 _SPIUNKNOWN	=	0x00eb
                           0000EC   226 _SPICFG	=	0x00ec
                           0000ED   227 _SPIENA	=	0x00ed
                           0000EE   228 _SPITX	=	0x00ee
                           0000EF   229 _SPIRX	=	0x00ef
                           000091   230 _I2CSTATE	=	0x0091
                           000094   231 _I2CBUF	=	0x0094
                           000095   232 _I2CCTL	=	0x0095
                           000096   233 _I2CSPEED	=	0x0096
                           0000A2   234 _I2CUNKNOWN	=	0x00a2
                           000098   235 _UARTSTA	=	0x0098
                           000099   236 _UARTBUF	=	0x0099
                           00009A   237 _UARTBRGL	=	0x009a
                           00009B   238 _UARTBRGH	=	0x009b
                           000088   239 _TCON	=	0x0088
                           000089   240 _TMOD	=	0x0089
                           00008A   241 _TL0	=	0x008a
                           00008B   242 _TL1	=	0x008b
                           00008C   243 _TH0	=	0x008c
                           00008D   244 _TH1	=	0x008d
                           008C8A   245 _T0	=	0x8c8a
                           008D8B   246 _T1	=	0x8d8b
                           0000D8   247 _FPGNO	=	0x00d8
                           0000D9   248 _FWRSRCL	=	0x00d9
                           0000DA   249 _FWRSRCH	=	0x00da
                           0000DB   250 _FWRDSTL	=	0x00db
                           0000DC   251 _FWRDSTH	=	0x00dc
                           0000DD   252 _FWRLENL	=	0x00dd
                           0000DE   253 _FWRLENH	=	0x00de
                           0000DF   254 _FWRTHREE	=	0x00df
                           0000E6   255 _TEMPCAL1	=	0x00e6
                           0000E7   256 _TEMPCAL2	=	0x00e7
                           0000F7   257 _TEMPCFG	=	0x00f7
                           0000F8   258 _TEMPRETH	=	0x00f8
                           0000F9   259 _TEMPRETL	=	0x00f9
                           0000FB   260 _TEMPCAL3	=	0x00fb
                           0000FC   261 _TEMPCAL4	=	0x00fc
                           0000FD   262 _TEMPCAL5	=	0x00fd
                           0000FE   263 _TEMPCAL6	=	0x00fe
                           0000C9   264 _RADIO_TXPTRL	=	0x00c9
                           0000CA   265 _RADIO_TXPTRH	=	0x00ca
                           0000CB   266 _RADIO_INITSEQ1	=	0x00cb
                           0000CC   267 _RADIO_INITSEQ2	=	0x00cc
                           0000CD   268 _RADIO_TXLEN	=	0x00cd
                           0000CE   269 _RADIO_INITSEQ0	=	0x00ce
                           0000D1   270 _RADIO_INITSEQ4	=	0x00d1
                           0000D2   271 _RADIO_INITSEQ5	=	0x00d2
                           0000D3   272 _RADIO_RXPTRL	=	0x00d3
                           0000D4   273 _RADIO_RXPTRH	=	0x00d4
                           0000D5   274 _RADIO_RXLEN	=	0x00d5
                           0000D6   275 _RADIO_INITSEQ3	=	0x00d6
                           0000FA   276 _RADIO_GOTLEN	=	0x00fa
                           0000C1   277 _UNK_C1	=	0x00c1
                           0000D7   278 _TRIGGER	=	0x00d7
                           0000C7   279 _SETTINGS	=	0x00c7
                           0000CF   280 _TCON2	=	0x00cf
                           0000FF   281 _CFGPAGE	=	0x00ff
                                    282 ;--------------------------------------------------------
                                    283 ; special function bits
                                    284 ;--------------------------------------------------------
                                    285 	.area RSEG    (ABS,DATA)
      000000                        286 	.org 0x0000
                           000080   287 _P0_0	=	0x0080
                           000081   288 _P0_1	=	0x0081
                           000082   289 _P0_2	=	0x0082
                           000083   290 _P0_3	=	0x0083
                           000084   291 _P0_4	=	0x0084
                           000085   292 _P0_5	=	0x0085
                           000086   293 _P0_6	=	0x0086
                           000087   294 _P0_7	=	0x0087
                           000090   295 _P1_0	=	0x0090
                           000091   296 _P1_1	=	0x0091
                           000092   297 _P1_2	=	0x0092
                           000093   298 _P1_3	=	0x0093
                           000094   299 _P1_4	=	0x0094
                           000095   300 _P1_5	=	0x0095
                           000096   301 _P1_6	=	0x0096
                           000097   302 _P1_7	=	0x0097
                           0000A0   303 _P2_0	=	0x00a0
                           0000A1   304 _P2_1	=	0x00a1
                           0000A2   305 _P2_2	=	0x00a2
                           0000A3   306 _P2_3	=	0x00a3
                           0000A4   307 _P2_4	=	0x00a4
                           0000A5   308 _P2_5	=	0x00a5
                           0000A6   309 _P2_6	=	0x00a6
                           0000A7   310 _P2_7	=	0x00a7
                           0000A8   311 _IEN_UART0	=	0x00a8
                           0000A9   312 _IEN_TMR0	=	0x00a9
                           0000AB   313 _IEN_TMR1	=	0x00ab
                           0000AC   314 _IEN_RF1	=	0x00ac
                           0000AD   315 _IEN_RF2	=	0x00ad
                           0000AF   316 _IEN_EA	=	0x00af
                           000098   317 _UART_RXF	=	0x0098
                           000099   318 _UART_TXE	=	0x0099
                                    319 ;--------------------------------------------------------
                                    320 ; overlayable register banks
                                    321 ;--------------------------------------------------------
                                    322 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        323 	.ds 8
                                    324 ;--------------------------------------------------------
                                    325 ; internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area DSEG    (DATA)
      000015                        328 _screenPrvTimedWait_sloc0_1_0:
      000015                        329 	.ds 4
                                    330 ;--------------------------------------------------------
                                    331 ; overlayable items in internal ram
                                    332 ;--------------------------------------------------------
                                    333 ;--------------------------------------------------------
                                    334 ; indirectly addressable internal ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area ISEG    (DATA)
                           000000   337 _R0	=	0x0000
                           000001   338 _R1	=	0x0001
                           000002   339 _R2	=	0x0002
                           000003   340 _R3	=	0x0003
                           000004   341 _R4	=	0x0004
                           000005   342 _R5	=	0x0005
                           000006   343 _R6	=	0x0006
                           000007   344 _R7	=	0x0007
                                    345 ;--------------------------------------------------------
                                    346 ; absolute internal ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area IABS    (ABS,DATA)
                                    349 	.area IABS    (ABS,DATA)
                                    350 ;--------------------------------------------------------
                                    351 ; bit data
                                    352 ;--------------------------------------------------------
                                    353 	.area BSEG    (BIT)
      000013                        354 _display_is_drawing::
      000013                        355 	.ds 1
      000014                        356 _isInverted::
      000014                        357 	.ds 1
      000015                        358 _epdUpdate_sloc0_1_0:
      000015                        359 	.ds 1
      000016                        360 _epdSetup_PARM_1:
      000016                        361 	.ds 1
                                    362 ;--------------------------------------------------------
                                    363 ; paged external ram data
                                    364 ;--------------------------------------------------------
                                    365 	.area PSEG    (PAG,XDATA)
                                    366 ;--------------------------------------------------------
                                    367 ; external ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area XSEG    (XDATA)
                           00DF48   370 _RADIO_command	=	0xdf48
                           00DF70   371 _RADIO_calibration_70	=	0xdf70
                           00DF71   372 _RADIO_calibration_71	=	0xdf71
                           00DF80   373 _RADIO_FLAGS	=	0xdf80
                           00DF81   374 _RADIO_calibration_81	=	0xdf81
                           00DF83   375 _RADIO_unk_83	=	0xdf83
                           00DF84   376 _RADIO_currentRSSI	=	0xdf84
                           00DF86   377 _RADIO_calibration_86	=	0xdf86
                           00DF88   378 _RADIO_ownMac_7	=	0xdf88
                           00DF89   379 _RADIO_ownMac_6	=	0xdf89
                           00DF8A   380 _RADIO_ownMac_5	=	0xdf8a
                           00DF8B   381 _RADIO_ownMac_4	=	0xdf8b
                           00DF8C   382 _RADIO_ownMac_3	=	0xdf8c
                           00DF8D   383 _RADIO_ownMac_2	=	0xdf8d
                           00DF8E   384 _RADIO_ownMac_1	=	0xdf8e
                           00DF8F   385 _RADIO_ownMac_0	=	0xdf8f
                           00DF90   386 _RADIO_PANID_Hi	=	0xdf90
                           00DF91   387 _RADIO_PANID_Lo	=	0xdf91
                           00DF92   388 _RADIO_ownShortAddress_Hi	=	0xdf92
                           00DF93   389 _RADIO_ownShortAddress_Lo	=	0xdf93
                           00DF94   390 _RADIO_calibration_94	=	0xdf94
                           00DF95   391 _RADIO_calibration_95	=	0xdf95
                           00DF96   392 _RADIO_calibration_96	=	0xdf96
                           00DF98   393 _RADIO_rxFirstByte	=	0xdf98
                           00DF9B   394 _RADIO_curRfState	=	0xdf9b
                           00DF9D   395 _RADIO_calibration_9D	=	0xdf9d
                           00DFA1   396 _RADIO_calibration_A1	=	0xdfa1
                           00DFA5   397 _RADIO_unk_rxAckSta	=	0xdfa5
                           00DFA6   398 _RADIO_unk_A6	=	0xdfa6
                           00DFAD   399 _RADIO_IRQ4_pending	=	0xdfad
                           00DFAF   400 _RADIO_unk_AF	=	0xdfaf
                           00DFC0   401 _RADIO_channel	=	0xdfc0
                           00DFC1   402 _RADIO_unk_C1	=	0xdfc1
                           00DFC2   403 _RADIO_calibration_C2	=	0xdfc2
                           00DFC3   404 _RADIO_calibration_C3	=	0xdfc3
                           00DFC4   405 _RADIO_calibration_C4	=	0xdfc4
                           00DFC5   406 _RADIO_calibration_C5	=	0xdfc5
                           00DFC6   407 _RADIO_calibration_C6	=	0xdfc6
                           00DFC7   408 _RADIO_calibration_C7	=	0xdfc7
                           00DFC8   409 _RADIO_unk_C8	=	0xdfc8
                           00DFC9   410 _RADIO_txPower	=	0xdfc9
                           00DFCA   411 _RADIO_unk_CA	=	0xdfca
                           00DFCB   412 _RADIO_perChannelSetting2	=	0xdfcb
                           00DFCD   413 _RADIO_unk_CD	=	0xdfcd
                           00DFCE   414 _RADIO_unk_CE	=	0xdfce
                           00DFCF   415 _RADIO_calibration_CF	=	0xdfcf
                           00DFD0   416 _RADIO_calibration_D0	=	0xdfd0
                           00DFD1   417 _RADIO_calibration_D1	=	0xdfd1
                           00DFD2   418 _RADIO_calibration_D2	=	0xdfd2
                           00DFD3   419 _RADIO_calibration_D3	=	0xdfd3
                           00DFD4   420 _RADIO_calibration_D4	=	0xdfd4
                           00DFD5   421 _RADIO_calibration_D5	=	0xdfd5
                           00DFD7   422 _RADIO_unk_D7	=	0xdfd7
                           00DFD8   423 _RADIO_unk_D8	=	0xdfd8
                           00DFD9   424 _RADIO_SleepTimerHi	=	0xdfd9
                           00DFDA   425 _RADIO_SleepTimerMid	=	0xdfda
                           00DFDB   426 _RADIO_SleepTimerLo	=	0xdfdb
                           00DFE2   427 _RADIO_unk_E2	=	0xdfe2
                           00DFF0   428 _RADIO_unk_F0	=	0xdff0
                           00DFF3   429 _RADIO_SleepTimerSettings	=	0xdff3
                           00DFF4   430 _RADIO_RadioPowerCtl	=	0xdff4
                           00DFFD   431 _RADIO_perChannelSetting1	=	0xdffd
      00FB9D                        432 _screenPrvTimedWait_maxTicks_65536_54:
      00FB9D                        433 	.ds 4
      00FBA1                        434 _screenPrvRegWriteGuts_PARM_2:
      00FBA1                        435 	.ds 1
      00FBA2                        436 _screenPrvRegWriteGuts_val_65536_57:
      00FBA2                        437 	.ds 4
      00FBA6                        438 _charDecode_c_65536_60:
      00FBA6                        439 	.ds 1
      00FBA7                        440 _segmentBitSwap_val_65536_66:
      00FBA7                        441 	.ds 1
      00FBA8                        442 _segmentBitSwap_ret_65536_67:
      00FBA8                        443 	.ds 1
      00FBA9                        444 _writeDigitToBuffer_PARM_2:
      00FBA9                        445 	.ds 1
      00FBAA                        446 _writeDigitToBuffer_pos_65536_68:
      00FBAA                        447 	.ds 1
      00FBAB                        448 _iconSet_PARM_2:
      00FBAB                        449 	.ds 1
      00FBAC                        450 _iconSet_PARM_3:
      00FBAC                        451 	.ds 1
      00FBAD                        452 _iconSet_byte_65536_71:
      00FBAD                        453 	.ds 1
      00FBAE                        454 _setEPDIcon_PARM_2:
      00FBAE                        455 	.ds 1
      00FBAF                        456 _setEPDIcon_iconvalue_65536_75:
      00FBAF                        457 	.ds 2
      00FBB1                        458 _epdSetPos_p_65536_87:
      00FBB1                        459 	.ds 1
      00FBB2                        460 _writeCharEPD_c_65536_90:
      00FBB2                        461 	.ds 1
      00FBB3                        462 _epdPrint_buffer_65536_94:
      00FBB3                        463 	.ds 10
                                    464 ;--------------------------------------------------------
                                    465 ; absolute external ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area XABS    (ABS,XDATA)
                                    468 ;--------------------------------------------------------
                                    469 ; external initialized ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area XISEG   (XDATA)
      00FE4E                        472 _screen_start_time::
      00FE4E                        473 	.ds 4
      00FE52                        474 _curEpdSegmentData::
      00FE52                        475 	.ds 12
      00FE5E                        476 _epdSegmentData::
      00FE5E                        477 	.ds 12
      00FE6A                        478 _position:
      00FE6A                        479 	.ds 1
                                    480 	.area HOME    (CODE)
                                    481 	.area GSINIT0 (CODE)
                                    482 	.area GSINIT1 (CODE)
                                    483 	.area GSINIT2 (CODE)
                                    484 	.area GSINIT3 (CODE)
                                    485 	.area GSINIT4 (CODE)
                                    486 	.area GSINIT5 (CODE)
                                    487 	.area GSINIT  (CODE)
                                    488 	.area GSFINAL (CODE)
                                    489 	.area CSEG    (CODE)
                                    490 ;--------------------------------------------------------
                                    491 ; global & static initialisations
                                    492 ;--------------------------------------------------------
                                    493 	.area HOME    (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 	.area GSFINAL (CODE)
                                    496 	.area GSINIT  (CODE)
                                    497 ;	board/zbs_segmented_uk/../sem9010.c:12: __bit display_is_drawing = 0;
                                    498 ;	assignBit
      000105 C2 13            [12]  499 	clr	_display_is_drawing
                                    500 ;	board/zbs_segmented_uk/../sem9010.c:14: __bit isInverted = false;
                                    501 ;	assignBit
      000107 C2 14            [12]  502 	clr	_isInverted
                                    503 ;--------------------------------------------------------
                                    504 ; Home
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
                                    507 	.area HOME    (CODE)
                                    508 ;--------------------------------------------------------
                                    509 ; code
                                    510 ;--------------------------------------------------------
                                    511 	.area CSEG    (CODE)
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'screenPrvTimedWait'
                                    514 ;------------------------------------------------------------
                                    515 ;sloc0                     Allocated with name '_screenPrvTimedWait_sloc0_1_0'
                                    516 ;maxTicks                  Allocated with name '_screenPrvTimedWait_maxTicks_65536_54'
                                    517 ;startTicks                Allocated with name '_screenPrvTimedWait_startTicks_65536_55'
                                    518 ;------------------------------------------------------------
                                    519 ;	board/zbs_segmented_uk/../sem9010.c:20: static __bit screenPrvTimedWait(uint32_t maxTicks) {
                                    520 ;	-----------------------------------------
                                    521 ;	 function screenPrvTimedWait
                                    522 ;	-----------------------------------------
      0049A0                        523 _screenPrvTimedWait:
                           000007   524 	ar7 = 0x07
                           000006   525 	ar6 = 0x06
                           000005   526 	ar5 = 0x05
                           000004   527 	ar4 = 0x04
                           000003   528 	ar3 = 0x03
                           000002   529 	ar2 = 0x02
                           000001   530 	ar1 = 0x01
                           000000   531 	ar0 = 0x00
      0049A0 C0 07            [24]  532 	push	ar7
      0049A2 C0 06            [24]  533 	push	ar6
      0049A4 C0 05            [24]  534 	push	ar5
      0049A6 C0 04            [24]  535 	push	ar4
      0049A8 C0 03            [24]  536 	push	ar3
      0049AA C0 02            [24]  537 	push	ar2
      0049AC C0 01            [24]  538 	push	ar1
      0049AE C0 00            [24]  539 	push	ar0
      0049B0 AF 82            [24]  540 	mov	r7,dpl
      0049B2 AE 83            [24]  541 	mov	r6,dph
      0049B4 AD F0            [24]  542 	mov	r5,b
      0049B6 FC               [12]  543 	mov	r4,a
      0049B7 90 FB 9D         [24]  544 	mov	dptr,#_screenPrvTimedWait_maxTicks_65536_54
      0049BA EF               [12]  545 	mov	a,r7
      0049BB F0               [24]  546 	movx	@dptr,a
      0049BC EE               [12]  547 	mov	a,r6
      0049BD A3               [24]  548 	inc	dptr
      0049BE F0               [24]  549 	movx	@dptr,a
      0049BF ED               [12]  550 	mov	a,r5
      0049C0 A3               [24]  551 	inc	dptr
      0049C1 F0               [24]  552 	movx	@dptr,a
      0049C2 EC               [12]  553 	mov	a,r4
      0049C3 A3               [24]  554 	inc	dptr
      0049C4 F0               [24]  555 	movx	@dptr,a
                                    556 ;	board/zbs_segmented_uk/../sem9010.c:21: uint32_t startTicks = timerGet();
      0049C5 12 2E 10         [24]  557 	lcall	_timerGet
      0049C8 AC 82            [24]  558 	mov	r4,dpl
      0049CA AD 83            [24]  559 	mov	r5,dph
      0049CC AE F0            [24]  560 	mov	r6,b
      0049CE FF               [12]  561 	mov	r7,a
                                    562 ;	board/zbs_segmented_uk/../sem9010.c:23: while (timerGet() - startTicks < maxTicks) {
      0049CF 90 FB 9D         [24]  563 	mov	dptr,#_screenPrvTimedWait_maxTicks_65536_54
      0049D2 E0               [24]  564 	movx	a,@dptr
      0049D3 F5 15            [12]  565 	mov	_screenPrvTimedWait_sloc0_1_0,a
      0049D5 A3               [24]  566 	inc	dptr
      0049D6 E0               [24]  567 	movx	a,@dptr
      0049D7 F5 16            [12]  568 	mov	(_screenPrvTimedWait_sloc0_1_0 + 1),a
      0049D9 A3               [24]  569 	inc	dptr
      0049DA E0               [24]  570 	movx	a,@dptr
      0049DB F5 17            [12]  571 	mov	(_screenPrvTimedWait_sloc0_1_0 + 2),a
      0049DD A3               [24]  572 	inc	dptr
      0049DE E0               [24]  573 	movx	a,@dptr
      0049DF F5 18            [12]  574 	mov	(_screenPrvTimedWait_sloc0_1_0 + 3),a
      0049E1                        575 00103$:
      0049E1 12 2E 10         [24]  576 	lcall	_timerGet
      0049E4 A8 82            [24]  577 	mov	r0,dpl
      0049E6 A9 83            [24]  578 	mov	r1,dph
      0049E8 AA F0            [24]  579 	mov	r2,b
      0049EA FB               [12]  580 	mov	r3,a
      0049EB E8               [12]  581 	mov	a,r0
      0049EC C3               [12]  582 	clr	c
      0049ED 9C               [12]  583 	subb	a,r4
      0049EE F8               [12]  584 	mov	r0,a
      0049EF E9               [12]  585 	mov	a,r1
      0049F0 9D               [12]  586 	subb	a,r5
      0049F1 F9               [12]  587 	mov	r1,a
      0049F2 EA               [12]  588 	mov	a,r2
      0049F3 9E               [12]  589 	subb	a,r6
      0049F4 FA               [12]  590 	mov	r2,a
      0049F5 EB               [12]  591 	mov	a,r3
      0049F6 9F               [12]  592 	subb	a,r7
      0049F7 FB               [12]  593 	mov	r3,a
      0049F8 C3               [12]  594 	clr	c
      0049F9 E8               [12]  595 	mov	a,r0
      0049FA 95 15            [12]  596 	subb	a,_screenPrvTimedWait_sloc0_1_0
      0049FC E9               [12]  597 	mov	a,r1
      0049FD 95 16            [12]  598 	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 1)
      0049FF EA               [12]  599 	mov	a,r2
      004A00 95 17            [12]  600 	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 2)
      004A02 EB               [12]  601 	mov	a,r3
      004A03 95 18            [12]  602 	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 3)
      004A05 50 06            [24]  603 	jnc	00105$
                                    604 ;	board/zbs_segmented_uk/../sem9010.c:24: if (!P2_0)
      004A07 20 A0 D7         [24]  605 	jb	_P2_0,00103$
                                    606 ;	board/zbs_segmented_uk/../sem9010.c:25: return true;
      004A0A D3               [12]  607 	setb	c
      004A0B 80 01            [24]  608 	sjmp	00106$
      004A0D                        609 00105$:
                                    610 ;	board/zbs_segmented_uk/../sem9010.c:28: return false;
      004A0D C3               [12]  611 	clr	c
      004A0E                        612 00106$:
                                    613 ;	board/zbs_segmented_uk/../sem9010.c:29: }
      004A0E D0 00            [24]  614 	pop	ar0
      004A10 D0 01            [24]  615 	pop	ar1
      004A12 D0 02            [24]  616 	pop	ar2
      004A14 D0 03            [24]  617 	pop	ar3
      004A16 D0 04            [24]  618 	pop	ar4
      004A18 D0 05            [24]  619 	pop	ar5
      004A1A D0 06            [24]  620 	pop	ar6
      004A1C D0 07            [24]  621 	pop	ar7
      004A1E 22               [24]  622 	ret
                                    623 ;------------------------------------------------------------
                                    624 ;Allocation info for local variables in function 'screenPrvRegWriteGuts'
                                    625 ;------------------------------------------------------------
                                    626 ;reg                       Allocated with name '_screenPrvRegWriteGuts_PARM_2'
                                    627 ;val                       Allocated with name '_screenPrvRegWriteGuts_val_65536_57'
                                    628 ;------------------------------------------------------------
                                    629 ;	board/zbs_segmented_uk/../sem9010.c:31: static __bit screenPrvRegWriteGuts(uint32_t val, uint8_t reg) {  // order because sdcc sucks
                                    630 ;	-----------------------------------------
                                    631 ;	 function screenPrvRegWriteGuts
                                    632 ;	-----------------------------------------
      004A1F                        633 _screenPrvRegWriteGuts:
      004A1F C0 07            [24]  634 	push	ar7
      004A21 C0 06            [24]  635 	push	ar6
      004A23 C0 05            [24]  636 	push	ar5
      004A25 C0 04            [24]  637 	push	ar4
      004A27 C0 03            [24]  638 	push	ar3
      004A29 AF 82            [24]  639 	mov	r7,dpl
      004A2B AE 83            [24]  640 	mov	r6,dph
      004A2D AD F0            [24]  641 	mov	r5,b
      004A2F FC               [12]  642 	mov	r4,a
      004A30 90 FB A2         [24]  643 	mov	dptr,#_screenPrvRegWriteGuts_val_65536_57
      004A33 EF               [12]  644 	mov	a,r7
      004A34 F0               [24]  645 	movx	@dptr,a
      004A35 EE               [12]  646 	mov	a,r6
      004A36 A3               [24]  647 	inc	dptr
      004A37 F0               [24]  648 	movx	@dptr,a
      004A38 ED               [12]  649 	mov	a,r5
      004A39 A3               [24]  650 	inc	dptr
      004A3A F0               [24]  651 	movx	@dptr,a
      004A3B EC               [12]  652 	mov	a,r4
      004A3C A3               [24]  653 	inc	dptr
      004A3D F0               [24]  654 	movx	@dptr,a
                                    655 ;	board/zbs_segmented_uk/../sem9010.c:32: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND / 1000))
      004A3E 90 05 35         [24]  656 	mov	dptr,#0x0535
      004A41 E4               [12]  657 	clr	a
      004A42 F5 F0            [12]  658 	mov	b,a
      004A44 12 49 A0         [24]  659 	lcall	_screenPrvTimedWait
                                    660 ;	board/zbs_segmented_uk/../sem9010.c:33: return false;
      004A47 40 02            [24]  661 	jc	00102$
      004A49 80 33            [24]  662 	sjmp	00103$
      004A4B                        663 00102$:
                                    664 ;	board/zbs_segmented_uk/../sem9010.c:35: P2_1 = 0;
                                    665 ;	assignBit
      004A4B C2 A1            [12]  666 	clr	_P2_1
                                    667 ;	board/zbs_segmented_uk/../sem9010.c:36: spiByte((uint8_t)0x80 + (uint8_t)(reg << 1));
      004A4D 90 FB A1         [24]  668 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      004A50 E0               [24]  669 	movx	a,@dptr
      004A51 25 E0            [12]  670 	add	a,acc
      004A53 24 80            [12]  671 	add	a,#0x80
      004A55 F5 82            [12]  672 	mov	dpl,a
      004A57 12 2B C4         [24]  673 	lcall	_spiByte
                                    674 ;	board/zbs_segmented_uk/../sem9010.c:37: spiByte(val >> 16);
      004A5A 90 FB A2         [24]  675 	mov	dptr,#_screenPrvRegWriteGuts_val_65536_57
      004A5D E0               [24]  676 	movx	a,@dptr
      004A5E FC               [12]  677 	mov	r4,a
      004A5F A3               [24]  678 	inc	dptr
      004A60 E0               [24]  679 	movx	a,@dptr
      004A61 FD               [12]  680 	mov	r5,a
      004A62 A3               [24]  681 	inc	dptr
      004A63 E0               [24]  682 	movx	a,@dptr
      004A64 FE               [12]  683 	mov	r6,a
      004A65 A3               [24]  684 	inc	dptr
      004A66 E0               [24]  685 	movx	a,@dptr
      004A67 FF               [12]  686 	mov	r7,a
      004A68 8E 03            [24]  687 	mov	ar3,r6
      004A6A 8B 82            [24]  688 	mov	dpl,r3
      004A6C 12 2B C4         [24]  689 	lcall	_spiByte
                                    690 ;	board/zbs_segmented_uk/../sem9010.c:38: spiByte(val >> 8);
      004A6F 8D 03            [24]  691 	mov	ar3,r5
      004A71 8B 82            [24]  692 	mov	dpl,r3
      004A73 12 2B C4         [24]  693 	lcall	_spiByte
                                    694 ;	board/zbs_segmented_uk/../sem9010.c:39: spiByte(val);
      004A76 8C 82            [24]  695 	mov	dpl,r4
      004A78 12 2B C4         [24]  696 	lcall	_spiByte
                                    697 ;	board/zbs_segmented_uk/../sem9010.c:40: P2_1 = 1;
                                    698 ;	assignBit
      004A7B D2 A1            [12]  699 	setb	_P2_1
                                    700 ;	board/zbs_segmented_uk/../sem9010.c:42: return true;
      004A7D D3               [12]  701 	setb	c
      004A7E                        702 00103$:
                                    703 ;	board/zbs_segmented_uk/../sem9010.c:43: }
      004A7E D0 03            [24]  704 	pop	ar3
      004A80 D0 04            [24]  705 	pop	ar4
      004A82 D0 05            [24]  706 	pop	ar5
      004A84 D0 06            [24]  707 	pop	ar6
      004A86 D0 07            [24]  708 	pop	ar7
      004A88 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'epdWaitRdy'
                                    712 ;------------------------------------------------------------
                                    713 ;	board/zbs_segmented_uk/../sem9010.c:45: void epdWaitRdy() {
                                    714 ;	-----------------------------------------
                                    715 ;	 function epdWaitRdy
                                    716 ;	-----------------------------------------
      004A89                        717 _epdWaitRdy:
                                    718 ;	board/zbs_segmented_uk/../sem9010.c:46: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND / 1000))
      004A89 90 05 35         [24]  719 	mov	dptr,#0x0535
      004A8C E4               [12]  720 	clr	a
      004A8D F5 F0            [12]  721 	mov	b,a
      004A8F 12 49 A0         [24]  722 	lcall	_screenPrvTimedWait
      004A92 40 00            [24]  723 	jc	00103$
                                    724 ;	board/zbs_segmented_uk/../sem9010.c:47: return;
      004A94                        725 00103$:
                                    726 ;	board/zbs_segmented_uk/../sem9010.c:48: }
      004A94 22               [24]  727 	ret
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'charDecode'
                                    730 ;------------------------------------------------------------
                                    731 ;c                         Allocated with name '_charDecode_c_65536_60'
                                    732 ;------------------------------------------------------------
                                    733 ;	board/zbs_segmented_uk/../sem9010.c:50: static uint8_t charDecode(uint8_t c) {
                                    734 ;	-----------------------------------------
                                    735 ;	 function charDecode
                                    736 ;	-----------------------------------------
      004A95                        737 _charDecode:
      004A95 E5 82            [12]  738 	mov	a,dpl
      004A97 90 FB A6         [24]  739 	mov	dptr,#_charDecode_c_65536_60
                                    740 ;	board/zbs_segmented_uk/../sem9010.c:111: if (c > 0x2F && c < 0x3A) {
      004A9A F0               [24]  741 	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
      004A9B FF               [12]  742 	mov  r7,a
      004A9C 24 D0            [12]  743 	add	a,#0xff - 0x2f
      004A9E 50 1C            [24]  744 	jnc	00102$
      004AA0 BF 3A 00         [24]  745 	cjne	r7,#0x3a,00199$
      004AA3                        746 00199$:
      004AA3 50 17            [24]  747 	jnc	00102$
                                    748 ;	board/zbs_segmented_uk/../sem9010.c:112: return numbers[c - 0x30];
      004AA5 EF               [12]  749 	mov	a,r7
      004AA6 24 D0            [12]  750 	add	a,#0xd0
      004AA8 FF               [12]  751 	mov	r7,a
      004AA9 33               [12]  752 	rlc	a
      004AAA 95 E0            [12]  753 	subb	a,acc
      004AAC FE               [12]  754 	mov	r6,a
      004AAD EF               [12]  755 	mov	a,r7
      004AAE 24 E0            [12]  756 	add	a,#_charDecode_numbers_65536_61
      004AB0 F5 82            [12]  757 	mov	dpl,a
      004AB2 EE               [12]  758 	mov	a,r6
      004AB3 34 59            [12]  759 	addc	a,#(_charDecode_numbers_65536_61 >> 8)
      004AB5 F5 83            [12]  760 	mov	dph,a
      004AB7 E4               [12]  761 	clr	a
      004AB8 93               [24]  762 	movc	a,@a+dptr
      004AB9 F5 82            [12]  763 	mov	dpl,a
      004ABB 22               [24]  764 	ret
      004ABC                        765 00102$:
                                    766 ;	board/zbs_segmented_uk/../sem9010.c:115: if (c > 0x60 && c < 0x7b) {
      004ABC 90 FB A6         [24]  767 	mov	dptr,#_charDecode_c_65536_60
      004ABF E0               [24]  768 	movx	a,@dptr
      004AC0 FF               [12]  769 	mov  r7,a
      004AC1 24 9F            [12]  770 	add	a,#0xff - 0x60
      004AC3 50 1C            [24]  771 	jnc	00105$
      004AC5 BF 7B 00         [24]  772 	cjne	r7,#0x7b,00202$
      004AC8                        773 00202$:
      004AC8 50 17            [24]  774 	jnc	00105$
                                    775 ;	board/zbs_segmented_uk/../sem9010.c:116: return lowercase[c - 0x61];
      004ACA EF               [12]  776 	mov	a,r7
      004ACB 24 9F            [12]  777 	add	a,#0x9f
      004ACD FF               [12]  778 	mov	r7,a
      004ACE 33               [12]  779 	rlc	a
      004ACF 95 E0            [12]  780 	subb	a,acc
      004AD1 FE               [12]  781 	mov	r6,a
      004AD2 EF               [12]  782 	mov	a,r7
      004AD3 24 EA            [12]  783 	add	a,#_charDecode_lowercase_65536_61
      004AD5 F5 82            [12]  784 	mov	dpl,a
      004AD7 EE               [12]  785 	mov	a,r6
      004AD8 34 59            [12]  786 	addc	a,#(_charDecode_lowercase_65536_61 >> 8)
      004ADA F5 83            [12]  787 	mov	dph,a
      004ADC E4               [12]  788 	clr	a
      004ADD 93               [24]  789 	movc	a,@a+dptr
      004ADE F5 82            [12]  790 	mov	dpl,a
      004AE0 22               [24]  791 	ret
      004AE1                        792 00105$:
                                    793 ;	board/zbs_segmented_uk/../sem9010.c:119: if (c > 0x40 && c < 0x5B) {
      004AE1 90 FB A6         [24]  794 	mov	dptr,#_charDecode_c_65536_60
      004AE4 E0               [24]  795 	movx	a,@dptr
      004AE5 FF               [12]  796 	mov  r7,a
      004AE6 24 BF            [12]  797 	add	a,#0xff - 0x40
      004AE8 50 1C            [24]  798 	jnc	00108$
      004AEA BF 5B 00         [24]  799 	cjne	r7,#0x5b,00205$
      004AED                        800 00205$:
      004AED 50 17            [24]  801 	jnc	00108$
                                    802 ;	board/zbs_segmented_uk/../sem9010.c:120: return uppercase[c - 0x41];
      004AEF EF               [12]  803 	mov	a,r7
      004AF0 24 BF            [12]  804 	add	a,#0xbf
      004AF2 FF               [12]  805 	mov	r7,a
      004AF3 33               [12]  806 	rlc	a
      004AF4 95 E0            [12]  807 	subb	a,acc
      004AF6 FE               [12]  808 	mov	r6,a
      004AF7 EF               [12]  809 	mov	a,r7
      004AF8 24 04            [12]  810 	add	a,#_charDecode_uppercase_65536_61
      004AFA F5 82            [12]  811 	mov	dpl,a
      004AFC EE               [12]  812 	mov	a,r6
      004AFD 34 5A            [12]  813 	addc	a,#(_charDecode_uppercase_65536_61 >> 8)
      004AFF F5 83            [12]  814 	mov	dph,a
      004B01 E4               [12]  815 	clr	a
      004B02 93               [24]  816 	movc	a,@a+dptr
      004B03 F5 82            [12]  817 	mov	dpl,a
      004B05 22               [24]  818 	ret
      004B06                        819 00108$:
                                    820 ;	board/zbs_segmented_uk/../sem9010.c:132: switch (c) {
      004B06 90 FB A6         [24]  821 	mov	dptr,#_charDecode_c_65536_60
      004B09 E0               [24]  822 	movx	a,@dptr
      004B0A FF               [12]  823 	mov	r7,a
      004B0B BF 20 02         [24]  824 	cjne	r7,#0x20,00207$
      004B0E 80 37            [24]  825 	sjmp	00110$
      004B10                        826 00207$:
      004B10 BF 23 02         [24]  827 	cjne	r7,#0x23,00208$
      004B13 80 56            [24]  828 	sjmp	00121$
      004B15                        829 00208$:
      004B15 BF 28 02         [24]  830 	cjne	r7,#0x28,00209$
      004B18 80 35            [24]  831 	sjmp	00113$
      004B1A                        832 00209$:
      004B1A BF 29 02         [24]  833 	cjne	r7,#0x29,00210$
      004B1D 80 34            [24]  834 	sjmp	00115$
      004B1F                        835 00210$:
      004B1F BF 2D 02         [24]  836 	cjne	r7,#0x2d,00211$
      004B22 80 27            [24]  837 	sjmp	00111$
      004B24                        838 00211$:
      004B24 BF 3C 02         [24]  839 	cjne	r7,#0x3c,00212$
      004B27 80 2E            [24]  840 	sjmp	00116$
      004B29                        841 00212$:
      004B29 BF 3D 02         [24]  842 	cjne	r7,#0x3d,00213$
      004B2C 80 39            [24]  843 	sjmp	00120$
      004B2E                        844 00213$:
      004B2E BF 3E 02         [24]  845 	cjne	r7,#0x3e,00214$
      004B31 80 28            [24]  846 	sjmp	00117$
      004B33                        847 00214$:
      004B33 BF 5B 02         [24]  848 	cjne	r7,#0x5b,00215$
      004B36 80 17            [24]  849 	sjmp	00113$
      004B38                        850 00215$:
      004B38 BF 5D 02         [24]  851 	cjne	r7,#0x5d,00216$
      004B3B 80 16            [24]  852 	sjmp	00115$
      004B3D                        853 00216$:
      004B3D BF 5E 02         [24]  854 	cjne	r7,#0x5e,00217$
      004B40 80 21            [24]  855 	sjmp	00119$
      004B42                        856 00217$:
                                    857 ;	board/zbs_segmented_uk/../sem9010.c:133: case 0x20:  // space
      004B42 BF 5F 2A         [24]  858 	cjne	r7,#0x5f,00122$
      004B45 80 18            [24]  859 	sjmp	00118$
      004B47                        860 00110$:
                                    861 ;	board/zbs_segmented_uk/../sem9010.c:134: return 0x00;
      004B47 75 82 00         [24]  862 	mov	dpl,#0x00
                                    863 ;	board/zbs_segmented_uk/../sem9010.c:135: case 0x2D:  // -
      004B4A 22               [24]  864 	ret
      004B4B                        865 00111$:
                                    866 ;	board/zbs_segmented_uk/../sem9010.c:136: return 0b00001000;
      004B4B 75 82 08         [24]  867 	mov	dpl,#0x08
                                    868 ;	board/zbs_segmented_uk/../sem9010.c:138: case 0x5B:  // [
      004B4E 22               [24]  869 	ret
      004B4F                        870 00113$:
                                    871 ;	board/zbs_segmented_uk/../sem9010.c:139: return 0b00110110;
      004B4F 75 82 36         [24]  872 	mov	dpl,#0x36
                                    873 ;	board/zbs_segmented_uk/../sem9010.c:141: case 0x5D:  // ]
      004B52 22               [24]  874 	ret
      004B53                        875 00115$:
                                    876 ;	board/zbs_segmented_uk/../sem9010.c:142: return 0b11100010;
      004B53 75 82 E2         [24]  877 	mov	dpl,#0xe2
                                    878 ;	board/zbs_segmented_uk/../sem9010.c:143: case 0x3C:  // <
      004B56 22               [24]  879 	ret
      004B57                        880 00116$:
                                    881 ;	board/zbs_segmented_uk/../sem9010.c:144: return 0b00001110;
      004B57 75 82 0E         [24]  882 	mov	dpl,#0x0e
                                    883 ;	board/zbs_segmented_uk/../sem9010.c:145: case 0x3E:  // >
      004B5A 22               [24]  884 	ret
      004B5B                        885 00117$:
                                    886 ;	board/zbs_segmented_uk/../sem9010.c:146: return 0b10001010;
      004B5B 75 82 8A         [24]  887 	mov	dpl,#0x8a
                                    888 ;	board/zbs_segmented_uk/../sem9010.c:147: case 0x5F:  // _
      004B5E 22               [24]  889 	ret
      004B5F                        890 00118$:
                                    891 ;	board/zbs_segmented_uk/../sem9010.c:148: return 0b00000010;
      004B5F 75 82 02         [24]  892 	mov	dpl,#0x02
                                    893 ;	board/zbs_segmented_uk/../sem9010.c:149: case 0x5E:  // ^
      004B62 22               [24]  894 	ret
      004B63                        895 00119$:
                                    896 ;	board/zbs_segmented_uk/../sem9010.c:150: return 0b01111000;
      004B63 75 82 78         [24]  897 	mov	dpl,#0x78
                                    898 ;	board/zbs_segmented_uk/../sem9010.c:151: case 0x3D:  // =
      004B66 22               [24]  899 	ret
      004B67                        900 00120$:
                                    901 ;	board/zbs_segmented_uk/../sem9010.c:152: return 0b00001010;
      004B67 75 82 0A         [24]  902 	mov	dpl,#0x0a
                                    903 ;	board/zbs_segmented_uk/../sem9010.c:153: case 0x23:  // #
      004B6A 22               [24]  904 	ret
      004B6B                        905 00121$:
                                    906 ;	board/zbs_segmented_uk/../sem9010.c:154: return 0b10000100;
      004B6B 75 82 84         [24]  907 	mov	dpl,#0x84
                                    908 ;	board/zbs_segmented_uk/../sem9010.c:155: default:
      004B6E 22               [24]  909 	ret
      004B6F                        910 00122$:
                                    911 ;	board/zbs_segmented_uk/../sem9010.c:156: return 0x00;
      004B6F 75 82 00         [24]  912 	mov	dpl,#0x00
                                    913 ;	board/zbs_segmented_uk/../sem9010.c:157: }
                                    914 ;	board/zbs_segmented_uk/../sem9010.c:158: }
      004B72 22               [24]  915 	ret
                                    916 ;------------------------------------------------------------
                                    917 ;Allocation info for local variables in function 'segmentBitSwap'
                                    918 ;------------------------------------------------------------
                                    919 ;val                       Allocated with name '_segmentBitSwap_val_65536_66'
                                    920 ;ret                       Allocated with name '_segmentBitSwap_ret_65536_67'
                                    921 ;------------------------------------------------------------
                                    922 ;	board/zbs_segmented_uk/../sem9010.c:159: static uint8_t segmentBitSwap(uint8_t val) {
                                    923 ;	-----------------------------------------
                                    924 ;	 function segmentBitSwap
                                    925 ;	-----------------------------------------
      004B73                        926 _segmentBitSwap:
      004B73 E5 82            [12]  927 	mov	a,dpl
      004B75 90 FB A7         [24]  928 	mov	dptr,#_segmentBitSwap_val_65536_66
      004B78 F0               [24]  929 	movx	@dptr,a
                                    930 ;	board/zbs_segmented_uk/../sem9010.c:160: uint8_t __xdata ret = 0;
      004B79 90 FB A8         [24]  931 	mov	dptr,#_segmentBitSwap_ret_65536_67
      004B7C E4               [12]  932 	clr	a
      004B7D F0               [24]  933 	movx	@dptr,a
                                    934 ;	board/zbs_segmented_uk/../sem9010.c:161: if (val & 0x02) ret |= (1 << 5);
      004B7E 90 FB A7         [24]  935 	mov	dptr,#_segmentBitSwap_val_65536_66
      004B81 E0               [24]  936 	movx	a,@dptr
      004B82 30 E1 06         [24]  937 	jnb	acc.1,00102$
      004B85 90 FB A8         [24]  938 	mov	dptr,#_segmentBitSwap_ret_65536_67
      004B88 74 20            [12]  939 	mov	a,#0x20
      004B8A F0               [24]  940 	movx	@dptr,a
      004B8B                        941 00102$:
                                    942 ;	board/zbs_segmented_uk/../sem9010.c:162: if (val & 0x04) ret |= (1 << 6);
      004B8B 90 FB A7         [24]  943 	mov	dptr,#_segmentBitSwap_val_65536_66
      004B8E E0               [24]  944 	movx	a,@dptr
      004B8F 30 E2 08         [24]  945 	jnb	acc.2,00104$
      004B92 90 FB A8         [24]  946 	mov	dptr,#_segmentBitSwap_ret_65536_67
      004B95 E0               [24]  947 	movx	a,@dptr
      004B96 43 E0 40         [24]  948 	orl	acc,#0x40
      004B99 F0               [24]  949 	movx	@dptr,a
      004B9A                        950 00104$:
                                    951 ;	board/zbs_segmented_uk/../sem9010.c:163: if (val & 0x08) ret |= (1 << 3);
      004B9A 90 FB A7         [24]  952 	mov	dptr,#_segmentBitSwap_val_65536_66
      004B9D E0               [24]  953 	movx	a,@dptr
      004B9E 30 E3 08         [24]  954 	jnb	acc.3,00106$
      004BA1 90 FB A8         [24]  955 	mov	dptr,#_segmentBitSwap_ret_65536_67
      004BA4 E0               [24]  956 	movx	a,@dptr
      004BA5 43 E0 08         [24]  957 	orl	acc,#0x08
      004BA8 F0               [24]  958 	movx	@dptr,a
      004BA9                        959 00106$:
                                    960 ;	board/zbs_segmented_uk/../sem9010.c:164: if (val & 0x10) ret |= (1 << 7);
      004BA9 90 FB A7         [24]  961 	mov	dptr,#_segmentBitSwap_val_65536_66
      004BAC E0               [24]  962 	movx	a,@dptr
      004BAD 30 E4 08         [24]  963 	jnb	acc.4,00108$
      004BB0 90 FB A8         [24]  964 	mov	dptr,#_segmentBitSwap_ret_65536_67
      004BB3 E0               [24]  965 	movx	a,@dptr
      004BB4 43 E0 80         [24]  966 	orl	acc,#0x80
      004BB7 F0               [24]  967 	movx	@dptr,a
      004BB8                        968 00108$:
                                    969 ;	board/zbs_segmented_uk/../sem9010.c:165: if (val & 0x20) ret |= (1 << 1);
      004BB8 90 FB A7         [24]  970 	mov	dptr,#_segmentBitSwap_val_65536_66
      004BBB E0               [24]  971 	movx	a,@dptr
      004BBC 30 E5 08         [24]  972 	jnb	acc.5,00110$
      004BBF 90 FB A8         [24]  973 	mov	dptr,#_segmentBitSwap_ret_65536_67
      004BC2 E0               [24]  974 	movx	a,@dptr
      004BC3 43 E0 02         [24]  975 	orl	acc,#0x02
      004BC6 F0               [24]  976 	movx	@dptr,a
      004BC7                        977 00110$:
                                    978 ;	board/zbs_segmented_uk/../sem9010.c:166: if (val & 0x40) ret |= (1 << 2);
      004BC7 90 FB A7         [24]  979 	mov	dptr,#_segmentBitSwap_val_65536_66
      004BCA E0               [24]  980 	movx	a,@dptr
      004BCB 30 E6 08         [24]  981 	jnb	acc.6,00112$
      004BCE 90 FB A8         [24]  982 	mov	dptr,#_segmentBitSwap_ret_65536_67
      004BD1 E0               [24]  983 	movx	a,@dptr
      004BD2 43 E0 04         [24]  984 	orl	acc,#0x04
      004BD5 F0               [24]  985 	movx	@dptr,a
      004BD6                        986 00112$:
                                    987 ;	board/zbs_segmented_uk/../sem9010.c:167: if (val & 0x80) ret |= (1 << 4);
      004BD6 90 FB A7         [24]  988 	mov	dptr,#_segmentBitSwap_val_65536_66
      004BD9 E0               [24]  989 	movx	a,@dptr
      004BDA 30 E7 08         [24]  990 	jnb	acc.7,00114$
      004BDD 90 FB A8         [24]  991 	mov	dptr,#_segmentBitSwap_ret_65536_67
      004BE0 E0               [24]  992 	movx	a,@dptr
      004BE1 43 E0 10         [24]  993 	orl	acc,#0x10
      004BE4 F0               [24]  994 	movx	@dptr,a
      004BE5                        995 00114$:
                                    996 ;	board/zbs_segmented_uk/../sem9010.c:168: return ret;
      004BE5 90 FB A8         [24]  997 	mov	dptr,#_segmentBitSwap_ret_65536_67
      004BE8 E0               [24]  998 	movx	a,@dptr
                                    999 ;	board/zbs_segmented_uk/../sem9010.c:169: }
      004BE9 F5 82            [12] 1000 	mov	dpl,a
      004BEB 22               [24] 1001 	ret
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'writeDigitToBuffer'
                                   1004 ;------------------------------------------------------------
                                   1005 ;c                         Allocated with name '_writeDigitToBuffer_PARM_2'
                                   1006 ;pos                       Allocated with name '_writeDigitToBuffer_pos_65536_68'
                                   1007 ;------------------------------------------------------------
                                   1008 ;	board/zbs_segmented_uk/../sem9010.c:170: static void writeDigitToBuffer(uint8_t pos, uint8_t c) {
                                   1009 ;	-----------------------------------------
                                   1010 ;	 function writeDigitToBuffer
                                   1011 ;	-----------------------------------------
      004BEC                       1012 _writeDigitToBuffer:
      004BEC E5 82            [12] 1013 	mov	a,dpl
      004BEE 90 FB AA         [24] 1014 	mov	dptr,#_writeDigitToBuffer_pos_65536_68
                                   1015 ;	board/zbs_segmented_uk/../sem9010.c:171: switch (pos) {
      004BF1 F0               [24] 1016 	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
      004BF2 FF               [12] 1017 	mov  r7,a
      004BF3 24 F6            [12] 1018 	add	a,#0xff - 0x09
      004BF5 50 01            [24] 1019 	jnc	00118$
      004BF7 22               [24] 1020 	ret
      004BF8                       1021 00118$:
      004BF8 EF               [12] 1022 	mov	a,r7
      004BF9 24 0A            [12] 1023 	add	a,#(00119$-3-.)
      004BFB 83               [24] 1024 	movc	a,@a+pc
      004BFC F5 82            [12] 1025 	mov	dpl,a
      004BFE EF               [12] 1026 	mov	a,r7
      004BFF 24 0E            [12] 1027 	add	a,#(00120$-3-.)
      004C01 83               [24] 1028 	movc	a,@a+pc
      004C02 F5 83            [12] 1029 	mov	dph,a
      004C04 E4               [12] 1030 	clr	a
      004C05 73               [24] 1031 	jmp	@a+dptr
      004C06                       1032 00119$:
      004C06 1A                    1033 	.db	00105$
      004C07 1A                    1034 	.db	00105$
      004C08 52                    1035 	.db	00106$
      004C09 75                    1036 	.db	00107$
      004C0A 1A                    1037 	.db	00105$
      004C0B 1A                    1038 	.db	00105$
      004C0C 1A                    1039 	.db	00105$
      004C0D 98                    1040 	.db	00108$
      004C0E BB                    1041 	.db	00109$
      004C0F DE                    1042 	.db	00110$
      004C10                       1043 00120$:
      004C10 4C                    1044 	.db	00105$>>8
      004C11 4C                    1045 	.db	00105$>>8
      004C12 4C                    1046 	.db	00106$>>8
      004C13 4C                    1047 	.db	00107$>>8
      004C14 4C                    1048 	.db	00105$>>8
      004C15 4C                    1049 	.db	00105$>>8
      004C16 4C                    1050 	.db	00105$>>8
      004C17 4C                    1051 	.db	00108$>>8
      004C18 4C                    1052 	.db	00109$>>8
      004C19 4C                    1053 	.db	00110$>>8
                                   1054 ;	board/zbs_segmented_uk/../sem9010.c:176: case 6:
      004C1A                       1055 00105$:
                                   1056 ;	board/zbs_segmented_uk/../sem9010.c:177: epdSegmentData[pos] &= 0x01;
      004C1A EF               [12] 1057 	mov	a,r7
      004C1B 24 5E            [12] 1058 	add	a,#_epdSegmentData
      004C1D FF               [12] 1059 	mov	r7,a
      004C1E E4               [12] 1060 	clr	a
      004C1F 34 FE            [12] 1061 	addc	a,#(_epdSegmentData >> 8)
      004C21 FE               [12] 1062 	mov	r6,a
      004C22 8F 82            [24] 1063 	mov	dpl,r7
      004C24 8E 83            [24] 1064 	mov	dph,r6
      004C26 E0               [24] 1065 	movx	a,@dptr
      004C27 FD               [12] 1066 	mov	r5,a
      004C28 53 05 01         [24] 1067 	anl	ar5,#0x01
      004C2B 8F 82            [24] 1068 	mov	dpl,r7
      004C2D 8E 83            [24] 1069 	mov	dph,r6
      004C2F ED               [12] 1070 	mov	a,r5
      004C30 F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	board/zbs_segmented_uk/../sem9010.c:178: epdSegmentData[pos] |= charDecode(c);
      004C31 90 FB A9         [24] 1073 	mov	dptr,#_writeDigitToBuffer_PARM_2
      004C34 E0               [24] 1074 	movx	a,@dptr
      004C35 F5 82            [12] 1075 	mov	dpl,a
      004C37 C0 07            [24] 1076 	push	ar7
      004C39 C0 06            [24] 1077 	push	ar6
      004C3B C0 05            [24] 1078 	push	ar5
      004C3D 12 4A 95         [24] 1079 	lcall	_charDecode
      004C40 AC 82            [24] 1080 	mov	r4,dpl
      004C42 D0 05            [24] 1081 	pop	ar5
      004C44 D0 06            [24] 1082 	pop	ar6
      004C46 D0 07            [24] 1083 	pop	ar7
      004C48 EC               [12] 1084 	mov	a,r4
      004C49 42 05            [12] 1085 	orl	ar5,a
      004C4B 8F 82            [24] 1086 	mov	dpl,r7
      004C4D 8E 83            [24] 1087 	mov	dph,r6
      004C4F ED               [12] 1088 	mov	a,r5
      004C50 F0               [24] 1089 	movx	@dptr,a
                                   1090 ;	board/zbs_segmented_uk/../sem9010.c:179: break;
      004C51 22               [24] 1091 	ret
                                   1092 ;	board/zbs_segmented_uk/../sem9010.c:180: case 2:
      004C52                       1093 00106$:
                                   1094 ;	board/zbs_segmented_uk/../sem9010.c:181: epdSegmentData[3] &= 0x01;
      004C52 90 FE 61         [24] 1095 	mov	dptr,#(_epdSegmentData + 0x0003)
      004C55 E0               [24] 1096 	movx	a,@dptr
      004C56 54 01            [12] 1097 	anl	a,#0x01
      004C58 FF               [12] 1098 	mov	r7,a
      004C59 F0               [24] 1099 	movx	@dptr,a
                                   1100 ;	board/zbs_segmented_uk/../sem9010.c:182: epdSegmentData[3] |= segmentBitSwap(charDecode(c));
      004C5A 90 FB A9         [24] 1101 	mov	dptr,#_writeDigitToBuffer_PARM_2
      004C5D E0               [24] 1102 	movx	a,@dptr
      004C5E F5 82            [12] 1103 	mov	dpl,a
      004C60 C0 07            [24] 1104 	push	ar7
      004C62 12 4A 95         [24] 1105 	lcall	_charDecode
      004C65 12 4B 73         [24] 1106 	lcall	_segmentBitSwap
      004C68 AE 82            [24] 1107 	mov	r6,dpl
      004C6A D0 07            [24] 1108 	pop	ar7
      004C6C EE               [12] 1109 	mov	a,r6
      004C6D 42 07            [12] 1110 	orl	ar7,a
      004C6F 90 FE 61         [24] 1111 	mov	dptr,#(_epdSegmentData + 0x0003)
      004C72 EF               [12] 1112 	mov	a,r7
      004C73 F0               [24] 1113 	movx	@dptr,a
                                   1114 ;	board/zbs_segmented_uk/../sem9010.c:183: break;
      004C74 22               [24] 1115 	ret
                                   1116 ;	board/zbs_segmented_uk/../sem9010.c:184: case 3:
      004C75                       1117 00107$:
                                   1118 ;	board/zbs_segmented_uk/../sem9010.c:185: epdSegmentData[2] &= 0x01;
      004C75 90 FE 60         [24] 1119 	mov	dptr,#(_epdSegmentData + 0x0002)
      004C78 E0               [24] 1120 	movx	a,@dptr
      004C79 54 01            [12] 1121 	anl	a,#0x01
      004C7B FF               [12] 1122 	mov	r7,a
      004C7C F0               [24] 1123 	movx	@dptr,a
                                   1124 ;	board/zbs_segmented_uk/../sem9010.c:186: epdSegmentData[2] |= segmentBitSwap(charDecode(c));
      004C7D 90 FB A9         [24] 1125 	mov	dptr,#_writeDigitToBuffer_PARM_2
      004C80 E0               [24] 1126 	movx	a,@dptr
      004C81 F5 82            [12] 1127 	mov	dpl,a
      004C83 C0 07            [24] 1128 	push	ar7
      004C85 12 4A 95         [24] 1129 	lcall	_charDecode
      004C88 12 4B 73         [24] 1130 	lcall	_segmentBitSwap
      004C8B AE 82            [24] 1131 	mov	r6,dpl
      004C8D D0 07            [24] 1132 	pop	ar7
      004C8F EE               [12] 1133 	mov	a,r6
      004C90 42 07            [12] 1134 	orl	ar7,a
      004C92 90 FE 60         [24] 1135 	mov	dptr,#(_epdSegmentData + 0x0002)
      004C95 EF               [12] 1136 	mov	a,r7
      004C96 F0               [24] 1137 	movx	@dptr,a
                                   1138 ;	board/zbs_segmented_uk/../sem9010.c:187: break;
      004C97 22               [24] 1139 	ret
                                   1140 ;	board/zbs_segmented_uk/../sem9010.c:188: case 7:
      004C98                       1141 00108$:
                                   1142 ;	board/zbs_segmented_uk/../sem9010.c:189: epdSegmentData[9] &= 0x01;
      004C98 90 FE 67         [24] 1143 	mov	dptr,#(_epdSegmentData + 0x0009)
      004C9B E0               [24] 1144 	movx	a,@dptr
      004C9C 54 01            [12] 1145 	anl	a,#0x01
      004C9E FF               [12] 1146 	mov	r7,a
      004C9F F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	board/zbs_segmented_uk/../sem9010.c:190: epdSegmentData[9] |= segmentBitSwap(charDecode(c));
      004CA0 90 FB A9         [24] 1149 	mov	dptr,#_writeDigitToBuffer_PARM_2
      004CA3 E0               [24] 1150 	movx	a,@dptr
      004CA4 F5 82            [12] 1151 	mov	dpl,a
      004CA6 C0 07            [24] 1152 	push	ar7
      004CA8 12 4A 95         [24] 1153 	lcall	_charDecode
      004CAB 12 4B 73         [24] 1154 	lcall	_segmentBitSwap
      004CAE AE 82            [24] 1155 	mov	r6,dpl
      004CB0 D0 07            [24] 1156 	pop	ar7
      004CB2 EE               [12] 1157 	mov	a,r6
      004CB3 42 07            [12] 1158 	orl	ar7,a
      004CB5 90 FE 67         [24] 1159 	mov	dptr,#(_epdSegmentData + 0x0009)
      004CB8 EF               [12] 1160 	mov	a,r7
      004CB9 F0               [24] 1161 	movx	@dptr,a
                                   1162 ;	board/zbs_segmented_uk/../sem9010.c:191: break;
                                   1163 ;	board/zbs_segmented_uk/../sem9010.c:192: case 8:
      004CBA 22               [24] 1164 	ret
      004CBB                       1165 00109$:
                                   1166 ;	board/zbs_segmented_uk/../sem9010.c:193: epdSegmentData[8] &= 0x01;
      004CBB 90 FE 66         [24] 1167 	mov	dptr,#(_epdSegmentData + 0x0008)
      004CBE E0               [24] 1168 	movx	a,@dptr
      004CBF 54 01            [12] 1169 	anl	a,#0x01
      004CC1 FF               [12] 1170 	mov	r7,a
      004CC2 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	board/zbs_segmented_uk/../sem9010.c:194: epdSegmentData[8] |= segmentBitSwap(charDecode(c));
      004CC3 90 FB A9         [24] 1173 	mov	dptr,#_writeDigitToBuffer_PARM_2
      004CC6 E0               [24] 1174 	movx	a,@dptr
      004CC7 F5 82            [12] 1175 	mov	dpl,a
      004CC9 C0 07            [24] 1176 	push	ar7
      004CCB 12 4A 95         [24] 1177 	lcall	_charDecode
      004CCE 12 4B 73         [24] 1178 	lcall	_segmentBitSwap
      004CD1 AE 82            [24] 1179 	mov	r6,dpl
      004CD3 D0 07            [24] 1180 	pop	ar7
      004CD5 EE               [12] 1181 	mov	a,r6
      004CD6 42 07            [12] 1182 	orl	ar7,a
      004CD8 90 FE 66         [24] 1183 	mov	dptr,#(_epdSegmentData + 0x0008)
      004CDB EF               [12] 1184 	mov	a,r7
      004CDC F0               [24] 1185 	movx	@dptr,a
                                   1186 ;	board/zbs_segmented_uk/../sem9010.c:195: break;
                                   1187 ;	board/zbs_segmented_uk/../sem9010.c:196: case 9:
      004CDD 22               [24] 1188 	ret
      004CDE                       1189 00110$:
                                   1190 ;	board/zbs_segmented_uk/../sem9010.c:197: epdSegmentData[7] &= 0x01;
      004CDE 90 FE 65         [24] 1191 	mov	dptr,#(_epdSegmentData + 0x0007)
      004CE1 E0               [24] 1192 	movx	a,@dptr
      004CE2 54 01            [12] 1193 	anl	a,#0x01
      004CE4 FF               [12] 1194 	mov	r7,a
      004CE5 F0               [24] 1195 	movx	@dptr,a
                                   1196 ;	board/zbs_segmented_uk/../sem9010.c:198: epdSegmentData[7] |= segmentBitSwap(charDecode(c));
      004CE6 90 FB A9         [24] 1197 	mov	dptr,#_writeDigitToBuffer_PARM_2
      004CE9 E0               [24] 1198 	movx	a,@dptr
      004CEA F5 82            [12] 1199 	mov	dpl,a
      004CEC C0 07            [24] 1200 	push	ar7
      004CEE 12 4A 95         [24] 1201 	lcall	_charDecode
      004CF1 12 4B 73         [24] 1202 	lcall	_segmentBitSwap
      004CF4 AE 82            [24] 1203 	mov	r6,dpl
      004CF6 D0 07            [24] 1204 	pop	ar7
      004CF8 EE               [12] 1205 	mov	a,r6
      004CF9 42 07            [12] 1206 	orl	ar7,a
      004CFB 90 FE 65         [24] 1207 	mov	dptr,#(_epdSegmentData + 0x0007)
      004CFE EF               [12] 1208 	mov	a,r7
      004CFF F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	board/zbs_segmented_uk/../sem9010.c:200: }
                                   1211 ;	board/zbs_segmented_uk/../sem9010.c:201: }
      004D00 22               [24] 1212 	ret
                                   1213 ;------------------------------------------------------------
                                   1214 ;Allocation info for local variables in function 'iconSet'
                                   1215 ;------------------------------------------------------------
                                   1216 ;bit                       Allocated with name '_iconSet_PARM_2'
                                   1217 ;on                        Allocated with name '_iconSet_PARM_3'
                                   1218 ;byte                      Allocated with name '_iconSet_byte_65536_71'
                                   1219 ;------------------------------------------------------------
                                   1220 ;	board/zbs_segmented_uk/../sem9010.c:202: static void iconSet(uint8_t byte, uint8_t bit, bool on) {
                                   1221 ;	-----------------------------------------
                                   1222 ;	 function iconSet
                                   1223 ;	-----------------------------------------
      004D01                       1224 _iconSet:
      004D01 E5 82            [12] 1225 	mov	a,dpl
      004D03 90 FB AD         [24] 1226 	mov	dptr,#_iconSet_byte_65536_71
      004D06 F0               [24] 1227 	movx	@dptr,a
                                   1228 ;	board/zbs_segmented_uk/../sem9010.c:203: if (on) {
      004D07 90 FB AC         [24] 1229 	mov	dptr,#_iconSet_PARM_3
      004D0A E0               [24] 1230 	movx	a,@dptr
      004D0B 60 2C            [24] 1231 	jz	00102$
                                   1232 ;	board/zbs_segmented_uk/../sem9010.c:204: epdSegmentData[byte] |= (1 << bit);
      004D0D 90 FB AD         [24] 1233 	mov	dptr,#_iconSet_byte_65536_71
      004D10 E0               [24] 1234 	movx	a,@dptr
      004D11 24 5E            [12] 1235 	add	a,#_epdSegmentData
      004D13 FF               [12] 1236 	mov	r7,a
      004D14 E4               [12] 1237 	clr	a
      004D15 34 FE            [12] 1238 	addc	a,#(_epdSegmentData >> 8)
      004D17 FE               [12] 1239 	mov	r6,a
      004D18 8F 82            [24] 1240 	mov	dpl,r7
      004D1A 8E 83            [24] 1241 	mov	dph,r6
      004D1C E0               [24] 1242 	movx	a,@dptr
      004D1D FD               [12] 1243 	mov	r5,a
      004D1E 90 FB AB         [24] 1244 	mov	dptr,#_iconSet_PARM_2
      004D21 E0               [24] 1245 	movx	a,@dptr
      004D22 FC               [12] 1246 	mov	r4,a
      004D23 8C F0            [24] 1247 	mov	b,r4
      004D25 05 F0            [12] 1248 	inc	b
      004D27 74 01            [12] 1249 	mov	a,#0x01
      004D29 80 02            [24] 1250 	sjmp	00113$
      004D2B                       1251 00111$:
      004D2B 25 E0            [12] 1252 	add	a,acc
      004D2D                       1253 00113$:
      004D2D D5 F0 FB         [24] 1254 	djnz	b,00111$
      004D30 42 05            [12] 1255 	orl	ar5,a
      004D32 8F 82            [24] 1256 	mov	dpl,r7
      004D34 8E 83            [24] 1257 	mov	dph,r6
      004D36 ED               [12] 1258 	mov	a,r5
      004D37 F0               [24] 1259 	movx	@dptr,a
      004D38 22               [24] 1260 	ret
      004D39                       1261 00102$:
                                   1262 ;	board/zbs_segmented_uk/../sem9010.c:206: epdSegmentData[byte] &= ~(1 << bit);
      004D39 90 FB AD         [24] 1263 	mov	dptr,#_iconSet_byte_65536_71
      004D3C E0               [24] 1264 	movx	a,@dptr
      004D3D 24 5E            [12] 1265 	add	a,#_epdSegmentData
      004D3F FF               [12] 1266 	mov	r7,a
      004D40 E4               [12] 1267 	clr	a
      004D41 34 FE            [12] 1268 	addc	a,#(_epdSegmentData >> 8)
      004D43 FE               [12] 1269 	mov	r6,a
      004D44 8F 82            [24] 1270 	mov	dpl,r7
      004D46 8E 83            [24] 1271 	mov	dph,r6
      004D48 E0               [24] 1272 	movx	a,@dptr
      004D49 FD               [12] 1273 	mov	r5,a
      004D4A 90 FB AB         [24] 1274 	mov	dptr,#_iconSet_PARM_2
      004D4D E0               [24] 1275 	movx	a,@dptr
      004D4E FC               [12] 1276 	mov	r4,a
      004D4F 8C F0            [24] 1277 	mov	b,r4
      004D51 05 F0            [12] 1278 	inc	b
      004D53 74 01            [12] 1279 	mov	a,#0x01
      004D55 80 02            [24] 1280 	sjmp	00116$
      004D57                       1281 00114$:
      004D57 25 E0            [12] 1282 	add	a,acc
      004D59                       1283 00116$:
      004D59 D5 F0 FB         [24] 1284 	djnz	b,00114$
      004D5C F4               [12] 1285 	cpl	a
      004D5D 52 05            [12] 1286 	anl	ar5,a
      004D5F 8F 82            [24] 1287 	mov	dpl,r7
      004D61 8E 83            [24] 1288 	mov	dph,r6
      004D63 ED               [12] 1289 	mov	a,r5
      004D64 F0               [24] 1290 	movx	@dptr,a
                                   1291 ;	board/zbs_segmented_uk/../sem9010.c:208: }
      004D65 22               [24] 1292 	ret
                                   1293 ;------------------------------------------------------------
                                   1294 ;Allocation info for local variables in function 'setEPDIcon'
                                   1295 ;------------------------------------------------------------
                                   1296 ;on                        Allocated with name '_setEPDIcon_PARM_2'
                                   1297 ;iconvalue                 Allocated with name '_setEPDIcon_iconvalue_65536_75'
                                   1298 ;------------------------------------------------------------
                                   1299 ;	board/zbs_segmented_uk/../sem9010.c:210: void setEPDIcon(uint16_t iconvalue, bool on) {
                                   1300 ;	-----------------------------------------
                                   1301 ;	 function setEPDIcon
                                   1302 ;	-----------------------------------------
      004D66                       1303 _setEPDIcon:
      004D66 AF 83            [24] 1304 	mov	r7,dph
      004D68 E5 82            [12] 1305 	mov	a,dpl
      004D6A 90 FB AF         [24] 1306 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004D6D F0               [24] 1307 	movx	@dptr,a
      004D6E EF               [12] 1308 	mov	a,r7
      004D6F A3               [24] 1309 	inc	dptr
      004D70 F0               [24] 1310 	movx	@dptr,a
                                   1311 ;	board/zbs_segmented_uk/../sem9010.c:211: if (iconvalue & EPD_SIGN_POUND_LARGE)
      004D71 90 FB AF         [24] 1312 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004D74 E0               [24] 1313 	movx	a,@dptr
      004D75 FE               [12] 1314 	mov	r6,a
      004D76 A3               [24] 1315 	inc	dptr
      004D77 E0               [24] 1316 	movx	a,@dptr
      004D78 EE               [12] 1317 	mov	a,r6
      004D79 30 E0 15         [24] 1318 	jnb	acc.0,00102$
                                   1319 ;	board/zbs_segmented_uk/../sem9010.c:212: iconSet(2, 0, on);
      004D7C 90 FB AE         [24] 1320 	mov	dptr,#_setEPDIcon_PARM_2
      004D7F E0               [24] 1321 	movx	a,@dptr
      004D80 FF               [12] 1322 	mov	r7,a
      004D81 90 FB AB         [24] 1323 	mov	dptr,#_iconSet_PARM_2
      004D84 E4               [12] 1324 	clr	a
      004D85 F0               [24] 1325 	movx	@dptr,a
      004D86 90 FB AC         [24] 1326 	mov	dptr,#_iconSet_PARM_3
      004D89 EF               [12] 1327 	mov	a,r7
      004D8A F0               [24] 1328 	movx	@dptr,a
      004D8B 75 82 02         [24] 1329 	mov	dpl,#0x02
      004D8E 12 4D 01         [24] 1330 	lcall	_iconSet
      004D91                       1331 00102$:
                                   1332 ;	board/zbs_segmented_uk/../sem9010.c:213: if (iconvalue & EPD_DIGIT_ONE_LARGE)
      004D91 90 FB AF         [24] 1333 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004D94 E0               [24] 1334 	movx	a,@dptr
      004D95 FE               [12] 1335 	mov	r6,a
      004D96 A3               [24] 1336 	inc	dptr
      004D97 E0               [24] 1337 	movx	a,@dptr
      004D98 EE               [12] 1338 	mov	a,r6
      004D99 30 E1 15         [24] 1339 	jnb	acc.1,00104$
                                   1340 ;	board/zbs_segmented_uk/../sem9010.c:214: iconSet(1, 0, on);
      004D9C 90 FB AE         [24] 1341 	mov	dptr,#_setEPDIcon_PARM_2
      004D9F E0               [24] 1342 	movx	a,@dptr
      004DA0 FF               [12] 1343 	mov	r7,a
      004DA1 90 FB AB         [24] 1344 	mov	dptr,#_iconSet_PARM_2
      004DA4 E4               [12] 1345 	clr	a
      004DA5 F0               [24] 1346 	movx	@dptr,a
      004DA6 90 FB AC         [24] 1347 	mov	dptr,#_iconSet_PARM_3
      004DA9 EF               [12] 1348 	mov	a,r7
      004DAA F0               [24] 1349 	movx	@dptr,a
      004DAB 75 82 01         [24] 1350 	mov	dpl,#0x01
      004DAE 12 4D 01         [24] 1351 	lcall	_iconSet
      004DB1                       1352 00104$:
                                   1353 ;	board/zbs_segmented_uk/../sem9010.c:215: if (iconvalue & EPD_PERIOD_LARGE)
      004DB1 90 FB AF         [24] 1354 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004DB4 E0               [24] 1355 	movx	a,@dptr
      004DB5 FE               [12] 1356 	mov	r6,a
      004DB6 A3               [24] 1357 	inc	dptr
      004DB7 E0               [24] 1358 	movx	a,@dptr
      004DB8 EE               [12] 1359 	mov	a,r6
      004DB9 30 E2 15         [24] 1360 	jnb	acc.2,00106$
                                   1361 ;	board/zbs_segmented_uk/../sem9010.c:216: iconSet(3, 0, on);
      004DBC 90 FB AE         [24] 1362 	mov	dptr,#_setEPDIcon_PARM_2
      004DBF E0               [24] 1363 	movx	a,@dptr
      004DC0 FF               [12] 1364 	mov	r7,a
      004DC1 90 FB AB         [24] 1365 	mov	dptr,#_iconSet_PARM_2
      004DC4 E4               [12] 1366 	clr	a
      004DC5 F0               [24] 1367 	movx	@dptr,a
      004DC6 90 FB AC         [24] 1368 	mov	dptr,#_iconSet_PARM_3
      004DC9 EF               [12] 1369 	mov	a,r7
      004DCA F0               [24] 1370 	movx	@dptr,a
      004DCB 75 82 03         [24] 1371 	mov	dpl,#0x03
      004DCE 12 4D 01         [24] 1372 	lcall	_iconSet
      004DD1                       1373 00106$:
                                   1374 ;	board/zbs_segmented_uk/../sem9010.c:217: if (iconvalue & EPD_SIGN_PENCE_LARGE)
      004DD1 90 FB AF         [24] 1375 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004DD4 E0               [24] 1376 	movx	a,@dptr
      004DD5 FE               [12] 1377 	mov	r6,a
      004DD6 A3               [24] 1378 	inc	dptr
      004DD7 E0               [24] 1379 	movx	a,@dptr
      004DD8 EE               [12] 1380 	mov	a,r6
      004DD9 30 E3 15         [24] 1381 	jnb	acc.3,00108$
                                   1382 ;	board/zbs_segmented_uk/../sem9010.c:218: iconSet(4, 0, on);
      004DDC 90 FB AE         [24] 1383 	mov	dptr,#_setEPDIcon_PARM_2
      004DDF E0               [24] 1384 	movx	a,@dptr
      004DE0 FF               [12] 1385 	mov	r7,a
      004DE1 90 FB AB         [24] 1386 	mov	dptr,#_iconSet_PARM_2
      004DE4 E4               [12] 1387 	clr	a
      004DE5 F0               [24] 1388 	movx	@dptr,a
      004DE6 90 FB AC         [24] 1389 	mov	dptr,#_iconSet_PARM_3
      004DE9 EF               [12] 1390 	mov	a,r7
      004DEA F0               [24] 1391 	movx	@dptr,a
      004DEB 75 82 04         [24] 1392 	mov	dpl,#0x04
      004DEE 12 4D 01         [24] 1393 	lcall	_iconSet
      004DF1                       1394 00108$:
                                   1395 ;	board/zbs_segmented_uk/../sem9010.c:219: if (iconvalue & EPD_BG_COLOR)
      004DF1 90 FB AF         [24] 1396 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004DF4 E0               [24] 1397 	movx	a,@dptr
      004DF5 A3               [24] 1398 	inc	dptr
      004DF6 E0               [24] 1399 	movx	a,@dptr
      004DF7 30 E0 15         [24] 1400 	jnb	acc.0,00110$
                                   1401 ;	board/zbs_segmented_uk/../sem9010.c:220: iconSet(0, 0, on);
      004DFA 90 FB AE         [24] 1402 	mov	dptr,#_setEPDIcon_PARM_2
      004DFD E0               [24] 1403 	movx	a,@dptr
      004DFE FF               [12] 1404 	mov	r7,a
      004DFF 90 FB AB         [24] 1405 	mov	dptr,#_iconSet_PARM_2
      004E02 E4               [12] 1406 	clr	a
      004E03 F0               [24] 1407 	movx	@dptr,a
      004E04 90 FB AC         [24] 1408 	mov	dptr,#_iconSet_PARM_3
      004E07 EF               [12] 1409 	mov	a,r7
      004E08 F0               [24] 1410 	movx	@dptr,a
      004E09 75 82 00         [24] 1411 	mov	dpl,#0x00
      004E0C 12 4D 01         [24] 1412 	lcall	_iconSet
      004E0F                       1413 00110$:
                                   1414 ;	board/zbs_segmented_uk/../sem9010.c:221: if (iconvalue & EPD_SIGN_POUND_SMALL)
      004E0F 90 FB AF         [24] 1415 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004E12 E0               [24] 1416 	movx	a,@dptr
      004E13 FE               [12] 1417 	mov	r6,a
      004E14 A3               [24] 1418 	inc	dptr
      004E15 E0               [24] 1419 	movx	a,@dptr
      004E16 EE               [12] 1420 	mov	a,r6
      004E17 30 E4 15         [24] 1421 	jnb	acc.4,00112$
                                   1422 ;	board/zbs_segmented_uk/../sem9010.c:222: iconSet(6, 0, on);
      004E1A 90 FB AE         [24] 1423 	mov	dptr,#_setEPDIcon_PARM_2
      004E1D E0               [24] 1424 	movx	a,@dptr
      004E1E FF               [12] 1425 	mov	r7,a
      004E1F 90 FB AB         [24] 1426 	mov	dptr,#_iconSet_PARM_2
      004E22 E4               [12] 1427 	clr	a
      004E23 F0               [24] 1428 	movx	@dptr,a
      004E24 90 FB AC         [24] 1429 	mov	dptr,#_iconSet_PARM_3
      004E27 EF               [12] 1430 	mov	a,r7
      004E28 F0               [24] 1431 	movx	@dptr,a
      004E29 75 82 06         [24] 1432 	mov	dpl,#0x06
      004E2C 12 4D 01         [24] 1433 	lcall	_iconSet
      004E2F                       1434 00112$:
                                   1435 ;	board/zbs_segmented_uk/../sem9010.c:223: if (iconvalue & EPD_DIGIT_ONE_SMALL)
      004E2F 90 FB AF         [24] 1436 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004E32 E0               [24] 1437 	movx	a,@dptr
      004E33 FE               [12] 1438 	mov	r6,a
      004E34 A3               [24] 1439 	inc	dptr
      004E35 E0               [24] 1440 	movx	a,@dptr
      004E36 EE               [12] 1441 	mov	a,r6
      004E37 30 E5 15         [24] 1442 	jnb	acc.5,00114$
                                   1443 ;	board/zbs_segmented_uk/../sem9010.c:224: iconSet(7, 0, on);
      004E3A 90 FB AE         [24] 1444 	mov	dptr,#_setEPDIcon_PARM_2
      004E3D E0               [24] 1445 	movx	a,@dptr
      004E3E FF               [12] 1446 	mov	r7,a
      004E3F 90 FB AB         [24] 1447 	mov	dptr,#_iconSet_PARM_2
      004E42 E4               [12] 1448 	clr	a
      004E43 F0               [24] 1449 	movx	@dptr,a
      004E44 90 FB AC         [24] 1450 	mov	dptr,#_iconSet_PARM_3
      004E47 EF               [12] 1451 	mov	a,r7
      004E48 F0               [24] 1452 	movx	@dptr,a
      004E49 75 82 07         [24] 1453 	mov	dpl,#0x07
      004E4C 12 4D 01         [24] 1454 	lcall	_iconSet
      004E4F                       1455 00114$:
                                   1456 ;	board/zbs_segmented_uk/../sem9010.c:225: if (iconvalue & EPD_PERIOD_SMALL)
      004E4F 90 FB AF         [24] 1457 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004E52 E0               [24] 1458 	movx	a,@dptr
      004E53 FE               [12] 1459 	mov	r6,a
      004E54 A3               [24] 1460 	inc	dptr
      004E55 E0               [24] 1461 	movx	a,@dptr
      004E56 EE               [12] 1462 	mov	a,r6
      004E57 30 E6 15         [24] 1463 	jnb	acc.6,00116$
                                   1464 ;	board/zbs_segmented_uk/../sem9010.c:226: iconSet(9, 0, on);
      004E5A 90 FB AE         [24] 1465 	mov	dptr,#_setEPDIcon_PARM_2
      004E5D E0               [24] 1466 	movx	a,@dptr
      004E5E FF               [12] 1467 	mov	r7,a
      004E5F 90 FB AB         [24] 1468 	mov	dptr,#_iconSet_PARM_2
      004E62 E4               [12] 1469 	clr	a
      004E63 F0               [24] 1470 	movx	@dptr,a
      004E64 90 FB AC         [24] 1471 	mov	dptr,#_iconSet_PARM_3
      004E67 EF               [12] 1472 	mov	a,r7
      004E68 F0               [24] 1473 	movx	@dptr,a
      004E69 75 82 09         [24] 1474 	mov	dpl,#0x09
      004E6C 12 4D 01         [24] 1475 	lcall	_iconSet
      004E6F                       1476 00116$:
                                   1477 ;	board/zbs_segmented_uk/../sem9010.c:227: if (iconvalue & EPD_SIGN_PENCE_SMALL)
      004E6F 90 FB AF         [24] 1478 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004E72 E0               [24] 1479 	movx	a,@dptr
      004E73 FE               [12] 1480 	mov	r6,a
      004E74 A3               [24] 1481 	inc	dptr
      004E75 E0               [24] 1482 	movx	a,@dptr
      004E76 EE               [12] 1483 	mov	a,r6
      004E77 30 E7 15         [24] 1484 	jnb	acc.7,00118$
                                   1485 ;	board/zbs_segmented_uk/../sem9010.c:228: iconSet(8, 0, on);
      004E7A 90 FB AE         [24] 1486 	mov	dptr,#_setEPDIcon_PARM_2
      004E7D E0               [24] 1487 	movx	a,@dptr
      004E7E FF               [12] 1488 	mov	r7,a
      004E7F 90 FB AB         [24] 1489 	mov	dptr,#_iconSet_PARM_2
      004E82 E4               [12] 1490 	clr	a
      004E83 F0               [24] 1491 	movx	@dptr,a
      004E84 90 FB AC         [24] 1492 	mov	dptr,#_iconSet_PARM_3
      004E87 EF               [12] 1493 	mov	a,r7
      004E88 F0               [24] 1494 	movx	@dptr,a
      004E89 75 82 08         [24] 1495 	mov	dpl,#0x08
      004E8C 12 4D 01         [24] 1496 	lcall	_iconSet
      004E8F                       1497 00118$:
                                   1498 ;	board/zbs_segmented_uk/../sem9010.c:229: if (iconvalue & EPD_ICON_DIAMOND)
      004E8F 90 FB AF         [24] 1499 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004E92 E0               [24] 1500 	movx	a,@dptr
      004E93 A3               [24] 1501 	inc	dptr
      004E94 E0               [24] 1502 	movx	a,@dptr
      004E95 30 E1 15         [24] 1503 	jnb	acc.1,00120$
                                   1504 ;	board/zbs_segmented_uk/../sem9010.c:230: iconSet(10, 0, on);
      004E98 90 FB AE         [24] 1505 	mov	dptr,#_setEPDIcon_PARM_2
      004E9B E0               [24] 1506 	movx	a,@dptr
      004E9C FF               [12] 1507 	mov	r7,a
      004E9D 90 FB AB         [24] 1508 	mov	dptr,#_iconSet_PARM_2
      004EA0 E4               [12] 1509 	clr	a
      004EA1 F0               [24] 1510 	movx	@dptr,a
      004EA2 90 FB AC         [24] 1511 	mov	dptr,#_iconSet_PARM_3
      004EA5 EF               [12] 1512 	mov	a,r7
      004EA6 F0               [24] 1513 	movx	@dptr,a
      004EA7 75 82 0A         [24] 1514 	mov	dpl,#0x0a
      004EAA 12 4D 01         [24] 1515 	lcall	_iconSet
      004EAD                       1516 00120$:
                                   1517 ;	board/zbs_segmented_uk/../sem9010.c:231: if (iconvalue & EPD_ICON_ARROW)
      004EAD 90 FB AF         [24] 1518 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004EB0 E0               [24] 1519 	movx	a,@dptr
      004EB1 A3               [24] 1520 	inc	dptr
      004EB2 E0               [24] 1521 	movx	a,@dptr
      004EB3 30 E2 16         [24] 1522 	jnb	acc.2,00122$
                                   1523 ;	board/zbs_segmented_uk/../sem9010.c:232: iconSet(10, 1, on);
      004EB6 90 FB AE         [24] 1524 	mov	dptr,#_setEPDIcon_PARM_2
      004EB9 E0               [24] 1525 	movx	a,@dptr
      004EBA FF               [12] 1526 	mov	r7,a
      004EBB 90 FB AB         [24] 1527 	mov	dptr,#_iconSet_PARM_2
      004EBE 74 01            [12] 1528 	mov	a,#0x01
      004EC0 F0               [24] 1529 	movx	@dptr,a
      004EC1 90 FB AC         [24] 1530 	mov	dptr,#_iconSet_PARM_3
      004EC4 EF               [12] 1531 	mov	a,r7
      004EC5 F0               [24] 1532 	movx	@dptr,a
      004EC6 75 82 0A         [24] 1533 	mov	dpl,#0x0a
      004EC9 12 4D 01         [24] 1534 	lcall	_iconSet
      004ECC                       1535 00122$:
                                   1536 ;	board/zbs_segmented_uk/../sem9010.c:233: if (iconvalue & EPD_ICON_STAR)
      004ECC 90 FB AF         [24] 1537 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004ECF E0               [24] 1538 	movx	a,@dptr
      004ED0 A3               [24] 1539 	inc	dptr
      004ED1 E0               [24] 1540 	movx	a,@dptr
      004ED2 30 E3 16         [24] 1541 	jnb	acc.3,00124$
                                   1542 ;	board/zbs_segmented_uk/../sem9010.c:234: iconSet(10, 2, on);
      004ED5 90 FB AE         [24] 1543 	mov	dptr,#_setEPDIcon_PARM_2
      004ED8 E0               [24] 1544 	movx	a,@dptr
      004ED9 FF               [12] 1545 	mov	r7,a
      004EDA 90 FB AB         [24] 1546 	mov	dptr,#_iconSet_PARM_2
      004EDD 74 02            [12] 1547 	mov	a,#0x02
      004EDF F0               [24] 1548 	movx	@dptr,a
      004EE0 90 FB AC         [24] 1549 	mov	dptr,#_iconSet_PARM_3
      004EE3 EF               [12] 1550 	mov	a,r7
      004EE4 F0               [24] 1551 	movx	@dptr,a
      004EE5 75 82 0A         [24] 1552 	mov	dpl,#0x0a
      004EE8 12 4D 01         [24] 1553 	lcall	_iconSet
      004EEB                       1554 00124$:
                                   1555 ;	board/zbs_segmented_uk/../sem9010.c:235: if (iconvalue & EPD_ICON_CIRCLE)
      004EEB 90 FB AF         [24] 1556 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004EEE E0               [24] 1557 	movx	a,@dptr
      004EEF A3               [24] 1558 	inc	dptr
      004EF0 E0               [24] 1559 	movx	a,@dptr
      004EF1 30 E4 16         [24] 1560 	jnb	acc.4,00126$
                                   1561 ;	board/zbs_segmented_uk/../sem9010.c:236: iconSet(10, 3, on);
      004EF4 90 FB AE         [24] 1562 	mov	dptr,#_setEPDIcon_PARM_2
      004EF7 E0               [24] 1563 	movx	a,@dptr
      004EF8 FF               [12] 1564 	mov	r7,a
      004EF9 90 FB AB         [24] 1565 	mov	dptr,#_iconSet_PARM_2
      004EFC 74 03            [12] 1566 	mov	a,#0x03
      004EFE F0               [24] 1567 	movx	@dptr,a
      004EFF 90 FB AC         [24] 1568 	mov	dptr,#_iconSet_PARM_3
      004F02 EF               [12] 1569 	mov	a,r7
      004F03 F0               [24] 1570 	movx	@dptr,a
      004F04 75 82 0A         [24] 1571 	mov	dpl,#0x0a
      004F07 12 4D 01         [24] 1572 	lcall	_iconSet
      004F0A                       1573 00126$:
                                   1574 ;	board/zbs_segmented_uk/../sem9010.c:237: if (iconvalue & EPD_ICON_SQUARE)
      004F0A 90 FB AF         [24] 1575 	mov	dptr,#_setEPDIcon_iconvalue_65536_75
      004F0D E0               [24] 1576 	movx	a,@dptr
      004F0E A3               [24] 1577 	inc	dptr
      004F0F E0               [24] 1578 	movx	a,@dptr
      004F10 30 E5 16         [24] 1579 	jnb	acc.5,00129$
                                   1580 ;	board/zbs_segmented_uk/../sem9010.c:238: iconSet(10, 4, on);
      004F13 90 FB AE         [24] 1581 	mov	dptr,#_setEPDIcon_PARM_2
      004F16 E0               [24] 1582 	movx	a,@dptr
      004F17 FF               [12] 1583 	mov	r7,a
      004F18 90 FB AB         [24] 1584 	mov	dptr,#_iconSet_PARM_2
      004F1B 74 04            [12] 1585 	mov	a,#0x04
      004F1D F0               [24] 1586 	movx	@dptr,a
      004F1E 90 FB AC         [24] 1587 	mov	dptr,#_iconSet_PARM_3
      004F21 EF               [12] 1588 	mov	a,r7
      004F22 F0               [24] 1589 	movx	@dptr,a
      004F23 75 82 0A         [24] 1590 	mov	dpl,#0x0a
                                   1591 ;	board/zbs_segmented_uk/../sem9010.c:239: }
      004F26 02 4D 01         [24] 1592 	ljmp	_iconSet
      004F29                       1593 00129$:
      004F29 22               [24] 1594 	ret
                                   1595 ;------------------------------------------------------------
                                   1596 ;Allocation info for local variables in function 'epdEnable'
                                   1597 ;------------------------------------------------------------
                                   1598 ;	board/zbs_segmented_uk/../sem9010.c:240: void epdEnable() {
                                   1599 ;	-----------------------------------------
                                   1600 ;	 function epdEnable
                                   1601 ;	-----------------------------------------
      004F2A                       1602 _epdEnable:
                                   1603 ;	board/zbs_segmented_uk/../sem9010.c:249: P2FUNC &= ~((1 << 0) | (1 << 1) | (1 << 2));  // disable functions on busy, _cs, power
      004F2A 53 AF F8         [24] 1604 	anl	_P2FUNC,#0xf8
                                   1605 ;	board/zbs_segmented_uk/../sem9010.c:250: P2DIR &= ~((1 << 1) | (1 << 2));              // _CS 2.1 and POWER 2.2(output)
      004F2D 53 BB F9         [24] 1606 	anl	_P2DIR,#0xf9
                                   1607 ;	board/zbs_segmented_uk/../sem9010.c:251: P2DIR |= (1 << 0);                            // BUSY (input)
      004F30 43 BB 01         [24] 1608 	orl	_P2DIR,#0x01
                                   1609 ;	board/zbs_segmented_uk/../sem9010.c:253: P1DIR &= ~((1 << 7) | (1 << 6));  // _RESET and EPD_EXT_CLK as output
      004F33 53 BA 3F         [24] 1610 	anl	_P1DIR,#0x3f
                                   1611 ;	board/zbs_segmented_uk/../sem9010.c:254: P1FUNC &= ~(1 << 7);              // disable function on _reset
      004F36 53 AE 7F         [24] 1612 	anl	_P1FUNC,#0x7f
                                   1613 ;	board/zbs_segmented_uk/../sem9010.c:255: P1FUNC |= (1 << 6);               // EPD_EXT_CLK-out enable
      004F39 43 AE 40         [24] 1614 	orl	_P1FUNC,#0x40
                                   1615 ;	board/zbs_segmented_uk/../sem9010.c:257: P0FUNC |= (1 << 0) | (1 << 1) | (1 << 2);  // enable clk, mosi, miso functions
      004F3C 43 AD 07         [24] 1616 	orl	_P0FUNC,#0x07
                                   1617 ;	board/zbs_segmented_uk/../sem9010.c:258: P0DIR &= ~((1 << 0) | (1 << 1));           // enable output on clk, mosi
      004F3F 53 B9 FC         [24] 1618 	anl	_P0DIR,#0xfc
                                   1619 ;	board/zbs_segmented_uk/../sem9010.c:259: P0DIR |= (1 << 2);                         // miso as input
      004F42 43 B9 04         [24] 1620 	orl	_P0DIR,#0x04
                                   1621 ;	board/zbs_segmented_uk/../sem9010.c:260: P0PULL = (1 << 2);                         // pullup on miso
      004F45 75 BC 04         [24] 1622 	mov	_P0PULL,#0x04
                                   1623 ;	board/zbs_segmented_uk/../sem9010.c:262: spiInit();
                                   1624 ;	board/zbs_segmented_uk/../sem9010.c:263: }
      004F48 02 2B B1         [24] 1625 	ljmp	_spiInit
                                   1626 ;------------------------------------------------------------
                                   1627 ;Allocation info for local variables in function 'epdDisable'
                                   1628 ;------------------------------------------------------------
                                   1629 ;	board/zbs_segmented_uk/../sem9010.c:264: void epdDisable() {
                                   1630 ;	-----------------------------------------
                                   1631 ;	 function epdDisable
                                   1632 ;	-----------------------------------------
      004F4B                       1633 _epdDisable:
                                   1634 ;	board/zbs_segmented_uk/../sem9010.c:265: P1_7 = 0;  // assert reset
                                   1635 ;	assignBit
      004F4B C2 97            [12] 1636 	clr	_P1_7
                                   1637 ;	board/zbs_segmented_uk/../sem9010.c:267: P2_2 = 0;  // power it down
                                   1638 ;	assignBit
      004F4D C2 A2            [12] 1639 	clr	_P2_2
                                   1640 ;	board/zbs_segmented_uk/../sem9010.c:270: P2DIR |= (1 << 1) | (1 << 2);                 // _cs and power as input
      004F4F 43 BB 06         [24] 1641 	orl	_P2DIR,#0x06
                                   1642 ;	board/zbs_segmented_uk/../sem9010.c:271: P1DIR |= (1 << 7) | (1 << 6);                 // reset and epd-ext-clk as input
      004F52 43 BA C0         [24] 1643 	orl	_P1DIR,#0xc0
                                   1644 ;	board/zbs_segmented_uk/../sem9010.c:272: P0DIR |= (1 << 0) | (1 << 1);                 // mosi/clk as input
      004F55 43 B9 03         [24] 1645 	orl	_P0DIR,#0x03
                                   1646 ;	board/zbs_segmented_uk/../sem9010.c:273: P0PULL &= ~(1 << 2);                          // disable miso pullup
      004F58 53 BC FB         [24] 1647 	anl	_P0PULL,#0xfb
                                   1648 ;	board/zbs_segmented_uk/../sem9010.c:274: P1FUNC &= ~(1 << 6);                          // disable clock output
      004F5B 53 AE BF         [24] 1649 	anl	_P1FUNC,#0xbf
                                   1650 ;	board/zbs_segmented_uk/../sem9010.c:275: P0FUNC &= ~((1 << 0) | (1 << 1) | (1 << 2));  // disable SPI functions
      004F5E 53 AD F8         [24] 1651 	anl	_P0FUNC,#0xf8
                                   1652 ;	board/zbs_segmented_uk/../sem9010.c:276: }
      004F61 22               [24] 1653 	ret
                                   1654 ;------------------------------------------------------------
                                   1655 ;Allocation info for local variables in function 'epdDraw'
                                   1656 ;------------------------------------------------------------
                                   1657 ;	board/zbs_segmented_uk/../sem9010.c:278: __bit epdDraw() {
                                   1658 ;	-----------------------------------------
                                   1659 ;	 function epdDraw
                                   1660 ;	-----------------------------------------
      004F62                       1661 _epdDraw:
                                   1662 ;	board/zbs_segmented_uk/../sem9010.c:280: if (!screenPrvRegWrite(0x0d, *(uint32_t __xdata *)(epdSegmentData + 0)))
      004F62 90 FE 5E         [24] 1663 	mov	dptr,#_epdSegmentData
      004F65 E0               [24] 1664 	movx	a,@dptr
      004F66 FC               [12] 1665 	mov	r4,a
      004F67 A3               [24] 1666 	inc	dptr
      004F68 E0               [24] 1667 	movx	a,@dptr
      004F69 FD               [12] 1668 	mov	r5,a
      004F6A A3               [24] 1669 	inc	dptr
      004F6B E0               [24] 1670 	movx	a,@dptr
      004F6C FE               [12] 1671 	mov	r6,a
      004F6D A3               [24] 1672 	inc	dptr
      004F6E E0               [24] 1673 	movx	a,@dptr
      004F6F FF               [12] 1674 	mov	r7,a
      004F70 90 FB A1         [24] 1675 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      004F73 74 0D            [12] 1676 	mov	a,#0x0d
      004F75 F0               [24] 1677 	movx	@dptr,a
      004F76 8C 82            [24] 1678 	mov	dpl,r4
      004F78 8D 83            [24] 1679 	mov	dph,r5
      004F7A 8E F0            [24] 1680 	mov	b,r6
      004F7C EF               [12] 1681 	mov	a,r7
      004F7D 12 4A 1F         [24] 1682 	lcall	_screenPrvRegWriteGuts
                                   1683 ;	board/zbs_segmented_uk/../sem9010.c:281: return false;
      004F80 40 01            [24] 1684 	jc	00102$
      004F82 22               [24] 1685 	ret
      004F83                       1686 00102$:
                                   1687 ;	board/zbs_segmented_uk/../sem9010.c:282: if (!screenPrvRegWrite(0x0e, *(uint32_t __xdata *)(epdSegmentData + 3)))
      004F83 90 FE 61         [24] 1688 	mov	dptr,#(_epdSegmentData + 0x0003)
      004F86 E0               [24] 1689 	movx	a,@dptr
      004F87 FC               [12] 1690 	mov	r4,a
      004F88 A3               [24] 1691 	inc	dptr
      004F89 E0               [24] 1692 	movx	a,@dptr
      004F8A FD               [12] 1693 	mov	r5,a
      004F8B A3               [24] 1694 	inc	dptr
      004F8C E0               [24] 1695 	movx	a,@dptr
      004F8D FE               [12] 1696 	mov	r6,a
      004F8E A3               [24] 1697 	inc	dptr
      004F8F E0               [24] 1698 	movx	a,@dptr
      004F90 FF               [12] 1699 	mov	r7,a
      004F91 90 FB A1         [24] 1700 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      004F94 74 0E            [12] 1701 	mov	a,#0x0e
      004F96 F0               [24] 1702 	movx	@dptr,a
      004F97 8C 82            [24] 1703 	mov	dpl,r4
      004F99 8D 83            [24] 1704 	mov	dph,r5
      004F9B 8E F0            [24] 1705 	mov	b,r6
      004F9D EF               [12] 1706 	mov	a,r7
      004F9E 12 4A 1F         [24] 1707 	lcall	_screenPrvRegWriteGuts
                                   1708 ;	board/zbs_segmented_uk/../sem9010.c:283: return false;
      004FA1 40 01            [24] 1709 	jc	00104$
      004FA3 22               [24] 1710 	ret
      004FA4                       1711 00104$:
                                   1712 ;	board/zbs_segmented_uk/../sem9010.c:284: if (!screenPrvRegWrite(0x0f, *(uint32_t __xdata *)(epdSegmentData + 6)))
      004FA4 90 FE 64         [24] 1713 	mov	dptr,#(_epdSegmentData + 0x0006)
      004FA7 E0               [24] 1714 	movx	a,@dptr
      004FA8 FC               [12] 1715 	mov	r4,a
      004FA9 A3               [24] 1716 	inc	dptr
      004FAA E0               [24] 1717 	movx	a,@dptr
      004FAB FD               [12] 1718 	mov	r5,a
      004FAC A3               [24] 1719 	inc	dptr
      004FAD E0               [24] 1720 	movx	a,@dptr
      004FAE FE               [12] 1721 	mov	r6,a
      004FAF A3               [24] 1722 	inc	dptr
      004FB0 E0               [24] 1723 	movx	a,@dptr
      004FB1 FF               [12] 1724 	mov	r7,a
      004FB2 90 FB A1         [24] 1725 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      004FB5 74 0F            [12] 1726 	mov	a,#0x0f
      004FB7 F0               [24] 1727 	movx	@dptr,a
      004FB8 8C 82            [24] 1728 	mov	dpl,r4
      004FBA 8D 83            [24] 1729 	mov	dph,r5
      004FBC 8E F0            [24] 1730 	mov	b,r6
      004FBE EF               [12] 1731 	mov	a,r7
      004FBF 12 4A 1F         [24] 1732 	lcall	_screenPrvRegWriteGuts
                                   1733 ;	board/zbs_segmented_uk/../sem9010.c:285: return false;
      004FC2 40 01            [24] 1734 	jc	00106$
      004FC4 22               [24] 1735 	ret
      004FC5                       1736 00106$:
                                   1737 ;	board/zbs_segmented_uk/../sem9010.c:286: if (!screenPrvRegWrite(0x10, *(uint32_t __xdata *)(epdSegmentData + 9)))
      004FC5 90 FE 67         [24] 1738 	mov	dptr,#(_epdSegmentData + 0x0009)
      004FC8 E0               [24] 1739 	movx	a,@dptr
      004FC9 FC               [12] 1740 	mov	r4,a
      004FCA A3               [24] 1741 	inc	dptr
      004FCB E0               [24] 1742 	movx	a,@dptr
      004FCC FD               [12] 1743 	mov	r5,a
      004FCD A3               [24] 1744 	inc	dptr
      004FCE E0               [24] 1745 	movx	a,@dptr
      004FCF FE               [12] 1746 	mov	r6,a
      004FD0 A3               [24] 1747 	inc	dptr
      004FD1 E0               [24] 1748 	movx	a,@dptr
      004FD2 FF               [12] 1749 	mov	r7,a
      004FD3 90 FB A1         [24] 1750 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      004FD6 74 10            [12] 1751 	mov	a,#0x10
      004FD8 F0               [24] 1752 	movx	@dptr,a
      004FD9 8C 82            [24] 1753 	mov	dpl,r4
      004FDB 8D 83            [24] 1754 	mov	dph,r5
      004FDD 8E F0            [24] 1755 	mov	b,r6
      004FDF EF               [12] 1756 	mov	a,r7
      004FE0 12 4A 1F         [24] 1757 	lcall	_screenPrvRegWriteGuts
                                   1758 ;	board/zbs_segmented_uk/../sem9010.c:287: return false;
      004FE3 40 01            [24] 1759 	jc	00108$
      004FE5 22               [24] 1760 	ret
      004FE6                       1761 00108$:
                                   1762 ;	board/zbs_segmented_uk/../sem9010.c:289: if (!screenPrvRegWrite(0x00, isInverted ? 0xa0001c : 0x80001c))
      004FE6 30 14 0A         [24] 1763 	jnb	_isInverted,00113$
      004FE9 7C 1C            [12] 1764 	mov	r4,#0x1c
      004FEB 7D 00            [12] 1765 	mov	r5,#0x00
      004FED 7E A0            [12] 1766 	mov	r6,#0xa0
      004FEF 7F 00            [12] 1767 	mov	r7,#0x00
      004FF1 80 08            [24] 1768 	sjmp	00114$
      004FF3                       1769 00113$:
      004FF3 7C 1C            [12] 1770 	mov	r4,#0x1c
      004FF5 7D 00            [12] 1771 	mov	r5,#0x00
      004FF7 7E 80            [12] 1772 	mov	r6,#0x80
      004FF9 7F 00            [12] 1773 	mov	r7,#0x00
      004FFB                       1774 00114$:
      004FFB 90 FB A1         [24] 1775 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      004FFE E4               [12] 1776 	clr	a
      004FFF F0               [24] 1777 	movx	@dptr,a
      005000 8C 82            [24] 1778 	mov	dpl,r4
      005002 8D 83            [24] 1779 	mov	dph,r5
      005004 8E F0            [24] 1780 	mov	b,r6
      005006 EF               [12] 1781 	mov	a,r7
      005007 12 4A 1F         [24] 1782 	lcall	_screenPrvRegWriteGuts
                                   1783 ;	board/zbs_segmented_uk/../sem9010.c:290: return false;
      00500A 40 01            [24] 1784 	jc	00110$
      00500C 22               [24] 1785 	ret
      00500D                       1786 00110$:
                                   1787 ;	board/zbs_segmented_uk/../sem9010.c:292: timerDelay(TIMER_TICKS_PER_SECOND / 10000);
      00500D 90 00 85         [24] 1788 	mov	dptr,#(0x85&0x00ff)
      005010 E4               [12] 1789 	clr	a
      005011 F5 F0            [12] 1790 	mov	b,a
      005013 12 2E 8E         [24] 1791 	lcall	_timerDelay
                                   1792 ;	board/zbs_segmented_uk/../sem9010.c:293: memcpy(curEpdSegmentData, epdSegmentData, sizeof(epdSegmentData));
      005016 90 FB D2         [24] 1793 	mov	dptr,#___memcpy_PARM_2
      005019 74 5E            [12] 1794 	mov	a,#_epdSegmentData
      00501B F0               [24] 1795 	movx	@dptr,a
      00501C 74 FE            [12] 1796 	mov	a,#(_epdSegmentData >> 8)
      00501E A3               [24] 1797 	inc	dptr
      00501F F0               [24] 1798 	movx	@dptr,a
      005020 E4               [12] 1799 	clr	a
      005021 A3               [24] 1800 	inc	dptr
      005022 F0               [24] 1801 	movx	@dptr,a
      005023 90 FB D5         [24] 1802 	mov	dptr,#___memcpy_PARM_3
      005026 74 0C            [12] 1803 	mov	a,#0x0c
      005028 F0               [24] 1804 	movx	@dptr,a
      005029 E4               [12] 1805 	clr	a
      00502A A3               [24] 1806 	inc	dptr
      00502B F0               [24] 1807 	movx	@dptr,a
      00502C 90 FE 52         [24] 1808 	mov	dptr,#_curEpdSegmentData
      00502F 75 F0 00         [24] 1809 	mov	b,#0x00
      005032 12 54 53         [24] 1810 	lcall	___memcpy
                                   1811 ;	board/zbs_segmented_uk/../sem9010.c:294: screen_start_time = timerGet();
      005035 12 2E 10         [24] 1812 	lcall	_timerGet
      005038 AC 82            [24] 1813 	mov	r4,dpl
      00503A AD 83            [24] 1814 	mov	r5,dph
      00503C AE F0            [24] 1815 	mov	r6,b
      00503E FF               [12] 1816 	mov	r7,a
      00503F 90 FE 4E         [24] 1817 	mov	dptr,#_screen_start_time
      005042 EC               [12] 1818 	mov	a,r4
      005043 F0               [24] 1819 	movx	@dptr,a
      005044 ED               [12] 1820 	mov	a,r5
      005045 A3               [24] 1821 	inc	dptr
      005046 F0               [24] 1822 	movx	@dptr,a
      005047 EE               [12] 1823 	mov	a,r6
      005048 A3               [24] 1824 	inc	dptr
      005049 F0               [24] 1825 	movx	@dptr,a
      00504A EF               [12] 1826 	mov	a,r7
      00504B A3               [24] 1827 	inc	dptr
      00504C F0               [24] 1828 	movx	@dptr,a
                                   1829 ;	board/zbs_segmented_uk/../sem9010.c:295: display_is_drawing = 1;
                                   1830 ;	assignBit
      00504D D2 13            [12] 1831 	setb	_display_is_drawing
                                   1832 ;	board/zbs_segmented_uk/../sem9010.c:296: return true;
      00504F D3               [12] 1833 	setb	c
                                   1834 ;	board/zbs_segmented_uk/../sem9010.c:297: }
      005050 22               [24] 1835 	ret
                                   1836 ;------------------------------------------------------------
                                   1837 ;Allocation info for local variables in function 'epdUpdate'
                                   1838 ;------------------------------------------------------------
                                   1839 ;	board/zbs_segmented_uk/../sem9010.c:299: __bit epdUpdate() {
                                   1840 ;	-----------------------------------------
                                   1841 ;	 function epdUpdate
                                   1842 ;	-----------------------------------------
      005051                       1843 _epdUpdate:
                                   1844 ;	board/zbs_segmented_uk/../sem9010.c:300: if (memcmp(curEpdSegmentData, epdSegmentData, sizeof(epdSegmentData)) == 0) {
      005051 90 FB E4         [24] 1845 	mov	dptr,#_memcmp_PARM_2
      005054 74 5E            [12] 1846 	mov	a,#_epdSegmentData
      005056 F0               [24] 1847 	movx	@dptr,a
      005057 74 FE            [12] 1848 	mov	a,#(_epdSegmentData >> 8)
      005059 A3               [24] 1849 	inc	dptr
      00505A F0               [24] 1850 	movx	@dptr,a
      00505B E4               [12] 1851 	clr	a
      00505C A3               [24] 1852 	inc	dptr
      00505D F0               [24] 1853 	movx	@dptr,a
      00505E 90 FB E7         [24] 1854 	mov	dptr,#_memcmp_PARM_3
      005061 74 0C            [12] 1855 	mov	a,#0x0c
      005063 F0               [24] 1856 	movx	@dptr,a
      005064 E4               [12] 1857 	clr	a
      005065 A3               [24] 1858 	inc	dptr
      005066 F0               [24] 1859 	movx	@dptr,a
      005067 90 FE 52         [24] 1860 	mov	dptr,#_curEpdSegmentData
      00506A 75 F0 00         [24] 1861 	mov	b,#0x00
      00506D 12 55 96         [24] 1862 	lcall	_memcmp
      005070 E5 82            [12] 1863 	mov	a,dpl
      005072 85 83 F0         [24] 1864 	mov	b,dph
      005075 45 F0            [12] 1865 	orl	a,b
      005077 70 02            [24] 1866 	jnz	00102$
                                   1867 ;	board/zbs_segmented_uk/../sem9010.c:301: return false;
      005079 C3               [12] 1868 	clr	c
      00507A 22               [24] 1869 	ret
      00507B                       1870 00102$:
                                   1871 ;	board/zbs_segmented_uk/../sem9010.c:303: return epdDraw();
      00507B 12 4F 62         [24] 1872 	lcall	_epdDraw
      00507E 92 15            [24] 1873 	mov  _epdUpdate_sloc0_1_0,c
                                   1874 ;	board/zbs_segmented_uk/../sem9010.c:305: }
      005080 22               [24] 1875 	ret
                                   1876 ;------------------------------------------------------------
                                   1877 ;Allocation info for local variables in function 'epdSetup'
                                   1878 ;------------------------------------------------------------
                                   1879 ;	board/zbs_segmented_uk/../sem9010.c:307: __bit epdSetup(__bit inverted) {
                                   1880 ;	-----------------------------------------
                                   1881 ;	 function epdSetup
                                   1882 ;	-----------------------------------------
      005081                       1883 _epdSetup:
                                   1884 ;	board/zbs_segmented_uk/../sem9010.c:309: isInverted = inverted;
                                   1885 ;	assignBit
      005081 A2 16            [12] 1886 	mov	c,_epdSetup_PARM_1
      005083 92 14            [24] 1887 	mov	_isInverted,c
                                   1888 ;	board/zbs_segmented_uk/../sem9010.c:310: display_is_drawing = 0;
                                   1889 ;	assignBit
      005085 C2 13            [12] 1890 	clr	_display_is_drawing
                                   1891 ;	board/zbs_segmented_uk/../sem9010.c:311: P2_1 = 1;
                                   1892 ;	assignBit
      005087 D2 A1            [12] 1893 	setb	_P2_1
                                   1894 ;	board/zbs_segmented_uk/../sem9010.c:312: P2_2 = 1;  // power it up
                                   1895 ;	assignBit
      005089 D2 A2            [12] 1896 	setb	_P2_2
                                   1897 ;	board/zbs_segmented_uk/../sem9010.c:313: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
      00508B 90 05 35         [24] 1898 	mov	dptr,#0x0535
      00508E E4               [12] 1899 	clr	a
      00508F F5 F0            [12] 1900 	mov	b,a
      005091 12 2E 8E         [24] 1901 	lcall	_timerDelay
                                   1902 ;	board/zbs_segmented_uk/../sem9010.c:314: P1_7 = 0;  // assert reset
                                   1903 ;	assignBit
      005094 C2 97            [12] 1904 	clr	_P1_7
                                   1905 ;	board/zbs_segmented_uk/../sem9010.c:315: timerDelay(TIMER_TICKS_PER_SECOND / 100);
      005096 90 34 15         [24] 1906 	mov	dptr,#0x3415
      005099 E4               [12] 1907 	clr	a
      00509A F5 F0            [12] 1908 	mov	b,a
      00509C 12 2E 8E         [24] 1909 	lcall	_timerDelay
                                   1910 ;	board/zbs_segmented_uk/../sem9010.c:316: P1_7 = 1;  // release reset
                                   1911 ;	assignBit
      00509F D2 97            [12] 1912 	setb	_P1_7
                                   1913 ;	board/zbs_segmented_uk/../sem9010.c:317: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
      0050A1 90 05 35         [24] 1914 	mov	dptr,#0x0535
      0050A4 E4               [12] 1915 	clr	a
      0050A5 F5 F0            [12] 1916 	mov	b,a
      0050A7 12 2E 8E         [24] 1917 	lcall	_timerDelay
                                   1918 ;	board/zbs_segmented_uk/../sem9010.c:320: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND)) {
      0050AA 90 58 55         [24] 1919 	mov	dptr,#0x5855
      0050AD 75 F0 14         [24] 1920 	mov	b,#0x14
      0050B0 E4               [12] 1921 	clr	a
      0050B1 12 49 A0         [24] 1922 	lcall	_screenPrvTimedWait
                                   1923 ;	board/zbs_segmented_uk/../sem9010.c:321: return false;
      0050B4 40 01            [24] 1924 	jc	00102$
      0050B6 22               [24] 1925 	ret
      0050B7                       1926 00102$:
                                   1927 ;	board/zbs_segmented_uk/../sem9010.c:328: if (!screenPrvRegWrite(0x01, 0x070000))
      0050B7 90 FB A1         [24] 1928 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      0050BA 74 01            [12] 1929 	mov	a,#0x01
      0050BC F0               [24] 1930 	movx	@dptr,a
      0050BD 90 00 00         [24] 1931 	mov	dptr,#0x0000
      0050C0 75 F0 07         [24] 1932 	mov	b,#0x07
      0050C3 E4               [12] 1933 	clr	a
      0050C4 12 4A 1F         [24] 1934 	lcall	_screenPrvRegWriteGuts
                                   1935 ;	board/zbs_segmented_uk/../sem9010.c:329: return false;
      0050C7 40 01            [24] 1936 	jc	00104$
      0050C9 22               [24] 1937 	ret
      0050CA                       1938 00104$:
                                   1939 ;	board/zbs_segmented_uk/../sem9010.c:330: if (!screenPrvRegWrite(0x03, 0x400000))
      0050CA 90 FB A1         [24] 1940 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      0050CD 74 03            [12] 1941 	mov	a,#0x03
      0050CF F0               [24] 1942 	movx	@dptr,a
      0050D0 90 00 00         [24] 1943 	mov	dptr,#0x0000
      0050D3 75 F0 40         [24] 1944 	mov	b,#0x40
      0050D6 E4               [12] 1945 	clr	a
      0050D7 12 4A 1F         [24] 1946 	lcall	_screenPrvRegWriteGuts
                                   1947 ;	board/zbs_segmented_uk/../sem9010.c:331: return false;
      0050DA 40 01            [24] 1948 	jc	00106$
      0050DC 22               [24] 1949 	ret
      0050DD                       1950 00106$:
                                   1951 ;	board/zbs_segmented_uk/../sem9010.c:332: if (!screenPrvRegWrite(0x04, 0xfc0000))
      0050DD 90 FB A1         [24] 1952 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      0050E0 74 04            [12] 1953 	mov	a,#0x04
      0050E2 F0               [24] 1954 	movx	@dptr,a
      0050E3 90 00 00         [24] 1955 	mov	dptr,#0x0000
      0050E6 75 F0 FC         [24] 1956 	mov	b,#0xfc
      0050E9 E4               [12] 1957 	clr	a
      0050EA 12 4A 1F         [24] 1958 	lcall	_screenPrvRegWriteGuts
                                   1959 ;	board/zbs_segmented_uk/../sem9010.c:333: return false;
      0050ED 40 01            [24] 1960 	jc	00108$
      0050EF 22               [24] 1961 	ret
      0050F0                       1962 00108$:
                                   1963 ;	board/zbs_segmented_uk/../sem9010.c:335: if (!screenPrvRegWrite(0x14, 0x440000))
      0050F0 90 FB A1         [24] 1964 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      0050F3 74 14            [12] 1965 	mov	a,#0x14
      0050F5 F0               [24] 1966 	movx	@dptr,a
      0050F6 90 00 00         [24] 1967 	mov	dptr,#0x0000
      0050F9 75 F0 44         [24] 1968 	mov	b,#0x44
      0050FC E4               [12] 1969 	clr	a
      0050FD 12 4A 1F         [24] 1970 	lcall	_screenPrvRegWriteGuts
                                   1971 ;	board/zbs_segmented_uk/../sem9010.c:336: return false;
      005100 40 01            [24] 1972 	jc	00110$
      005102 22               [24] 1973 	ret
      005103                       1974 00110$:
                                   1975 ;	board/zbs_segmented_uk/../sem9010.c:337: if (!screenPrvRegWrite(0x15, inverted ? 0x680001 : 0x860000))
      005103 30 16 0A         [24] 1976 	jnb	_epdSetup_PARM_1,00121$
      005106 7C 01            [12] 1977 	mov	r4,#0x01
      005108 7D 00            [12] 1978 	mov	r5,#0x00
      00510A 7E 68            [12] 1979 	mov	r6,#0x68
      00510C 7F 00            [12] 1980 	mov	r7,#0x00
      00510E 80 08            [24] 1981 	sjmp	00122$
      005110                       1982 00121$:
      005110 7C 00            [12] 1983 	mov	r4,#0x00
      005112 7D 00            [12] 1984 	mov	r5,#0x00
      005114 7E 86            [12] 1985 	mov	r6,#0x86
      005116 7F 00            [12] 1986 	mov	r7,#0x00
      005118                       1987 00122$:
      005118 90 FB A1         [24] 1988 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      00511B 74 15            [12] 1989 	mov	a,#0x15
      00511D F0               [24] 1990 	movx	@dptr,a
      00511E 8C 82            [24] 1991 	mov	dpl,r4
      005120 8D 83            [24] 1992 	mov	dph,r5
      005122 8E F0            [24] 1993 	mov	b,r6
      005124 EF               [12] 1994 	mov	a,r7
      005125 12 4A 1F         [24] 1995 	lcall	_screenPrvRegWriteGuts
                                   1996 ;	board/zbs_segmented_uk/../sem9010.c:338: return false;
      005128 40 01            [24] 1997 	jc	00112$
      00512A 22               [24] 1998 	ret
      00512B                       1999 00112$:
                                   2000 ;	board/zbs_segmented_uk/../sem9010.c:339: if (!screenPrvRegWrite(0x16, inverted ? 0x240000 : 0x040000))
      00512B 30 16 0A         [24] 2001 	jnb	_epdSetup_PARM_1,00123$
      00512E 7C 00            [12] 2002 	mov	r4,#0x00
      005130 7D 00            [12] 2003 	mov	r5,#0x00
      005132 7E 24            [12] 2004 	mov	r6,#0x24
      005134 7F 00            [12] 2005 	mov	r7,#0x00
      005136 80 08            [24] 2006 	sjmp	00124$
      005138                       2007 00123$:
      005138 7C 00            [12] 2008 	mov	r4,#0x00
      00513A 7D 00            [12] 2009 	mov	r5,#0x00
      00513C 7E 04            [12] 2010 	mov	r6,#0x04
      00513E 7F 00            [12] 2011 	mov	r7,#0x00
      005140                       2012 00124$:
      005140 90 FB A1         [24] 2013 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      005143 74 16            [12] 2014 	mov	a,#0x16
      005145 F0               [24] 2015 	movx	@dptr,a
      005146 8C 82            [24] 2016 	mov	dpl,r4
      005148 8D 83            [24] 2017 	mov	dph,r5
      00514A 8E F0            [24] 2018 	mov	b,r6
      00514C EF               [12] 2019 	mov	a,r7
      00514D 12 4A 1F         [24] 2020 	lcall	_screenPrvRegWriteGuts
                                   2021 ;	board/zbs_segmented_uk/../sem9010.c:340: return false;
      005150 40 01            [24] 2022 	jc	00114$
      005152 22               [24] 2023 	ret
      005153                       2024 00114$:
                                   2025 ;	board/zbs_segmented_uk/../sem9010.c:342: if (!screenPrvRegWrite(0x19, 0x082514))
      005153 90 FB A1         [24] 2026 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      005156 74 19            [12] 2027 	mov	a,#0x19
      005158 F0               [24] 2028 	movx	@dptr,a
      005159 90 25 14         [24] 2029 	mov	dptr,#0x2514
      00515C 75 F0 08         [24] 2030 	mov	b,#0x08
      00515F E4               [12] 2031 	clr	a
      005160 12 4A 1F         [24] 2032 	lcall	_screenPrvRegWriteGuts
                                   2033 ;	board/zbs_segmented_uk/../sem9010.c:343: return false;
      005163 40 01            [24] 2034 	jc	00116$
      005165 22               [24] 2035 	ret
      005166                       2036 00116$:
                                   2037 ;	board/zbs_segmented_uk/../sem9010.c:344: if (!screenPrvRegWrite(0x1a, 0xa02000))
      005166 90 FB A1         [24] 2038 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      005169 74 1A            [12] 2039 	mov	a,#0x1a
      00516B F0               [24] 2040 	movx	@dptr,a
      00516C 90 20 00         [24] 2041 	mov	dptr,#0x2000
      00516F 75 F0 A0         [24] 2042 	mov	b,#0xa0
      005172 E4               [12] 2043 	clr	a
      005173 12 4A 1F         [24] 2044 	lcall	_screenPrvRegWriteGuts
                                   2045 ;	board/zbs_segmented_uk/../sem9010.c:345: return false;
      005176 40 01            [24] 2046 	jc	00118$
      005178 22               [24] 2047 	ret
      005179                       2048 00118$:
                                   2049 ;	board/zbs_segmented_uk/../sem9010.c:346: memset(curEpdSegmentData, 0, sizeof(epdSegmentData));
      005179 90 FB DA         [24] 2050 	mov	dptr,#_memset_PARM_2
      00517C E4               [12] 2051 	clr	a
      00517D F0               [24] 2052 	movx	@dptr,a
      00517E 90 FB DB         [24] 2053 	mov	dptr,#_memset_PARM_3
      005181 74 0C            [12] 2054 	mov	a,#0x0c
      005183 F0               [24] 2055 	movx	@dptr,a
      005184 E4               [12] 2056 	clr	a
      005185 A3               [24] 2057 	inc	dptr
      005186 F0               [24] 2058 	movx	@dptr,a
      005187 90 FE 52         [24] 2059 	mov	dptr,#_curEpdSegmentData
      00518A 75 F0 00         [24] 2060 	mov	b,#0x00
      00518D 12 54 C7         [24] 2061 	lcall	_memset
                                   2062 ;	board/zbs_segmented_uk/../sem9010.c:347: return true;
      005190 D3               [12] 2063 	setb	c
                                   2064 ;	board/zbs_segmented_uk/../sem9010.c:348: }
      005191 22               [24] 2065 	ret
                                   2066 ;------------------------------------------------------------
                                   2067 ;Allocation info for local variables in function 'epdClear'
                                   2068 ;------------------------------------------------------------
                                   2069 ;	board/zbs_segmented_uk/../sem9010.c:349: void epdClear() {
                                   2070 ;	-----------------------------------------
                                   2071 ;	 function epdClear
                                   2072 ;	-----------------------------------------
      005192                       2073 _epdClear:
                                   2074 ;	board/zbs_segmented_uk/../sem9010.c:350: memset(epdSegmentData, 0, sizeof(epdSegmentData));
      005192 90 FB DA         [24] 2075 	mov	dptr,#_memset_PARM_2
      005195 E4               [12] 2076 	clr	a
      005196 F0               [24] 2077 	movx	@dptr,a
      005197 90 FB DB         [24] 2078 	mov	dptr,#_memset_PARM_3
      00519A 74 0C            [12] 2079 	mov	a,#0x0c
      00519C F0               [24] 2080 	movx	@dptr,a
      00519D E4               [12] 2081 	clr	a
      00519E A3               [24] 2082 	inc	dptr
      00519F F0               [24] 2083 	movx	@dptr,a
      0051A0 90 FE 5E         [24] 2084 	mov	dptr,#_epdSegmentData
      0051A3 75 F0 00         [24] 2085 	mov	b,#0x00
                                   2086 ;	board/zbs_segmented_uk/../sem9010.c:351: }
      0051A6 02 54 C7         [24] 2087 	ljmp	_memset
                                   2088 ;------------------------------------------------------------
                                   2089 ;Allocation info for local variables in function 'epdSetPos'
                                   2090 ;------------------------------------------------------------
                                   2091 ;p                         Allocated with name '_epdSetPos_p_65536_87'
                                   2092 ;------------------------------------------------------------
                                   2093 ;	board/zbs_segmented_uk/../sem9010.c:355: void epdSetPos(uint8_t p) {
                                   2094 ;	-----------------------------------------
                                   2095 ;	 function epdSetPos
                                   2096 ;	-----------------------------------------
      0051A9                       2097 _epdSetPos:
      0051A9 E5 82            [12] 2098 	mov	a,dpl
      0051AB 90 FB B1         [24] 2099 	mov	dptr,#_epdSetPos_p_65536_87
                                   2100 ;	board/zbs_segmented_uk/../sem9010.c:356: if (p >= sizeof(epdSegmentData)) {
      0051AE F0               [24] 2101 	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
      0051AF FF               [12] 2102 	mov	r7,a
      0051B0 BF 0C 00         [24] 2103 	cjne	r7,#0x0c,00109$
      0051B3                       2104 00109$:
      0051B3 40 05            [24] 2105 	jc	00102$
                                   2106 ;	board/zbs_segmented_uk/../sem9010.c:357: p = 0;
      0051B5 90 FB B1         [24] 2107 	mov	dptr,#_epdSetPos_p_65536_87
      0051B8 E4               [12] 2108 	clr	a
      0051B9 F0               [24] 2109 	movx	@dptr,a
      0051BA                       2110 00102$:
                                   2111 ;	board/zbs_segmented_uk/../sem9010.c:359: position = p;
      0051BA 90 FB B1         [24] 2112 	mov	dptr,#_epdSetPos_p_65536_87
      0051BD E0               [24] 2113 	movx	a,@dptr
      0051BE 90 FE 6A         [24] 2114 	mov	dptr,#_position
      0051C1 F0               [24] 2115 	movx	@dptr,a
                                   2116 ;	board/zbs_segmented_uk/../sem9010.c:360: }
      0051C2 22               [24] 2117 	ret
                                   2118 ;------------------------------------------------------------
                                   2119 ;Allocation info for local variables in function 'writeCharEPD'
                                   2120 ;------------------------------------------------------------
                                   2121 ;c                         Allocated with name '_writeCharEPD_c_65536_90'
                                   2122 ;------------------------------------------------------------
                                   2123 ;	board/zbs_segmented_uk/../sem9010.c:362: void writeCharEPD(char c) {
                                   2124 ;	-----------------------------------------
                                   2125 ;	 function writeCharEPD
                                   2126 ;	-----------------------------------------
      0051C3                       2127 _writeCharEPD:
      0051C3 E5 82            [12] 2128 	mov	a,dpl
      0051C5 90 FB B2         [24] 2129 	mov	dptr,#_writeCharEPD_c_65536_90
      0051C8 F0               [24] 2130 	movx	@dptr,a
                                   2131 ;	board/zbs_segmented_uk/../sem9010.c:363: writeDigitToBuffer(position, c);
      0051C9 90 FE 6A         [24] 2132 	mov	dptr,#_position
      0051CC E0               [24] 2133 	movx	a,@dptr
      0051CD FF               [12] 2134 	mov	r7,a
      0051CE 90 FB B2         [24] 2135 	mov	dptr,#_writeCharEPD_c_65536_90
      0051D1 E0               [24] 2136 	movx	a,@dptr
      0051D2 90 FB A9         [24] 2137 	mov	dptr,#_writeDigitToBuffer_PARM_2
      0051D5 F0               [24] 2138 	movx	@dptr,a
      0051D6 8F 82            [24] 2139 	mov	dpl,r7
      0051D8 12 4B EC         [24] 2140 	lcall	_writeDigitToBuffer
                                   2141 ;	board/zbs_segmented_uk/../sem9010.c:364: position++;
      0051DB 90 FE 6A         [24] 2142 	mov	dptr,#_position
      0051DE E0               [24] 2143 	movx	a,@dptr
      0051DF 24 01            [12] 2144 	add	a,#0x01
                                   2145 ;	board/zbs_segmented_uk/../sem9010.c:365: if (position >= sizeof(epdSegmentData)) {
      0051E1 F0               [24] 2146 	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
      0051E2 FF               [12] 2147 	mov	r7,a
      0051E3 BF 0C 00         [24] 2148 	cjne	r7,#0x0c,00109$
      0051E6                       2149 00109$:
      0051E6 40 05            [24] 2150 	jc	00103$
                                   2151 ;	board/zbs_segmented_uk/../sem9010.c:366: position = 0;
      0051E8 90 FE 6A         [24] 2152 	mov	dptr,#_position
      0051EB E4               [12] 2153 	clr	a
      0051EC F0               [24] 2154 	movx	@dptr,a
      0051ED                       2155 00103$:
                                   2156 ;	board/zbs_segmented_uk/../sem9010.c:368: }
      0051ED 22               [24] 2157 	ret
                                   2158 ;------------------------------------------------------------
                                   2159 ;Allocation info for local variables in function 'epdPrint'
                                   2160 ;------------------------------------------------------------
                                   2161 ;pos                       Allocated to stack - sp -2
                                   2162 ;fmt                       Allocated to stack - sp -4
                                   2163 ;vl                        Allocated to registers r7 
                                   2164 ;p                         Allocated to registers 
                                   2165 ;buffer                    Allocated with name '_epdPrint_buffer_65536_94'
                                   2166 ;------------------------------------------------------------
                                   2167 ;	board/zbs_segmented_uk/../sem9010.c:370: void epdPrint(uint8_t pos, const char __code *fmt, ...) __reentrant {
                                   2168 ;	-----------------------------------------
                                   2169 ;	 function epdPrint
                                   2170 ;	-----------------------------------------
      0051EE                       2171 _epdPrint:
                                   2172 ;	board/zbs_segmented_uk/../sem9010.c:373: va_start(vl, fmt);
      0051EE E5 81            [12] 2173 	mov	a,sp
      0051F0 24 FC            [12] 2174 	add	a,#0xfc
      0051F2 FF               [12] 2175 	mov	r7,a
                                   2176 ;	board/zbs_segmented_uk/../sem9010.c:374: spr(buffer, fmt, vl);
      0051F3 7E 00            [12] 2177 	mov	r6,#0x00
      0051F5 7D 40            [12] 2178 	mov	r5,#0x40
      0051F7 C0 07            [24] 2179 	push	ar7
      0051F9 C0 06            [24] 2180 	push	ar6
      0051FB C0 05            [24] 2181 	push	ar5
      0051FD E5 81            [12] 2182 	mov	a,sp
      0051FF 24 F9            [12] 2183 	add	a,#0xf9
      005201 F8               [12] 2184 	mov	r0,a
      005202 E6               [12] 2185 	mov	a,@r0
      005203 C0 E0            [24] 2186 	push	acc
      005205 08               [12] 2187 	inc	r0
      005206 E6               [12] 2188 	mov	a,@r0
      005207 C0 E0            [24] 2189 	push	acc
      005209 74 B3            [12] 2190 	mov	a,#_epdPrint_buffer_65536_94
      00520B C0 E0            [24] 2191 	push	acc
      00520D 74 FB            [12] 2192 	mov	a,#(_epdPrint_buffer_65536_94 >> 8)
      00520F C0 E0            [24] 2193 	push	acc
      005211 12 40 02         [24] 2194 	lcall	_spr
      005214 E5 81            [12] 2195 	mov	a,sp
      005216 24 F9            [12] 2196 	add	a,#0xf9
      005218 F5 81            [12] 2197 	mov	sp,a
                                   2198 ;	board/zbs_segmented_uk/../sem9010.c:375: char *p = buffer;
      00521A 7D B3            [12] 2199 	mov	r5,#_epdPrint_buffer_65536_94
      00521C 7E FB            [12] 2200 	mov	r6,#(_epdPrint_buffer_65536_94 >> 8)
      00521E 7F 00            [12] 2201 	mov	r7,#0x00
                                   2202 ;	board/zbs_segmented_uk/../sem9010.c:376: while (*p && pos < sizeof(epdSegmentData)) {
      005220 A8 81            [24] 2203 	mov	r0,sp
      005222 18               [12] 2204 	dec	r0
      005223 18               [12] 2205 	dec	r0
      005224 86 04            [24] 2206 	mov	ar4,@r0
      005226                       2207 00102$:
      005226 8D 82            [24] 2208 	mov	dpl,r5
      005228 8E 83            [24] 2209 	mov	dph,r6
      00522A 8F F0            [24] 2210 	mov	b,r7
      00522C 12 57 74         [24] 2211 	lcall	__gptrget
      00522F FB               [12] 2212 	mov	r3,a
      005230 60 2F            [24] 2213 	jz	00105$
      005232 BC 0C 00         [24] 2214 	cjne	r4,#0x0c,00121$
      005235                       2215 00121$:
      005235 50 2A            [24] 2216 	jnc	00105$
                                   2217 ;	board/zbs_segmented_uk/../sem9010.c:377: writeDigitToBuffer(pos++, *p++);
      005237 8C 02            [24] 2218 	mov	ar2,r4
      005239 0C               [12] 2219 	inc	r4
      00523A A8 81            [24] 2220 	mov	r0,sp
      00523C 18               [12] 2221 	dec	r0
      00523D 18               [12] 2222 	dec	r0
      00523E A6 04            [24] 2223 	mov	@r0,ar4
      005240 90 FB A9         [24] 2224 	mov	dptr,#_writeDigitToBuffer_PARM_2
      005243 EB               [12] 2225 	mov	a,r3
      005244 F0               [24] 2226 	movx	@dptr,a
      005245 0D               [12] 2227 	inc	r5
      005246 BD 00 01         [24] 2228 	cjne	r5,#0x00,00123$
      005249 0E               [12] 2229 	inc	r6
      00524A                       2230 00123$:
      00524A 8A 82            [24] 2231 	mov	dpl,r2
      00524C C0 07            [24] 2232 	push	ar7
      00524E C0 06            [24] 2233 	push	ar6
      005250 C0 05            [24] 2234 	push	ar5
      005252 C0 04            [24] 2235 	push	ar4
      005254 12 4B EC         [24] 2236 	lcall	_writeDigitToBuffer
      005257 D0 04            [24] 2237 	pop	ar4
      005259 D0 05            [24] 2238 	pop	ar5
      00525B D0 06            [24] 2239 	pop	ar6
      00525D D0 07            [24] 2240 	pop	ar7
                                   2241 ;	board/zbs_segmented_uk/../sem9010.c:379: va_end(vl);
      00525F 80 C5            [24] 2242 	sjmp	00102$
      005261                       2243 00105$:
                                   2244 ;	board/zbs_segmented_uk/../sem9010.c:380: }
      005261 22               [24] 2245 	ret
                                   2246 ;------------------------------------------------------------
                                   2247 ;Allocation info for local variables in function 'is_drawing'
                                   2248 ;------------------------------------------------------------
                                   2249 ;	board/zbs_segmented_uk/../sem9010.c:381: uint8_t is_drawing() {
                                   2250 ;	-----------------------------------------
                                   2251 ;	 function is_drawing
                                   2252 ;	-----------------------------------------
      005262                       2253 _is_drawing:
                                   2254 ;	board/zbs_segmented_uk/../sem9010.c:382: if (display_is_drawing) {
      005262 30 13 40         [24] 2255 	jnb	_display_is_drawing,00105$
                                   2256 ;	board/zbs_segmented_uk/../sem9010.c:383: if (!P2_0 || (timerGet() - screen_start_time > (TIMER_TICKS_PER_SECOND * 3))) {
      005265 30 A0 33         [24] 2257 	jnb	_P2_0,00101$
      005268 12 2E 10         [24] 2258 	lcall	_timerGet
      00526B AC 82            [24] 2259 	mov	r4,dpl
      00526D AD 83            [24] 2260 	mov	r5,dph
      00526F AE F0            [24] 2261 	mov	r6,b
      005271 FF               [12] 2262 	mov	r7,a
      005272 90 FE 4E         [24] 2263 	mov	dptr,#_screen_start_time
      005275 E0               [24] 2264 	movx	a,@dptr
      005276 F8               [12] 2265 	mov	r0,a
      005277 A3               [24] 2266 	inc	dptr
      005278 E0               [24] 2267 	movx	a,@dptr
      005279 F9               [12] 2268 	mov	r1,a
      00527A A3               [24] 2269 	inc	dptr
      00527B E0               [24] 2270 	movx	a,@dptr
      00527C FA               [12] 2271 	mov	r2,a
      00527D A3               [24] 2272 	inc	dptr
      00527E E0               [24] 2273 	movx	a,@dptr
      00527F FB               [12] 2274 	mov	r3,a
      005280 EC               [12] 2275 	mov	a,r4
      005281 C3               [12] 2276 	clr	c
      005282 98               [12] 2277 	subb	a,r0
      005283 FC               [12] 2278 	mov	r4,a
      005284 ED               [12] 2279 	mov	a,r5
      005285 99               [12] 2280 	subb	a,r1
      005286 FD               [12] 2281 	mov	r5,a
      005287 EE               [12] 2282 	mov	a,r6
      005288 9A               [12] 2283 	subb	a,r2
      005289 FE               [12] 2284 	mov	r6,a
      00528A EF               [12] 2285 	mov	a,r7
      00528B 9B               [12] 2286 	subb	a,r3
      00528C FF               [12] 2287 	mov	r7,a
      00528D C3               [12] 2288 	clr	c
      00528E 74 FF            [12] 2289 	mov	a,#0xff
      005290 9C               [12] 2290 	subb	a,r4
      005291 74 08            [12] 2291 	mov	a,#0x08
      005293 9D               [12] 2292 	subb	a,r5
      005294 74 3D            [12] 2293 	mov	a,#0x3d
      005296 9E               [12] 2294 	subb	a,r6
      005297 E4               [12] 2295 	clr	a
      005298 9F               [12] 2296 	subb	a,r7
      005299 50 06            [24] 2297 	jnc	00102$
      00529B                       2298 00101$:
                                   2299 ;	board/zbs_segmented_uk/../sem9010.c:384: display_is_drawing = 0;
                                   2300 ;	assignBit
      00529B C2 13            [12] 2301 	clr	_display_is_drawing
                                   2302 ;	board/zbs_segmented_uk/../sem9010.c:385: return 0;
      00529D 75 82 00         [24] 2303 	mov	dpl,#0x00
      0052A0 22               [24] 2304 	ret
      0052A1                       2305 00102$:
                                   2306 ;	board/zbs_segmented_uk/../sem9010.c:387: return 1;
      0052A1 75 82 01         [24] 2307 	mov	dpl,#0x01
      0052A4 22               [24] 2308 	ret
      0052A5                       2309 00105$:
                                   2310 ;	board/zbs_segmented_uk/../sem9010.c:389: return 0;
      0052A5 75 82 00         [24] 2311 	mov	dpl,#0x00
                                   2312 ;	board/zbs_segmented_uk/../sem9010.c:390: }
      0052A8 22               [24] 2313 	ret
                                   2314 	.area CSEG    (CODE)
                                   2315 	.area CONST   (CODE)
      0059E0                       2316 _charDecode_numbers_65536_61:
      0059E0 F6                    2317 	.db #0xf6	; 246
      0059E1 C0                    2318 	.db #0xc0	; 192
      0059E2 6E                    2319 	.db #0x6e	; 110	'n'
      0059E3 EA                    2320 	.db #0xea	; 234
      0059E4 D8                    2321 	.db #0xd8	; 216
      0059E5 BA                    2322 	.db #0xba	; 186
      0059E6 BE                    2323 	.db #0xbe	; 190
      0059E7 E0                    2324 	.db #0xe0	; 224
      0059E8 FE                    2325 	.db #0xfe	; 254
      0059E9 FA                    2326 	.db #0xfa	; 250
      0059EA                       2327 _charDecode_lowercase_65536_61:
      0059EA FC                    2328 	.db #0xfc	; 252
      0059EB 9E                    2329 	.db #0x9e	; 158
      0059EC 0E                    2330 	.db #0x0e	; 14
      0059ED CE                    2331 	.db #0xce	; 206
      0059EE 3E                    2332 	.db #0x3e	; 62
      0059EF 3C                    2333 	.db #0x3c	; 60
      0059F0 FA                    2334 	.db #0xfa	; 250
      0059F1 9C                    2335 	.db #0x9c	; 156
      0059F2 80                    2336 	.db #0x80	; 128
      0059F3 C2                    2337 	.db #0xc2	; 194
      0059F4 1C                    2338 	.db #0x1c	; 28
      0059F5 06                    2339 	.db #0x06	; 6
      0059F6 AC                    2340 	.db #0xac	; 172
      0059F7 8C                    2341 	.db #0x8c	; 140
      0059F8 8E                    2342 	.db #0x8e	; 142
      0059F9 7C                    2343 	.db #0x7c	; 124
      0059FA F8                    2344 	.db #0xf8	; 248
      0059FB 0C                    2345 	.db #0x0c	; 12
      0059FC BA                    2346 	.db #0xba	; 186
      0059FD 1E                    2347 	.db #0x1e	; 30
      0059FE 86                    2348 	.db #0x86	; 134
      0059FF 96                    2349 	.db #0x96	; 150
      005A00 5A                    2350 	.db #0x5a	; 90	'Z'
      005A01 88                    2351 	.db #0x88	; 136
      005A02 DA                    2352 	.db #0xda	; 218
      005A03 6E                    2353 	.db #0x6e	; 110	'n'
      005A04                       2354 _charDecode_uppercase_65536_61:
      005A04 FC                    2355 	.db #0xfc	; 252
      005A05 9E                    2356 	.db #0x9e	; 158
      005A06 36                    2357 	.db #0x36	; 54	'6'
      005A07 CE                    2358 	.db #0xce	; 206
      005A08 3E                    2359 	.db #0x3e	; 62
      005A09 3C                    2360 	.db #0x3c	; 60
      005A0A B6                    2361 	.db #0xb6	; 182
      005A0B DC                    2362 	.db #0xdc	; 220
      005A0C C0                    2363 	.db #0xc0	; 192
      005A0D C2                    2364 	.db #0xc2	; 194
      005A0E 1C                    2365 	.db #0x1c	; 28
      005A0F 16                    2366 	.db #0x16	; 22
      005A10 AC                    2367 	.db #0xac	; 172
      005A11 F4                    2368 	.db #0xf4	; 244
      005A12 F6                    2369 	.db #0xf6	; 246
      005A13 7C                    2370 	.db #0x7c	; 124
      005A14 F8                    2371 	.db #0xf8	; 248
      005A15 0C                    2372 	.db #0x0c	; 12
      005A16 BA                    2373 	.db #0xba	; 186
      005A17 1E                    2374 	.db #0x1e	; 30
      005A18 D6                    2375 	.db #0xd6	; 214
      005A19 96                    2376 	.db #0x96	; 150
      005A1A 5A                    2377 	.db #0x5a	; 90	'Z'
      005A1B 88                    2378 	.db #0x88	; 136
      005A1C DA                    2379 	.db #0xda	; 218
      005A1D 6E                    2380 	.db #0x6e	; 110	'n'
                                   2381 	.area XINIT   (CODE)
      005C75                       2382 __xinit__screen_start_time:
      005C75 00 00 00 00           2383 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      005C79                       2384 __xinit__curEpdSegmentData:
      005C79 00                    2385 	.db #0x00	; 0
      005C7A 00                    2386 	.db 0x00
      005C7B 00                    2387 	.db 0x00
      005C7C 00                    2388 	.db 0x00
      005C7D 00                    2389 	.db 0x00
      005C7E 00                    2390 	.db 0x00
      005C7F 00                    2391 	.db 0x00
      005C80 00                    2392 	.db 0x00
      005C81 00                    2393 	.db 0x00
      005C82 00                    2394 	.db 0x00
      005C83 00                    2395 	.db 0x00
      005C84 00                    2396 	.db 0x00
      005C85                       2397 __xinit__epdSegmentData:
      005C85 00                    2398 	.db #0x00	; 0
      005C86 00                    2399 	.db 0x00
      005C87 00                    2400 	.db 0x00
      005C88 00                    2401 	.db 0x00
      005C89 00                    2402 	.db 0x00
      005C8A 00                    2403 	.db 0x00
      005C8B 00                    2404 	.db 0x00
      005C8C 00                    2405 	.db 0x00
      005C8D 00                    2406 	.db 0x00
      005C8E 00                    2407 	.db 0x00
      005C8F 00                    2408 	.db 0x00
      005C90 00                    2409 	.db 0x00
      005C91                       2410 __xinit__position:
      005C91 00                    2411 	.db #0x00	; 0
                                   2412 	.area CABS    (ABS,CODE)
