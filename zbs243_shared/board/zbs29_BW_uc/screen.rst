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
                                     11 	.globl _setWindowXY
                                     12 	.globl _wdtSetResetVal
                                     13 	.globl _wdtOn
                                     14 	.globl _timerDelay
                                     15 	.globl _timerGet
                                     16 	.globl _sleepForMsec
                                     17 	.globl _spiTXByte
                                     18 	.globl _spiByte
                                     19 	.globl _barcodeNextBar
                                     20 	.globl _barcodeIsDone
                                     21 	.globl _memset
                                     22 	.globl _UART_TXE
                                     23 	.globl _UART_RXF
                                     24 	.globl _IEN_EA
                                     25 	.globl _IEN_RF2
                                     26 	.globl _IEN_RF1
                                     27 	.globl _IEN_TMR1
                                     28 	.globl _IEN_TMR0
                                     29 	.globl _IEN_UART0
                                     30 	.globl _P2_7
                                     31 	.globl _P2_6
                                     32 	.globl _P2_5
                                     33 	.globl _P2_4
                                     34 	.globl _P2_3
                                     35 	.globl _P2_2
                                     36 	.globl _P2_1
                                     37 	.globl _P2_0
                                     38 	.globl _P1_7
                                     39 	.globl _P1_6
                                     40 	.globl _P1_5
                                     41 	.globl _P1_4
                                     42 	.globl _P1_3
                                     43 	.globl _P1_2
                                     44 	.globl _P1_1
                                     45 	.globl _P1_0
                                     46 	.globl _P0_7
                                     47 	.globl _P0_6
                                     48 	.globl _P0_5
                                     49 	.globl _P0_4
                                     50 	.globl _P0_3
                                     51 	.globl _P0_2
                                     52 	.globl _P0_1
                                     53 	.globl _P0_0
                                     54 	.globl _CFGPAGE
                                     55 	.globl _TCON2
                                     56 	.globl _SETTINGS
                                     57 	.globl _TRIGGER
                                     58 	.globl _UNK_C1
                                     59 	.globl _RADIO_GOTLEN
                                     60 	.globl _RADIO_INITSEQ3
                                     61 	.globl _RADIO_RXLEN
                                     62 	.globl _RADIO_RXPTRH
                                     63 	.globl _RADIO_RXPTRL
                                     64 	.globl _RADIO_INITSEQ5
                                     65 	.globl _RADIO_INITSEQ4
                                     66 	.globl _RADIO_INITSEQ0
                                     67 	.globl _RADIO_TXLEN
                                     68 	.globl _RADIO_INITSEQ2
                                     69 	.globl _RADIO_INITSEQ1
                                     70 	.globl _RADIO_TXPTRH
                                     71 	.globl _RADIO_TXPTRL
                                     72 	.globl _TEMPCAL6
                                     73 	.globl _TEMPCAL5
                                     74 	.globl _TEMPCAL4
                                     75 	.globl _TEMPCAL3
                                     76 	.globl _TEMPRETL
                                     77 	.globl _TEMPRETH
                                     78 	.globl _TEMPCFG
                                     79 	.globl _TEMPCAL2
                                     80 	.globl _TEMPCAL1
                                     81 	.globl _FWRTHREE
                                     82 	.globl _FWRLENH
                                     83 	.globl _FWRLENL
                                     84 	.globl _FWRDSTH
                                     85 	.globl _FWRDSTL
                                     86 	.globl _FWRSRCH
                                     87 	.globl _FWRSRCL
                                     88 	.globl _FPGNO
                                     89 	.globl _T1
                                     90 	.globl _T0
                                     91 	.globl _TH1
                                     92 	.globl _TH0
                                     93 	.globl _TL1
                                     94 	.globl _TL0
                                     95 	.globl _TMOD
                                     96 	.globl _TCON
                                     97 	.globl _UARTBRGH
                                     98 	.globl _UARTBRGL
                                     99 	.globl _UARTBUF
                                    100 	.globl _UARTSTA
                                    101 	.globl _I2CUNKNOWN
                                    102 	.globl _I2CSPEED
                                    103 	.globl _I2CCTL
                                    104 	.globl _I2CBUF
                                    105 	.globl _I2CSTATE
                                    106 	.globl _SPIRX
                                    107 	.globl _SPITX
                                    108 	.globl _SPIENA
                                    109 	.globl _SPICFG
                                    110 	.globl _SPIUNKNOWN
                                    111 	.globl _WDTCONF
                                    112 	.globl _WDTRSTVALH
                                    113 	.globl _WDTRSTVALM
                                    114 	.globl _WDTRSTVALL
                                    115 	.globl _WDTPET
                                    116 	.globl _WDTENA
                                    117 	.globl _RESET
                                    118 	.globl _CLKEN
                                    119 	.globl _CLKSPEED
                                    120 	.globl _IEN1
                                    121 	.globl _IEN0
                                    122 	.globl _XPAGE
                                    123 	.globl _P2PULL
                                    124 	.globl _P1PULL
                                    125 	.globl _P0PULL
                                    126 	.globl _P2DIR
                                    127 	.globl _P1DIR
                                    128 	.globl _P0DIR
                                    129 	.globl _P2FUNC
                                    130 	.globl _P1FUNC
                                    131 	.globl _P0FUNC
                                    132 	.globl _P2CHSTA
                                    133 	.globl _P1CHSTA
                                    134 	.globl _P0CHSTA
                                    135 	.globl _P2INTEN
                                    136 	.globl _P1INTEN
                                    137 	.globl _P0INTEN
                                    138 	.globl _P2LVLSEL
                                    139 	.globl _P1LVLSEL
                                    140 	.globl _P0LVLSEL
                                    141 	.globl _P2
                                    142 	.globl _P1
                                    143 	.globl _P0
                                    144 	.globl _PERFMON4
                                    145 	.globl _PCL
                                    146 	.globl _PCH
                                    147 	.globl _PERFMON1
                                    148 	.globl _PERFMON0
                                    149 	.globl _PCON
                                    150 	.globl _DPS
                                    151 	.globl _DPH1
                                    152 	.globl _DPL1
                                    153 	.globl _DPH
                                    154 	.globl _DPL
                                    155 	.globl _ACC
                                    156 	.globl _B
                                    157 	.globl _waveform7
                                    158 	.globl _waveform10
                                    159 	.globl _epdGPIOActive
                                    160 	.globl _epdPrintBegin_PARM_5
                                    161 	.globl _epdPrintBegin_PARM_4
                                    162 	.globl _epdPrintBegin_PARM_3
                                    163 	.globl _epdPrintBegin_PARM_2
                                    164 	.globl _printBarcode_PARM_3
                                    165 	.globl _printBarcode_PARM_2
                                    166 	.globl _setColorMode_PARM_2
                                    167 	.globl _setWindowXY_PARM_4
                                    168 	.globl _setWindowXY_PARM_3
                                    169 	.globl _setWindowXY_PARM_2
                                    170 	.globl _waveformbuffer
                                    171 	.globl _epdConfigGPIO
                                    172 	.globl _epdEnterSleep
                                    173 	.globl _epdSetup
                                    174 	.globl _epdGetBattery
                                    175 	.globl _selectLUT
                                    176 	.globl _setColorMode
                                    177 	.globl _clearScreen
                                    178 	.globl _draw
                                    179 	.globl _drawNoWait
                                    180 	.globl _drawWithSleep
                                    181 	.globl _epdWaitRdy
                                    182 	.globl _beginFullscreenImage
                                    183 	.globl _beginWriteFramebuffer
                                    184 	.globl _endWriteFramebuffer
                                    185 	.globl _loadRawBitmap
                                    186 	.globl _printBarcode
                                    187 	.globl _writeCharEPD
                                    188 	.globl _epdPrintBegin
                                    189 	.globl _epdPrintEnd
                                    190 ;--------------------------------------------------------
                                    191 ; special function registers
                                    192 ;--------------------------------------------------------
                                    193 	.area RSEG    (ABS,DATA)
      000000                        194 	.org 0x0000
                           0000F0   195 _B	=	0x00f0
                           0000E0   196 _ACC	=	0x00e0
                           000082   197 _DPL	=	0x0082
                           000083   198 _DPH	=	0x0083
                           000084   199 _DPL1	=	0x0084
                           000085   200 _DPH1	=	0x0085
                           000092   201 _DPS	=	0x0092
                           000087   202 _PCON	=	0x0087
                           0000B2   203 _PERFMON0	=	0x00b2
                           0000B3   204 _PERFMON1	=	0x00b3
                           0000B4   205 _PCH	=	0x00b4
                           0000B5   206 _PCL	=	0x00b5
                           0000B6   207 _PERFMON4	=	0x00b6
                           000080   208 _P0	=	0x0080
                           000090   209 _P1	=	0x0090
                           0000A0   210 _P2	=	0x00a0
                           0000A3   211 _P0LVLSEL	=	0x00a3
                           0000A4   212 _P1LVLSEL	=	0x00a4
                           0000A5   213 _P2LVLSEL	=	0x00a5
                           0000A6   214 _P0INTEN	=	0x00a6
                           0000A7   215 _P1INTEN	=	0x00a7
                           0000A9   216 _P2INTEN	=	0x00a9
                           0000AA   217 _P0CHSTA	=	0x00aa
                           0000AB   218 _P1CHSTA	=	0x00ab
                           0000AC   219 _P2CHSTA	=	0x00ac
                           0000AD   220 _P0FUNC	=	0x00ad
                           0000AE   221 _P1FUNC	=	0x00ae
                           0000AF   222 _P2FUNC	=	0x00af
                           0000B9   223 _P0DIR	=	0x00b9
                           0000BA   224 _P1DIR	=	0x00ba
                           0000BB   225 _P2DIR	=	0x00bb
                           0000BC   226 _P0PULL	=	0x00bc
                           0000BD   227 _P1PULL	=	0x00bd
                           0000BE   228 _P2PULL	=	0x00be
                           0000A0   229 _XPAGE	=	0x00a0
                           0000A8   230 _IEN0	=	0x00a8
                           0000A1   231 _IEN1	=	0x00a1
                           00008E   232 _CLKSPEED	=	0x008e
                           0000B7   233 _CLKEN	=	0x00b7
                           00008F   234 _RESET	=	0x008f
                           0000BA   235 _WDTENA	=	0x00ba
                           0000BB   236 _WDTPET	=	0x00bb
                           0000BC   237 _WDTRSTVALL	=	0x00bc
                           0000BD   238 _WDTRSTVALM	=	0x00bd
                           0000BE   239 _WDTRSTVALH	=	0x00be
                           0000BF   240 _WDTCONF	=	0x00bf
                           0000EB   241 _SPIUNKNOWN	=	0x00eb
                           0000EC   242 _SPICFG	=	0x00ec
                           0000ED   243 _SPIENA	=	0x00ed
                           0000EE   244 _SPITX	=	0x00ee
                           0000EF   245 _SPIRX	=	0x00ef
                           000091   246 _I2CSTATE	=	0x0091
                           000094   247 _I2CBUF	=	0x0094
                           000095   248 _I2CCTL	=	0x0095
                           000096   249 _I2CSPEED	=	0x0096
                           0000A2   250 _I2CUNKNOWN	=	0x00a2
                           000098   251 _UARTSTA	=	0x0098
                           000099   252 _UARTBUF	=	0x0099
                           00009A   253 _UARTBRGL	=	0x009a
                           00009B   254 _UARTBRGH	=	0x009b
                           000088   255 _TCON	=	0x0088
                           000089   256 _TMOD	=	0x0089
                           00008A   257 _TL0	=	0x008a
                           00008B   258 _TL1	=	0x008b
                           00008C   259 _TH0	=	0x008c
                           00008D   260 _TH1	=	0x008d
                           008C8A   261 _T0	=	0x8c8a
                           008D8B   262 _T1	=	0x8d8b
                           0000D8   263 _FPGNO	=	0x00d8
                           0000D9   264 _FWRSRCL	=	0x00d9
                           0000DA   265 _FWRSRCH	=	0x00da
                           0000DB   266 _FWRDSTL	=	0x00db
                           0000DC   267 _FWRDSTH	=	0x00dc
                           0000DD   268 _FWRLENL	=	0x00dd
                           0000DE   269 _FWRLENH	=	0x00de
                           0000DF   270 _FWRTHREE	=	0x00df
                           0000E6   271 _TEMPCAL1	=	0x00e6
                           0000E7   272 _TEMPCAL2	=	0x00e7
                           0000F7   273 _TEMPCFG	=	0x00f7
                           0000F8   274 _TEMPRETH	=	0x00f8
                           0000F9   275 _TEMPRETL	=	0x00f9
                           0000FB   276 _TEMPCAL3	=	0x00fb
                           0000FC   277 _TEMPCAL4	=	0x00fc
                           0000FD   278 _TEMPCAL5	=	0x00fd
                           0000FE   279 _TEMPCAL6	=	0x00fe
                           0000C9   280 _RADIO_TXPTRL	=	0x00c9
                           0000CA   281 _RADIO_TXPTRH	=	0x00ca
                           0000CB   282 _RADIO_INITSEQ1	=	0x00cb
                           0000CC   283 _RADIO_INITSEQ2	=	0x00cc
                           0000CD   284 _RADIO_TXLEN	=	0x00cd
                           0000CE   285 _RADIO_INITSEQ0	=	0x00ce
                           0000D1   286 _RADIO_INITSEQ4	=	0x00d1
                           0000D2   287 _RADIO_INITSEQ5	=	0x00d2
                           0000D3   288 _RADIO_RXPTRL	=	0x00d3
                           0000D4   289 _RADIO_RXPTRH	=	0x00d4
                           0000D5   290 _RADIO_RXLEN	=	0x00d5
                           0000D6   291 _RADIO_INITSEQ3	=	0x00d6
                           0000FA   292 _RADIO_GOTLEN	=	0x00fa
                           0000C1   293 _UNK_C1	=	0x00c1
                           0000D7   294 _TRIGGER	=	0x00d7
                           0000C7   295 _SETTINGS	=	0x00c7
                           0000CF   296 _TCON2	=	0x00cf
                           0000FF   297 _CFGPAGE	=	0x00ff
                                    298 ;--------------------------------------------------------
                                    299 ; special function bits
                                    300 ;--------------------------------------------------------
                                    301 	.area RSEG    (ABS,DATA)
      000000                        302 	.org 0x0000
                           000080   303 _P0_0	=	0x0080
                           000081   304 _P0_1	=	0x0081
                           000082   305 _P0_2	=	0x0082
                           000083   306 _P0_3	=	0x0083
                           000084   307 _P0_4	=	0x0084
                           000085   308 _P0_5	=	0x0085
                           000086   309 _P0_6	=	0x0086
                           000087   310 _P0_7	=	0x0087
                           000090   311 _P1_0	=	0x0090
                           000091   312 _P1_1	=	0x0091
                           000092   313 _P1_2	=	0x0092
                           000093   314 _P1_3	=	0x0093
                           000094   315 _P1_4	=	0x0094
                           000095   316 _P1_5	=	0x0095
                           000096   317 _P1_6	=	0x0096
                           000097   318 _P1_7	=	0x0097
                           0000A0   319 _P2_0	=	0x00a0
                           0000A1   320 _P2_1	=	0x00a1
                           0000A2   321 _P2_2	=	0x00a2
                           0000A3   322 _P2_3	=	0x00a3
                           0000A4   323 _P2_4	=	0x00a4
                           0000A5   324 _P2_5	=	0x00a5
                           0000A6   325 _P2_6	=	0x00a6
                           0000A7   326 _P2_7	=	0x00a7
                           0000A8   327 _IEN_UART0	=	0x00a8
                           0000A9   328 _IEN_TMR0	=	0x00a9
                           0000AB   329 _IEN_TMR1	=	0x00ab
                           0000AC   330 _IEN_RF1	=	0x00ac
                           0000AD   331 _IEN_RF2	=	0x00ad
                           0000AF   332 _IEN_EA	=	0x00af
                           000098   333 _UART_RXF	=	0x0098
                           000099   334 _UART_TXE	=	0x0099
                                    335 ;--------------------------------------------------------
                                    336 ; overlayable register banks
                                    337 ;--------------------------------------------------------
                                    338 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        339 	.ds 8
                                    340 ;--------------------------------------------------------
                                    341 ; overlayable bit register bank
                                    342 ;--------------------------------------------------------
                                    343 	.area BIT_BANK	(REL,OVR,DATA)
      000023                        344 bits:
      000023                        345 	.ds 1
                           008000   346 	b0 = bits[0]
                           008100   347 	b1 = bits[1]
                           008200   348 	b2 = bits[2]
                           008300   349 	b3 = bits[3]
                           008400   350 	b4 = bits[4]
                           008500   351 	b5 = bits[5]
                           008600   352 	b6 = bits[6]
                           008700   353 	b7 = bits[7]
                                    354 ;--------------------------------------------------------
                                    355 ; internal ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area DSEG    (DATA)
      000019                        358 _epdBusyWait_sloc0_1_0:
      000019                        359 	.ds 4
                                    360 ;--------------------------------------------------------
                                    361 ; overlayable items in internal ram
                                    362 ;--------------------------------------------------------
                                    363 ;--------------------------------------------------------
                                    364 ; indirectly addressable internal ram data
                                    365 ;--------------------------------------------------------
                                    366 	.area ISEG    (DATA)
                           000000   367 _R0	=	0x0000
                           000001   368 _R1	=	0x0001
                           000002   369 _R2	=	0x0002
                           000003   370 _R3	=	0x0003
                           000004   371 _R4	=	0x0004
                           000005   372 _R5	=	0x0005
                           000006   373 _R6	=	0x0006
                           000007   374 _R7	=	0x0007
                                    375 ;--------------------------------------------------------
                                    376 ; absolute internal ram data
                                    377 ;--------------------------------------------------------
                                    378 	.area IABS    (ABS,DATA)
                                    379 	.area IABS    (ABS,DATA)
                                    380 ;--------------------------------------------------------
                                    381 ; bit data
                                    382 ;--------------------------------------------------------
                                    383 	.area BSEG    (BIT)
                                    384 ;--------------------------------------------------------
                                    385 ; paged external ram data
                                    386 ;--------------------------------------------------------
                                    387 	.area PSEG    (PAG,XDATA)
                                    388 ;--------------------------------------------------------
                                    389 ; external ram data
                                    390 ;--------------------------------------------------------
                                    391 	.area XSEG    (XDATA)
                           00DF48   392 _RADIO_command	=	0xdf48
                           00DF70   393 _RADIO_calibration_70	=	0xdf70
                           00DF71   394 _RADIO_calibration_71	=	0xdf71
                           00DF80   395 _RADIO_FLAGS	=	0xdf80
                           00DF81   396 _RADIO_calibration_81	=	0xdf81
                           00DF83   397 _RADIO_unk_83	=	0xdf83
                           00DF84   398 _RADIO_currentRSSI	=	0xdf84
                           00DF86   399 _RADIO_calibration_86	=	0xdf86
                           00DF88   400 _RADIO_ownMac_7	=	0xdf88
                           00DF89   401 _RADIO_ownMac_6	=	0xdf89
                           00DF8A   402 _RADIO_ownMac_5	=	0xdf8a
                           00DF8B   403 _RADIO_ownMac_4	=	0xdf8b
                           00DF8C   404 _RADIO_ownMac_3	=	0xdf8c
                           00DF8D   405 _RADIO_ownMac_2	=	0xdf8d
                           00DF8E   406 _RADIO_ownMac_1	=	0xdf8e
                           00DF8F   407 _RADIO_ownMac_0	=	0xdf8f
                           00DF90   408 _RADIO_PANID_Hi	=	0xdf90
                           00DF91   409 _RADIO_PANID_Lo	=	0xdf91
                           00DF92   410 _RADIO_ownShortAddress_Hi	=	0xdf92
                           00DF93   411 _RADIO_ownShortAddress_Lo	=	0xdf93
                           00DF94   412 _RADIO_calibration_94	=	0xdf94
                           00DF95   413 _RADIO_calibration_95	=	0xdf95
                           00DF96   414 _RADIO_calibration_96	=	0xdf96
                           00DF98   415 _RADIO_rxFirstByte	=	0xdf98
                           00DF9B   416 _RADIO_curRfState	=	0xdf9b
                           00DF9D   417 _RADIO_calibration_9D	=	0xdf9d
                           00DFA1   418 _RADIO_calibration_A1	=	0xdfa1
                           00DFA5   419 _RADIO_unk_rxAckSta	=	0xdfa5
                           00DFA6   420 _RADIO_unk_A6	=	0xdfa6
                           00DFAD   421 _RADIO_IRQ4_pending	=	0xdfad
                           00DFAF   422 _RADIO_unk_AF	=	0xdfaf
                           00DFC0   423 _RADIO_channel	=	0xdfc0
                           00DFC1   424 _RADIO_unk_C1	=	0xdfc1
                           00DFC2   425 _RADIO_calibration_C2	=	0xdfc2
                           00DFC3   426 _RADIO_calibration_C3	=	0xdfc3
                           00DFC4   427 _RADIO_calibration_C4	=	0xdfc4
                           00DFC5   428 _RADIO_calibration_C5	=	0xdfc5
                           00DFC6   429 _RADIO_calibration_C6	=	0xdfc6
                           00DFC7   430 _RADIO_calibration_C7	=	0xdfc7
                           00DFC8   431 _RADIO_unk_C8	=	0xdfc8
                           00DFC9   432 _RADIO_txPower	=	0xdfc9
                           00DFCA   433 _RADIO_unk_CA	=	0xdfca
                           00DFCB   434 _RADIO_perChannelSetting2	=	0xdfcb
                           00DFCD   435 _RADIO_unk_CD	=	0xdfcd
                           00DFCE   436 _RADIO_unk_CE	=	0xdfce
                           00DFCF   437 _RADIO_calibration_CF	=	0xdfcf
                           00DFD0   438 _RADIO_calibration_D0	=	0xdfd0
                           00DFD1   439 _RADIO_calibration_D1	=	0xdfd1
                           00DFD2   440 _RADIO_calibration_D2	=	0xdfd2
                           00DFD3   441 _RADIO_calibration_D3	=	0xdfd3
                           00DFD4   442 _RADIO_calibration_D4	=	0xdfd4
                           00DFD5   443 _RADIO_calibration_D5	=	0xdfd5
                           00DFD7   444 _RADIO_unk_D7	=	0xdfd7
                           00DFD8   445 _RADIO_unk_D8	=	0xdfd8
                           00DFD9   446 _RADIO_SleepTimerHi	=	0xdfd9
                           00DFDA   447 _RADIO_SleepTimerMid	=	0xdfda
                           00DFDB   448 _RADIO_SleepTimerLo	=	0xdfdb
                           00DFE2   449 _RADIO_unk_E2	=	0xdfe2
                           00DFF0   450 _RADIO_unk_F0	=	0xdff0
                           00DFF3   451 _RADIO_SleepTimerSettings	=	0xdff3
                           00DFF4   452 _RADIO_RadioPowerCtl	=	0xdff4
                           00DFFB   453 _RADIO_Wake_Reason	=	0xdffb
                           00DFFD   454 _RADIO_perChannelSetting1	=	0xdffd
      00E44A                        455 _rbuffer:
      00E44A                        456 	.ds 32
      00E46A                        457 _waveformbuffer::
      00E46A                        458 	.ds 128
      00E4EA                        459 _epdBusySleep_timeout_65536_115:
      00E4EA                        460 	.ds 4
      00E4EE                        461 _epdBusySleep_tmp_P2FUNC_65536_116:
      00E4EE                        462 	.ds 1
      00E4EF                        463 _epdBusySleep_tmp_P2DIR_65536_116:
      00E4EF                        464 	.ds 1
      00E4F0                        465 _epdBusySleep_tmp_P2PULL_65536_116:
      00E4F0                        466 	.ds 1
      00E4F1                        467 _epdBusySleep_tmp_P2LVLSEL_65536_116:
      00E4F1                        468 	.ds 1
      00E4F2                        469 _epdBusyWait_timeout_65536_118:
      00E4F2                        470 	.ds 4
      00E4F6                        471 _commandReadBegin_cmd_65536_121:
      00E4F6                        472 	.ds 1
      00E4F7                        473 _epdReadByte_val_65536_127:
      00E4F7                        474 	.ds 1
      00E4F8                        475 _shortCommand_cmd_65536_130:
      00E4F8                        476 	.ds 1
      00E4F9                        477 _shortCommand1_PARM_2:
      00E4F9                        478 	.ds 1
      00E4FA                        479 _shortCommand1_cmd_65536_135:
      00E4FA                        480 	.ds 1
      00E4FB                        481 _shortCommand2_PARM_2:
      00E4FB                        482 	.ds 1
      00E4FC                        483 _shortCommand2_PARM_3:
      00E4FC                        484 	.ds 1
      00E4FD                        485 _shortCommand2_cmd_65536_141:
      00E4FD                        486 	.ds 1
      00E4FE                        487 _commandBegin_cmd_65536_147:
      00E4FE                        488 	.ds 1
      00E4FF                        489 _epdConfigGPIO_setup_65536_153:
      00E4FF                        490 	.ds 1
      00E500                        491 _epdDrawDirection_direction_65536_158:
      00E500                        492 	.ds 1
      00E501                        493 _epdDrawDirection_psr_setting_65537_160:
      00E501                        494 	.ds 1
      00E502                        495 _selectLUT_lut_65536_170:
      00E502                        496 	.ds 1
      00E503                        497 _setWindowXY_PARM_2:
      00E503                        498 	.ds 2
      00E505                        499 _setWindowXY_PARM_3:
      00E505                        500 	.ds 2
      00E507                        501 _setWindowXY_PARM_4:
      00E507                        502 	.ds 2
      00E509                        503 _setWindowXY_xstart_65536_172:
      00E509                        504 	.ds 2
      00E50B                        505 _setColorMode_PARM_2:
      00E50B                        506 	.ds 1
      00E50C                        507 _setColorMode_red_65536_175:
      00E50C                        508 	.ds 1
      00E50D                        509 _drawWithSleep_tmp_P2FUNC_65537_187:
      00E50D                        510 	.ds 1
      00E50E                        511 _drawWithSleep_tmp_P2DIR_65537_187:
      00E50E                        512 	.ds 1
      00E50F                        513 _drawWithSleep_tmp_P2PULL_65537_187:
      00E50F                        514 	.ds 1
      00E510                        515 _drawWithSleep_tmp_P2LVLSEL_65537_187:
      00E510                        516 	.ds 1
      00E511                        517 _beginWriteFramebuffer_color_65536_191:
      00E511                        518 	.ds 1
      00E512                        519 _printBarcode_PARM_2:
      00E512                        520 	.ds 2
      00E514                        521 _printBarcode_PARM_3:
      00E514                        522 	.ds 2
      00E516                        523 _printBarcode_string_65536_210:
      00E516                        524 	.ds 3
      00E519                        525 _printBarcode_bci_65537_212:
      00E519                        526 	.ds 9
      00E522                        527 _pushXFontBytesToEPD_PARM_2:
      00E522                        528 	.ds 1
      00E523                        529 _pushXFontBytesToEPD_byte1_65536_217:
      00E523                        530 	.ds 1
      00E524                        531 _pushXFontBytesToEPD_offset_131072_219:
      00E524                        532 	.ds 1
      00E525                        533 _pushXFontBytesToEPD_offset_131072_224:
      00E525                        534 	.ds 1
      00E526                        535 _bufferByteShift_byte_65536_234:
      00E526                        536 	.ds 1
      00E527                        537 _pushYFontBytesToEPD_PARM_2:
      00E527                        538 	.ds 1
      00E528                        539 _pushYFontBytesToEPD_byte1_65536_239:
      00E528                        540 	.ds 1
      00E529                        541 _pushYFontBytesToEPD_c_262144_243:
      00E529                        542 	.ds 1
      00E52A                        543 _writeCharEPD_c_65536_251:
      00E52A                        544 	.ds 1
      00E52B                        545 _writeCharEPD_empty_65537_253:
      00E52B                        546 	.ds 1
      00E52C                        547 _writeCharEPD_begin_65538_261:
      00E52C                        548 	.ds 1
      00E52D                        549 _writeCharEPD_end_65539_263:
      00E52D                        550 	.ds 1
      00E52E                        551 _writeCharEPD_pos_131075_265:
      00E52E                        552 	.ds 1
      00E52F                        553 _epdPrintBegin_PARM_2:
      00E52F                        554 	.ds 2
      00E531                        555 _epdPrintBegin_PARM_3:
      00E531                        556 	.ds 1
      00E532                        557 _epdPrintBegin_PARM_4:
      00E532                        558 	.ds 1
      00E533                        559 _epdPrintBegin_PARM_5:
      00E533                        560 	.ds 1
      00E534                        561 _epdPrintBegin_x_65536_271:
      00E534                        562 	.ds 2
      00E536                        563 _epdPrintBegin_extra_131072_273:
      00E536                        564 	.ds 1
                                    565 ;--------------------------------------------------------
                                    566 ; absolute external ram data
                                    567 ;--------------------------------------------------------
                                    568 	.area XABS    (ABS,XDATA)
                                    569 ;--------------------------------------------------------
                                    570 ; external initialized ram data
                                    571 ;--------------------------------------------------------
                                    572 	.area XISEG   (XDATA)
      00FBA5                        573 _epdCharSize:
      00FBA5                        574 	.ds 1
      00FBA6                        575 _directionY:
      00FBA6                        576 	.ds 1
      00FBA7                        577 _fontCurXpos:
      00FBA7                        578 	.ds 2
      00FBA9                        579 _fontCurYpos:
      00FBA9                        580 	.ds 2
      00FBAB                        581 _currentLut:
      00FBAB                        582 	.ds 1
      00FBAC                        583 _dispLutSize:
      00FBAC                        584 	.ds 1
      00FBAD                        585 _drawDirection:
      00FBAD                        586 	.ds 1
      00FBAE                        587 _isInited:
      00FBAE                        588 	.ds 1
      00FBAF                        589 _epdGPIOActive::
      00FBAF                        590 	.ds 1
      00FBB0                        591 _waveform10::
      00FBB0                        592 	.ds 3
      00FBB3                        593 _waveform7::
      00FBB3                        594 	.ds 3
                                    595 	.area HOME    (CODE)
                                    596 	.area GSINIT0 (CODE)
                                    597 	.area GSINIT1 (CODE)
                                    598 	.area GSINIT2 (CODE)
                                    599 	.area GSINIT3 (CODE)
                                    600 	.area GSINIT4 (CODE)
                                    601 	.area GSINIT5 (CODE)
                                    602 	.area GSINIT  (CODE)
                                    603 	.area GSFINAL (CODE)
                                    604 	.area CSEG    (CODE)
                                    605 ;--------------------------------------------------------
                                    606 ; global & static initialisations
                                    607 ;--------------------------------------------------------
                                    608 	.area HOME    (CODE)
                                    609 	.area GSINIT  (CODE)
                                    610 	.area GSFINAL (CODE)
                                    611 	.area GSINIT  (CODE)
                                    612 ;--------------------------------------------------------
                                    613 ; Home
                                    614 ;--------------------------------------------------------
                                    615 	.area HOME    (CODE)
                                    616 	.area HOME    (CODE)
                                    617 ;--------------------------------------------------------
                                    618 ; code
                                    619 ;--------------------------------------------------------
                                    620 	.area CSEG    (CODE)
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'epdBusySleep'
                                    623 ;------------------------------------------------------------
                                    624 ;timeout                   Allocated with name '_epdBusySleep_timeout_65536_115'
                                    625 ;tmp_P2FUNC                Allocated with name '_epdBusySleep_tmp_P2FUNC_65536_116'
                                    626 ;tmp_P2DIR                 Allocated with name '_epdBusySleep_tmp_P2DIR_65536_116'
                                    627 ;tmp_P2PULL                Allocated with name '_epdBusySleep_tmp_P2PULL_65536_116'
                                    628 ;tmp_P2LVLSEL              Allocated with name '_epdBusySleep_tmp_P2LVLSEL_65536_116'
                                    629 ;------------------------------------------------------------
                                    630 ;	board/zbs29_BW_uc/../uc8151.c:206: static void epdBusySleep(uint32_t timeout) {
                                    631 ;	-----------------------------------------
                                    632 ;	 function epdBusySleep
                                    633 ;	-----------------------------------------
      007B02                        634 _epdBusySleep:
                           000007   635 	ar7 = 0x07
                           000006   636 	ar6 = 0x06
                           000005   637 	ar5 = 0x05
                           000004   638 	ar4 = 0x04
                           000003   639 	ar3 = 0x03
                           000002   640 	ar2 = 0x02
                           000001   641 	ar1 = 0x01
                           000000   642 	ar0 = 0x00
      007B02 C0 07            [24]  643 	push	ar7
      007B04 C0 06            [24]  644 	push	ar6
      007B06 C0 05            [24]  645 	push	ar5
      007B08 C0 04            [24]  646 	push	ar4
      007B0A AF 82            [24]  647 	mov	r7,dpl
      007B0C AE 83            [24]  648 	mov	r6,dph
      007B0E AD F0            [24]  649 	mov	r5,b
      007B10 FC               [12]  650 	mov	r4,a
      007B11 90 E4 EA         [24]  651 	mov	dptr,#_epdBusySleep_timeout_65536_115
      007B14 EF               [12]  652 	mov	a,r7
      007B15 F0               [24]  653 	movx	@dptr,a
      007B16 EE               [12]  654 	mov	a,r6
      007B17 A3               [24]  655 	inc	dptr
      007B18 F0               [24]  656 	movx	@dptr,a
      007B19 ED               [12]  657 	mov	a,r5
      007B1A A3               [24]  658 	inc	dptr
      007B1B F0               [24]  659 	movx	@dptr,a
      007B1C EC               [12]  660 	mov	a,r4
      007B1D A3               [24]  661 	inc	dptr
      007B1E F0               [24]  662 	movx	@dptr,a
                                    663 ;	board/zbs29_BW_uc/../uc8151.c:207: uint8_t tmp_P2FUNC = P2FUNC;
      007B1F 90 E4 EE         [24]  664 	mov	dptr,#_epdBusySleep_tmp_P2FUNC_65536_116
      007B22 E5 AF            [12]  665 	mov	a,_P2FUNC
      007B24 F0               [24]  666 	movx	@dptr,a
                                    667 ;	board/zbs29_BW_uc/../uc8151.c:208: uint8_t tmp_P2DIR = P2DIR;
      007B25 90 E4 EF         [24]  668 	mov	dptr,#_epdBusySleep_tmp_P2DIR_65536_116
      007B28 E5 BB            [12]  669 	mov	a,_P2DIR
      007B2A F0               [24]  670 	movx	@dptr,a
                                    671 ;	board/zbs29_BW_uc/../uc8151.c:209: uint8_t tmp_P2PULL = P2PULL;
      007B2B 90 E4 F0         [24]  672 	mov	dptr,#_epdBusySleep_tmp_P2PULL_65536_116
      007B2E E5 BE            [12]  673 	mov	a,_P2PULL
      007B30 F0               [24]  674 	movx	@dptr,a
                                    675 ;	board/zbs29_BW_uc/../uc8151.c:210: uint8_t tmp_P2LVLSEL = P2LVLSEL;
      007B31 90 E4 F1         [24]  676 	mov	dptr,#_epdBusySleep_tmp_P2LVLSEL_65536_116
      007B34 E5 A5            [12]  677 	mov	a,_P2LVLSEL
      007B36 F0               [24]  678 	movx	@dptr,a
                                    679 ;	board/zbs29_BW_uc/../uc8151.c:211: P2FUNC &= 0xfd;
      007B37 53 AF FD         [24]  680 	anl	_P2FUNC,#0xfd
                                    681 ;	board/zbs29_BW_uc/../uc8151.c:212: P2DIR |= 2;
      007B3A 43 BB 02         [24]  682 	orl	_P2DIR,#0x02
                                    683 ;	board/zbs29_BW_uc/../uc8151.c:213: P2PULL |= 2;
      007B3D 43 BE 02         [24]  684 	orl	_P2PULL,#0x02
                                    685 ;	board/zbs29_BW_uc/../uc8151.c:214: P2LVLSEL &= ~(2);
      007B40 53 A5 FD         [24]  686 	anl	_P2LVLSEL,#0xfd
                                    687 ;	board/zbs29_BW_uc/../uc8151.c:216: P2CHSTA &= 0xfd;
      007B43 53 AC FD         [24]  688 	anl	_P2CHSTA,#0xfd
                                    689 ;	board/zbs29_BW_uc/../uc8151.c:217: P2INTEN |= 2;
      007B46 43 A9 02         [24]  690 	orl	_P2INTEN,#0x02
                                    691 ;	board/zbs29_BW_uc/../uc8151.c:218: P2CHSTA &= 0xfd;
      007B49 53 AC FD         [24]  692 	anl	_P2CHSTA,#0xfd
                                    693 ;	board/zbs29_BW_uc/../uc8151.c:219: sleepForMsec(timeout);
      007B4C 90 E4 EA         [24]  694 	mov	dptr,#_epdBusySleep_timeout_65536_115
      007B4F E0               [24]  695 	movx	a,@dptr
      007B50 FC               [12]  696 	mov	r4,a
      007B51 A3               [24]  697 	inc	dptr
      007B52 E0               [24]  698 	movx	a,@dptr
      007B53 FD               [12]  699 	mov	r5,a
      007B54 A3               [24]  700 	inc	dptr
      007B55 E0               [24]  701 	movx	a,@dptr
      007B56 FE               [12]  702 	mov	r6,a
      007B57 A3               [24]  703 	inc	dptr
      007B58 E0               [24]  704 	movx	a,@dptr
      007B59 FF               [12]  705 	mov	r7,a
      007B5A 8C 82            [24]  706 	mov	dpl,r4
      007B5C 8D 83            [24]  707 	mov	dph,r5
      007B5E 8E F0            [24]  708 	mov	b,r6
      007B60 C0 07            [24]  709 	push	ar7
      007B62 C0 06            [24]  710 	push	ar6
      007B64 C0 05            [24]  711 	push	ar5
      007B66 C0 04            [24]  712 	push	ar4
      007B68 C0 03            [24]  713 	push	ar3
      007B6A C0 02            [24]  714 	push	ar2
      007B6C C0 01            [24]  715 	push	ar1
      007B6E C0 00            [24]  716 	push	ar0
      007B70 12 59 C2         [24]  717 	lcall	_sleepForMsec
      007B73 D0 00            [24]  718 	pop	ar0
      007B75 D0 01            [24]  719 	pop	ar1
      007B77 D0 02            [24]  720 	pop	ar2
      007B79 D0 03            [24]  721 	pop	ar3
      007B7B D0 04            [24]  722 	pop	ar4
      007B7D D0 05            [24]  723 	pop	ar5
      007B7F D0 06            [24]  724 	pop	ar6
      007B81 D0 07            [24]  725 	pop	ar7
                                    726 ;	board/zbs29_BW_uc/../uc8151.c:220: wdtOn();
      007B83 12 59 27         [24]  727 	lcall	_wdtOn
                                    728 ;	board/zbs29_BW_uc/../uc8151.c:221: P2CHSTA &= 0xfd;
      007B86 53 AC FD         [24]  729 	anl	_P2CHSTA,#0xfd
                                    730 ;	board/zbs29_BW_uc/../uc8151.c:222: P2INTEN &= 0xfd;
      007B89 53 A9 FD         [24]  731 	anl	_P2INTEN,#0xfd
                                    732 ;	board/zbs29_BW_uc/../uc8151.c:224: P2FUNC = tmp_P2FUNC;
      007B8C 90 E4 EE         [24]  733 	mov	dptr,#_epdBusySleep_tmp_P2FUNC_65536_116
      007B8F E0               [24]  734 	movx	a,@dptr
      007B90 F5 AF            [12]  735 	mov	_P2FUNC,a
                                    736 ;	board/zbs29_BW_uc/../uc8151.c:225: P2DIR = tmp_P2DIR;
      007B92 90 E4 EF         [24]  737 	mov	dptr,#_epdBusySleep_tmp_P2DIR_65536_116
      007B95 E0               [24]  738 	movx	a,@dptr
      007B96 F5 BB            [12]  739 	mov	_P2DIR,a
                                    740 ;	board/zbs29_BW_uc/../uc8151.c:226: P2PULL = tmp_P2PULL;
      007B98 90 E4 F0         [24]  741 	mov	dptr,#_epdBusySleep_tmp_P2PULL_65536_116
      007B9B E0               [24]  742 	movx	a,@dptr
      007B9C F5 BE            [12]  743 	mov	_P2PULL,a
                                    744 ;	board/zbs29_BW_uc/../uc8151.c:227: P2LVLSEL = tmp_P2LVLSEL;
      007B9E 90 E4 F1         [24]  745 	mov	dptr,#_epdBusySleep_tmp_P2LVLSEL_65536_116
      007BA1 E0               [24]  746 	movx	a,@dptr
      007BA2 F5 A5            [12]  747 	mov	_P2LVLSEL,a
                                    748 ;	board/zbs29_BW_uc/../uc8151.c:228: eepromPrvDeselect();
      007BA4 00               [12]  749 	nop
      007BA5 00               [12]  750 	nop
      007BA6 00               [12]  751 	nop
                                    752 ;	assignBit
      007BA7 D2 91            [12]  753 	setb	_P1_1
      007BA9 00               [12]  754 	nop
      007BAA 00               [12]  755 	nop
      007BAB 00               [12]  756 	nop
                                    757 ;	board/zbs29_BW_uc/../uc8151.c:229: }
      007BAC D0 04            [24]  758 	pop	ar4
      007BAE D0 05            [24]  759 	pop	ar5
      007BB0 D0 06            [24]  760 	pop	ar6
      007BB2 D0 07            [24]  761 	pop	ar7
      007BB4 22               [24]  762 	ret
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'epdBusyWait'
                                    765 ;------------------------------------------------------------
                                    766 ;sloc0                     Allocated with name '_epdBusyWait_sloc0_1_0'
                                    767 ;timeout                   Allocated with name '_epdBusyWait_timeout_65536_118'
                                    768 ;start                     Allocated with name '_epdBusyWait_start_65536_119'
                                    769 ;------------------------------------------------------------
                                    770 ;	board/zbs29_BW_uc/../uc8151.c:230: static void epdBusyWait(uint32_t timeout) {
                                    771 ;	-----------------------------------------
                                    772 ;	 function epdBusyWait
                                    773 ;	-----------------------------------------
      007BB5                        774 _epdBusyWait:
      007BB5 C0 07            [24]  775 	push	ar7
      007BB7 C0 06            [24]  776 	push	ar6
      007BB9 C0 05            [24]  777 	push	ar5
      007BBB C0 04            [24]  778 	push	ar4
      007BBD C0 03            [24]  779 	push	ar3
      007BBF C0 02            [24]  780 	push	ar2
      007BC1 C0 01            [24]  781 	push	ar1
      007BC3 C0 00            [24]  782 	push	ar0
      007BC5 AF 82            [24]  783 	mov	r7,dpl
      007BC7 AE 83            [24]  784 	mov	r6,dph
      007BC9 AD F0            [24]  785 	mov	r5,b
      007BCB FC               [12]  786 	mov	r4,a
      007BCC 90 E4 F2         [24]  787 	mov	dptr,#_epdBusyWait_timeout_65536_118
      007BCF EF               [12]  788 	mov	a,r7
      007BD0 F0               [24]  789 	movx	@dptr,a
      007BD1 EE               [12]  790 	mov	a,r6
      007BD2 A3               [24]  791 	inc	dptr
      007BD3 F0               [24]  792 	movx	@dptr,a
      007BD4 ED               [12]  793 	mov	a,r5
      007BD5 A3               [24]  794 	inc	dptr
      007BD6 F0               [24]  795 	movx	@dptr,a
      007BD7 EC               [12]  796 	mov	a,r4
      007BD8 A3               [24]  797 	inc	dptr
      007BD9 F0               [24]  798 	movx	@dptr,a
                                    799 ;	board/zbs29_BW_uc/../uc8151.c:231: uint32_t __xdata start = timerGet();
      007BDA 12 5C 16         [24]  800 	lcall	_timerGet
      007BDD AC 82            [24]  801 	mov	r4,dpl
      007BDF AD 83            [24]  802 	mov	r5,dph
      007BE1 AE F0            [24]  803 	mov	r6,b
      007BE3 FF               [12]  804 	mov	r7,a
                                    805 ;	board/zbs29_BW_uc/../uc8151.c:233: while (timerGet() - start < timeout) {
      007BE4 90 E4 F2         [24]  806 	mov	dptr,#_epdBusyWait_timeout_65536_118
      007BE7 E0               [24]  807 	movx	a,@dptr
      007BE8 F5 19            [12]  808 	mov	_epdBusyWait_sloc0_1_0,a
      007BEA A3               [24]  809 	inc	dptr
      007BEB E0               [24]  810 	movx	a,@dptr
      007BEC F5 1A            [12]  811 	mov	(_epdBusyWait_sloc0_1_0 + 1),a
      007BEE A3               [24]  812 	inc	dptr
      007BEF E0               [24]  813 	movx	a,@dptr
      007BF0 F5 1B            [12]  814 	mov	(_epdBusyWait_sloc0_1_0 + 2),a
      007BF2 A3               [24]  815 	inc	dptr
      007BF3 E0               [24]  816 	movx	a,@dptr
      007BF4 F5 1C            [12]  817 	mov	(_epdBusyWait_sloc0_1_0 + 3),a
      007BF6                        818 00103$:
      007BF6 12 5C 16         [24]  819 	lcall	_timerGet
      007BF9 A8 82            [24]  820 	mov	r0,dpl
      007BFB A9 83            [24]  821 	mov	r1,dph
      007BFD AA F0            [24]  822 	mov	r2,b
      007BFF FB               [12]  823 	mov	r3,a
      007C00 E8               [12]  824 	mov	a,r0
      007C01 C3               [12]  825 	clr	c
      007C02 9C               [12]  826 	subb	a,r4
      007C03 F8               [12]  827 	mov	r0,a
      007C04 E9               [12]  828 	mov	a,r1
      007C05 9D               [12]  829 	subb	a,r5
      007C06 F9               [12]  830 	mov	r1,a
      007C07 EA               [12]  831 	mov	a,r2
      007C08 9E               [12]  832 	subb	a,r6
      007C09 FA               [12]  833 	mov	r2,a
      007C0A EB               [12]  834 	mov	a,r3
      007C0B 9F               [12]  835 	subb	a,r7
      007C0C FB               [12]  836 	mov	r3,a
      007C0D C3               [12]  837 	clr	c
      007C0E E8               [12]  838 	mov	a,r0
      007C0F 95 19            [12]  839 	subb	a,_epdBusyWait_sloc0_1_0
      007C11 E9               [12]  840 	mov	a,r1
      007C12 95 1A            [12]  841 	subb	a,(_epdBusyWait_sloc0_1_0 + 1)
      007C14 EA               [12]  842 	mov	a,r2
      007C15 95 1B            [12]  843 	subb	a,(_epdBusyWait_sloc0_1_0 + 2)
      007C17 EB               [12]  844 	mov	a,r3
      007C18 95 1C            [12]  845 	subb	a,(_epdBusyWait_sloc0_1_0 + 3)
      007C1A 50 05            [24]  846 	jnc	00107$
                                    847 ;	board/zbs29_BW_uc/../uc8151.c:234: if (P2_1)
      007C1C 30 A1 D7         [24]  848 	jnb	_P2_1,00103$
                                    849 ;	board/zbs29_BW_uc/../uc8151.c:235: return;
                                    850 ;	board/zbs29_BW_uc/../uc8151.c:240: while (1)
      007C1F 80 02            [24]  851 	sjmp	00109$
      007C21                        852 00107$:
      007C21 80 FE            [24]  853 	sjmp	00107$
      007C23                        854 00109$:
                                    855 ;	board/zbs29_BW_uc/../uc8151.c:242: }
      007C23 D0 00            [24]  856 	pop	ar0
      007C25 D0 01            [24]  857 	pop	ar1
      007C27 D0 02            [24]  858 	pop	ar2
      007C29 D0 03            [24]  859 	pop	ar3
      007C2B D0 04            [24]  860 	pop	ar4
      007C2D D0 05            [24]  861 	pop	ar5
      007C2F D0 06            [24]  862 	pop	ar6
      007C31 D0 07            [24]  863 	pop	ar7
      007C33 22               [24]  864 	ret
                                    865 ;------------------------------------------------------------
                                    866 ;Allocation info for local variables in function 'commandReadBegin'
                                    867 ;------------------------------------------------------------
                                    868 ;cmd                       Allocated with name '_commandReadBegin_cmd_65536_121'
                                    869 ;------------------------------------------------------------
                                    870 ;	board/zbs29_BW_uc/../uc8151.c:243: static void commandReadBegin(uint8_t cmd) {
                                    871 ;	-----------------------------------------
                                    872 ;	 function commandReadBegin
                                    873 ;	-----------------------------------------
      007C34                        874 _commandReadBegin:
      007C34 E5 82            [12]  875 	mov	a,dpl
      007C36 90 E4 F6         [24]  876 	mov	dptr,#_commandReadBegin_cmd_65536_121
      007C39 F0               [24]  877 	movx	@dptr,a
                                    878 ;	board/zbs29_BW_uc/../uc8151.c:244: epdSelect();
                                    879 ;	assignBit
      007C3A C2 97            [12]  880 	clr	_P1_7
                                    881 ;	board/zbs29_BW_uc/../uc8151.c:245: markCommand();
                                    882 ;	assignBit
      007C3C C2 A2            [12]  883 	clr	_P2_2
                                    884 ;	board/zbs29_BW_uc/../uc8151.c:246: spiByte(cmd);  // dump LUT
      007C3E 90 E4 F6         [24]  885 	mov	dptr,#_commandReadBegin_cmd_65536_121
      007C41 E0               [24]  886 	movx	a,@dptr
      007C42 F5 82            [12]  887 	mov	dpl,a
      007C44 12 5B 6A         [24]  888 	lcall	_spiByte
                                    889 ;	board/zbs29_BW_uc/../uc8151.c:248: P0DIR = (P0DIR & ~(1 << 0)) | (1 << 1);
      007C47 74 FE            [12]  890 	mov	a,#0xfe
      007C49 55 B9            [12]  891 	anl	a,_P0DIR
      007C4B 44 02            [12]  892 	orl	a,#0x02
      007C4D F5 B9            [12]  893 	mov	_P0DIR,a
                                    894 ;	board/zbs29_BW_uc/../uc8151.c:249: P0 &= ~(1 << 0);
      007C4F 53 80 FE         [24]  895 	anl	_P0,#0xfe
                                    896 ;	board/zbs29_BW_uc/../uc8151.c:250: P0FUNC &= ~((1 << 0) | (1 << 1));
      007C52 53 AD FC         [24]  897 	anl	_P0FUNC,#0xfc
                                    898 ;	board/zbs29_BW_uc/../uc8151.c:251: P2_2 = 1;
                                    899 ;	assignBit
      007C55 D2 A2            [12]  900 	setb	_P2_2
                                    901 ;	board/zbs29_BW_uc/../uc8151.c:252: }
      007C57 22               [24]  902 	ret
                                    903 ;------------------------------------------------------------
                                    904 ;Allocation info for local variables in function 'commandReadEnd'
                                    905 ;------------------------------------------------------------
                                    906 ;	board/zbs29_BW_uc/../uc8151.c:253: static void commandReadEnd() {
                                    907 ;	-----------------------------------------
                                    908 ;	 function commandReadEnd
                                    909 ;	-----------------------------------------
      007C58                        910 _commandReadEnd:
                                    911 ;	board/zbs29_BW_uc/../uc8151.c:255: P0FUNC |= (1 << 0) | (1 << 1);
      007C58 43 AD 03         [24]  912 	orl	_P0FUNC,#0x03
                                    913 ;	board/zbs29_BW_uc/../uc8151.c:256: epdDeselect();
                                    914 ;	assignBit
      007C5B D2 97            [12]  915 	setb	_P1_7
                                    916 ;	board/zbs29_BW_uc/../uc8151.c:257: }
      007C5D 22               [24]  917 	ret
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'epdReadByte'
                                    920 ;------------------------------------------------------------
                                    921 ;val                       Allocated with name '_epdReadByte_val_65536_127'
                                    922 ;i                         Allocated with name '_epdReadByte_i_65536_127'
                                    923 ;------------------------------------------------------------
                                    924 ;	board/zbs29_BW_uc/../uc8151.c:259: static uint8_t epdReadByte() {
                                    925 ;	-----------------------------------------
                                    926 ;	 function epdReadByte
                                    927 ;	-----------------------------------------
      007C5E                        928 _epdReadByte:
      007C5E C0 07            [24]  929 	push	ar7
      007C60 C0 06            [24]  930 	push	ar6
                                    931 ;	board/zbs29_BW_uc/../uc8151.c:260: uint8_t val = 0, i;
      007C62 90 E4 F7         [24]  932 	mov	dptr,#_epdReadByte_val_65536_127
      007C65 E4               [12]  933 	clr	a
      007C66 F0               [24]  934 	movx	@dptr,a
                                    935 ;	board/zbs29_BW_uc/../uc8151.c:262: for (i = 0; i < 8; i++) {
      007C67 7F 00            [12]  936 	mov	r7,#0x00
      007C69                        937 00104$:
                                    938 ;	board/zbs29_BW_uc/../uc8151.c:263: P0_0 = 1;
                                    939 ;	assignBit
      007C69 D2 80            [12]  940 	setb	_P0_0
                                    941 ;	board/zbs29_BW_uc/../uc8151.c:264: __asm__("nop\nnop\nnop\nnop\nnop\nnop\n");
      007C6B 00               [12]  942 	nop
      007C6C 00               [12]  943 	nop
      007C6D 00               [12]  944 	nop
      007C6E 00               [12]  945 	nop
      007C6F 00               [12]  946 	nop
      007C70 00               [12]  947 	nop
                                    948 ;	board/zbs29_BW_uc/../uc8151.c:265: val <<= 1;
      007C71 90 E4 F7         [24]  949 	mov	dptr,#_epdReadByte_val_65536_127
      007C74 E0               [24]  950 	movx	a,@dptr
      007C75 25 E0            [12]  951 	add	a,acc
      007C77 FE               [12]  952 	mov	r6,a
      007C78 F0               [24]  953 	movx	@dptr,a
                                    954 ;	board/zbs29_BW_uc/../uc8151.c:266: if (P0_1)
      007C79 30 81 07         [24]  955 	jnb	_P0_1,00102$
                                    956 ;	board/zbs29_BW_uc/../uc8151.c:267: val++;
      007C7C 90 E4 F7         [24]  957 	mov	dptr,#_epdReadByte_val_65536_127
      007C7F E0               [24]  958 	movx	a,@dptr
      007C80 24 01            [12]  959 	add	a,#0x01
      007C82 F0               [24]  960 	movx	@dptr,a
      007C83                        961 00102$:
                                    962 ;	board/zbs29_BW_uc/../uc8151.c:268: P0_0 = 0;
                                    963 ;	assignBit
      007C83 C2 80            [12]  964 	clr	_P0_0
                                    965 ;	board/zbs29_BW_uc/../uc8151.c:269: __asm__("nop\nnop\nnop\nnop\nnop\nnop\n");
      007C85 00               [12]  966 	nop
      007C86 00               [12]  967 	nop
      007C87 00               [12]  968 	nop
      007C88 00               [12]  969 	nop
      007C89 00               [12]  970 	nop
      007C8A 00               [12]  971 	nop
                                    972 ;	board/zbs29_BW_uc/../uc8151.c:262: for (i = 0; i < 8; i++) {
      007C8B 0F               [12]  973 	inc	r7
      007C8C BF 08 00         [24]  974 	cjne	r7,#0x08,00122$
      007C8F                        975 00122$:
      007C8F 40 D8            [24]  976 	jc	00104$
                                    977 ;	board/zbs29_BW_uc/../uc8151.c:272: return val;
      007C91 90 E4 F7         [24]  978 	mov	dptr,#_epdReadByte_val_65536_127
      007C94 E0               [24]  979 	movx	a,@dptr
      007C95 F5 82            [12]  980 	mov	dpl,a
                                    981 ;	board/zbs29_BW_uc/../uc8151.c:273: }
      007C97 D0 06            [24]  982 	pop	ar6
      007C99 D0 07            [24]  983 	pop	ar7
      007C9B 22               [24]  984 	ret
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'shortCommand'
                                    987 ;------------------------------------------------------------
                                    988 ;cmd                       Allocated with name '_shortCommand_cmd_65536_130'
                                    989 ;------------------------------------------------------------
                                    990 ;	board/zbs29_BW_uc/../uc8151.c:274: static void shortCommand(uint8_t cmd) {
                                    991 ;	-----------------------------------------
                                    992 ;	 function shortCommand
                                    993 ;	-----------------------------------------
      007C9C                        994 _shortCommand:
      007C9C E5 82            [12]  995 	mov	a,dpl
      007C9E 90 E4 F8         [24]  996 	mov	dptr,#_shortCommand_cmd_65536_130
      007CA1 F0               [24]  997 	movx	@dptr,a
                                    998 ;	board/zbs29_BW_uc/../uc8151.c:275: epdSelect();
                                    999 ;	assignBit
      007CA2 C2 97            [12] 1000 	clr	_P1_7
                                   1001 ;	board/zbs29_BW_uc/../uc8151.c:276: markCommand();
                                   1002 ;	assignBit
      007CA4 C2 A2            [12] 1003 	clr	_P2_2
                                   1004 ;	board/zbs29_BW_uc/../uc8151.c:277: spiTXByte(cmd);
      007CA6 90 E4 F8         [24] 1005 	mov	dptr,#_shortCommand_cmd_65536_130
      007CA9 E0               [24] 1006 	movx	a,@dptr
      007CAA F5 82            [12] 1007 	mov	dpl,a
      007CAC 12 5B 9E         [24] 1008 	lcall	_spiTXByte
                                   1009 ;	board/zbs29_BW_uc/../uc8151.c:278: epdDeselect();
                                   1010 ;	assignBit
      007CAF D2 97            [12] 1011 	setb	_P1_7
                                   1012 ;	board/zbs29_BW_uc/../uc8151.c:279: }
      007CB1 22               [24] 1013 	ret
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'shortCommand1'
                                   1016 ;------------------------------------------------------------
                                   1017 ;arg                       Allocated with name '_shortCommand1_PARM_2'
                                   1018 ;cmd                       Allocated with name '_shortCommand1_cmd_65536_135'
                                   1019 ;------------------------------------------------------------
                                   1020 ;	board/zbs29_BW_uc/../uc8151.c:280: static void shortCommand1(uint8_t cmd, uint8_t arg) {
                                   1021 ;	-----------------------------------------
                                   1022 ;	 function shortCommand1
                                   1023 ;	-----------------------------------------
      007CB2                       1024 _shortCommand1:
      007CB2 E5 82            [12] 1025 	mov	a,dpl
      007CB4 90 E4 FA         [24] 1026 	mov	dptr,#_shortCommand1_cmd_65536_135
      007CB7 F0               [24] 1027 	movx	@dptr,a
                                   1028 ;	board/zbs29_BW_uc/../uc8151.c:281: epdSelect();
                                   1029 ;	assignBit
      007CB8 C2 97            [12] 1030 	clr	_P1_7
                                   1031 ;	board/zbs29_BW_uc/../uc8151.c:282: markCommand();
                                   1032 ;	assignBit
      007CBA C2 A2            [12] 1033 	clr	_P2_2
                                   1034 ;	board/zbs29_BW_uc/../uc8151.c:283: spiTXByte(cmd);
      007CBC 90 E4 FA         [24] 1035 	mov	dptr,#_shortCommand1_cmd_65536_135
      007CBF E0               [24] 1036 	movx	a,@dptr
      007CC0 F5 82            [12] 1037 	mov	dpl,a
      007CC2 12 5B 9E         [24] 1038 	lcall	_spiTXByte
                                   1039 ;	board/zbs29_BW_uc/../uc8151.c:284: markData();
                                   1040 ;	assignBit
      007CC5 D2 A2            [12] 1041 	setb	_P2_2
                                   1042 ;	board/zbs29_BW_uc/../uc8151.c:285: spiTXByte(arg);
      007CC7 90 E4 F9         [24] 1043 	mov	dptr,#_shortCommand1_PARM_2
      007CCA E0               [24] 1044 	movx	a,@dptr
      007CCB F5 82            [12] 1045 	mov	dpl,a
      007CCD 12 5B 9E         [24] 1046 	lcall	_spiTXByte
                                   1047 ;	board/zbs29_BW_uc/../uc8151.c:286: epdDeselect();
                                   1048 ;	assignBit
      007CD0 D2 97            [12] 1049 	setb	_P1_7
                                   1050 ;	board/zbs29_BW_uc/../uc8151.c:287: }
      007CD2 22               [24] 1051 	ret
                                   1052 ;------------------------------------------------------------
                                   1053 ;Allocation info for local variables in function 'shortCommand2'
                                   1054 ;------------------------------------------------------------
                                   1055 ;arg1                      Allocated with name '_shortCommand2_PARM_2'
                                   1056 ;arg2                      Allocated with name '_shortCommand2_PARM_3'
                                   1057 ;cmd                       Allocated with name '_shortCommand2_cmd_65536_141'
                                   1058 ;------------------------------------------------------------
                                   1059 ;	board/zbs29_BW_uc/../uc8151.c:288: static void shortCommand2(uint8_t cmd, uint8_t arg1, uint8_t arg2) {
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function shortCommand2
                                   1062 ;	-----------------------------------------
      007CD3                       1063 _shortCommand2:
      007CD3 E5 82            [12] 1064 	mov	a,dpl
      007CD5 90 E4 FD         [24] 1065 	mov	dptr,#_shortCommand2_cmd_65536_141
      007CD8 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	board/zbs29_BW_uc/../uc8151.c:289: epdSelect();
                                   1068 ;	assignBit
      007CD9 C2 97            [12] 1069 	clr	_P1_7
                                   1070 ;	board/zbs29_BW_uc/../uc8151.c:290: markCommand();
                                   1071 ;	assignBit
      007CDB C2 A2            [12] 1072 	clr	_P2_2
                                   1073 ;	board/zbs29_BW_uc/../uc8151.c:291: spiTXByte(cmd);
      007CDD 90 E4 FD         [24] 1074 	mov	dptr,#_shortCommand2_cmd_65536_141
      007CE0 E0               [24] 1075 	movx	a,@dptr
      007CE1 F5 82            [12] 1076 	mov	dpl,a
      007CE3 12 5B 9E         [24] 1077 	lcall	_spiTXByte
                                   1078 ;	board/zbs29_BW_uc/../uc8151.c:292: markData();
                                   1079 ;	assignBit
      007CE6 D2 A2            [12] 1080 	setb	_P2_2
                                   1081 ;	board/zbs29_BW_uc/../uc8151.c:293: spiTXByte(arg1);
      007CE8 90 E4 FB         [24] 1082 	mov	dptr,#_shortCommand2_PARM_2
      007CEB E0               [24] 1083 	movx	a,@dptr
      007CEC F5 82            [12] 1084 	mov	dpl,a
      007CEE 12 5B 9E         [24] 1085 	lcall	_spiTXByte
                                   1086 ;	board/zbs29_BW_uc/../uc8151.c:294: spiTXByte(arg2);
      007CF1 90 E4 FC         [24] 1087 	mov	dptr,#_shortCommand2_PARM_3
      007CF4 E0               [24] 1088 	movx	a,@dptr
      007CF5 F5 82            [12] 1089 	mov	dpl,a
      007CF7 12 5B 9E         [24] 1090 	lcall	_spiTXByte
                                   1091 ;	board/zbs29_BW_uc/../uc8151.c:295: epdDeselect();
                                   1092 ;	assignBit
      007CFA D2 97            [12] 1093 	setb	_P1_7
                                   1094 ;	board/zbs29_BW_uc/../uc8151.c:296: }
      007CFC 22               [24] 1095 	ret
                                   1096 ;------------------------------------------------------------
                                   1097 ;Allocation info for local variables in function 'commandBegin'
                                   1098 ;------------------------------------------------------------
                                   1099 ;cmd                       Allocated with name '_commandBegin_cmd_65536_147'
                                   1100 ;------------------------------------------------------------
                                   1101 ;	board/zbs29_BW_uc/../uc8151.c:297: static void commandBegin(uint8_t cmd) {
                                   1102 ;	-----------------------------------------
                                   1103 ;	 function commandBegin
                                   1104 ;	-----------------------------------------
      007CFD                       1105 _commandBegin:
      007CFD E5 82            [12] 1106 	mov	a,dpl
      007CFF 90 E4 FE         [24] 1107 	mov	dptr,#_commandBegin_cmd_65536_147
      007D02 F0               [24] 1108 	movx	@dptr,a
                                   1109 ;	board/zbs29_BW_uc/../uc8151.c:298: epdSelect();
                                   1110 ;	assignBit
      007D03 C2 97            [12] 1111 	clr	_P1_7
                                   1112 ;	board/zbs29_BW_uc/../uc8151.c:299: markCommand();
                                   1113 ;	assignBit
      007D05 C2 A2            [12] 1114 	clr	_P2_2
                                   1115 ;	board/zbs29_BW_uc/../uc8151.c:300: spiTXByte(cmd);
      007D07 90 E4 FE         [24] 1116 	mov	dptr,#_commandBegin_cmd_65536_147
      007D0A E0               [24] 1117 	movx	a,@dptr
      007D0B F5 82            [12] 1118 	mov	dpl,a
      007D0D 12 5B 9E         [24] 1119 	lcall	_spiTXByte
                                   1120 ;	board/zbs29_BW_uc/../uc8151.c:301: markData();
                                   1121 ;	assignBit
      007D10 D2 A2            [12] 1122 	setb	_P2_2
                                   1123 ;	board/zbs29_BW_uc/../uc8151.c:302: }
      007D12 22               [24] 1124 	ret
                                   1125 ;------------------------------------------------------------
                                   1126 ;Allocation info for local variables in function 'epdReset'
                                   1127 ;------------------------------------------------------------
                                   1128 ;	board/zbs29_BW_uc/../uc8151.c:303: static void epdReset() {
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function epdReset
                                   1131 ;	-----------------------------------------
      007D13                       1132 _epdReset:
                                   1133 ;	board/zbs29_BW_uc/../uc8151.c:304: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
      007D13 90 05 35         [24] 1134 	mov	dptr,#0x0535
      007D16 E4               [12] 1135 	clr	a
      007D17 F5 F0            [12] 1136 	mov	b,a
      007D19 12 5C 94         [24] 1137 	lcall	_timerDelay
                                   1138 ;	board/zbs29_BW_uc/../uc8151.c:305: P2_0 = 0;
                                   1139 ;	assignBit
      007D1C C2 A0            [12] 1140 	clr	_P2_0
                                   1141 ;	board/zbs29_BW_uc/../uc8151.c:306: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
      007D1E 90 05 35         [24] 1142 	mov	dptr,#0x0535
      007D21 E4               [12] 1143 	clr	a
      007D22 F5 F0            [12] 1144 	mov	b,a
      007D24 12 5C 94         [24] 1145 	lcall	_timerDelay
                                   1146 ;	board/zbs29_BW_uc/../uc8151.c:307: P2_0 = 1;
                                   1147 ;	assignBit
      007D27 D2 A0            [12] 1148 	setb	_P2_0
                                   1149 ;	board/zbs29_BW_uc/../uc8151.c:308: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
      007D29 90 05 35         [24] 1150 	mov	dptr,#0x0535
      007D2C E4               [12] 1151 	clr	a
      007D2D F5 F0            [12] 1152 	mov	b,a
                                   1153 ;	board/zbs29_BW_uc/../uc8151.c:309: }
      007D2F 02 5C 94         [24] 1154 	ljmp	_timerDelay
                                   1155 ;------------------------------------------------------------
                                   1156 ;Allocation info for local variables in function 'epdConfigGPIO'
                                   1157 ;------------------------------------------------------------
                                   1158 ;setup                     Allocated with name '_epdConfigGPIO_setup_65536_153'
                                   1159 ;------------------------------------------------------------
                                   1160 ;	board/zbs29_BW_uc/../uc8151.c:310: void epdConfigGPIO(bool setup) {
                                   1161 ;	-----------------------------------------
                                   1162 ;	 function epdConfigGPIO
                                   1163 ;	-----------------------------------------
      007D32                       1164 _epdConfigGPIO:
      007D32 E5 82            [12] 1165 	mov	a,dpl
      007D34 90 E4 FF         [24] 1166 	mov	dptr,#_epdConfigGPIO_setup_65536_153
      007D37 F0               [24] 1167 	movx	@dptr,a
                                   1168 ;	board/zbs29_BW_uc/../uc8151.c:320: if (epdGPIOActive == setup) return;
      007D38 90 FB AF         [24] 1169 	mov	dptr,#_epdGPIOActive
      007D3B E0               [24] 1170 	movx	a,@dptr
      007D3C FF               [12] 1171 	mov	r7,a
      007D3D 90 E4 FF         [24] 1172 	mov	dptr,#_epdConfigGPIO_setup_65536_153
      007D40 E0               [24] 1173 	movx	a,@dptr
      007D41 FE               [12] 1174 	mov	r6,a
      007D42 EF               [12] 1175 	mov	a,r7
      007D43 B5 06 01         [24] 1176 	cjne	a,ar6,00102$
      007D46 22               [24] 1177 	ret
      007D47                       1178 00102$:
                                   1179 ;	board/zbs29_BW_uc/../uc8151.c:321: if (setup) {
      007D47 EE               [12] 1180 	mov	a,r6
      007D48 60 0F            [24] 1181 	jz	00104$
                                   1182 ;	board/zbs29_BW_uc/../uc8151.c:322: P2DIR |= (1 << 1);                // busy as input
      007D4A 43 BB 02         [24] 1183 	orl	_P2DIR,#0x02
                                   1184 ;	board/zbs29_BW_uc/../uc8151.c:323: P2DIR &= ~((1 << 2) | (1 << 0));  // D/C and Reset as output
      007D4D 53 BB FA         [24] 1185 	anl	_P2DIR,#0xfa
                                   1186 ;	board/zbs29_BW_uc/../uc8151.c:324: P1DIR &= ~((1 << 7) | (1 << 2));  // select and bs1 as output
      007D50 53 BA 7B         [24] 1187 	anl	_P1DIR,#0x7b
                                   1188 ;	board/zbs29_BW_uc/../uc8151.c:325: P1_2 = 0;                         // select 4-wire SPI / BS1 = low
                                   1189 ;	assignBit
      007D53 C2 92            [12] 1190 	clr	_P1_2
                                   1191 ;	board/zbs29_BW_uc/../uc8151.c:326: P1_7 = 1;                         // deselect EPD
                                   1192 ;	assignBit
      007D55 D2 97            [12] 1193 	setb	_P1_7
      007D57 80 0C            [24] 1194 	sjmp	00105$
      007D59                       1195 00104$:
                                   1196 ;	board/zbs29_BW_uc/../uc8151.c:328: P2DIR |= ((1 << 2) | (1 << 0));  // DC and Reset as input
      007D59 43 BB 05         [24] 1197 	orl	_P2DIR,#0x05
                                   1198 ;	board/zbs29_BW_uc/../uc8151.c:329: P2 &= ~((1 << 2) | (1 << 0));
      007D5C 53 A0 FA         [24] 1199 	anl	_P2,#0xfa
                                   1200 ;	board/zbs29_BW_uc/../uc8151.c:330: P1DIR |= ((1 << 7) | (1 << 2));  // Select and BS1 as input
      007D5F 43 BA 84         [24] 1201 	orl	_P1DIR,#0x84
                                   1202 ;	board/zbs29_BW_uc/../uc8151.c:331: P2 &= ~((1 << 7));
      007D62 53 A0 7F         [24] 1203 	anl	_P2,#0x7f
      007D65                       1204 00105$:
                                   1205 ;	board/zbs29_BW_uc/../uc8151.c:333: epdGPIOActive = setup;
      007D65 90 E4 FF         [24] 1206 	mov	dptr,#_epdConfigGPIO_setup_65536_153
      007D68 E0               [24] 1207 	movx	a,@dptr
      007D69 90 FB AF         [24] 1208 	mov	dptr,#_epdGPIOActive
      007D6C F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	board/zbs29_BW_uc/../uc8151.c:334: }
      007D6D 22               [24] 1211 	ret
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'epdEnterSleep'
                                   1214 ;------------------------------------------------------------
                                   1215 ;	board/zbs29_BW_uc/../uc8151.c:335: void epdEnterSleep() {
                                   1216 ;	-----------------------------------------
                                   1217 ;	 function epdEnterSleep
                                   1218 ;	-----------------------------------------
      007D6E                       1219 _epdEnterSleep:
                                   1220 ;	board/zbs29_BW_uc/../uc8151.c:336: timerDelay(20 * TIMER_TICKS_PER_MS);
      007D6E 90 68 24         [24] 1221 	mov	dptr,#0x6824
      007D71 E4               [12] 1222 	clr	a
      007D72 F5 F0            [12] 1223 	mov	b,a
      007D74 12 5C 94         [24] 1224 	lcall	_timerDelay
                                   1225 ;	board/zbs29_BW_uc/../uc8151.c:337: epdReset();
      007D77 12 7D 13         [24] 1226 	lcall	_epdReset
                                   1227 ;	board/zbs29_BW_uc/../uc8151.c:338: timerDelay(20 * TIMER_TICKS_PER_MS);
      007D7A 90 68 24         [24] 1228 	mov	dptr,#0x6824
      007D7D E4               [12] 1229 	clr	a
      007D7E F5 F0            [12] 1230 	mov	b,a
      007D80 12 5C 94         [24] 1231 	lcall	_timerDelay
                                   1232 ;	board/zbs29_BW_uc/../uc8151.c:339: shortCommand1(CMD_VCOM_INTERVAL, 0x17);
      007D83 90 E4 F9         [24] 1233 	mov	dptr,#_shortCommand1_PARM_2
      007D86 74 17            [12] 1234 	mov	a,#0x17
      007D88 F0               [24] 1235 	movx	@dptr,a
      007D89 75 82 50         [24] 1236 	mov	dpl,#0x50
      007D8C 12 7C B2         [24] 1237 	lcall	_shortCommand1
                                   1238 ;	board/zbs29_BW_uc/../uc8151.c:340: shortCommand1(CMD_VCOM_DC_SETTING, 0x00);
      007D8F 90 E4 F9         [24] 1239 	mov	dptr,#_shortCommand1_PARM_2
      007D92 E4               [12] 1240 	clr	a
      007D93 F0               [24] 1241 	movx	@dptr,a
      007D94 75 82 82         [24] 1242 	mov	dpl,#0x82
      007D97 12 7C B2         [24] 1243 	lcall	_shortCommand1
                                   1244 ;	board/zbs29_BW_uc/../uc8151.c:343: shortCommand1(CMD_DEEP_SLEEP, 0xA5);
      007D9A 90 E4 F9         [24] 1245 	mov	dptr,#_shortCommand1_PARM_2
      007D9D 74 A5            [12] 1246 	mov	a,#0xa5
      007D9F F0               [24] 1247 	movx	@dptr,a
      007DA0 75 82 07         [24] 1248 	mov	dpl,#0x07
      007DA3 12 7C B2         [24] 1249 	lcall	_shortCommand1
                                   1250 ;	board/zbs29_BW_uc/../uc8151.c:344: isInited = false;
      007DA6 90 FB AE         [24] 1251 	mov	dptr,#_isInited
      007DA9 E4               [12] 1252 	clr	a
      007DAA F0               [24] 1253 	movx	@dptr,a
                                   1254 ;	board/zbs29_BW_uc/../uc8151.c:345: }
      007DAB 22               [24] 1255 	ret
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'epdDrawDirection'
                                   1258 ;------------------------------------------------------------
                                   1259 ;direction                 Allocated with name '_epdDrawDirection_direction_65536_158'
                                   1260 ;psr_setting               Allocated with name '_epdDrawDirection_psr_setting_65537_160'
                                   1261 ;------------------------------------------------------------
                                   1262 ;	board/zbs29_BW_uc/../uc8151.c:347: static void epdDrawDirection(bool direction) {
                                   1263 ;	-----------------------------------------
                                   1264 ;	 function epdDrawDirection
                                   1265 ;	-----------------------------------------
      007DAC                       1266 _epdDrawDirection:
      007DAC E5 82            [12] 1267 	mov	a,dpl
      007DAE 90 E5 00         [24] 1268 	mov	dptr,#_epdDrawDirection_direction_65536_158
                                   1269 ;	board/zbs29_BW_uc/../uc8151.c:348: if (direction == drawDirection) return;
      007DB1 F0               [24] 1270 	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
      007DB2 FF               [12] 1271 	mov	r7,a
      007DB3 90 FB AD         [24] 1272 	mov	dptr,#_drawDirection
      007DB6 E0               [24] 1273 	movx	a,@dptr
      007DB7 FE               [12] 1274 	mov	r6,a
      007DB8 EF               [12] 1275 	mov	a,r7
      007DB9 B5 06 01         [24] 1276 	cjne	a,ar6,00102$
      007DBC 22               [24] 1277 	ret
      007DBD                       1278 00102$:
                                   1279 ;	board/zbs29_BW_uc/../uc8151.c:350: drawDirection = direction;
      007DBD 90 FB AD         [24] 1280 	mov	dptr,#_drawDirection
      007DC0 EF               [12] 1281 	mov	a,r7
      007DC1 F0               [24] 1282 	movx	@dptr,a
                                   1283 ;	board/zbs29_BW_uc/../uc8151.c:361: if (drawDirection) {
      007DC2 EF               [12] 1284 	mov	a,r7
      007DC3 60 08            [24] 1285 	jz	00104$
                                   1286 ;	board/zbs29_BW_uc/../uc8151.c:362: psr_setting |= SCAN_DOWN;
      007DC5 90 E5 01         [24] 1287 	mov	dptr,#_epdDrawDirection_psr_setting_65537_160
      007DC8 74 97            [12] 1288 	mov	a,#0x97
      007DCA F0               [24] 1289 	movx	@dptr,a
      007DCB 80 06            [24] 1290 	sjmp	00105$
      007DCD                       1291 00104$:
                                   1292 ;	board/zbs29_BW_uc/../uc8151.c:364: psr_setting |= SCAN_UP;
      007DCD 90 E5 01         [24] 1293 	mov	dptr,#_epdDrawDirection_psr_setting_65537_160
      007DD0 74 9F            [12] 1294 	mov	a,#0x9f
      007DD2 F0               [24] 1295 	movx	@dptr,a
      007DD3                       1296 00105$:
                                   1297 ;	board/zbs29_BW_uc/../uc8151.c:366: shortCommand2(CMD_PANEL_SETTING, psr_setting, 0b00001011);
      007DD3 90 E5 01         [24] 1298 	mov	dptr,#_epdDrawDirection_psr_setting_65537_160
      007DD6 E0               [24] 1299 	movx	a,@dptr
      007DD7 90 E4 FB         [24] 1300 	mov	dptr,#_shortCommand2_PARM_2
      007DDA F0               [24] 1301 	movx	@dptr,a
      007DDB 90 E4 FC         [24] 1302 	mov	dptr,#_shortCommand2_PARM_3
      007DDE 74 0B            [12] 1303 	mov	a,#0x0b
      007DE0 F0               [24] 1304 	movx	@dptr,a
      007DE1 75 82 00         [24] 1305 	mov	dpl,#0x00
                                   1306 ;	board/zbs29_BW_uc/../uc8151.c:369: }
      007DE4 02 7C D3         [24] 1307 	ljmp	_shortCommand2
                                   1308 ;------------------------------------------------------------
                                   1309 ;Allocation info for local variables in function 'epdSetup'
                                   1310 ;------------------------------------------------------------
                                   1311 ;	board/zbs29_BW_uc/../uc8151.c:371: void epdSetup() {
                                   1312 ;	-----------------------------------------
                                   1313 ;	 function epdSetup
                                   1314 ;	-----------------------------------------
      007DE7                       1315 _epdSetup:
                                   1316 ;	board/zbs29_BW_uc/../uc8151.c:372: epdReset();
      007DE7 12 7D 13         [24] 1317 	lcall	_epdReset
                                   1318 ;	board/zbs29_BW_uc/../uc8151.c:374: drawDirection = false;
      007DEA 90 FB AD         [24] 1319 	mov	dptr,#_drawDirection
      007DED E4               [12] 1320 	clr	a
      007DEE F0               [24] 1321 	movx	@dptr,a
                                   1322 ;	board/zbs29_BW_uc/../uc8151.c:375: epdDrawDirection(true);
      007DEF 75 82 01         [24] 1323 	mov	dpl,#0x01
      007DF2 12 7D AC         [24] 1324 	lcall	_epdDrawDirection
                                   1325 ;	board/zbs29_BW_uc/../uc8151.c:385: commandBegin(CMD_POWER_SETTING);
      007DF5 75 82 01         [24] 1326 	mov	dpl,#0x01
      007DF8 12 7C FD         [24] 1327 	lcall	_commandBegin
                                   1328 ;	board/zbs29_BW_uc/../uc8151.c:386: epdSend(VDS_INTERNAL | VDG_INTERNAL);
      007DFB 75 82 03         [24] 1329 	mov	dpl,#0x03
      007DFE 12 5B 9E         [24] 1330 	lcall	_spiTXByte
                                   1331 ;	board/zbs29_BW_uc/../uc8151.c:387: epdSend(VCOM_VD | VGHL_15V);
      007E01 75 82 01         [24] 1332 	mov	dpl,#0x01
      007E04 12 5B 9E         [24] 1333 	lcall	_spiTXByte
                                   1334 ;	board/zbs29_BW_uc/../uc8151.c:388: commandEnd();
                                   1335 ;	assignBit
      007E07 D2 97            [12] 1336 	setb	_P1_7
                                   1337 ;	board/zbs29_BW_uc/../uc8151.c:392: commandBegin(CMD_BOOSTER_SOFT_START);
      007E09 75 82 06         [24] 1338 	mov	dpl,#0x06
      007E0C 12 7C FD         [24] 1339 	lcall	_commandBegin
                                   1340 ;	board/zbs29_BW_uc/../uc8151.c:393: epdSend(START_10MS | STRENGTH_3 | OFF_6_58US);
      007E0F 75 82 17         [24] 1341 	mov	dpl,#0x17
      007E12 12 5B 9E         [24] 1342 	lcall	_spiTXByte
                                   1343 ;	board/zbs29_BW_uc/../uc8151.c:394: epdSend(START_10MS | STRENGTH_3 | OFF_6_58US);
      007E15 75 82 17         [24] 1344 	mov	dpl,#0x17
      007E18 12 5B 9E         [24] 1345 	lcall	_spiTXByte
                                   1346 ;	board/zbs29_BW_uc/../uc8151.c:395: epdSend(START_10MS | STRENGTH_3 | OFF_6_58US);
      007E1B 75 82 17         [24] 1347 	mov	dpl,#0x17
      007E1E 12 5B 9E         [24] 1348 	lcall	_spiTXByte
                                   1349 ;	board/zbs29_BW_uc/../uc8151.c:396: commandEnd();
                                   1350 ;	assignBit
      007E21 D2 97            [12] 1351 	setb	_P1_7
                                   1352 ;	board/zbs29_BW_uc/../uc8151.c:398: shortCommand(CMD_POWER_ON);
      007E23 75 82 04         [24] 1353 	mov	dpl,#0x04
      007E26 12 7C 9C         [24] 1354 	lcall	_shortCommand
                                   1355 ;	board/zbs29_BW_uc/../uc8151.c:399: epdWaitRdy();
      007E29 12 80 32         [24] 1356 	lcall	_epdWaitRdy
                                   1357 ;	board/zbs29_BW_uc/../uc8151.c:402: commandBegin(CMD_RESOLUTION_SETING);
      007E2C 75 82 61         [24] 1358 	mov	dpl,#0x61
      007E2F 12 7C FD         [24] 1359 	lcall	_commandBegin
                                   1360 ;	board/zbs29_BW_uc/../uc8151.c:403: epdSend(SCREEN_WIDTH);
      007E32 75 82 80         [24] 1361 	mov	dpl,#0x80
      007E35 12 5B 9E         [24] 1362 	lcall	_spiTXByte
                                   1363 ;	board/zbs29_BW_uc/../uc8151.c:404: epdSend(SCREEN_HEIGHT >> 8);
      007E38 75 82 01         [24] 1364 	mov	dpl,#0x01
      007E3B 12 5B 9E         [24] 1365 	lcall	_spiTXByte
                                   1366 ;	board/zbs29_BW_uc/../uc8151.c:405: epdSend(SCREEN_HEIGHT & 0xFF);
      007E3E 75 82 28         [24] 1367 	mov	dpl,#0x28
      007E41 12 5B 9E         [24] 1368 	lcall	_spiTXByte
                                   1369 ;	board/zbs29_BW_uc/../uc8151.c:406: commandEnd();
                                   1370 ;	assignBit
      007E44 D2 97            [12] 1371 	setb	_P1_7
                                   1372 ;	board/zbs29_BW_uc/../uc8151.c:407: shortCommand1(CMD_POWER_OFF_SEQUENCE, FRAMES_1);
      007E46 90 E4 F9         [24] 1373 	mov	dptr,#_shortCommand1_PARM_2
      007E49 E4               [12] 1374 	clr	a
      007E4A F0               [24] 1375 	movx	@dptr,a
      007E4B 75 82 03         [24] 1376 	mov	dpl,#0x03
      007E4E 12 7C B2         [24] 1377 	lcall	_shortCommand1
                                   1378 ;	board/zbs29_BW_uc/../uc8151.c:408: shortCommand1(CMD_TEMPERATURE_SELECT, TEMP_INTERNAL | OFFSET_0);
      007E51 90 E4 F9         [24] 1379 	mov	dptr,#_shortCommand1_PARM_2
      007E54 E4               [12] 1380 	clr	a
      007E55 F0               [24] 1381 	movx	@dptr,a
      007E56 75 82 41         [24] 1382 	mov	dpl,#0x41
      007E59 12 7C B2         [24] 1383 	lcall	_shortCommand1
                                   1384 ;	board/zbs29_BW_uc/../uc8151.c:409: shortCommand1(CMD_TCON_SETTING, 0x22);
      007E5C 90 E4 F9         [24] 1385 	mov	dptr,#_shortCommand1_PARM_2
      007E5F 74 22            [12] 1386 	mov	a,#0x22
      007E61 F0               [24] 1387 	movx	@dptr,a
      007E62 75 82 60         [24] 1388 	mov	dpl,#0x60
      007E65 12 7C B2         [24] 1389 	lcall	_shortCommand1
                                   1390 ;	board/zbs29_BW_uc/../uc8151.c:413: shortCommand1(CMD_VCOM_INTERVAL, 0x4d);  // 0x87
      007E68 90 E4 F9         [24] 1391 	mov	dptr,#_shortCommand1_PARM_2
      007E6B 74 4D            [12] 1392 	mov	a,#0x4d
      007E6D F0               [24] 1393 	movx	@dptr,a
      007E6E 75 82 50         [24] 1394 	mov	dpl,#0x50
      007E71 12 7C B2         [24] 1395 	lcall	_shortCommand1
                                   1396 ;	board/zbs29_BW_uc/../uc8151.c:415: shortCommand1(CMD_PLL_CONTROL, HZ_200);
      007E74 90 E4 F9         [24] 1397 	mov	dptr,#_shortCommand1_PARM_2
      007E77 74 39            [12] 1398 	mov	a,#0x39
      007E79 F0               [24] 1399 	movx	@dptr,a
      007E7A 75 82 30         [24] 1400 	mov	dpl,#0x30
      007E7D 12 7C B2         [24] 1401 	lcall	_shortCommand1
                                   1402 ;	board/zbs29_BW_uc/../uc8151.c:416: epdWaitRdy();
      007E80 12 80 32         [24] 1403 	lcall	_epdWaitRdy
                                   1404 ;	board/zbs29_BW_uc/../uc8151.c:417: shortCommand(CMD_POWER_ON);
      007E83 75 82 04         [24] 1405 	mov	dpl,#0x04
      007E86 12 7C 9C         [24] 1406 	lcall	_shortCommand
                                   1407 ;	board/zbs29_BW_uc/../uc8151.c:418: epdWaitRdy();
                                   1408 ;	board/zbs29_BW_uc/../uc8151.c:419: }
      007E89 02 80 32         [24] 1409 	ljmp	_epdWaitRdy
                                   1410 ;------------------------------------------------------------
                                   1411 ;Allocation info for local variables in function 'epdGetStatus'
                                   1412 ;------------------------------------------------------------
                                   1413 ;sta                       Allocated with name '_epdGetStatus_sta_65536_167'
                                   1414 ;------------------------------------------------------------
                                   1415 ;	board/zbs29_BW_uc/../uc8151.c:420: static uint8_t epdGetStatus() {
                                   1416 ;	-----------------------------------------
                                   1417 ;	 function epdGetStatus
                                   1418 ;	-----------------------------------------
      007E8C                       1419 _epdGetStatus:
                                   1420 ;	board/zbs29_BW_uc/../uc8151.c:422: commandReadBegin(0x2F);
      007E8C 75 82 2F         [24] 1421 	mov	dpl,#0x2f
      007E8F 12 7C 34         [24] 1422 	lcall	_commandReadBegin
                                   1423 ;	board/zbs29_BW_uc/../uc8151.c:423: sta = epdReadByte();
      007E92 12 7C 5E         [24] 1424 	lcall	_epdReadByte
      007E95 AF 82            [24] 1425 	mov	r7,dpl
                                   1426 ;	board/zbs29_BW_uc/../uc8151.c:424: commandReadEnd();
      007E97 C0 07            [24] 1427 	push	ar7
      007E99 12 7C 58         [24] 1428 	lcall	_commandReadEnd
      007E9C D0 07            [24] 1429 	pop	ar7
                                   1430 ;	board/zbs29_BW_uc/../uc8151.c:425: return sta;
      007E9E 8F 82            [24] 1431 	mov	dpl,r7
                                   1432 ;	board/zbs29_BW_uc/../uc8151.c:426: }
      007EA0 22               [24] 1433 	ret
                                   1434 ;------------------------------------------------------------
                                   1435 ;Allocation info for local variables in function 'epdGetBattery'
                                   1436 ;------------------------------------------------------------
                                   1437 ;sta                       Allocated with name '_epdGetBattery_sta_65536_169'
                                   1438 ;------------------------------------------------------------
                                   1439 ;	board/zbs29_BW_uc/../uc8151.c:427: uint16_t epdGetBattery(void) {
                                   1440 ;	-----------------------------------------
                                   1441 ;	 function epdGetBattery
                                   1442 ;	-----------------------------------------
      007EA1                       1443 _epdGetBattery:
                                   1444 ;	board/zbs29_BW_uc/../uc8151.c:429: commandReadBegin(0x51);
      007EA1 75 82 51         [24] 1445 	mov	dpl,#0x51
      007EA4 12 7C 34         [24] 1446 	lcall	_commandReadBegin
                                   1447 ;	board/zbs29_BW_uc/../uc8151.c:430: sta = epdReadByte();
      007EA7 12 7C 5E         [24] 1448 	lcall	_epdReadByte
      007EAA AF 82            [24] 1449 	mov	r7,dpl
                                   1450 ;	board/zbs29_BW_uc/../uc8151.c:431: commandReadEnd();
      007EAC C0 07            [24] 1451 	push	ar7
      007EAE 12 7C 58         [24] 1452 	lcall	_commandReadEnd
      007EB1 D0 07            [24] 1453 	pop	ar7
                                   1454 ;	board/zbs29_BW_uc/../uc8151.c:432: if (sta) return 3000;
      007EB3 EF               [12] 1455 	mov	a,r7
      007EB4 60 04            [24] 1456 	jz	00102$
      007EB6 90 0B B8         [24] 1457 	mov	dptr,#0x0bb8
      007EB9 22               [24] 1458 	ret
      007EBA                       1459 00102$:
                                   1460 ;	board/zbs29_BW_uc/../uc8151.c:433: return 2100;
      007EBA 90 08 34         [24] 1461 	mov	dptr,#0x0834
                                   1462 ;	board/zbs29_BW_uc/../uc8151.c:434: }
      007EBD 22               [24] 1463 	ret
                                   1464 ;------------------------------------------------------------
                                   1465 ;Allocation info for local variables in function 'selectLUT'
                                   1466 ;------------------------------------------------------------
                                   1467 ;lut                       Allocated with name '_selectLUT_lut_65536_170'
                                   1468 ;------------------------------------------------------------
                                   1469 ;	board/zbs29_BW_uc/../uc8151.c:437: void selectLUT(uint8_t lut) {
                                   1470 ;	-----------------------------------------
                                   1471 ;	 function selectLUT
                                   1472 ;	-----------------------------------------
      007EBE                       1473 _selectLUT:
      007EBE E5 82            [12] 1474 	mov	a,dpl
      007EC0 90 E5 02         [24] 1475 	mov	dptr,#_selectLUT_lut_65536_170
                                   1476 ;	board/zbs29_BW_uc/../uc8151.c:440: lut += 1;                    // make the compiler a happy camper
      007EC3 F0               [24] 1477 	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
      007EC4 04               [12] 1478 	inc	a
      007EC5 F0               [24] 1479 	movx	@dptr,a
                                   1480 ;	board/zbs29_BW_uc/../uc8151.c:441: wdtSetResetVal(0xFF8E797F);  // 120 s
      007EC6 90 79 7F         [24] 1481 	mov	dptr,#0x797f
      007EC9 75 F0 8E         [24] 1482 	mov	b,#0x8e
      007ECC 74 FF            [12] 1483 	mov	a,#0xff
      007ECE 12 59 63         [24] 1484 	lcall	_wdtSetResetVal
                                   1485 ;	board/zbs29_BW_uc/../uc8151.c:442: wdtOn();
                                   1486 ;	board/zbs29_BW_uc/../uc8151.c:443: return;
                                   1487 ;	board/zbs29_BW_uc/../uc8151.c:444: }
      007ED1 02 59 27         [24] 1488 	ljmp	_wdtOn
                                   1489 ;------------------------------------------------------------
                                   1490 ;Allocation info for local variables in function 'setWindowXY'
                                   1491 ;------------------------------------------------------------
                                   1492 ;xend                      Allocated with name '_setWindowXY_PARM_2'
                                   1493 ;ystart                    Allocated with name '_setWindowXY_PARM_3'
                                   1494 ;yend                      Allocated with name '_setWindowXY_PARM_4'
                                   1495 ;xstart                    Allocated with name '_setWindowXY_xstart_65536_172'
                                   1496 ;------------------------------------------------------------
                                   1497 ;	board/zbs29_BW_uc/../uc8151.c:446: void setWindowXY(uint16_t xstart, uint16_t xend, uint16_t ystart, uint16_t yend) {
                                   1498 ;	-----------------------------------------
                                   1499 ;	 function setWindowXY
                                   1500 ;	-----------------------------------------
      007ED4                       1501 _setWindowXY:
      007ED4 AF 83            [24] 1502 	mov	r7,dph
      007ED6 E5 82            [12] 1503 	mov	a,dpl
      007ED8 90 E5 09         [24] 1504 	mov	dptr,#_setWindowXY_xstart_65536_172
      007EDB F0               [24] 1505 	movx	@dptr,a
      007EDC EF               [12] 1506 	mov	a,r7
      007EDD A3               [24] 1507 	inc	dptr
      007EDE F0               [24] 1508 	movx	@dptr,a
                                   1509 ;	board/zbs29_BW_uc/../uc8151.c:447: shortCommand(CMD_PARTIAL_IN);
      007EDF 75 82 91         [24] 1510 	mov	dpl,#0x91
      007EE2 12 7C 9C         [24] 1511 	lcall	_shortCommand
                                   1512 ;	board/zbs29_BW_uc/../uc8151.c:448: commandBegin(CMD_PARTIAL_WINDOW);
      007EE5 75 82 90         [24] 1513 	mov	dpl,#0x90
      007EE8 12 7C FD         [24] 1514 	lcall	_commandBegin
                                   1515 ;	board/zbs29_BW_uc/../uc8151.c:449: epdSend((xstart / 8) << 3);
      007EEB 90 E5 09         [24] 1516 	mov	dptr,#_setWindowXY_xstart_65536_172
      007EEE E0               [24] 1517 	movx	a,@dptr
      007EEF FE               [12] 1518 	mov	r6,a
      007EF0 A3               [24] 1519 	inc	dptr
      007EF1 E0               [24] 1520 	movx	a,@dptr
      007EF2 C4               [12] 1521 	swap	a
      007EF3 23               [12] 1522 	rl	a
      007EF4 CE               [12] 1523 	xch	a,r6
      007EF5 C4               [12] 1524 	swap	a
      007EF6 23               [12] 1525 	rl	a
      007EF7 54 1F            [12] 1526 	anl	a,#0x1f
      007EF9 6E               [12] 1527 	xrl	a,r6
      007EFA CE               [12] 1528 	xch	a,r6
      007EFB 54 1F            [12] 1529 	anl	a,#0x1f
      007EFD CE               [12] 1530 	xch	a,r6
      007EFE 6E               [12] 1531 	xrl	a,r6
      007EFF CE               [12] 1532 	xch	a,r6
      007F00 EE               [12] 1533 	mov	a,r6
      007F01 C4               [12] 1534 	swap	a
      007F02 03               [12] 1535 	rr	a
      007F03 54 F8            [12] 1536 	anl	a,#0xf8
      007F05 F5 82            [12] 1537 	mov	dpl,a
      007F07 12 5B 9E         [24] 1538 	lcall	_spiTXByte
                                   1539 ;	board/zbs29_BW_uc/../uc8151.c:450: epdSend(((xend / 8 - 1) << 3) | 0x07);
      007F0A 90 E5 03         [24] 1540 	mov	dptr,#_setWindowXY_PARM_2
      007F0D E0               [24] 1541 	movx	a,@dptr
      007F0E FE               [12] 1542 	mov	r6,a
      007F0F A3               [24] 1543 	inc	dptr
      007F10 E0               [24] 1544 	movx	a,@dptr
      007F11 C4               [12] 1545 	swap	a
      007F12 23               [12] 1546 	rl	a
      007F13 CE               [12] 1547 	xch	a,r6
      007F14 C4               [12] 1548 	swap	a
      007F15 23               [12] 1549 	rl	a
      007F16 54 1F            [12] 1550 	anl	a,#0x1f
      007F18 6E               [12] 1551 	xrl	a,r6
      007F19 CE               [12] 1552 	xch	a,r6
      007F1A 54 1F            [12] 1553 	anl	a,#0x1f
      007F1C CE               [12] 1554 	xch	a,r6
      007F1D 6E               [12] 1555 	xrl	a,r6
      007F1E CE               [12] 1556 	xch	a,r6
      007F1F 1E               [12] 1557 	dec	r6
      007F20 EE               [12] 1558 	mov	a,r6
      007F21 C4               [12] 1559 	swap	a
      007F22 03               [12] 1560 	rr	a
      007F23 54 F8            [12] 1561 	anl	a,#0xf8
      007F25 FE               [12] 1562 	mov	r6,a
      007F26 43 06 07         [24] 1563 	orl	ar6,#0x07
      007F29 8E 82            [24] 1564 	mov	dpl,r6
      007F2B 12 5B 9E         [24] 1565 	lcall	_spiTXByte
                                   1566 ;	board/zbs29_BW_uc/../uc8151.c:451: epdSend(ystart >> 8);
      007F2E 90 E5 05         [24] 1567 	mov	dptr,#_setWindowXY_PARM_3
      007F31 E0               [24] 1568 	movx	a,@dptr
      007F32 FE               [12] 1569 	mov	r6,a
      007F33 A3               [24] 1570 	inc	dptr
      007F34 E0               [24] 1571 	movx	a,@dptr
      007F35 F5 82            [12] 1572 	mov	dpl,a
      007F37 12 5B 9E         [24] 1573 	lcall	_spiTXByte
                                   1574 ;	board/zbs29_BW_uc/../uc8151.c:452: epdSend(ystart & 0xFF);
      007F3A 8E 82            [24] 1575 	mov	dpl,r6
      007F3C 12 5B 9E         [24] 1576 	lcall	_spiTXByte
                                   1577 ;	board/zbs29_BW_uc/../uc8151.c:453: epdSend((yend - 1) >> 8);
      007F3F 90 E5 07         [24] 1578 	mov	dptr,#_setWindowXY_PARM_4
      007F42 E0               [24] 1579 	movx	a,@dptr
      007F43 FE               [12] 1580 	mov	r6,a
      007F44 A3               [24] 1581 	inc	dptr
      007F45 E0               [24] 1582 	movx	a,@dptr
      007F46 FF               [12] 1583 	mov	r7,a
      007F47 8E 04            [24] 1584 	mov	ar4,r6
      007F49 8F 05            [24] 1585 	mov	ar5,r7
      007F4B 1C               [12] 1586 	dec	r4
      007F4C BC FF 01         [24] 1587 	cjne	r4,#0xff,00106$
      007F4F 1D               [12] 1588 	dec	r5
      007F50                       1589 00106$:
      007F50 8D 04            [24] 1590 	mov	ar4,r5
      007F52 8C 82            [24] 1591 	mov	dpl,r4
      007F54 12 5B 9E         [24] 1592 	lcall	_spiTXByte
                                   1593 ;	board/zbs29_BW_uc/../uc8151.c:454: epdSend((yend - 1) & 0xff);
      007F57 1E               [12] 1594 	dec	r6
      007F58 8E 82            [24] 1595 	mov	dpl,r6
      007F5A 12 5B 9E         [24] 1596 	lcall	_spiTXByte
                                   1597 ;	board/zbs29_BW_uc/../uc8151.c:455: epdSend(0x01);
      007F5D 75 82 01         [24] 1598 	mov	dpl,#0x01
      007F60 12 5B 9E         [24] 1599 	lcall	_spiTXByte
                                   1600 ;	board/zbs29_BW_uc/../uc8151.c:456: commandEnd();
                                   1601 ;	assignBit
      007F63 D2 97            [12] 1602 	setb	_P1_7
                                   1603 ;	board/zbs29_BW_uc/../uc8151.c:457: }
      007F65 22               [24] 1604 	ret
                                   1605 ;------------------------------------------------------------
                                   1606 ;Allocation info for local variables in function 'setColorMode'
                                   1607 ;------------------------------------------------------------
                                   1608 ;bw                        Allocated with name '_setColorMode_PARM_2'
                                   1609 ;red                       Allocated with name '_setColorMode_red_65536_175'
                                   1610 ;------------------------------------------------------------
                                   1611 ;	board/zbs29_BW_uc/../uc8151.c:459: void setColorMode(uint8_t red, uint8_t bw) {
                                   1612 ;	-----------------------------------------
                                   1613 ;	 function setColorMode
                                   1614 ;	-----------------------------------------
      007F66                       1615 _setColorMode:
                                   1616 ;	board/zbs29_BW_uc/../uc8151.c:461: red = 1;
      007F66 90 E5 0C         [24] 1617 	mov	dptr,#_setColorMode_red_65536_175
      007F69 74 01            [12] 1618 	mov	a,#0x01
      007F6B F0               [24] 1619 	movx	@dptr,a
                                   1620 ;	board/zbs29_BW_uc/../uc8151.c:463: return;
                                   1621 ;	board/zbs29_BW_uc/../uc8151.c:464: }
      007F6C 22               [24] 1622 	ret
                                   1623 ;------------------------------------------------------------
                                   1624 ;Allocation info for local variables in function 'clearScreen'
                                   1625 ;------------------------------------------------------------
                                   1626 ;c                         Allocated with name '_clearScreen_c_131072_178'
                                   1627 ;c                         Allocated with name '_clearScreen_c_131072_181'
                                   1628 ;------------------------------------------------------------
                                   1629 ;	board/zbs29_BW_uc/../uc8151.c:465: void clearScreen() {
                                   1630 ;	-----------------------------------------
                                   1631 ;	 function clearScreen
                                   1632 ;	-----------------------------------------
      007F6D                       1633 _clearScreen:
                                   1634 ;	board/zbs29_BW_uc/../uc8151.c:466: shortCommand(CMD_PARTIAL_OUT);
      007F6D 75 82 92         [24] 1635 	mov	dpl,#0x92
      007F70 12 7C 9C         [24] 1636 	lcall	_shortCommand
                                   1637 ;	board/zbs29_BW_uc/../uc8151.c:467: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM2);
      007F73 75 82 13         [24] 1638 	mov	dpl,#0x13
      007F76 12 7C FD         [24] 1639 	lcall	_commandBegin
                                   1640 ;	board/zbs29_BW_uc/../uc8151.c:468: for (uint16_t c = 0; c < ((1UL * SCREEN_HEIGHT * SCREEN_WIDTH) / 8); c++) {
      007F79 7E 00            [12] 1641 	mov	r6,#0x00
      007F7B 7F 00            [12] 1642 	mov	r7,#0x00
      007F7D                       1643 00110$:
      007F7D C3               [12] 1644 	clr	c
      007F7E EE               [12] 1645 	mov	a,r6
      007F7F 94 80            [12] 1646 	subb	a,#0x80
      007F81 EF               [12] 1647 	mov	a,r7
      007F82 94 12            [12] 1648 	subb	a,#0x12
      007F84 50 0D            [24] 1649 	jnc	00102$
                                   1650 ;	board/zbs29_BW_uc/../uc8151.c:469: epdSend(0x00);
      007F86 75 82 00         [24] 1651 	mov	dpl,#0x00
      007F89 12 5B 9E         [24] 1652 	lcall	_spiTXByte
                                   1653 ;	board/zbs29_BW_uc/../uc8151.c:468: for (uint16_t c = 0; c < ((1UL * SCREEN_HEIGHT * SCREEN_WIDTH) / 8); c++) {
      007F8C 0E               [12] 1654 	inc	r6
                                   1655 ;	board/zbs29_BW_uc/../uc8151.c:471: commandEnd();
      007F8D BE 00 ED         [24] 1656 	cjne	r6,#0x00,00110$
      007F90 0F               [12] 1657 	inc	r7
      007F91 80 EA            [24] 1658 	sjmp	00110$
      007F93                       1659 00102$:
                                   1660 ;	assignBit
      007F93 D2 97            [12] 1661 	setb	_P1_7
                                   1662 ;	board/zbs29_BW_uc/../uc8151.c:472: epdWaitRdy();
      007F95 12 80 32         [24] 1663 	lcall	_epdWaitRdy
                                   1664 ;	board/zbs29_BW_uc/../uc8151.c:473: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
      007F98 75 82 13         [24] 1665 	mov	dpl,#0x13
      007F9B 12 7C FD         [24] 1666 	lcall	_commandBegin
                                   1667 ;	board/zbs29_BW_uc/../uc8151.c:474: for (uint16_t c = 0; c < ((1UL * SCREEN_HEIGHT * SCREEN_WIDTH) / 8); c++) {
      007F9E 7E 00            [12] 1668 	mov	r6,#0x00
      007FA0 7F 00            [12] 1669 	mov	r7,#0x00
      007FA2                       1670 00113$:
      007FA2 C3               [12] 1671 	clr	c
      007FA3 EE               [12] 1672 	mov	a,r6
      007FA4 94 80            [12] 1673 	subb	a,#0x80
      007FA6 EF               [12] 1674 	mov	a,r7
      007FA7 94 12            [12] 1675 	subb	a,#0x12
      007FA9 50 0D            [24] 1676 	jnc	00106$
                                   1677 ;	board/zbs29_BW_uc/../uc8151.c:475: epdSend(0x00);
      007FAB 75 82 00         [24] 1678 	mov	dpl,#0x00
      007FAE 12 5B 9E         [24] 1679 	lcall	_spiTXByte
                                   1680 ;	board/zbs29_BW_uc/../uc8151.c:474: for (uint16_t c = 0; c < ((1UL * SCREEN_HEIGHT * SCREEN_WIDTH) / 8); c++) {
      007FB1 0E               [12] 1681 	inc	r6
                                   1682 ;	board/zbs29_BW_uc/../uc8151.c:477: commandEnd();
      007FB2 BE 00 ED         [24] 1683 	cjne	r6,#0x00,00113$
      007FB5 0F               [12] 1684 	inc	r7
      007FB6 80 EA            [24] 1685 	sjmp	00113$
      007FB8                       1686 00106$:
                                   1687 ;	assignBit
      007FB8 D2 97            [12] 1688 	setb	_P1_7
                                   1689 ;	board/zbs29_BW_uc/../uc8151.c:478: }
      007FBA 22               [24] 1690 	ret
                                   1691 ;------------------------------------------------------------
                                   1692 ;Allocation info for local variables in function 'draw'
                                   1693 ;------------------------------------------------------------
                                   1694 ;	board/zbs29_BW_uc/../uc8151.c:479: void draw() {
                                   1695 ;	-----------------------------------------
                                   1696 ;	 function draw
                                   1697 ;	-----------------------------------------
      007FBB                       1698 _draw:
                                   1699 ;	board/zbs29_BW_uc/../uc8151.c:480: shortCommand(CMD_DISPLAY_REFRESH);
      007FBB 75 82 12         [24] 1700 	mov	dpl,#0x12
      007FBE 12 7C 9C         [24] 1701 	lcall	_shortCommand
                                   1702 ;	board/zbs29_BW_uc/../uc8151.c:481: epdWaitRdy();
                                   1703 ;	board/zbs29_BW_uc/../uc8151.c:482: }
      007FC1 02 80 32         [24] 1704 	ljmp	_epdWaitRdy
                                   1705 ;------------------------------------------------------------
                                   1706 ;Allocation info for local variables in function 'drawNoWait'
                                   1707 ;------------------------------------------------------------
                                   1708 ;	board/zbs29_BW_uc/../uc8151.c:483: void drawNoWait() {
                                   1709 ;	-----------------------------------------
                                   1710 ;	 function drawNoWait
                                   1711 ;	-----------------------------------------
      007FC4                       1712 _drawNoWait:
                                   1713 ;	board/zbs29_BW_uc/../uc8151.c:484: shortCommand(CMD_DISPLAY_REFRESH);
      007FC4 75 82 12         [24] 1714 	mov	dpl,#0x12
                                   1715 ;	board/zbs29_BW_uc/../uc8151.c:485: }
      007FC7 02 7C 9C         [24] 1716 	ljmp	_shortCommand
                                   1717 ;------------------------------------------------------------
                                   1718 ;Allocation info for local variables in function 'drawWithSleep'
                                   1719 ;------------------------------------------------------------
                                   1720 ;tmp_P2FUNC                Allocated with name '_drawWithSleep_tmp_P2FUNC_65537_187'
                                   1721 ;tmp_P2DIR                 Allocated with name '_drawWithSleep_tmp_P2DIR_65537_187'
                                   1722 ;tmp_P2PULL                Allocated with name '_drawWithSleep_tmp_P2PULL_65537_187'
                                   1723 ;tmp_P2LVLSEL              Allocated with name '_drawWithSleep_tmp_P2LVLSEL_65537_187'
                                   1724 ;------------------------------------------------------------
                                   1725 ;	board/zbs29_BW_uc/../uc8151.c:486: void drawWithSleep() {
                                   1726 ;	-----------------------------------------
                                   1727 ;	 function drawWithSleep
                                   1728 ;	-----------------------------------------
      007FCA                       1729 _drawWithSleep:
                                   1730 ;	board/zbs29_BW_uc/../uc8151.c:487: shortCommand(CMD_DISPLAY_REFRESH);
      007FCA 75 82 12         [24] 1731 	mov	dpl,#0x12
      007FCD 12 7C 9C         [24] 1732 	lcall	_shortCommand
                                   1733 ;	board/zbs29_BW_uc/../uc8151.c:488: uint8_t tmp_P2FUNC = P2FUNC;
      007FD0 90 E5 0D         [24] 1734 	mov	dptr,#_drawWithSleep_tmp_P2FUNC_65537_187
      007FD3 E5 AF            [12] 1735 	mov	a,_P2FUNC
      007FD5 F0               [24] 1736 	movx	@dptr,a
                                   1737 ;	board/zbs29_BW_uc/../uc8151.c:489: uint8_t tmp_P2DIR = P2DIR;
      007FD6 90 E5 0E         [24] 1738 	mov	dptr,#_drawWithSleep_tmp_P2DIR_65537_187
      007FD9 E5 BB            [12] 1739 	mov	a,_P2DIR
      007FDB F0               [24] 1740 	movx	@dptr,a
                                   1741 ;	board/zbs29_BW_uc/../uc8151.c:490: uint8_t tmp_P2PULL = P2PULL;
      007FDC 90 E5 0F         [24] 1742 	mov	dptr,#_drawWithSleep_tmp_P2PULL_65537_187
      007FDF E5 BE            [12] 1743 	mov	a,_P2PULL
      007FE1 F0               [24] 1744 	movx	@dptr,a
                                   1745 ;	board/zbs29_BW_uc/../uc8151.c:491: uint8_t tmp_P2LVLSEL = P2LVLSEL;
      007FE2 90 E5 10         [24] 1746 	mov	dptr,#_drawWithSleep_tmp_P2LVLSEL_65537_187
      007FE5 E5 A5            [12] 1747 	mov	a,_P2LVLSEL
      007FE7 F0               [24] 1748 	movx	@dptr,a
                                   1749 ;	board/zbs29_BW_uc/../uc8151.c:492: P2FUNC &= 0xfd;
      007FE8 53 AF FD         [24] 1750 	anl	_P2FUNC,#0xfd
                                   1751 ;	board/zbs29_BW_uc/../uc8151.c:493: P2DIR |= 2;
      007FEB 43 BB 02         [24] 1752 	orl	_P2DIR,#0x02
                                   1753 ;	board/zbs29_BW_uc/../uc8151.c:494: P2PULL |= 2;
      007FEE 43 BE 02         [24] 1754 	orl	_P2PULL,#0x02
                                   1755 ;	board/zbs29_BW_uc/../uc8151.c:495: P2LVLSEL &= ~(2);
      007FF1 53 A5 FD         [24] 1756 	anl	_P2LVLSEL,#0xfd
                                   1757 ;	board/zbs29_BW_uc/../uc8151.c:497: P2CHSTA &= 0xfd;
      007FF4 53 AC FD         [24] 1758 	anl	_P2CHSTA,#0xfd
                                   1759 ;	board/zbs29_BW_uc/../uc8151.c:498: P2INTEN = 2;
      007FF7 75 A9 02         [24] 1760 	mov	_P2INTEN,#0x02
                                   1761 ;	board/zbs29_BW_uc/../uc8151.c:499: P2CHSTA &= 0xfd;
      007FFA 53 AC FD         [24] 1762 	anl	_P2CHSTA,#0xfd
                                   1763 ;	board/zbs29_BW_uc/../uc8151.c:500: sleepForMsec(TIMER_TICKS_PER_SECOND * 120);
      007FFD 90 67 D8         [24] 1764 	mov	dptr,#0x67d8
      008000 75 F0 89         [24] 1765 	mov	b,#0x89
      008003 74 09            [12] 1766 	mov	a,#0x09
      008005 12 59 C2         [24] 1767 	lcall	_sleepForMsec
                                   1768 ;	board/zbs29_BW_uc/../uc8151.c:501: wdtOn();
      008008 12 59 27         [24] 1769 	lcall	_wdtOn
                                   1770 ;	board/zbs29_BW_uc/../uc8151.c:502: P2CHSTA &= 0xfd;
      00800B 53 AC FD         [24] 1771 	anl	_P2CHSTA,#0xfd
                                   1772 ;	board/zbs29_BW_uc/../uc8151.c:503: P2INTEN &= 0xfd;
      00800E 53 A9 FD         [24] 1773 	anl	_P2INTEN,#0xfd
                                   1774 ;	board/zbs29_BW_uc/../uc8151.c:505: P2FUNC = tmp_P2FUNC;
      008011 90 E5 0D         [24] 1775 	mov	dptr,#_drawWithSleep_tmp_P2FUNC_65537_187
      008014 E0               [24] 1776 	movx	a,@dptr
      008015 F5 AF            [12] 1777 	mov	_P2FUNC,a
                                   1778 ;	board/zbs29_BW_uc/../uc8151.c:506: P2DIR = tmp_P2DIR;
      008017 90 E5 0E         [24] 1779 	mov	dptr,#_drawWithSleep_tmp_P2DIR_65537_187
      00801A E0               [24] 1780 	movx	a,@dptr
      00801B F5 BB            [12] 1781 	mov	_P2DIR,a
                                   1782 ;	board/zbs29_BW_uc/../uc8151.c:507: P2PULL = tmp_P2PULL;
      00801D 90 E5 0F         [24] 1783 	mov	dptr,#_drawWithSleep_tmp_P2PULL_65537_187
      008020 E0               [24] 1784 	movx	a,@dptr
      008021 F5 BE            [12] 1785 	mov	_P2PULL,a
                                   1786 ;	board/zbs29_BW_uc/../uc8151.c:508: P2LVLSEL = tmp_P2LVLSEL;
      008023 90 E5 10         [24] 1787 	mov	dptr,#_drawWithSleep_tmp_P2LVLSEL_65537_187
      008026 E0               [24] 1788 	movx	a,@dptr
      008027 F5 A5            [12] 1789 	mov	_P2LVLSEL,a
                                   1790 ;	board/zbs29_BW_uc/../uc8151.c:509: eepromPrvDeselect();
      008029 00               [12] 1791 	nop
      00802A 00               [12] 1792 	nop
      00802B 00               [12] 1793 	nop
                                   1794 ;	assignBit
      00802C D2 91            [12] 1795 	setb	_P1_1
      00802E 00               [12] 1796 	nop
      00802F 00               [12] 1797 	nop
      008030 00               [12] 1798 	nop
                                   1799 ;	board/zbs29_BW_uc/../uc8151.c:510: }
      008031 22               [24] 1800 	ret
                                   1801 ;------------------------------------------------------------
                                   1802 ;Allocation info for local variables in function 'epdWaitRdy'
                                   1803 ;------------------------------------------------------------
                                   1804 ;	board/zbs29_BW_uc/../uc8151.c:511: void epdWaitRdy() {
                                   1805 ;	-----------------------------------------
                                   1806 ;	 function epdWaitRdy
                                   1807 ;	-----------------------------------------
      008032                       1808 _epdWaitRdy:
                                   1809 ;	board/zbs29_BW_uc/../uc8151.c:512: epdBusyWait(TIMER_TICKS_PER_SECOND * 120);
      008032 90 67 D8         [24] 1810 	mov	dptr,#0x67d8
      008035 75 F0 89         [24] 1811 	mov	b,#0x89
      008038 74 09            [12] 1812 	mov	a,#0x09
                                   1813 ;	board/zbs29_BW_uc/../uc8151.c:513: }
      00803A 02 7B B5         [24] 1814 	ljmp	_epdBusyWait
                                   1815 ;------------------------------------------------------------
                                   1816 ;Allocation info for local variables in function 'beginFullscreenImage'
                                   1817 ;------------------------------------------------------------
                                   1818 ;	board/zbs29_BW_uc/../uc8151.c:514: void beginFullscreenImage() {
                                   1819 ;	-----------------------------------------
                                   1820 ;	 function beginFullscreenImage
                                   1821 ;	-----------------------------------------
      00803D                       1822 _beginFullscreenImage:
                                   1823 ;	board/zbs29_BW_uc/../uc8151.c:515: shortCommand(CMD_PARTIAL_OUT);
      00803D 75 82 92         [24] 1824 	mov	dpl,#0x92
      008040 12 7C 9C         [24] 1825 	lcall	_shortCommand
                                   1826 ;	board/zbs29_BW_uc/../uc8151.c:516: epdDrawDirection(false);
      008043 75 82 00         [24] 1827 	mov	dpl,#0x00
                                   1828 ;	board/zbs29_BW_uc/../uc8151.c:519: }
      008046 02 7D AC         [24] 1829 	ljmp	_epdDrawDirection
                                   1830 ;------------------------------------------------------------
                                   1831 ;Allocation info for local variables in function 'beginWriteFramebuffer'
                                   1832 ;------------------------------------------------------------
                                   1833 ;color                     Allocated with name '_beginWriteFramebuffer_color_65536_191'
                                   1834 ;------------------------------------------------------------
                                   1835 ;	board/zbs29_BW_uc/../uc8151.c:520: void beginWriteFramebuffer(bool color) {
                                   1836 ;	-----------------------------------------
                                   1837 ;	 function beginWriteFramebuffer
                                   1838 ;	-----------------------------------------
      008049                       1839 _beginWriteFramebuffer:
      008049 E5 82            [12] 1840 	mov	a,dpl
      00804B 90 E5 11         [24] 1841 	mov	dptr,#_beginWriteFramebuffer_color_65536_191
                                   1842 ;	board/zbs29_BW_uc/../uc8151.c:522: if (color == EPD_COLOR_RED) {
      00804E F0               [24] 1843 	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
      00804F 60 08            [24] 1844 	jz	00102$
                                   1845 ;	board/zbs29_BW_uc/../uc8151.c:523: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM2);
      008051 75 82 13         [24] 1846 	mov	dpl,#0x13
      008054 12 7C FD         [24] 1847 	lcall	_commandBegin
      008057 80 06            [24] 1848 	sjmp	00104$
      008059                       1849 00102$:
                                   1850 ;	board/zbs29_BW_uc/../uc8151.c:525: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
      008059 75 82 13         [24] 1851 	mov	dpl,#0x13
      00805C 12 7C FD         [24] 1852 	lcall	_commandBegin
                                   1853 ;	board/zbs29_BW_uc/../uc8151.c:527: epdDeselect();
      00805F                       1854 00104$:
                                   1855 ;	assignBit
      00805F D2 97            [12] 1856 	setb	_P1_7
                                   1857 ;	board/zbs29_BW_uc/../uc8151.c:528: }
      008061 22               [24] 1858 	ret
                                   1859 ;------------------------------------------------------------
                                   1860 ;Allocation info for local variables in function 'endWriteFramebuffer'
                                   1861 ;------------------------------------------------------------
                                   1862 ;	board/zbs29_BW_uc/../uc8151.c:529: void endWriteFramebuffer() {
                                   1863 ;	-----------------------------------------
                                   1864 ;	 function endWriteFramebuffer
                                   1865 ;	-----------------------------------------
      008062                       1866 _endWriteFramebuffer:
                                   1867 ;	board/zbs29_BW_uc/../uc8151.c:530: commandEnd();
                                   1868 ;	assignBit
      008062 D2 97            [12] 1869 	setb	_P1_7
                                   1870 ;	board/zbs29_BW_uc/../uc8151.c:531: }
      008064 22               [24] 1871 	ret
                                   1872 ;------------------------------------------------------------
                                   1873 ;Allocation info for local variables in function 'loadRawBitmap'
                                   1874 ;------------------------------------------------------------
                                   1875 ;x                         Allocated to stack - sp -13
                                   1876 ;y                         Allocated to stack - sp -15
                                   1877 ;color                     Allocated to stack - sp -16
                                   1878 ;bmp                       Allocated to registers 
                                   1879 ;xsize                     Allocated to stack - sp -3
                                   1880 ;ysize                     Allocated to registers 
                                   1881 ;size                      Allocated to registers 
                                   1882 ;c                         Allocated to stack - sp -1
                                   1883 ;curY                      Allocated to registers 
                                   1884 ;sloc0                     Allocated to stack - sp -9
                                   1885 ;sloc1                     Allocated to stack - sp -7
                                   1886 ;sloc2                     Allocated to stack - sp -5
                                   1887 ;------------------------------------------------------------
                                   1888 ;	board/zbs29_BW_uc/../uc8151.c:533: void loadRawBitmap(uint8_t* bmp, uint16_t x, uint16_t y, bool color) __reentrant {
                                   1889 ;	-----------------------------------------
                                   1890 ;	 function loadRawBitmap
                                   1891 ;	-----------------------------------------
      008065                       1892 _loadRawBitmap:
      008065 E5 81            [12] 1893 	mov	a,sp
      008067 24 0A            [12] 1894 	add	a,#0x0a
      008069 F5 81            [12] 1895 	mov	sp,a
                                   1896 ;	board/zbs29_BW_uc/../uc8151.c:537: uint16_t xsize = bmp[0] / 8;
      00806B AD 82            [24] 1897 	mov	r5,dpl
      00806D AE 83            [24] 1898 	mov	r6,dph
      00806F AF F0            [24] 1899 	mov	r7,b
      008071 12 A6 24         [24] 1900 	lcall	__gptrget
      008074 FC               [12] 1901 	mov	r4,a
      008075 E5 81            [12] 1902 	mov	a,sp
      008077 24 F7            [12] 1903 	add	a,#0xf7
      008079 F8               [12] 1904 	mov	r0,a
      00807A A6 04            [24] 1905 	mov	@r0,ar4
      00807C 08               [12] 1906 	inc	r0
      00807D 76 00            [12] 1907 	mov	@r0,#0x00
      00807F 90 E5 F0         [24] 1908 	mov	dptr,#__divsint_PARM_2
      008082 74 08            [12] 1909 	mov	a,#0x08
      008084 F0               [24] 1910 	movx	@dptr,a
      008085 E4               [12] 1911 	clr	a
      008086 A3               [24] 1912 	inc	dptr
      008087 F0               [24] 1913 	movx	@dptr,a
      008088 E5 81            [12] 1914 	mov	a,sp
      00808A 24 F7            [12] 1915 	add	a,#0xf7
      00808C F8               [12] 1916 	mov	r0,a
      00808D 86 82            [24] 1917 	mov	dpl,@r0
      00808F 08               [12] 1918 	inc	r0
      008090 86 83            [24] 1919 	mov	dph,@r0
      008092 C0 07            [24] 1920 	push	ar7
      008094 C0 06            [24] 1921 	push	ar6
      008096 C0 05            [24] 1922 	push	ar5
      008098 12 A5 9A         [24] 1923 	lcall	__divsint
      00809B AA 82            [24] 1924 	mov	r2,dpl
      00809D AC 83            [24] 1925 	mov	r4,dph
      00809F D0 05            [24] 1926 	pop	ar5
      0080A1 D0 06            [24] 1927 	pop	ar6
      0080A3 D0 07            [24] 1928 	pop	ar7
      0080A5 E5 81            [12] 1929 	mov	a,sp
      0080A7 24 FD            [12] 1930 	add	a,#0xfd
      0080A9 F8               [12] 1931 	mov	r0,a
      0080AA A6 02            [24] 1932 	mov	@r0,ar2
      0080AC 08               [12] 1933 	inc	r0
      0080AD A6 04            [24] 1934 	mov	@r0,ar4
                                   1935 ;	board/zbs29_BW_uc/../uc8151.c:538: if (bmp[0] % 8) xsize++;
      0080AF E5 81            [12] 1936 	mov	a,sp
      0080B1 24 F7            [12] 1937 	add	a,#0xf7
      0080B3 F8               [12] 1938 	mov	r0,a
      0080B4 E6               [12] 1939 	mov	a,@r0
      0080B5 54 07            [12] 1940 	anl	a,#0x07
      0080B7 60 0B            [24] 1941 	jz	00102$
      0080B9 E5 81            [12] 1942 	mov	a,sp
      0080BB 24 FD            [12] 1943 	add	a,#0xfd
      0080BD F8               [12] 1944 	mov	r0,a
      0080BE 06               [12] 1945 	inc	@r0
      0080BF B6 00 02         [24] 1946 	cjne	@r0,#0x00,00156$
      0080C2 08               [12] 1947 	inc	r0
      0080C3 06               [12] 1948 	inc	@r0
      0080C4                       1949 00156$:
      0080C4                       1950 00102$:
                                   1951 ;	board/zbs29_BW_uc/../uc8151.c:540: uint16_t size = xsize * bmp[1];
      0080C4 74 01            [12] 1952 	mov	a,#0x01
      0080C6 2D               [12] 1953 	add	a,r5
      0080C7 FA               [12] 1954 	mov	r2,a
      0080C8 E4               [12] 1955 	clr	a
      0080C9 3E               [12] 1956 	addc	a,r6
      0080CA FB               [12] 1957 	mov	r3,a
      0080CB 8F 04            [24] 1958 	mov	ar4,r7
      0080CD 8A 82            [24] 1959 	mov	dpl,r2
      0080CF 8B 83            [24] 1960 	mov	dph,r3
      0080D1 8C F0            [24] 1961 	mov	b,r4
      0080D3 12 A6 24         [24] 1962 	lcall	__gptrget
      0080D6 90 E5 D5         [24] 1963 	mov	dptr,#__mulint_PARM_2
      0080D9 F0               [24] 1964 	movx	@dptr,a
      0080DA E4               [12] 1965 	clr	a
      0080DB A3               [24] 1966 	inc	dptr
      0080DC F0               [24] 1967 	movx	@dptr,a
      0080DD E5 81            [12] 1968 	mov	a,sp
      0080DF 24 FD            [12] 1969 	add	a,#0xfd
      0080E1 F8               [12] 1970 	mov	r0,a
      0080E2 86 82            [24] 1971 	mov	dpl,@r0
      0080E4 08               [12] 1972 	inc	r0
      0080E5 86 83            [24] 1973 	mov	dph,@r0
      0080E7 C0 07            [24] 1974 	push	ar7
      0080E9 C0 06            [24] 1975 	push	ar6
      0080EB C0 05            [24] 1976 	push	ar5
      0080ED 12 A1 DE         [24] 1977 	lcall	__mulint
      0080F0 C8               [12] 1978 	xch	a,r0
      0080F1 E5 81            [12] 1979 	mov	a,sp
      0080F3 24 F6            [12] 1980 	add	a,#0xf6
      0080F5 C8               [12] 1981 	xch	a,r0
      0080F6 A6 82            [24] 1982 	mov	@r0,dpl
      0080F8 08               [12] 1983 	inc	r0
      0080F9 A6 83            [24] 1984 	mov	@r0,dph
      0080FB D0 05            [24] 1985 	pop	ar5
      0080FD D0 06            [24] 1986 	pop	ar6
      0080FF D0 07            [24] 1987 	pop	ar7
                                   1988 ;	board/zbs29_BW_uc/../uc8151.c:544: bmp += 2;
      008101 74 02            [12] 1989 	mov	a,#0x02
      008103 2D               [12] 1990 	add	a,r5
      008104 FD               [12] 1991 	mov	r5,a
      008105 E4               [12] 1992 	clr	a
      008106 3E               [12] 1993 	addc	a,r6
      008107 FE               [12] 1994 	mov	r6,a
                                   1995 ;	board/zbs29_BW_uc/../uc8151.c:547: uint16_t curY = y;
      008108 E5 81            [12] 1996 	mov	a,sp
      00810A 24 F1            [12] 1997 	add	a,#0xf1
      00810C F8               [12] 1998 	mov	r0,a
      00810D E5 81            [12] 1999 	mov	a,sp
      00810F 24 F7            [12] 2000 	add	a,#0xf7
      008111 F9               [12] 2001 	mov	r1,a
      008112 E6               [12] 2002 	mov	a,@r0
      008113 F7               [12] 2003 	mov	@r1,a
      008114 08               [12] 2004 	inc	r0
      008115 E6               [12] 2005 	mov	a,@r0
      008116 09               [12] 2006 	inc	r1
      008117 F7               [12] 2007 	mov	@r1,a
                                   2008 ;	board/zbs29_BW_uc/../uc8151.c:548: while (1) {
      008118 A8 81            [24] 2009 	mov	r0,sp
      00811A 18               [12] 2010 	dec	r0
      00811B E4               [12] 2011 	clr	a
      00811C F6               [12] 2012 	mov	@r0,a
      00811D 08               [12] 2013 	inc	r0
      00811E F6               [12] 2014 	mov	@r0,a
      00811F                       2015 00117$:
                                   2016 ;	board/zbs29_BW_uc/../uc8151.c:549: if (c % xsize == 0) {
      00811F E5 81            [12] 2017 	mov	a,sp
      008121 24 FD            [12] 2018 	add	a,#0xfd
      008123 F8               [12] 2019 	mov	r0,a
      008124 90 E5 EB         [24] 2020 	mov	dptr,#__moduint_PARM_2
      008127 E6               [12] 2021 	mov	a,@r0
      008128 F0               [24] 2022 	movx	@dptr,a
      008129 08               [12] 2023 	inc	r0
      00812A E6               [12] 2024 	mov	a,@r0
      00812B A3               [24] 2025 	inc	dptr
      00812C F0               [24] 2026 	movx	@dptr,a
      00812D A8 81            [24] 2027 	mov	r0,sp
      00812F 18               [12] 2028 	dec	r0
      008130 86 82            [24] 2029 	mov	dpl,@r0
      008132 08               [12] 2030 	inc	r0
      008133 86 83            [24] 2031 	mov	dph,@r0
      008135 C0 07            [24] 2032 	push	ar7
      008137 C0 06            [24] 2033 	push	ar6
      008139 C0 05            [24] 2034 	push	ar5
      00813B 12 A4 EE         [24] 2035 	lcall	__moduint
      00813E E5 82            [12] 2036 	mov	a,dpl
      008140 85 83 F0         [24] 2037 	mov	b,dph
      008143 D0 05            [24] 2038 	pop	ar5
      008145 D0 06            [24] 2039 	pop	ar6
      008147 D0 07            [24] 2040 	pop	ar7
      008149 45 F0            [12] 2041 	orl	a,b
      00814B 60 03            [24] 2042 	jz	00157$
      00814D 02 82 94         [24] 2043 	ljmp	00113$
      008150                       2044 00157$:
                                   2045 ;	board/zbs29_BW_uc/../uc8151.c:550: commandEnd();
                                   2046 ;	assignBit
      008150 D2 97            [12] 2047 	setb	_P1_7
                                   2048 ;	board/zbs29_BW_uc/../uc8151.c:551: if (drawDirection) {
      008152 90 FB AD         [24] 2049 	mov	dptr,#_drawDirection
      008155 E0               [24] 2050 	movx	a,@dptr
      008156 70 03            [24] 2051 	jnz	00158$
      008158 02 81 DD         [24] 2052 	ljmp	00107$
      00815B                       2053 00158$:
                                   2054 ;	board/zbs29_BW_uc/../uc8151.c:552: setWindowXY(x, x + xsize * 8, SCREEN_HEIGHT - curY - 1, SCREEN_HEIGHT - curY);
      00815B E5 81            [12] 2055 	mov	a,sp
      00815D 24 FD            [12] 2056 	add	a,#0xfd
      00815F F8               [12] 2057 	mov	r0,a
      008160 86 03            [24] 2058 	mov	ar3,@r0
      008162 08               [12] 2059 	inc	r0
      008163 86 04            [24] 2060 	mov	ar4,@r0
      008165 E5 81            [12] 2061 	mov	a,sp
      008167 24 FB            [12] 2062 	add	a,#0xfb
      008169 F8               [12] 2063 	mov	r0,a
      00816A A6 03            [24] 2064 	mov	@r0,ar3
      00816C EC               [12] 2065 	mov	a,r4
      00816D C4               [12] 2066 	swap	a
      00816E 03               [12] 2067 	rr	a
      00816F 54 F8            [12] 2068 	anl	a,#0xf8
      008171 C6               [12] 2069 	xch	a,@r0
      008172 C4               [12] 2070 	swap	a
      008173 03               [12] 2071 	rr	a
      008174 C6               [12] 2072 	xch	a,@r0
      008175 66               [12] 2073 	xrl	a,@r0
      008176 C6               [12] 2074 	xch	a,@r0
      008177 54 F8            [12] 2075 	anl	a,#0xf8
      008179 C6               [12] 2076 	xch	a,@r0
      00817A 66               [12] 2077 	xrl	a,@r0
      00817B 08               [12] 2078 	inc	r0
      00817C F6               [12] 2079 	mov	@r0,a
      00817D E5 81            [12] 2080 	mov	a,sp
      00817F 24 F3            [12] 2081 	add	a,#0xf3
      008181 F8               [12] 2082 	mov	r0,a
      008182 86 02            [24] 2083 	mov	ar2,@r0
      008184 08               [12] 2084 	inc	r0
      008185 86 04            [24] 2085 	mov	ar4,@r0
      008187 E5 81            [12] 2086 	mov	a,sp
      008189 24 FB            [12] 2087 	add	a,#0xfb
      00818B F8               [12] 2088 	mov	r0,a
      00818C E6               [12] 2089 	mov	a,@r0
      00818D 2A               [12] 2090 	add	a,r2
      00818E FA               [12] 2091 	mov	r2,a
      00818F 08               [12] 2092 	inc	r0
      008190 E6               [12] 2093 	mov	a,@r0
      008191 3C               [12] 2094 	addc	a,r4
      008192 FC               [12] 2095 	mov	r4,a
      008193 90 E5 03         [24] 2096 	mov	dptr,#_setWindowXY_PARM_2
      008196 EA               [12] 2097 	mov	a,r2
      008197 F0               [24] 2098 	movx	@dptr,a
      008198 EC               [12] 2099 	mov	a,r4
      008199 A3               [24] 2100 	inc	dptr
      00819A F0               [24] 2101 	movx	@dptr,a
      00819B E5 81            [12] 2102 	mov	a,sp
      00819D 24 F7            [12] 2103 	add	a,#0xf7
      00819F F8               [12] 2104 	mov	r0,a
      0081A0 90 E5 05         [24] 2105 	mov	dptr,#_setWindowXY_PARM_3
      0081A3 74 27            [12] 2106 	mov	a,#0x27
      0081A5 C3               [12] 2107 	clr	c
      0081A6 96               [12] 2108 	subb	a,@r0
      0081A7 F0               [24] 2109 	movx	@dptr,a
      0081A8 74 01            [12] 2110 	mov	a,#0x01
      0081AA 08               [12] 2111 	inc	r0
      0081AB 96               [12] 2112 	subb	a,@r0
      0081AC A3               [24] 2113 	inc	dptr
      0081AD F0               [24] 2114 	movx	@dptr,a
      0081AE E5 81            [12] 2115 	mov	a,sp
      0081B0 24 F7            [12] 2116 	add	a,#0xf7
      0081B2 F8               [12] 2117 	mov	r0,a
      0081B3 90 E5 07         [24] 2118 	mov	dptr,#_setWindowXY_PARM_4
      0081B6 74 28            [12] 2119 	mov	a,#0x28
      0081B8 C3               [12] 2120 	clr	c
      0081B9 96               [12] 2121 	subb	a,@r0
      0081BA F0               [24] 2122 	movx	@dptr,a
      0081BB 74 01            [12] 2123 	mov	a,#0x01
      0081BD 08               [12] 2124 	inc	r0
      0081BE 96               [12] 2125 	subb	a,@r0
      0081BF A3               [24] 2126 	inc	dptr
      0081C0 F0               [24] 2127 	movx	@dptr,a
      0081C1 E5 81            [12] 2128 	mov	a,sp
      0081C3 24 F3            [12] 2129 	add	a,#0xf3
      0081C5 F8               [12] 2130 	mov	r0,a
      0081C6 86 82            [24] 2131 	mov	dpl,@r0
      0081C8 08               [12] 2132 	inc	r0
      0081C9 86 83            [24] 2133 	mov	dph,@r0
      0081CB C0 07            [24] 2134 	push	ar7
      0081CD C0 06            [24] 2135 	push	ar6
      0081CF C0 05            [24] 2136 	push	ar5
      0081D1 12 7E D4         [24] 2137 	lcall	_setWindowXY
      0081D4 D0 05            [24] 2138 	pop	ar5
      0081D6 D0 06            [24] 2139 	pop	ar6
      0081D8 D0 07            [24] 2140 	pop	ar7
      0081DA 02 82 5B         [24] 2141 	ljmp	00108$
      0081DD                       2142 00107$:
                                   2143 ;	board/zbs29_BW_uc/../uc8151.c:554: setWindowXY(x, x + xsize * 8, curY - 1, curY);
      0081DD E5 81            [12] 2144 	mov	a,sp
      0081DF 24 FD            [12] 2145 	add	a,#0xfd
      0081E1 F8               [12] 2146 	mov	r0,a
      0081E2 86 03            [24] 2147 	mov	ar3,@r0
      0081E4 08               [12] 2148 	inc	r0
      0081E5 86 04            [24] 2149 	mov	ar4,@r0
      0081E7 E5 81            [12] 2150 	mov	a,sp
      0081E9 24 FB            [12] 2151 	add	a,#0xfb
      0081EB F8               [12] 2152 	mov	r0,a
      0081EC A6 03            [24] 2153 	mov	@r0,ar3
      0081EE EC               [12] 2154 	mov	a,r4
      0081EF C4               [12] 2155 	swap	a
      0081F0 03               [12] 2156 	rr	a
      0081F1 54 F8            [12] 2157 	anl	a,#0xf8
      0081F3 C6               [12] 2158 	xch	a,@r0
      0081F4 C4               [12] 2159 	swap	a
      0081F5 03               [12] 2160 	rr	a
      0081F6 C6               [12] 2161 	xch	a,@r0
      0081F7 66               [12] 2162 	xrl	a,@r0
      0081F8 C6               [12] 2163 	xch	a,@r0
      0081F9 54 F8            [12] 2164 	anl	a,#0xf8
      0081FB C6               [12] 2165 	xch	a,@r0
      0081FC 66               [12] 2166 	xrl	a,@r0
      0081FD 08               [12] 2167 	inc	r0
      0081FE F6               [12] 2168 	mov	@r0,a
      0081FF E5 81            [12] 2169 	mov	a,sp
      008201 24 F3            [12] 2170 	add	a,#0xf3
      008203 F8               [12] 2171 	mov	r0,a
      008204 86 02            [24] 2172 	mov	ar2,@r0
      008206 08               [12] 2173 	inc	r0
      008207 86 04            [24] 2174 	mov	ar4,@r0
      008209 E5 81            [12] 2175 	mov	a,sp
      00820B 24 FB            [12] 2176 	add	a,#0xfb
      00820D F8               [12] 2177 	mov	r0,a
      00820E E6               [12] 2178 	mov	a,@r0
      00820F 2A               [12] 2179 	add	a,r2
      008210 FA               [12] 2180 	mov	r2,a
      008211 08               [12] 2181 	inc	r0
      008212 E6               [12] 2182 	mov	a,@r0
      008213 3C               [12] 2183 	addc	a,r4
      008214 FC               [12] 2184 	mov	r4,a
      008215 90 E5 03         [24] 2185 	mov	dptr,#_setWindowXY_PARM_2
      008218 EA               [12] 2186 	mov	a,r2
      008219 F0               [24] 2187 	movx	@dptr,a
      00821A EC               [12] 2188 	mov	a,r4
      00821B A3               [24] 2189 	inc	dptr
      00821C F0               [24] 2190 	movx	@dptr,a
      00821D E5 81            [12] 2191 	mov	a,sp
      00821F 24 F7            [12] 2192 	add	a,#0xf7
      008221 F8               [12] 2193 	mov	r0,a
      008222 86 03            [24] 2194 	mov	ar3,@r0
      008224 08               [12] 2195 	inc	r0
      008225 86 04            [24] 2196 	mov	ar4,@r0
      008227 1B               [12] 2197 	dec	r3
      008228 BB FF 01         [24] 2198 	cjne	r3,#0xff,00159$
      00822B 1C               [12] 2199 	dec	r4
      00822C                       2200 00159$:
      00822C 90 E5 05         [24] 2201 	mov	dptr,#_setWindowXY_PARM_3
      00822F EB               [12] 2202 	mov	a,r3
      008230 F0               [24] 2203 	movx	@dptr,a
      008231 EC               [12] 2204 	mov	a,r4
      008232 A3               [24] 2205 	inc	dptr
      008233 F0               [24] 2206 	movx	@dptr,a
      008234 E5 81            [12] 2207 	mov	a,sp
      008236 24 F7            [12] 2208 	add	a,#0xf7
      008238 F8               [12] 2209 	mov	r0,a
      008239 90 E5 07         [24] 2210 	mov	dptr,#_setWindowXY_PARM_4
      00823C E6               [12] 2211 	mov	a,@r0
      00823D F0               [24] 2212 	movx	@dptr,a
      00823E 08               [12] 2213 	inc	r0
      00823F E6               [12] 2214 	mov	a,@r0
      008240 A3               [24] 2215 	inc	dptr
      008241 F0               [24] 2216 	movx	@dptr,a
      008242 E5 81            [12] 2217 	mov	a,sp
      008244 24 F3            [12] 2218 	add	a,#0xf3
      008246 F8               [12] 2219 	mov	r0,a
      008247 86 82            [24] 2220 	mov	dpl,@r0
      008249 08               [12] 2221 	inc	r0
      00824A 86 83            [24] 2222 	mov	dph,@r0
      00824C C0 07            [24] 2223 	push	ar7
      00824E C0 06            [24] 2224 	push	ar6
      008250 C0 05            [24] 2225 	push	ar5
      008252 12 7E D4         [24] 2226 	lcall	_setWindowXY
      008255 D0 05            [24] 2227 	pop	ar5
      008257 D0 06            [24] 2228 	pop	ar6
      008259 D0 07            [24] 2229 	pop	ar7
                                   2230 ;	board/zbs29_BW_uc/../uc8151.c:568: shortCommand(CMD_PARTIAL_OUT);
                                   2231 ;	board/zbs29_BW_uc/../uc8151.c:554: setWindowXY(x, x + xsize * 8, curY - 1, curY);
      00825B                       2232 00108$:
                                   2233 ;	board/zbs29_BW_uc/../uc8151.c:556: curY++;
      00825B E5 81            [12] 2234 	mov	a,sp
      00825D 24 F7            [12] 2235 	add	a,#0xf7
      00825F F8               [12] 2236 	mov	r0,a
      008260 06               [12] 2237 	inc	@r0
      008261 B6 00 02         [24] 2238 	cjne	@r0,#0x00,00160$
      008264 08               [12] 2239 	inc	r0
      008265 06               [12] 2240 	inc	@r0
      008266                       2241 00160$:
                                   2242 ;	board/zbs29_BW_uc/../uc8151.c:557: if (color) {
      008266 E5 81            [12] 2243 	mov	a,sp
      008268 24 F0            [12] 2244 	add	a,#0xf0
      00826A F8               [12] 2245 	mov	r0,a
      00826B E6               [12] 2246 	mov	a,@r0
      00826C 60 14            [24] 2247 	jz	00110$
                                   2248 ;	board/zbs29_BW_uc/../uc8151.c:558: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM2);
      00826E 75 82 13         [24] 2249 	mov	dpl,#0x13
      008271 C0 07            [24] 2250 	push	ar7
      008273 C0 06            [24] 2251 	push	ar6
      008275 C0 05            [24] 2252 	push	ar5
      008277 12 7C FD         [24] 2253 	lcall	_commandBegin
      00827A D0 05            [24] 2254 	pop	ar5
      00827C D0 06            [24] 2255 	pop	ar6
      00827E D0 07            [24] 2256 	pop	ar7
      008280 80 12            [24] 2257 	sjmp	00113$
      008282                       2258 00110$:
                                   2259 ;	board/zbs29_BW_uc/../uc8151.c:560: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
      008282 75 82 13         [24] 2260 	mov	dpl,#0x13
      008285 C0 07            [24] 2261 	push	ar7
      008287 C0 06            [24] 2262 	push	ar6
      008289 C0 05            [24] 2263 	push	ar5
      00828B 12 7C FD         [24] 2264 	lcall	_commandBegin
      00828E D0 05            [24] 2265 	pop	ar5
      008290 D0 06            [24] 2266 	pop	ar6
      008292 D0 07            [24] 2267 	pop	ar7
      008294                       2268 00113$:
                                   2269 ;	board/zbs29_BW_uc/../uc8151.c:563: epdSend(*(bmp++));
      008294 8D 82            [24] 2270 	mov	dpl,r5
      008296 8E 83            [24] 2271 	mov	dph,r6
      008298 8F F0            [24] 2272 	mov	b,r7
      00829A 12 A6 24         [24] 2273 	lcall	__gptrget
      00829D FB               [12] 2274 	mov	r3,a
      00829E A3               [24] 2275 	inc	dptr
      00829F AD 82            [24] 2276 	mov	r5,dpl
      0082A1 AE 83            [24] 2277 	mov	r6,dph
      0082A3 8B 82            [24] 2278 	mov	dpl,r3
      0082A5 12 5B 9E         [24] 2279 	lcall	_spiTXByte
                                   2280 ;	board/zbs29_BW_uc/../uc8151.c:564: c++;
      0082A8 A8 81            [24] 2281 	mov	r0,sp
      0082AA 18               [12] 2282 	dec	r0
      0082AB 06               [12] 2283 	inc	@r0
      0082AC B6 00 02         [24] 2284 	cjne	@r0,#0x00,00162$
      0082AF 08               [12] 2285 	inc	r0
      0082B0 06               [12] 2286 	inc	@r0
      0082B1                       2287 00162$:
                                   2288 ;	board/zbs29_BW_uc/../uc8151.c:565: if (!size--) break;
      0082B1 E5 81            [12] 2289 	mov	a,sp
      0082B3 24 F9            [12] 2290 	add	a,#0xf9
      0082B5 F8               [12] 2291 	mov	r0,a
      0082B6 86 03            [24] 2292 	mov	ar3,@r0
      0082B8 08               [12] 2293 	inc	r0
      0082B9 86 04            [24] 2294 	mov	ar4,@r0
      0082BB E5 81            [12] 2295 	mov	a,sp
      0082BD 24 F9            [12] 2296 	add	a,#0xf9
      0082BF F8               [12] 2297 	mov	r0,a
      0082C0 16               [12] 2298 	dec	@r0
      0082C1 B6 FF 02         [24] 2299 	cjne	@r0,#0xff,00163$
      0082C4 08               [12] 2300 	inc	r0
      0082C5 16               [12] 2301 	dec	@r0
      0082C6                       2302 00163$:
      0082C6 EB               [12] 2303 	mov	a,r3
      0082C7 4C               [12] 2304 	orl	a,r4
      0082C8 60 03            [24] 2305 	jz	00164$
      0082CA 02 81 1F         [24] 2306 	ljmp	00117$
      0082CD                       2307 00164$:
                                   2308 ;	board/zbs29_BW_uc/../uc8151.c:567: commandEnd();
                                   2309 ;	assignBit
      0082CD D2 97            [12] 2310 	setb	_P1_7
                                   2311 ;	board/zbs29_BW_uc/../uc8151.c:568: shortCommand(CMD_PARTIAL_OUT);
      0082CF 75 82 92         [24] 2312 	mov	dpl,#0x92
      0082D2 12 7C 9C         [24] 2313 	lcall	_shortCommand
                                   2314 ;	board/zbs29_BW_uc/../uc8151.c:569: }
      0082D5 E5 81            [12] 2315 	mov	a,sp
      0082D7 24 F6            [12] 2316 	add	a,#0xf6
      0082D9 F5 81            [12] 2317 	mov	sp,a
      0082DB 22               [24] 2318 	ret
                                   2319 ;------------------------------------------------------------
                                   2320 ;Allocation info for local variables in function 'printBarcode'
                                   2321 ;------------------------------------------------------------
                                   2322 ;x                         Allocated with name '_printBarcode_PARM_2'
                                   2323 ;y                         Allocated with name '_printBarcode_PARM_3'
                                   2324 ;string                    Allocated with name '_printBarcode_string_65536_210'
                                   2325 ;bci                       Allocated with name '_printBarcode_bci_65537_212'
                                   2326 ;------------------------------------------------------------
                                   2327 ;	board/zbs29_BW_uc/../uc8151.c:570: void printBarcode(const uint8_t* string, uint16_t x, uint16_t y) {
                                   2328 ;	-----------------------------------------
                                   2329 ;	 function printBarcode
                                   2330 ;	-----------------------------------------
      0082DC                       2331 _printBarcode:
      0082DC AF F0            [24] 2332 	mov	r7,b
      0082DE AE 83            [24] 2333 	mov	r6,dph
      0082E0 E5 82            [12] 2334 	mov	a,dpl
      0082E2 90 E5 16         [24] 2335 	mov	dptr,#_printBarcode_string_65536_210
      0082E5 F0               [24] 2336 	movx	@dptr,a
      0082E6 EE               [12] 2337 	mov	a,r6
      0082E7 A3               [24] 2338 	inc	dptr
      0082E8 F0               [24] 2339 	movx	@dptr,a
      0082E9 EF               [12] 2340 	mov	a,r7
      0082EA A3               [24] 2341 	inc	dptr
      0082EB F0               [24] 2342 	movx	@dptr,a
                                   2343 ;	board/zbs29_BW_uc/../uc8151.c:571: setWindowXY(x, x + 8, SCREEN_HEIGHT - y, SCREEN_HEIGHT);
      0082EC 90 E5 12         [24] 2344 	mov	dptr,#_printBarcode_PARM_2
      0082EF E0               [24] 2345 	movx	a,@dptr
      0082F0 FE               [12] 2346 	mov	r6,a
      0082F1 A3               [24] 2347 	inc	dptr
      0082F2 E0               [24] 2348 	movx	a,@dptr
      0082F3 FF               [12] 2349 	mov	r7,a
      0082F4 8E 04            [24] 2350 	mov	ar4,r6
      0082F6 8F 05            [24] 2351 	mov	ar5,r7
      0082F8 74 08            [12] 2352 	mov	a,#0x08
      0082FA 2C               [12] 2353 	add	a,r4
      0082FB FC               [12] 2354 	mov	r4,a
      0082FC E4               [12] 2355 	clr	a
      0082FD 3D               [12] 2356 	addc	a,r5
      0082FE FD               [12] 2357 	mov	r5,a
      0082FF 90 E5 14         [24] 2358 	mov	dptr,#_printBarcode_PARM_3
      008302 E0               [24] 2359 	movx	a,@dptr
      008303 FA               [12] 2360 	mov	r2,a
      008304 A3               [24] 2361 	inc	dptr
      008305 E0               [24] 2362 	movx	a,@dptr
      008306 FB               [12] 2363 	mov	r3,a
      008307 74 28            [12] 2364 	mov	a,#0x28
      008309 C3               [12] 2365 	clr	c
      00830A 9A               [12] 2366 	subb	a,r2
      00830B FA               [12] 2367 	mov	r2,a
      00830C 74 01            [12] 2368 	mov	a,#0x01
      00830E 9B               [12] 2369 	subb	a,r3
      00830F FB               [12] 2370 	mov	r3,a
      008310 90 E5 03         [24] 2371 	mov	dptr,#_setWindowXY_PARM_2
      008313 EC               [12] 2372 	mov	a,r4
      008314 F0               [24] 2373 	movx	@dptr,a
      008315 ED               [12] 2374 	mov	a,r5
      008316 A3               [24] 2375 	inc	dptr
      008317 F0               [24] 2376 	movx	@dptr,a
      008318 90 E5 05         [24] 2377 	mov	dptr,#_setWindowXY_PARM_3
      00831B EA               [12] 2378 	mov	a,r2
      00831C F0               [24] 2379 	movx	@dptr,a
      00831D EB               [12] 2380 	mov	a,r3
      00831E A3               [24] 2381 	inc	dptr
      00831F F0               [24] 2382 	movx	@dptr,a
      008320 90 E5 07         [24] 2383 	mov	dptr,#_setWindowXY_PARM_4
      008323 74 28            [12] 2384 	mov	a,#0x28
      008325 F0               [24] 2385 	movx	@dptr,a
      008326 74 01            [12] 2386 	mov	a,#0x01
      008328 A3               [24] 2387 	inc	dptr
      008329 F0               [24] 2388 	movx	@dptr,a
      00832A 8E 82            [24] 2389 	mov	dpl,r6
      00832C 8F 83            [24] 2390 	mov	dph,r7
      00832E 12 7E D4         [24] 2391 	lcall	_setWindowXY
                                   2392 ;	board/zbs29_BW_uc/../uc8151.c:572: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
      008331 75 82 13         [24] 2393 	mov	dpl,#0x13
      008334 12 7C FD         [24] 2394 	lcall	_commandBegin
                                   2395 ;	board/zbs29_BW_uc/../uc8151.c:573: struct BarcodeInfo __xdata bci = {
      008337 90 E5 16         [24] 2396 	mov	dptr,#_printBarcode_string_65536_210
      00833A E0               [24] 2397 	movx	a,@dptr
      00833B FD               [12] 2398 	mov	r5,a
      00833C A3               [24] 2399 	inc	dptr
      00833D E0               [24] 2400 	movx	a,@dptr
      00833E FE               [12] 2401 	mov	r6,a
      00833F A3               [24] 2402 	inc	dptr
      008340 E0               [24] 2403 	movx	a,@dptr
      008341 FF               [12] 2404 	mov	r7,a
      008342 90 E5 19         [24] 2405 	mov	dptr,#_printBarcode_bci_65537_212
      008345 ED               [12] 2406 	mov	a,r5
      008346 F0               [24] 2407 	movx	@dptr,a
      008347 EE               [12] 2408 	mov	a,r6
      008348 A3               [24] 2409 	inc	dptr
      008349 F0               [24] 2410 	movx	@dptr,a
      00834A EF               [12] 2411 	mov	a,r7
      00834B A3               [24] 2412 	inc	dptr
      00834C F0               [24] 2413 	movx	@dptr,a
      00834D 90 E5 1C         [24] 2414 	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0003)
      008350 E4               [12] 2415 	clr	a
      008351 F0               [24] 2416 	movx	@dptr,a
      008352 A3               [24] 2417 	inc	dptr
      008353 F0               [24] 2418 	movx	@dptr,a
      008354 90 E5 1E         [24] 2419 	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0005)
      008357 F0               [24] 2420 	movx	@dptr,a
      008358 90 E5 1F         [24] 2421 	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0006)
      00835B F0               [24] 2422 	movx	@dptr,a
      00835C 90 E5 20         [24] 2423 	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0007)
      00835F F0               [24] 2424 	movx	@dptr,a
      008360 90 E5 21         [24] 2425 	mov	dptr,#(_printBarcode_bci_65537_212 + 0x0008)
      008363 F0               [24] 2426 	movx	@dptr,a
                                   2427 ;	board/zbs29_BW_uc/../uc8151.c:576: while (!barcodeIsDone(&bci)) {
      008364                       2428 00104$:
      008364 90 E5 19         [24] 2429 	mov	dptr,#_printBarcode_bci_65537_212
      008367 12 51 EB         [24] 2430 	lcall	_barcodeIsDone
      00836A 40 18            [24] 2431 	jc	00107$
                                   2432 ;	board/zbs29_BW_uc/../uc8151.c:577: if (barcodeNextBar(&bci)) {
      00836C 90 E5 19         [24] 2433 	mov	dptr,#_printBarcode_bci_65537_212
      00836F 12 52 1B         [24] 2434 	lcall	_barcodeNextBar
      008372 50 08            [24] 2435 	jnc	00102$
                                   2436 ;	board/zbs29_BW_uc/../uc8151.c:578: epdSend(0xFF);
      008374 75 82 FF         [24] 2437 	mov	dpl,#0xff
      008377 12 5B 9E         [24] 2438 	lcall	_spiTXByte
      00837A 80 E8            [24] 2439 	sjmp	00104$
      00837C                       2440 00102$:
                                   2441 ;	board/zbs29_BW_uc/../uc8151.c:580: epdSend(0x00);
      00837C 75 82 00         [24] 2442 	mov	dpl,#0x00
      00837F 12 5B 9E         [24] 2443 	lcall	_spiTXByte
                                   2444 ;	board/zbs29_BW_uc/../uc8151.c:583: commandEnd();
      008382 80 E0            [24] 2445 	sjmp	00104$
      008384                       2446 00107$:
                                   2447 ;	assignBit
      008384 D2 97            [12] 2448 	setb	_P1_7
                                   2449 ;	board/zbs29_BW_uc/../uc8151.c:584: shortCommand(CMD_PARTIAL_OUT);
      008386 75 82 92         [24] 2450 	mov	dpl,#0x92
                                   2451 ;	board/zbs29_BW_uc/../uc8151.c:585: }
      008389 02 7C 9C         [24] 2452 	ljmp	_shortCommand
                                   2453 ;------------------------------------------------------------
                                   2454 ;Allocation info for local variables in function 'pushXFontBytesToEPD'
                                   2455 ;------------------------------------------------------------
                                   2456 ;byte2                     Allocated with name '_pushXFontBytesToEPD_PARM_2'
                                   2457 ;byte1                     Allocated with name '_pushXFontBytesToEPD_byte1_65536_217'
                                   2458 ;offset                    Allocated with name '_pushXFontBytesToEPD_offset_131072_219'
                                   2459 ;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_220'
                                   2460 ;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_222'
                                   2461 ;offset                    Allocated with name '_pushXFontBytesToEPD_offset_131072_224'
                                   2462 ;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_225'
                                   2463 ;c                         Allocated with name '_pushXFontBytesToEPD_c_196608_228'
                                   2464 ;i                         Allocated with name '_pushXFontBytesToEPD_i_196608_232'
                                   2465 ;------------------------------------------------------------
                                   2466 ;	board/zbs29_BW_uc/../uc8151.c:587: static void pushXFontBytesToEPD(uint8_t byte1, uint8_t byte2) {
                                   2467 ;	-----------------------------------------
                                   2468 ;	 function pushXFontBytesToEPD
                                   2469 ;	-----------------------------------------
      00838C                       2470 _pushXFontBytesToEPD:
      00838C E5 82            [12] 2471 	mov	a,dpl
      00838E 90 E5 23         [24] 2472 	mov	dptr,#_pushXFontBytesToEPD_byte1_65536_217
      008391 F0               [24] 2473 	movx	@dptr,a
                                   2474 ;	board/zbs29_BW_uc/../uc8151.c:588: if (epdCharSize == 1) {
      008392 90 FB A5         [24] 2475 	mov	dptr,#_epdCharSize
      008395 E0               [24] 2476 	movx	a,@dptr
      008396 FF               [12] 2477 	mov	r7,a
      008397 BF 01 02         [24] 2478 	cjne	r7,#0x01,00205$
      00839A 80 03            [24] 2479 	sjmp	00206$
      00839C                       2480 00205$:
      00839C 02 84 88         [24] 2481 	ljmp	00114$
      00839F                       2482 00206$:
                                   2483 ;	board/zbs29_BW_uc/../uc8151.c:589: uint8_t offset = 7 - (fontCurXpos % 8);
      00839F 90 FB A7         [24] 2484 	mov	dptr,#_fontCurXpos
      0083A2 E0               [24] 2485 	movx	a,@dptr
      0083A3 FE               [12] 2486 	mov	r6,a
      0083A4 A3               [24] 2487 	inc	dptr
      0083A5 E0               [24] 2488 	movx	a,@dptr
      0083A6 53 06 07         [24] 2489 	anl	ar6,#0x07
      0083A9 74 07            [12] 2490 	mov	a,#0x07
      0083AB C3               [12] 2491 	clr	c
      0083AC 9E               [12] 2492 	subb	a,r6
      0083AD FE               [12] 2493 	mov	r6,a
      0083AE 90 E5 24         [24] 2494 	mov	dptr,#_pushXFontBytesToEPD_offset_131072_219
      0083B1 F0               [24] 2495 	movx	@dptr,a
                                   2496 ;	board/zbs29_BW_uc/../uc8151.c:590: for (uint8_t c = 0; c < 8; c++) {
      0083B2 8E 07            [24] 2497 	mov	ar7,r6
      0083B4 90 E5 22         [24] 2498 	mov	dptr,#_pushXFontBytesToEPD_PARM_2
      0083B7 E0               [24] 2499 	movx	a,@dptr
      0083B8 FE               [12] 2500 	mov	r6,a
      0083B9 7D 00            [12] 2501 	mov	r5,#0x00
      0083BB                       2502 00120$:
      0083BB BD 08 00         [24] 2503 	cjne	r5,#0x08,00207$
      0083BE                       2504 00207$:
      0083BE 50 4F            [24] 2505 	jnc	00103$
                                   2506 ;	board/zbs29_BW_uc/../uc8151.c:591: if (byte2 & (1 << (7 - c))) rbuffer[c] |= (1 << offset);
      0083C0 74 07            [12] 2507 	mov	a,#0x07
      0083C2 C3               [12] 2508 	clr	c
      0083C3 9D               [12] 2509 	subb	a,r5
      0083C4 FC               [12] 2510 	mov	r4,a
      0083C5 8C F0            [24] 2511 	mov	b,r4
      0083C7 05 F0            [12] 2512 	inc	b
      0083C9 7C 01            [12] 2513 	mov	r4,#0x01
      0083CB 7B 00            [12] 2514 	mov	r3,#0x00
      0083CD 80 06            [24] 2515 	sjmp	00210$
      0083CF                       2516 00209$:
      0083CF EC               [12] 2517 	mov	a,r4
      0083D0 2C               [12] 2518 	add	a,r4
      0083D1 FC               [12] 2519 	mov	r4,a
      0083D2 EB               [12] 2520 	mov	a,r3
      0083D3 33               [12] 2521 	rlc	a
      0083D4 FB               [12] 2522 	mov	r3,a
      0083D5                       2523 00210$:
      0083D5 D5 F0 F7         [24] 2524 	djnz	b,00209$
      0083D8 8E 01            [24] 2525 	mov	ar1,r6
      0083DA 7A 00            [12] 2526 	mov	r2,#0x00
      0083DC E9               [12] 2527 	mov	a,r1
      0083DD 52 04            [12] 2528 	anl	ar4,a
      0083DF EA               [12] 2529 	mov	a,r2
      0083E0 52 03            [12] 2530 	anl	ar3,a
      0083E2 EC               [12] 2531 	mov	a,r4
      0083E3 4B               [12] 2532 	orl	a,r3
      0083E4 60 26            [24] 2533 	jz	00121$
      0083E6 ED               [12] 2534 	mov	a,r5
      0083E7 24 4A            [12] 2535 	add	a,#_rbuffer
      0083E9 FB               [12] 2536 	mov	r3,a
      0083EA E4               [12] 2537 	clr	a
      0083EB 34 E4            [12] 2538 	addc	a,#(_rbuffer >> 8)
      0083ED FC               [12] 2539 	mov	r4,a
      0083EE 8B 82            [24] 2540 	mov	dpl,r3
      0083F0 8C 83            [24] 2541 	mov	dph,r4
      0083F2 E0               [24] 2542 	movx	a,@dptr
      0083F3 FA               [12] 2543 	mov	r2,a
      0083F4 8F 01            [24] 2544 	mov	ar1,r7
      0083F6 89 F0            [24] 2545 	mov	b,r1
      0083F8 05 F0            [12] 2546 	inc	b
      0083FA 74 01            [12] 2547 	mov	a,#0x01
      0083FC 80 02            [24] 2548 	sjmp	00214$
      0083FE                       2549 00212$:
      0083FE 25 E0            [12] 2550 	add	a,acc
      008400                       2551 00214$:
      008400 D5 F0 FB         [24] 2552 	djnz	b,00212$
      008403 F9               [12] 2553 	mov	r1,a
      008404 42 02            [12] 2554 	orl	ar2,a
      008406 8B 82            [24] 2555 	mov	dpl,r3
      008408 8C 83            [24] 2556 	mov	dph,r4
      00840A EA               [12] 2557 	mov	a,r2
      00840B F0               [24] 2558 	movx	@dptr,a
      00840C                       2559 00121$:
                                   2560 ;	board/zbs29_BW_uc/../uc8151.c:590: for (uint8_t c = 0; c < 8; c++) {
      00840C 0D               [12] 2561 	inc	r5
      00840D 80 AC            [24] 2562 	sjmp	00120$
      00840F                       2563 00103$:
                                   2564 ;	board/zbs29_BW_uc/../uc8151.c:593: for (uint8_t c = 0; c < 8; c++) {
      00840F 90 E5 24         [24] 2565 	mov	dptr,#_pushXFontBytesToEPD_offset_131072_219
      008412 E0               [24] 2566 	movx	a,@dptr
      008413 FF               [12] 2567 	mov	r7,a
      008414 90 E5 23         [24] 2568 	mov	dptr,#_pushXFontBytesToEPD_byte1_65536_217
      008417 E0               [24] 2569 	movx	a,@dptr
      008418 FE               [12] 2570 	mov	r6,a
      008419 7D 00            [12] 2571 	mov	r5,#0x00
      00841B                       2572 00123$:
      00841B BD 08 00         [24] 2573 	cjne	r5,#0x08,00215$
      00841E                       2574 00215$:
      00841E 50 59            [24] 2575 	jnc	00106$
                                   2576 ;	board/zbs29_BW_uc/../uc8151.c:594: if (byte1 & (1 << (7 - c))) rbuffer[8 + c] |= (1 << offset);
      008420 74 07            [12] 2577 	mov	a,#0x07
      008422 C3               [12] 2578 	clr	c
      008423 9D               [12] 2579 	subb	a,r5
      008424 FC               [12] 2580 	mov	r4,a
      008425 8C F0            [24] 2581 	mov	b,r4
      008427 05 F0            [12] 2582 	inc	b
      008429 7C 01            [12] 2583 	mov	r4,#0x01
      00842B 7B 00            [12] 2584 	mov	r3,#0x00
      00842D 80 06            [24] 2585 	sjmp	00218$
      00842F                       2586 00217$:
      00842F EC               [12] 2587 	mov	a,r4
      008430 2C               [12] 2588 	add	a,r4
      008431 FC               [12] 2589 	mov	r4,a
      008432 EB               [12] 2590 	mov	a,r3
      008433 33               [12] 2591 	rlc	a
      008434 FB               [12] 2592 	mov	r3,a
      008435                       2593 00218$:
      008435 D5 F0 F7         [24] 2594 	djnz	b,00217$
      008438 8E 01            [24] 2595 	mov	ar1,r6
      00843A 7A 00            [12] 2596 	mov	r2,#0x00
      00843C E9               [12] 2597 	mov	a,r1
      00843D 52 04            [12] 2598 	anl	ar4,a
      00843F EA               [12] 2599 	mov	a,r2
      008440 52 03            [12] 2600 	anl	ar3,a
      008442 EC               [12] 2601 	mov	a,r4
      008443 4B               [12] 2602 	orl	a,r3
      008444 60 30            [24] 2603 	jz	00124$
      008446 8D 04            [24] 2604 	mov	ar4,r5
      008448 74 08            [12] 2605 	mov	a,#0x08
      00844A 2C               [12] 2606 	add	a,r4
      00844B FC               [12] 2607 	mov	r4,a
      00844C 33               [12] 2608 	rlc	a
      00844D 95 E0            [12] 2609 	subb	a,acc
      00844F FB               [12] 2610 	mov	r3,a
      008450 EC               [12] 2611 	mov	a,r4
      008451 24 4A            [12] 2612 	add	a,#_rbuffer
      008453 FC               [12] 2613 	mov	r4,a
      008454 EB               [12] 2614 	mov	a,r3
      008455 34 E4            [12] 2615 	addc	a,#(_rbuffer >> 8)
      008457 FB               [12] 2616 	mov	r3,a
      008458 8C 82            [24] 2617 	mov	dpl,r4
      00845A 8B 83            [24] 2618 	mov	dph,r3
      00845C E0               [24] 2619 	movx	a,@dptr
      00845D FA               [12] 2620 	mov	r2,a
      00845E 8F 01            [24] 2621 	mov	ar1,r7
      008460 89 F0            [24] 2622 	mov	b,r1
      008462 05 F0            [12] 2623 	inc	b
      008464 74 01            [12] 2624 	mov	a,#0x01
      008466 80 02            [24] 2625 	sjmp	00222$
      008468                       2626 00220$:
      008468 25 E0            [12] 2627 	add	a,acc
      00846A                       2628 00222$:
      00846A D5 F0 FB         [24] 2629 	djnz	b,00220$
      00846D F9               [12] 2630 	mov	r1,a
      00846E 42 02            [12] 2631 	orl	ar2,a
      008470 8C 82            [24] 2632 	mov	dpl,r4
      008472 8B 83            [24] 2633 	mov	dph,r3
      008474 EA               [12] 2634 	mov	a,r2
      008475 F0               [24] 2635 	movx	@dptr,a
      008476                       2636 00124$:
                                   2637 ;	board/zbs29_BW_uc/../uc8151.c:593: for (uint8_t c = 0; c < 8; c++) {
      008476 0D               [12] 2638 	inc	r5
      008477 80 A2            [24] 2639 	sjmp	00123$
      008479                       2640 00106$:
                                   2641 ;	board/zbs29_BW_uc/../uc8151.c:596: fontCurXpos++;
      008479 90 FB A7         [24] 2642 	mov	dptr,#_fontCurXpos
      00847C E0               [24] 2643 	movx	a,@dptr
      00847D 24 01            [12] 2644 	add	a,#0x01
      00847F F0               [24] 2645 	movx	@dptr,a
      008480 A3               [24] 2646 	inc	dptr
      008481 E0               [24] 2647 	movx	a,@dptr
      008482 34 00            [12] 2648 	addc	a,#0x00
      008484 F0               [24] 2649 	movx	@dptr,a
      008485 02 85 CC         [24] 2650 	ljmp	00115$
      008488                       2651 00114$:
                                   2652 ;	board/zbs29_BW_uc/../uc8151.c:598: uint8_t offset = 6 - (fontCurXpos % 8);
      008488 90 FB A7         [24] 2653 	mov	dptr,#_fontCurXpos
      00848B E0               [24] 2654 	movx	a,@dptr
      00848C FE               [12] 2655 	mov	r6,a
      00848D A3               [24] 2656 	inc	dptr
      00848E E0               [24] 2657 	movx	a,@dptr
      00848F 53 06 07         [24] 2658 	anl	ar6,#0x07
      008492 74 06            [12] 2659 	mov	a,#0x06
      008494 C3               [12] 2660 	clr	c
      008495 9E               [12] 2661 	subb	a,r6
      008496 FE               [12] 2662 	mov	r6,a
      008497 90 E5 25         [24] 2663 	mov	dptr,#_pushXFontBytesToEPD_offset_131072_224
      00849A F0               [24] 2664 	movx	@dptr,a
                                   2665 ;	board/zbs29_BW_uc/../uc8151.c:600: for (uint8_t c = 0; c < 8; c++) {
      00849B 8E 07            [24] 2666 	mov	ar7,r6
      00849D 90 E5 22         [24] 2667 	mov	dptr,#_pushXFontBytesToEPD_PARM_2
      0084A0 E0               [24] 2668 	movx	a,@dptr
      0084A1 FE               [12] 2669 	mov	r6,a
      0084A2 7D 00            [12] 2670 	mov	r5,#0x00
      0084A4                       2671 00126$:
      0084A4 BD 08 00         [24] 2672 	cjne	r5,#0x08,00223$
      0084A7                       2673 00223$:
      0084A7 40 03            [24] 2674 	jc	00224$
      0084A9 02 85 27         [24] 2675 	ljmp	00109$
      0084AC                       2676 00224$:
                                   2677 ;	board/zbs29_BW_uc/../uc8151.c:601: if (byte2 & (1 << (7 - c))) {
      0084AC 74 07            [12] 2678 	mov	a,#0x07
      0084AE C3               [12] 2679 	clr	c
      0084AF 9D               [12] 2680 	subb	a,r5
      0084B0 FC               [12] 2681 	mov	r4,a
      0084B1 8C F0            [24] 2682 	mov	b,r4
      0084B3 05 F0            [12] 2683 	inc	b
      0084B5 7C 01            [12] 2684 	mov	r4,#0x01
      0084B7 7B 00            [12] 2685 	mov	r3,#0x00
      0084B9 80 06            [24] 2686 	sjmp	00226$
      0084BB                       2687 00225$:
      0084BB EC               [12] 2688 	mov	a,r4
      0084BC 2C               [12] 2689 	add	a,r4
      0084BD FC               [12] 2690 	mov	r4,a
      0084BE EB               [12] 2691 	mov	a,r3
      0084BF 33               [12] 2692 	rlc	a
      0084C0 FB               [12] 2693 	mov	r3,a
      0084C1                       2694 00226$:
      0084C1 D5 F0 F7         [24] 2695 	djnz	b,00225$
      0084C4 8E 01            [24] 2696 	mov	ar1,r6
      0084C6 7A 00            [12] 2697 	mov	r2,#0x00
      0084C8 E9               [12] 2698 	mov	a,r1
      0084C9 52 04            [12] 2699 	anl	ar4,a
      0084CB EA               [12] 2700 	mov	a,r2
      0084CC 52 03            [12] 2701 	anl	ar3,a
      0084CE EC               [12] 2702 	mov	a,r4
      0084CF 4B               [12] 2703 	orl	a,r3
      0084D0 60 51            [24] 2704 	jz	00127$
                                   2705 ;	board/zbs29_BW_uc/../uc8151.c:602: rbuffer[c * 2] |= (3 << offset);
      0084D2 8D 03            [24] 2706 	mov	ar3,r5
      0084D4 7C 00            [12] 2707 	mov	r4,#0x00
      0084D6 EB               [12] 2708 	mov	a,r3
      0084D7 2B               [12] 2709 	add	a,r3
      0084D8 FB               [12] 2710 	mov	r3,a
      0084D9 EC               [12] 2711 	mov	a,r4
      0084DA 33               [12] 2712 	rlc	a
      0084DB FC               [12] 2713 	mov	r4,a
      0084DC EB               [12] 2714 	mov	a,r3
      0084DD 24 4A            [12] 2715 	add	a,#_rbuffer
      0084DF FB               [12] 2716 	mov	r3,a
      0084E0 EC               [12] 2717 	mov	a,r4
      0084E1 34 E4            [12] 2718 	addc	a,#(_rbuffer >> 8)
      0084E3 FC               [12] 2719 	mov	r4,a
      0084E4 8B 82            [24] 2720 	mov	dpl,r3
      0084E6 8C 83            [24] 2721 	mov	dph,r4
      0084E8 E0               [24] 2722 	movx	a,@dptr
      0084E9 FA               [12] 2723 	mov	r2,a
      0084EA 8F 01            [24] 2724 	mov	ar1,r7
      0084EC 89 F0            [24] 2725 	mov	b,r1
      0084EE 05 F0            [12] 2726 	inc	b
      0084F0 74 03            [12] 2727 	mov	a,#0x03
      0084F2 80 02            [24] 2728 	sjmp	00230$
      0084F4                       2729 00228$:
      0084F4 25 E0            [12] 2730 	add	a,acc
      0084F6                       2731 00230$:
      0084F6 D5 F0 FB         [24] 2732 	djnz	b,00228$
      0084F9 F9               [12] 2733 	mov	r1,a
      0084FA 42 02            [12] 2734 	orl	ar2,a
      0084FC 8B 82            [24] 2735 	mov	dpl,r3
      0084FE 8C 83            [24] 2736 	mov	dph,r4
      008500 EA               [12] 2737 	mov	a,r2
      008501 F0               [24] 2738 	movx	@dptr,a
                                   2739 ;	board/zbs29_BW_uc/../uc8151.c:603: rbuffer[(c * 2) + 1] |= (3 << offset);
      008502 8D 04            [24] 2740 	mov	ar4,r5
      008504 EC               [12] 2741 	mov	a,r4
      008505 2C               [12] 2742 	add	a,r4
      008506 FC               [12] 2743 	mov	r4,a
      008507 0C               [12] 2744 	inc	r4
      008508 EC               [12] 2745 	mov	a,r4
      008509 33               [12] 2746 	rlc	a
      00850A 95 E0            [12] 2747 	subb	a,acc
      00850C FB               [12] 2748 	mov	r3,a
      00850D EC               [12] 2749 	mov	a,r4
      00850E 24 4A            [12] 2750 	add	a,#_rbuffer
      008510 FC               [12] 2751 	mov	r4,a
      008511 EB               [12] 2752 	mov	a,r3
      008512 34 E4            [12] 2753 	addc	a,#(_rbuffer >> 8)
      008514 FB               [12] 2754 	mov	r3,a
      008515 8C 82            [24] 2755 	mov	dpl,r4
      008517 8B 83            [24] 2756 	mov	dph,r3
      008519 E0               [24] 2757 	movx	a,@dptr
      00851A FA               [12] 2758 	mov	r2,a
      00851B 42 01            [12] 2759 	orl	ar1,a
      00851D 8C 82            [24] 2760 	mov	dpl,r4
      00851F 8B 83            [24] 2761 	mov	dph,r3
      008521 E9               [12] 2762 	mov	a,r1
      008522 F0               [24] 2763 	movx	@dptr,a
      008523                       2764 00127$:
                                   2765 ;	board/zbs29_BW_uc/../uc8151.c:600: for (uint8_t c = 0; c < 8; c++) {
      008523 0D               [12] 2766 	inc	r5
      008524 02 84 A4         [24] 2767 	ljmp	00126$
      008527                       2768 00109$:
                                   2769 ;	board/zbs29_BW_uc/../uc8151.c:606: for (uint8_t c = 0; c < 8; c++) {
      008527 90 E5 25         [24] 2770 	mov	dptr,#_pushXFontBytesToEPD_offset_131072_224
      00852A E0               [24] 2771 	movx	a,@dptr
      00852B FF               [12] 2772 	mov	r7,a
      00852C 90 E5 23         [24] 2773 	mov	dptr,#_pushXFontBytesToEPD_byte1_65536_217
      00852F E0               [24] 2774 	movx	a,@dptr
      008530 FE               [12] 2775 	mov	r6,a
      008531 7D 00            [12] 2776 	mov	r5,#0x00
      008533                       2777 00129$:
      008533 BD 08 00         [24] 2778 	cjne	r5,#0x08,00231$
      008536                       2779 00231$:
      008536 40 03            [24] 2780 	jc	00232$
      008538 02 85 B5         [24] 2781 	ljmp	00112$
      00853B                       2782 00232$:
                                   2783 ;	board/zbs29_BW_uc/../uc8151.c:607: if (byte1 & (1 << (7 - c))) {
      00853B 74 07            [12] 2784 	mov	a,#0x07
      00853D C3               [12] 2785 	clr	c
      00853E 9D               [12] 2786 	subb	a,r5
      00853F FC               [12] 2787 	mov	r4,a
      008540 8C F0            [24] 2788 	mov	b,r4
      008542 05 F0            [12] 2789 	inc	b
      008544 7C 01            [12] 2790 	mov	r4,#0x01
      008546 7B 00            [12] 2791 	mov	r3,#0x00
      008548 80 06            [24] 2792 	sjmp	00234$
      00854A                       2793 00233$:
      00854A EC               [12] 2794 	mov	a,r4
      00854B 2C               [12] 2795 	add	a,r4
      00854C FC               [12] 2796 	mov	r4,a
      00854D EB               [12] 2797 	mov	a,r3
      00854E 33               [12] 2798 	rlc	a
      00854F FB               [12] 2799 	mov	r3,a
      008550                       2800 00234$:
      008550 D5 F0 F7         [24] 2801 	djnz	b,00233$
      008553 8E 01            [24] 2802 	mov	ar1,r6
      008555 7A 00            [12] 2803 	mov	r2,#0x00
      008557 E9               [12] 2804 	mov	a,r1
      008558 52 04            [12] 2805 	anl	ar4,a
      00855A EA               [12] 2806 	mov	a,r2
      00855B 52 03            [12] 2807 	anl	ar3,a
      00855D EC               [12] 2808 	mov	a,r4
      00855E 4B               [12] 2809 	orl	a,r3
      00855F 60 50            [24] 2810 	jz	00130$
                                   2811 ;	board/zbs29_BW_uc/../uc8151.c:608: rbuffer[(c * 2) + 16] |= (3 << offset);
      008561 8D 04            [24] 2812 	mov	ar4,r5
      008563 EC               [12] 2813 	mov	a,r4
      008564 2C               [12] 2814 	add	a,r4
      008565 FC               [12] 2815 	mov	r4,a
      008566 24 10            [12] 2816 	add	a,#0x10
      008568 FB               [12] 2817 	mov	r3,a
      008569 33               [12] 2818 	rlc	a
      00856A 95 E0            [12] 2819 	subb	a,acc
      00856C FA               [12] 2820 	mov	r2,a
      00856D EB               [12] 2821 	mov	a,r3
      00856E 24 4A            [12] 2822 	add	a,#_rbuffer
      008570 FB               [12] 2823 	mov	r3,a
      008571 EA               [12] 2824 	mov	a,r2
      008572 34 E4            [12] 2825 	addc	a,#(_rbuffer >> 8)
      008574 FA               [12] 2826 	mov	r2,a
      008575 8B 82            [24] 2827 	mov	dpl,r3
      008577 8A 83            [24] 2828 	mov	dph,r2
      008579 E0               [24] 2829 	movx	a,@dptr
      00857A F9               [12] 2830 	mov	r1,a
      00857B 8F 00            [24] 2831 	mov	ar0,r7
      00857D 88 F0            [24] 2832 	mov	b,r0
      00857F 05 F0            [12] 2833 	inc	b
      008581 74 03            [12] 2834 	mov	a,#0x03
      008583 80 02            [24] 2835 	sjmp	00238$
      008585                       2836 00236$:
      008585 25 E0            [12] 2837 	add	a,acc
      008587                       2838 00238$:
      008587 D5 F0 FB         [24] 2839 	djnz	b,00236$
      00858A F8               [12] 2840 	mov	r0,a
      00858B 42 01            [12] 2841 	orl	ar1,a
      00858D 8B 82            [24] 2842 	mov	dpl,r3
      00858F 8A 83            [24] 2843 	mov	dph,r2
      008591 E9               [12] 2844 	mov	a,r1
      008592 F0               [24] 2845 	movx	@dptr,a
                                   2846 ;	board/zbs29_BW_uc/../uc8151.c:609: rbuffer[(c * 2) + 17] |= (3 << offset);
      008593 74 11            [12] 2847 	mov	a,#0x11
      008595 2C               [12] 2848 	add	a,r4
      008596 FC               [12] 2849 	mov	r4,a
      008597 33               [12] 2850 	rlc	a
      008598 95 E0            [12] 2851 	subb	a,acc
      00859A FB               [12] 2852 	mov	r3,a
      00859B EC               [12] 2853 	mov	a,r4
      00859C 24 4A            [12] 2854 	add	a,#_rbuffer
      00859E FC               [12] 2855 	mov	r4,a
      00859F EB               [12] 2856 	mov	a,r3
      0085A0 34 E4            [12] 2857 	addc	a,#(_rbuffer >> 8)
      0085A2 FB               [12] 2858 	mov	r3,a
      0085A3 8C 82            [24] 2859 	mov	dpl,r4
      0085A5 8B 83            [24] 2860 	mov	dph,r3
      0085A7 E0               [24] 2861 	movx	a,@dptr
      0085A8 FA               [12] 2862 	mov	r2,a
      0085A9 42 00            [12] 2863 	orl	ar0,a
      0085AB 8C 82            [24] 2864 	mov	dpl,r4
      0085AD 8B 83            [24] 2865 	mov	dph,r3
      0085AF E8               [12] 2866 	mov	a,r0
      0085B0 F0               [24] 2867 	movx	@dptr,a
      0085B1                       2868 00130$:
                                   2869 ;	board/zbs29_BW_uc/../uc8151.c:606: for (uint8_t c = 0; c < 8; c++) {
      0085B1 0D               [12] 2870 	inc	r5
      0085B2 02 85 33         [24] 2871 	ljmp	00129$
      0085B5                       2872 00112$:
                                   2873 ;	board/zbs29_BW_uc/../uc8151.c:612: fontCurXpos += 2;
      0085B5 90 FB A7         [24] 2874 	mov	dptr,#_fontCurXpos
      0085B8 E0               [24] 2875 	movx	a,@dptr
      0085B9 FE               [12] 2876 	mov	r6,a
      0085BA A3               [24] 2877 	inc	dptr
      0085BB E0               [24] 2878 	movx	a,@dptr
      0085BC FF               [12] 2879 	mov	r7,a
      0085BD 74 02            [12] 2880 	mov	a,#0x02
      0085BF 2E               [12] 2881 	add	a,r6
      0085C0 FE               [12] 2882 	mov	r6,a
      0085C1 E4               [12] 2883 	clr	a
      0085C2 3F               [12] 2884 	addc	a,r7
      0085C3 FF               [12] 2885 	mov	r7,a
      0085C4 90 FB A7         [24] 2886 	mov	dptr,#_fontCurXpos
      0085C7 EE               [12] 2887 	mov	a,r6
      0085C8 F0               [24] 2888 	movx	@dptr,a
      0085C9 EF               [12] 2889 	mov	a,r7
      0085CA A3               [24] 2890 	inc	dptr
      0085CB F0               [24] 2891 	movx	@dptr,a
      0085CC                       2892 00115$:
                                   2893 ;	board/zbs29_BW_uc/../uc8151.c:614: if (fontCurXpos % 8 == 0) {
      0085CC 90 FB A7         [24] 2894 	mov	dptr,#_fontCurXpos
      0085CF E0               [24] 2895 	movx	a,@dptr
      0085D0 FE               [12] 2896 	mov	r6,a
      0085D1 A3               [24] 2897 	inc	dptr
      0085D2 E0               [24] 2898 	movx	a,@dptr
      0085D3 EE               [12] 2899 	mov	a,r6
      0085D4 54 07            [12] 2900 	anl	a,#0x07
      0085D6 60 01            [24] 2901 	jz	00240$
      0085D8 22               [24] 2902 	ret
      0085D9                       2903 00240$:
                                   2904 ;	board/zbs29_BW_uc/../uc8151.c:616: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
      0085D9 7F 00            [12] 2905 	mov	r7,#0x00
      0085DB                       2906 00132$:
      0085DB 90 FB A5         [24] 2907 	mov	dptr,#_epdCharSize
      0085DE E0               [24] 2908 	movx	a,@dptr
      0085DF FE               [12] 2909 	mov	r6,a
      0085E0 E4               [12] 2910 	clr	a
      0085E1 C4               [12] 2911 	swap	a
      0085E2 54 F0            [12] 2912 	anl	a,#0xf0
      0085E4 CE               [12] 2913 	xch	a,r6
      0085E5 C4               [12] 2914 	swap	a
      0085E6 CE               [12] 2915 	xch	a,r6
      0085E7 6E               [12] 2916 	xrl	a,r6
      0085E8 CE               [12] 2917 	xch	a,r6
      0085E9 54 F0            [12] 2918 	anl	a,#0xf0
      0085EB CE               [12] 2919 	xch	a,r6
      0085EC 6E               [12] 2920 	xrl	a,r6
      0085ED FD               [12] 2921 	mov	r5,a
      0085EE 8F 03            [24] 2922 	mov	ar3,r7
      0085F0 7C 00            [12] 2923 	mov	r4,#0x00
      0085F2 C3               [12] 2924 	clr	c
      0085F3 EB               [12] 2925 	mov	a,r3
      0085F4 9E               [12] 2926 	subb	a,r6
      0085F5 EC               [12] 2927 	mov	a,r4
      0085F6 64 80            [12] 2928 	xrl	a,#0x80
      0085F8 8D F0            [24] 2929 	mov	b,r5
      0085FA 63 F0 80         [24] 2930 	xrl	b,#0x80
      0085FD 95 F0            [12] 2931 	subb	a,b
      0085FF 50 14            [24] 2932 	jnc	00116$
                                   2933 ;	board/zbs29_BW_uc/../uc8151.c:617: epdSend(rbuffer[i]);
      008601 EF               [12] 2934 	mov	a,r7
      008602 24 4A            [12] 2935 	add	a,#_rbuffer
      008604 F5 82            [12] 2936 	mov	dpl,a
      008606 E4               [12] 2937 	clr	a
      008607 34 E4            [12] 2938 	addc	a,#(_rbuffer >> 8)
      008609 F5 83            [12] 2939 	mov	dph,a
      00860B E0               [24] 2940 	movx	a,@dptr
      00860C FE               [12] 2941 	mov	r6,a
      00860D F5 82            [12] 2942 	mov	dpl,a
      00860F 12 5B 9E         [24] 2943 	lcall	_spiTXByte
                                   2944 ;	board/zbs29_BW_uc/../uc8151.c:616: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
      008612 0F               [12] 2945 	inc	r7
      008613 80 C6            [24] 2946 	sjmp	00132$
      008615                       2947 00116$:
                                   2948 ;	board/zbs29_BW_uc/../uc8151.c:619: memset(rbuffer, 0, 32);
      008615 90 E5 C6         [24] 2949 	mov	dptr,#_memset_PARM_2
      008618 E4               [12] 2950 	clr	a
      008619 F0               [24] 2951 	movx	@dptr,a
      00861A 90 E5 C7         [24] 2952 	mov	dptr,#_memset_PARM_3
      00861D 74 20            [12] 2953 	mov	a,#0x20
      00861F F0               [24] 2954 	movx	@dptr,a
      008620 E4               [12] 2955 	clr	a
      008621 A3               [24] 2956 	inc	dptr
      008622 F0               [24] 2957 	movx	@dptr,a
      008623 90 E4 4A         [24] 2958 	mov	dptr,#_rbuffer
      008626 75 F0 00         [24] 2959 	mov	b,#0x00
                                   2960 ;	board/zbs29_BW_uc/../uc8151.c:621: }
      008629 02 A0 D9         [24] 2961 	ljmp	_memset
                                   2962 ;------------------------------------------------------------
                                   2963 ;Allocation info for local variables in function 'bufferByteShift'
                                   2964 ;------------------------------------------------------------
                                   2965 ;byte                      Allocated with name '_bufferByteShift_byte_65536_234'
                                   2966 ;offset                    Allocated with name '_bufferByteShift_offset_131072_237'
                                   2967 ;------------------------------------------------------------
                                   2968 ;	board/zbs29_BW_uc/../uc8151.c:622: static void bufferByteShift(uint8_t byte) {
                                   2969 ;	-----------------------------------------
                                   2970 ;	 function bufferByteShift
                                   2971 ;	-----------------------------------------
      00862C                       2972 _bufferByteShift:
      00862C E5 82            [12] 2973 	mov	a,dpl
      00862E 90 E5 26         [24] 2974 	mov	dptr,#_bufferByteShift_byte_65536_234
      008631 F0               [24] 2975 	movx	@dptr,a
                                   2976 ;	board/zbs29_BW_uc/../uc8151.c:630: if (rbuffer[1] == 0) {
      008632 90 E4 4B         [24] 2977 	mov	dptr,#(_rbuffer + 0x0001)
      008635 E0               [24] 2978 	movx	a,@dptr
      008636 FF               [12] 2979 	mov	r7,a
      008637 70 09            [24] 2980 	jnz	00104$
                                   2981 ;	board/zbs29_BW_uc/../uc8151.c:631: epdSend(byte);
      008639 90 E5 26         [24] 2982 	mov	dptr,#_bufferByteShift_byte_65536_234
      00863C E0               [24] 2983 	movx	a,@dptr
      00863D F5 82            [12] 2984 	mov	dpl,a
      00863F 02 5B 9E         [24] 2985 	ljmp	_spiTXByte
      008642                       2986 00104$:
                                   2987 ;	board/zbs29_BW_uc/../uc8151.c:634: rbuffer[0] |= (byte >> offset);
      008642 90 E4 4A         [24] 2988 	mov	dptr,#_rbuffer
      008645 E0               [24] 2989 	movx	a,@dptr
      008646 FE               [12] 2990 	mov	r6,a
      008647 90 E5 26         [24] 2991 	mov	dptr,#_bufferByteShift_byte_65536_234
      00864A E0               [24] 2992 	movx	a,@dptr
      00864B FD               [12] 2993 	mov	r5,a
      00864C 8F F0            [24] 2994 	mov	b,r7
      00864E 05 F0            [12] 2995 	inc	b
      008650 ED               [12] 2996 	mov	a,r5
      008651 80 02            [24] 2997 	sjmp	00118$
      008653                       2998 00117$:
      008653 C3               [12] 2999 	clr	c
      008654 13               [12] 3000 	rrc	a
      008655                       3001 00118$:
      008655 D5 F0 FB         [24] 3002 	djnz	b,00117$
      008658 42 06            [12] 3003 	orl	ar6,a
      00865A 90 E4 4A         [24] 3004 	mov	dptr,#_rbuffer
      00865D EE               [12] 3005 	mov	a,r6
      00865E F0               [24] 3006 	movx	@dptr,a
                                   3007 ;	board/zbs29_BW_uc/../uc8151.c:635: epdSend(rbuffer[0]);
      00865F 8E 82            [24] 3008 	mov	dpl,r6
      008661 12 5B 9E         [24] 3009 	lcall	_spiTXByte
                                   3010 ;	board/zbs29_BW_uc/../uc8151.c:637: rbuffer[0] = (byte << (8 - offset));
      008664 74 08            [12] 3011 	mov	a,#0x08
      008666 C3               [12] 3012 	clr	c
      008667 9F               [12] 3013 	subb	a,r7
      008668 FF               [12] 3014 	mov	r7,a
      008669 8F F0            [24] 3015 	mov	b,r7
      00866B 05 F0            [12] 3016 	inc	b
      00866D ED               [12] 3017 	mov	a,r5
      00866E 80 02            [24] 3018 	sjmp	00121$
      008670                       3019 00119$:
      008670 25 E0            [12] 3020 	add	a,acc
      008672                       3021 00121$:
      008672 D5 F0 FB         [24] 3022 	djnz	b,00119$
      008675 90 E4 4A         [24] 3023 	mov	dptr,#_rbuffer
      008678 F0               [24] 3024 	movx	@dptr,a
                                   3025 ;	board/zbs29_BW_uc/../uc8151.c:638: rbuffer[2]++;
      008679 90 E4 4C         [24] 3026 	mov	dptr,#(_rbuffer + 0x0002)
      00867C E0               [24] 3027 	movx	a,@dptr
      00867D FF               [12] 3028 	mov	r7,a
      00867E 0F               [12] 3029 	inc	r7
      00867F 90 E4 4C         [24] 3030 	mov	dptr,#(_rbuffer + 0x0002)
      008682 EF               [12] 3031 	mov	a,r7
      008683 F0               [24] 3032 	movx	@dptr,a
                                   3033 ;	board/zbs29_BW_uc/../uc8151.c:639: if (rbuffer[2] == rbuffer[3]) {
      008684 90 E4 4D         [24] 3034 	mov	dptr,#(_rbuffer + 0x0003)
      008687 E0               [24] 3035 	movx	a,@dptr
      008688 FE               [12] 3036 	mov	r6,a
      008689 EF               [12] 3037 	mov	a,r7
      00868A B5 06 13         [24] 3038 	cjne	a,ar6,00106$
                                   3039 ;	board/zbs29_BW_uc/../uc8151.c:640: epdSend(rbuffer[0]);
      00868D 90 E4 4A         [24] 3040 	mov	dptr,#_rbuffer
      008690 E0               [24] 3041 	movx	a,@dptr
      008691 FF               [12] 3042 	mov	r7,a
      008692 F5 82            [12] 3043 	mov	dpl,a
      008694 12 5B 9E         [24] 3044 	lcall	_spiTXByte
                                   3045 ;	board/zbs29_BW_uc/../uc8151.c:641: rbuffer[0] = 0;
      008697 90 E4 4A         [24] 3046 	mov	dptr,#_rbuffer
      00869A E4               [12] 3047 	clr	a
      00869B F0               [24] 3048 	movx	@dptr,a
                                   3049 ;	board/zbs29_BW_uc/../uc8151.c:642: rbuffer[2] = 0;
      00869C 90 E4 4C         [24] 3050 	mov	dptr,#(_rbuffer + 0x0002)
      00869F F0               [24] 3051 	movx	@dptr,a
      0086A0                       3052 00106$:
                                   3053 ;	board/zbs29_BW_uc/../uc8151.c:645: }
      0086A0 22               [24] 3054 	ret
                                   3055 ;------------------------------------------------------------
                                   3056 ;Allocation info for local variables in function 'pushYFontBytesToEPD'
                                   3057 ;------------------------------------------------------------
                                   3058 ;byte2                     Allocated with name '_pushYFontBytesToEPD_PARM_2'
                                   3059 ;byte1                     Allocated with name '_pushYFontBytesToEPD_byte1_65536_239'
                                   3060 ;j                         Allocated with name '_pushYFontBytesToEPD_j_196608_242'
                                   3061 ;c                         Allocated with name '_pushYFontBytesToEPD_c_262144_243'
                                   3062 ;i                         Allocated with name '_pushYFontBytesToEPD_i_327680_244'
                                   3063 ;i                         Allocated with name '_pushYFontBytesToEPD_i_327680_247'
                                   3064 ;------------------------------------------------------------
                                   3065 ;	board/zbs29_BW_uc/../uc8151.c:646: static void pushYFontBytesToEPD(uint8_t byte1, uint8_t byte2) {
                                   3066 ;	-----------------------------------------
                                   3067 ;	 function pushYFontBytesToEPD
                                   3068 ;	-----------------------------------------
      0086A1                       3069 _pushYFontBytesToEPD:
      0086A1 E5 82            [12] 3070 	mov	a,dpl
      0086A3 90 E5 28         [24] 3071 	mov	dptr,#_pushYFontBytesToEPD_byte1_65536_239
      0086A6 F0               [24] 3072 	movx	@dptr,a
                                   3073 ;	board/zbs29_BW_uc/../uc8151.c:647: if (epdCharSize == 2) {
      0086A7 90 FB A5         [24] 3074 	mov	dptr,#_epdCharSize
      0086AA E0               [24] 3075 	movx	a,@dptr
      0086AB FF               [12] 3076 	mov	r7,a
      0086AC BF 02 02         [24] 3077 	cjne	r7,#0x02,00184$
      0086AF 80 03            [24] 3078 	sjmp	00185$
      0086B1                       3079 00184$:
      0086B1 02 87 A3         [24] 3080 	ljmp	00113$
      0086B4                       3081 00185$:
                                   3082 ;	board/zbs29_BW_uc/../uc8151.c:648: for (uint8_t j = 0; j < 2; j++) {
      0086B4 90 E5 28         [24] 3083 	mov	dptr,#_pushYFontBytesToEPD_byte1_65536_239
      0086B7 E0               [24] 3084 	movx	a,@dptr
      0086B8 FF               [12] 3085 	mov	r7,a
      0086B9 90 E5 27         [24] 3086 	mov	dptr,#_pushYFontBytesToEPD_PARM_2
      0086BC E0               [24] 3087 	movx	a,@dptr
      0086BD FE               [12] 3088 	mov	r6,a
      0086BE 7D 00            [12] 3089 	mov	r5,#0x00
      0086C0                       3090 00122$:
      0086C0 BD 02 00         [24] 3091 	cjne	r5,#0x02,00186$
      0086C3                       3092 00186$:
      0086C3 40 01            [24] 3093 	jc	00187$
      0086C5 22               [24] 3094 	ret
      0086C6                       3095 00187$:
                                   3096 ;	board/zbs29_BW_uc/../uc8151.c:649: uint8_t c = 0;
      0086C6 90 E5 29         [24] 3097 	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
      0086C9 E4               [12] 3098 	clr	a
      0086CA F0               [24] 3099 	movx	@dptr,a
                                   3100 ;	board/zbs29_BW_uc/../uc8151.c:650: for (uint8_t i = 7; i != 255; i--) {
      0086CB 7C 07            [12] 3101 	mov	r4,#0x07
      0086CD                       3102 00116$:
      0086CD BC FF 02         [24] 3103 	cjne	r4,#0xff,00188$
      0086D0 80 63            [24] 3104 	sjmp	00105$
      0086D2                       3105 00188$:
                                   3106 ;	board/zbs29_BW_uc/../uc8151.c:651: if (byte1 & (1 << i)) c |= (0x03 << ((i % 4) * 2));
      0086D2 8C F0            [24] 3107 	mov	b,r4
      0086D4 05 F0            [12] 3108 	inc	b
      0086D6 7A 01            [12] 3109 	mov	r2,#0x01
      0086D8 7B 00            [12] 3110 	mov	r3,#0x00
      0086DA 80 06            [24] 3111 	sjmp	00190$
      0086DC                       3112 00189$:
      0086DC EA               [12] 3113 	mov	a,r2
      0086DD 2A               [12] 3114 	add	a,r2
      0086DE FA               [12] 3115 	mov	r2,a
      0086DF EB               [12] 3116 	mov	a,r3
      0086E0 33               [12] 3117 	rlc	a
      0086E1 FB               [12] 3118 	mov	r3,a
      0086E2                       3119 00190$:
      0086E2 D5 F0 F7         [24] 3120 	djnz	b,00189$
      0086E5 8F 00            [24] 3121 	mov	ar0,r7
      0086E7 79 00            [12] 3122 	mov	r1,#0x00
      0086E9 E8               [12] 3123 	mov	a,r0
      0086EA 52 02            [12] 3124 	anl	ar2,a
      0086EC E9               [12] 3125 	mov	a,r1
      0086ED 52 03            [12] 3126 	anl	ar3,a
      0086EF EA               [12] 3127 	mov	a,r2
      0086F0 4B               [12] 3128 	orl	a,r3
      0086F1 60 1A            [24] 3129 	jz	00102$
      0086F3 74 03            [12] 3130 	mov	a,#0x03
      0086F5 5C               [12] 3131 	anl	a,r4
      0086F6 25 E0            [12] 3132 	add	a,acc
      0086F8 FB               [12] 3133 	mov	r3,a
      0086F9 8B F0            [24] 3134 	mov	b,r3
      0086FB 05 F0            [12] 3135 	inc	b
      0086FD 74 03            [12] 3136 	mov	a,#0x03
      0086FF 80 02            [24] 3137 	sjmp	00194$
      008701                       3138 00192$:
      008701 25 E0            [12] 3139 	add	a,acc
      008703                       3140 00194$:
      008703 D5 F0 FB         [24] 3141 	djnz	b,00192$
      008706 FB               [12] 3142 	mov	r3,a
      008707 90 E5 29         [24] 3143 	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
      00870A E0               [24] 3144 	movx	a,@dptr
      00870B 4B               [12] 3145 	orl	a,r3
      00870C F0               [24] 3146 	movx	@dptr,a
      00870D                       3147 00102$:
                                   3148 ;	board/zbs29_BW_uc/../uc8151.c:652: if ((i % 4) == 0) {
      00870D EC               [12] 3149 	mov	a,r4
      00870E 54 03            [12] 3150 	anl	a,#0x03
      008710 60 02            [24] 3151 	jz	00196$
      008712 80 1E            [24] 3152 	sjmp	00117$
      008714                       3153 00196$:
                                   3154 ;	board/zbs29_BW_uc/../uc8151.c:653: bufferByteShift(c);
      008714 90 E5 29         [24] 3155 	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
      008717 E0               [24] 3156 	movx	a,@dptr
      008718 F5 82            [12] 3157 	mov	dpl,a
      00871A C0 07            [24] 3158 	push	ar7
      00871C C0 06            [24] 3159 	push	ar6
      00871E C0 05            [24] 3160 	push	ar5
      008720 C0 04            [24] 3161 	push	ar4
      008722 12 86 2C         [24] 3162 	lcall	_bufferByteShift
      008725 D0 04            [24] 3163 	pop	ar4
      008727 D0 05            [24] 3164 	pop	ar5
      008729 D0 06            [24] 3165 	pop	ar6
      00872B D0 07            [24] 3166 	pop	ar7
                                   3167 ;	board/zbs29_BW_uc/../uc8151.c:654: c = 0;
      00872D 90 E5 29         [24] 3168 	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
      008730 E4               [12] 3169 	clr	a
      008731 F0               [24] 3170 	movx	@dptr,a
      008732                       3171 00117$:
                                   3172 ;	board/zbs29_BW_uc/../uc8151.c:650: for (uint8_t i = 7; i != 255; i--) {
      008732 1C               [12] 3173 	dec	r4
      008733 80 98            [24] 3174 	sjmp	00116$
      008735                       3175 00105$:
                                   3176 ;	board/zbs29_BW_uc/../uc8151.c:657: for (uint8_t i = 7; i != 255; i--) {
      008735 7C 07            [12] 3177 	mov	r4,#0x07
      008737                       3178 00119$:
      008737 BC FF 02         [24] 3179 	cjne	r4,#0xff,00197$
      00873A 80 63            [24] 3180 	sjmp	00123$
      00873C                       3181 00197$:
                                   3182 ;	board/zbs29_BW_uc/../uc8151.c:658: if (byte2 & (1 << i)) c |= (0x03 << ((i % 4) * 2));
      00873C 8C F0            [24] 3183 	mov	b,r4
      00873E 05 F0            [12] 3184 	inc	b
      008740 7A 01            [12] 3185 	mov	r2,#0x01
      008742 7B 00            [12] 3186 	mov	r3,#0x00
      008744 80 06            [24] 3187 	sjmp	00199$
      008746                       3188 00198$:
      008746 EA               [12] 3189 	mov	a,r2
      008747 2A               [12] 3190 	add	a,r2
      008748 FA               [12] 3191 	mov	r2,a
      008749 EB               [12] 3192 	mov	a,r3
      00874A 33               [12] 3193 	rlc	a
      00874B FB               [12] 3194 	mov	r3,a
      00874C                       3195 00199$:
      00874C D5 F0 F7         [24] 3196 	djnz	b,00198$
      00874F 8E 00            [24] 3197 	mov	ar0,r6
      008751 79 00            [12] 3198 	mov	r1,#0x00
      008753 E8               [12] 3199 	mov	a,r0
      008754 52 02            [12] 3200 	anl	ar2,a
      008756 E9               [12] 3201 	mov	a,r1
      008757 52 03            [12] 3202 	anl	ar3,a
      008759 EA               [12] 3203 	mov	a,r2
      00875A 4B               [12] 3204 	orl	a,r3
      00875B 60 1A            [24] 3205 	jz	00107$
      00875D 74 03            [12] 3206 	mov	a,#0x03
      00875F 5C               [12] 3207 	anl	a,r4
      008760 25 E0            [12] 3208 	add	a,acc
      008762 FB               [12] 3209 	mov	r3,a
      008763 8B F0            [24] 3210 	mov	b,r3
      008765 05 F0            [12] 3211 	inc	b
      008767 74 03            [12] 3212 	mov	a,#0x03
      008769 80 02            [24] 3213 	sjmp	00203$
      00876B                       3214 00201$:
      00876B 25 E0            [12] 3215 	add	a,acc
      00876D                       3216 00203$:
      00876D D5 F0 FB         [24] 3217 	djnz	b,00201$
      008770 FB               [12] 3218 	mov	r3,a
      008771 90 E5 29         [24] 3219 	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
      008774 E0               [24] 3220 	movx	a,@dptr
      008775 4B               [12] 3221 	orl	a,r3
      008776 F0               [24] 3222 	movx	@dptr,a
      008777                       3223 00107$:
                                   3224 ;	board/zbs29_BW_uc/../uc8151.c:659: if ((i % 4) == 0) {
      008777 EC               [12] 3225 	mov	a,r4
      008778 54 03            [12] 3226 	anl	a,#0x03
      00877A 60 02            [24] 3227 	jz	00205$
      00877C 80 1E            [24] 3228 	sjmp	00120$
      00877E                       3229 00205$:
                                   3230 ;	board/zbs29_BW_uc/../uc8151.c:660: bufferByteShift(c);
      00877E 90 E5 29         [24] 3231 	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
      008781 E0               [24] 3232 	movx	a,@dptr
      008782 F5 82            [12] 3233 	mov	dpl,a
      008784 C0 07            [24] 3234 	push	ar7
      008786 C0 06            [24] 3235 	push	ar6
      008788 C0 05            [24] 3236 	push	ar5
      00878A C0 04            [24] 3237 	push	ar4
      00878C 12 86 2C         [24] 3238 	lcall	_bufferByteShift
      00878F D0 04            [24] 3239 	pop	ar4
      008791 D0 05            [24] 3240 	pop	ar5
      008793 D0 06            [24] 3241 	pop	ar6
      008795 D0 07            [24] 3242 	pop	ar7
                                   3243 ;	board/zbs29_BW_uc/../uc8151.c:661: c = 0;
      008797 90 E5 29         [24] 3244 	mov	dptr,#_pushYFontBytesToEPD_c_262144_243
      00879A E4               [12] 3245 	clr	a
      00879B F0               [24] 3246 	movx	@dptr,a
      00879C                       3247 00120$:
                                   3248 ;	board/zbs29_BW_uc/../uc8151.c:657: for (uint8_t i = 7; i != 255; i--) {
      00879C 1C               [12] 3249 	dec	r4
      00879D 80 98            [24] 3250 	sjmp	00119$
      00879F                       3251 00123$:
                                   3252 ;	board/zbs29_BW_uc/../uc8151.c:648: for (uint8_t j = 0; j < 2; j++) {
      00879F 0D               [12] 3253 	inc	r5
      0087A0 02 86 C0         [24] 3254 	ljmp	00122$
      0087A3                       3255 00113$:
                                   3256 ;	board/zbs29_BW_uc/../uc8151.c:666: bufferByteShift(byte1);
      0087A3 90 E5 28         [24] 3257 	mov	dptr,#_pushYFontBytesToEPD_byte1_65536_239
      0087A6 E0               [24] 3258 	movx	a,@dptr
      0087A7 F5 82            [12] 3259 	mov	dpl,a
      0087A9 12 86 2C         [24] 3260 	lcall	_bufferByteShift
                                   3261 ;	board/zbs29_BW_uc/../uc8151.c:667: bufferByteShift(byte2);
      0087AC 90 E5 27         [24] 3262 	mov	dptr,#_pushYFontBytesToEPD_PARM_2
      0087AF E0               [24] 3263 	movx	a,@dptr
      0087B0 F5 82            [12] 3264 	mov	dpl,a
                                   3265 ;	board/zbs29_BW_uc/../uc8151.c:669: }
      0087B2 02 86 2C         [24] 3266 	ljmp	_bufferByteShift
                                   3267 ;------------------------------------------------------------
                                   3268 ;Allocation info for local variables in function 'writeCharEPD'
                                   3269 ;------------------------------------------------------------
                                   3270 ;c                         Allocated with name '_writeCharEPD_c_65536_251'
                                   3271 ;empty                     Allocated with name '_writeCharEPD_empty_65537_253'
                                   3272 ;i                         Allocated with name '_writeCharEPD_i_131073_254'
                                   3273 ;i                         Allocated with name '_writeCharEPD_i_196609_257'
                                   3274 ;begin                     Allocated with name '_writeCharEPD_begin_65538_261'
                                   3275 ;end                       Allocated with name '_writeCharEPD_end_65539_263'
                                   3276 ;pos                       Allocated with name '_writeCharEPD_pos_131075_265'
                                   3277 ;------------------------------------------------------------
                                   3278 ;	board/zbs29_BW_uc/../uc8151.c:670: void writeCharEPD(uint8_t c) {
                                   3279 ;	-----------------------------------------
                                   3280 ;	 function writeCharEPD
                                   3281 ;	-----------------------------------------
      0087B5                       3282 _writeCharEPD:
      0087B5 E5 82            [12] 3283 	mov	a,dpl
      0087B7 90 E5 2A         [24] 3284 	mov	dptr,#_writeCharEPD_c_65536_251
                                   3285 ;	board/zbs29_BW_uc/../uc8151.c:671: c-=0x20;
      0087BA F0               [24] 3286 	movx	@dptr,a ; Peephole dmitrygr.0005 - SRSLY, WTF?
      0087BB 24 E0            [12] 3287 	add	a,#0xe0
      0087BD F0               [24] 3288 	movx	@dptr,a
                                   3289 ;	board/zbs29_BW_uc/../uc8151.c:673: bool empty = true;
      0087BE 90 E5 2B         [24] 3290 	mov	dptr,#_writeCharEPD_empty_65537_253
      0087C1 74 01            [12] 3291 	mov	a,#0x01
      0087C3 F0               [24] 3292 	movx	@dptr,a
                                   3293 ;	board/zbs29_BW_uc/../uc8151.c:674: for (uint8_t i = 0; i < 20; i++) {
      0087C4 90 E5 2A         [24] 3294 	mov	dptr,#_writeCharEPD_c_65536_251
      0087C7 E0               [24] 3295 	movx	a,@dptr
      0087C8 75 F0 14         [24] 3296 	mov	b,#0x14
      0087CB A4               [48] 3297 	mul	ab
      0087CC 24 4A            [12] 3298 	add	a,#_font
      0087CE FE               [12] 3299 	mov	r6,a
      0087CF 74 B9            [12] 3300 	mov	a,#(_font >> 8)
      0087D1 35 F0            [12] 3301 	addc	a,b
      0087D3 FF               [12] 3302 	mov	r7,a
      0087D4 7D 00            [12] 3303 	mov	r5,#0x00
      0087D6                       3304 00126$:
      0087D6 BD 14 00         [24] 3305 	cjne	r5,#0x14,00206$
      0087D9                       3306 00206$:
      0087D9 50 16            [24] 3307 	jnc	00103$
                                   3308 ;	board/zbs29_BW_uc/../uc8151.c:675: if (font[c][i]) empty = false;
      0087DB ED               [12] 3309 	mov	a,r5
      0087DC 2E               [12] 3310 	add	a,r6
      0087DD FB               [12] 3311 	mov	r3,a
      0087DE E4               [12] 3312 	clr	a
      0087DF 3F               [12] 3313 	addc	a,r7
      0087E0 FC               [12] 3314 	mov	r4,a
      0087E1 8B 82            [24] 3315 	mov	dpl,r3
      0087E3 8C 83            [24] 3316 	mov	dph,r4
      0087E5 E4               [12] 3317 	clr	a
      0087E6 93               [24] 3318 	movc	a,@a+dptr
      0087E7 60 05            [24] 3319 	jz	00127$
      0087E9 90 E5 2B         [24] 3320 	mov	dptr,#_writeCharEPD_empty_65537_253
      0087EC E4               [12] 3321 	clr	a
      0087ED F0               [24] 3322 	movx	@dptr,a
      0087EE                       3323 00127$:
                                   3324 ;	board/zbs29_BW_uc/../uc8151.c:674: for (uint8_t i = 0; i < 20; i++) {
      0087EE 0D               [12] 3325 	inc	r5
      0087EF 80 E5            [24] 3326 	sjmp	00126$
      0087F1                       3327 00103$:
                                   3328 ;	board/zbs29_BW_uc/../uc8151.c:677: if (empty) {
      0087F1 90 E5 2B         [24] 3329 	mov	dptr,#_writeCharEPD_empty_65537_253
      0087F4 E0               [24] 3330 	movx	a,@dptr
      0087F5 60 31            [24] 3331 	jz	00109$
                                   3332 ;	board/zbs29_BW_uc/../uc8151.c:678: for (uint8_t i = 0; i < 8; i++) {
      0087F7 7F 00            [12] 3333 	mov	r7,#0x00
      0087F9                       3334 00129$:
      0087F9 BF 08 00         [24] 3335 	cjne	r7,#0x08,00210$
      0087FC                       3336 00210$:
      0087FC 50 29            [24] 3337 	jnc	00107$
                                   3338 ;	board/zbs29_BW_uc/../uc8151.c:679: if (directionY) {
      0087FE 90 FB A6         [24] 3339 	mov	dptr,#_directionY
      008801 E0               [24] 3340 	movx	a,@dptr
      008802 60 11            [24] 3341 	jz	00105$
                                   3342 ;	board/zbs29_BW_uc/../uc8151.c:680: pushYFontBytesToEPD(0x00, 0x00);
      008804 90 E5 27         [24] 3343 	mov	dptr,#_pushYFontBytesToEPD_PARM_2
      008807 E4               [12] 3344 	clr	a
      008808 F0               [24] 3345 	movx	@dptr,a
      008809 75 82 00         [24] 3346 	mov	dpl,#0x00
      00880C C0 07            [24] 3347 	push	ar7
      00880E 12 86 A1         [24] 3348 	lcall	_pushYFontBytesToEPD
      008811 D0 07            [24] 3349 	pop	ar7
      008813 80 0F            [24] 3350 	sjmp	00130$
      008815                       3351 00105$:
                                   3352 ;	board/zbs29_BW_uc/../uc8151.c:682: pushXFontBytesToEPD(0x00, 0x00);
      008815 90 E5 22         [24] 3353 	mov	dptr,#_pushXFontBytesToEPD_PARM_2
      008818 E4               [12] 3354 	clr	a
      008819 F0               [24] 3355 	movx	@dptr,a
      00881A 75 82 00         [24] 3356 	mov	dpl,#0x00
      00881D C0 07            [24] 3357 	push	ar7
      00881F 12 83 8C         [24] 3358 	lcall	_pushXFontBytesToEPD
      008822 D0 07            [24] 3359 	pop	ar7
      008824                       3360 00130$:
                                   3361 ;	board/zbs29_BW_uc/../uc8151.c:678: for (uint8_t i = 0; i < 8; i++) {
      008824 0F               [12] 3362 	inc	r7
      008825 80 D2            [24] 3363 	sjmp	00129$
      008827                       3364 00107$:
                                   3365 ;	board/zbs29_BW_uc/../uc8151.c:685: return;
      008827 22               [24] 3366 	ret
      008828                       3367 00109$:
                                   3368 ;	board/zbs29_BW_uc/../uc8151.c:688: uint8_t begin = 0;
      008828 90 E5 2C         [24] 3369 	mov	dptr,#_writeCharEPD_begin_65538_261
      00882B E4               [12] 3370 	clr	a
      00882C F0               [24] 3371 	movx	@dptr,a
                                   3372 ;	board/zbs29_BW_uc/../uc8151.c:689: while (font[c][begin] == 0x00 && font[c][begin + 1] == 0x00) {
      00882D 90 E5 2A         [24] 3373 	mov	dptr,#_writeCharEPD_c_65536_251
      008830 E0               [24] 3374 	movx	a,@dptr
      008831 75 F0 14         [24] 3375 	mov	b,#0x14
      008834 A4               [48] 3376 	mul	ab
      008835 FE               [12] 3377 	mov	r6,a
      008836 AF F0            [24] 3378 	mov	r7,b
      008838 24 4A            [12] 3379 	add	a,#_font
      00883A FC               [12] 3380 	mov	r4,a
      00883B EF               [12] 3381 	mov	a,r7
      00883C 34 B9            [12] 3382 	addc	a,#(_font >> 8)
      00883E FD               [12] 3383 	mov	r5,a
      00883F                       3384 00111$:
      00883F 90 E5 2C         [24] 3385 	mov	dptr,#_writeCharEPD_begin_65538_261
      008842 E0               [24] 3386 	movx	a,@dptr
      008843 FB               [12] 3387 	mov	r3,a
      008844 2C               [12] 3388 	add	a,r4
      008845 F9               [12] 3389 	mov	r1,a
      008846 E4               [12] 3390 	clr	a
      008847 3D               [12] 3391 	addc	a,r5
      008848 FA               [12] 3392 	mov	r2,a
      008849 89 82            [24] 3393 	mov	dpl,r1
      00884B 8A 83            [24] 3394 	mov	dph,r2
      00884D E4               [12] 3395 	clr	a
      00884E 93               [24] 3396 	movc	a,@a+dptr
      00884F 70 20            [24] 3397 	jnz	00113$
      008851 EE               [12] 3398 	mov	a,r6
      008852 24 4A            [12] 3399 	add	a,#_font
      008854 F9               [12] 3400 	mov	r1,a
      008855 EF               [12] 3401 	mov	a,r7
      008856 34 B9            [12] 3402 	addc	a,#(_font >> 8)
      008858 FA               [12] 3403 	mov	r2,a
      008859 EB               [12] 3404 	mov	a,r3
      00885A 04               [12] 3405 	inc	a
      00885B 29               [12] 3406 	add	a,r1
      00885C F9               [12] 3407 	mov	r1,a
      00885D E4               [12] 3408 	clr	a
      00885E 3A               [12] 3409 	addc	a,r2
      00885F FA               [12] 3410 	mov	r2,a
      008860 89 82            [24] 3411 	mov	dpl,r1
      008862 8A 83            [24] 3412 	mov	dph,r2
      008864 E4               [12] 3413 	clr	a
      008865 93               [24] 3414 	movc	a,@a+dptr
      008866 70 09            [24] 3415 	jnz	00113$
                                   3416 ;	board/zbs29_BW_uc/../uc8151.c:690: begin += 2;
      008868 90 E5 2C         [24] 3417 	mov	dptr,#_writeCharEPD_begin_65538_261
      00886B 74 02            [12] 3418 	mov	a,#0x02
      00886D 2B               [12] 3419 	add	a,r3
      00886E F0               [24] 3420 	movx	@dptr,a
      00886F 80 CE            [24] 3421 	sjmp	00111$
      008871                       3422 00113$:
                                   3423 ;	board/zbs29_BW_uc/../uc8151.c:693: uint8_t end = 20;
      008871 90 E5 2D         [24] 3424 	mov	dptr,#_writeCharEPD_end_65539_263
      008874 74 14            [12] 3425 	mov	a,#0x14
      008876 F0               [24] 3426 	movx	@dptr,a
                                   3427 ;	board/zbs29_BW_uc/../uc8151.c:694: while (font[c][end - 1] == 0x00 && font[c][end - 2] == 0x00) {
      008877 90 E5 2A         [24] 3428 	mov	dptr,#_writeCharEPD_c_65536_251
      00887A E0               [24] 3429 	movx	a,@dptr
      00887B 75 F0 14         [24] 3430 	mov	b,#0x14
      00887E A4               [48] 3431 	mul	ab
      00887F FE               [12] 3432 	mov	r6,a
      008880 AF F0            [24] 3433 	mov	r7,b
      008882 24 4A            [12] 3434 	add	a,#_font
      008884 FC               [12] 3435 	mov	r4,a
      008885 EF               [12] 3436 	mov	a,r7
      008886 34 B9            [12] 3437 	addc	a,#(_font >> 8)
      008888 FD               [12] 3438 	mov	r5,a
      008889                       3439 00115$:
      008889 90 E5 2D         [24] 3440 	mov	dptr,#_writeCharEPD_end_65539_263
      00888C E0               [24] 3441 	movx	a,@dptr
      00888D FB               [12] 3442 	mov	r3,a
      00888E 14               [12] 3443 	dec	a
      00888F 2C               [12] 3444 	add	a,r4
      008890 F9               [12] 3445 	mov	r1,a
      008891 E4               [12] 3446 	clr	a
      008892 3D               [12] 3447 	addc	a,r5
      008893 FA               [12] 3448 	mov	r2,a
      008894 89 82            [24] 3449 	mov	dpl,r1
      008896 8A 83            [24] 3450 	mov	dph,r2
      008898 E4               [12] 3451 	clr	a
      008899 93               [24] 3452 	movc	a,@a+dptr
      00889A 70 21            [24] 3453 	jnz	00117$
      00889C EE               [12] 3454 	mov	a,r6
      00889D 24 4A            [12] 3455 	add	a,#_font
      00889F F9               [12] 3456 	mov	r1,a
      0088A0 EF               [12] 3457 	mov	a,r7
      0088A1 34 B9            [12] 3458 	addc	a,#(_font >> 8)
      0088A3 FA               [12] 3459 	mov	r2,a
      0088A4 EB               [12] 3460 	mov	a,r3
      0088A5 24 FE            [12] 3461 	add	a,#0xfe
      0088A7 29               [12] 3462 	add	a,r1
      0088A8 F9               [12] 3463 	mov	r1,a
      0088A9 E4               [12] 3464 	clr	a
      0088AA 3A               [12] 3465 	addc	a,r2
      0088AB FA               [12] 3466 	mov	r2,a
      0088AC 89 82            [24] 3467 	mov	dpl,r1
      0088AE 8A 83            [24] 3468 	mov	dph,r2
      0088B0 E4               [12] 3469 	clr	a
      0088B1 93               [24] 3470 	movc	a,@a+dptr
      0088B2 70 09            [24] 3471 	jnz	00117$
                                   3472 ;	board/zbs29_BW_uc/../uc8151.c:695: end -= 2;
      0088B4 EB               [12] 3473 	mov	a,r3
      0088B5 24 FE            [12] 3474 	add	a,#0xfe
      0088B7 90 E5 2D         [24] 3475 	mov	dptr,#_writeCharEPD_end_65539_263
      0088BA F0               [24] 3476 	movx	@dptr,a
      0088BB 80 CC            [24] 3477 	sjmp	00115$
      0088BD                       3478 00117$:
                                   3479 ;	board/zbs29_BW_uc/../uc8151.c:698: for (uint8_t pos = begin; pos < end; pos += 2) {
      0088BD 90 E5 2C         [24] 3480 	mov	dptr,#_writeCharEPD_begin_65538_261
      0088C0 E0               [24] 3481 	movx	a,@dptr
      0088C1 90 E5 2E         [24] 3482 	mov	dptr,#_writeCharEPD_pos_131075_265
      0088C4 F0               [24] 3483 	movx	@dptr,a
      0088C5 90 E5 2A         [24] 3484 	mov	dptr,#_writeCharEPD_c_65536_251
      0088C8 E0               [24] 3485 	movx	a,@dptr
      0088C9 75 F0 14         [24] 3486 	mov	b,#0x14
      0088CC A4               [48] 3487 	mul	ab
      0088CD 24 4A            [12] 3488 	add	a,#_font
      0088CF FE               [12] 3489 	mov	r6,a
      0088D0 74 B9            [12] 3490 	mov	a,#(_font >> 8)
      0088D2 35 F0            [12] 3491 	addc	a,b
      0088D4 FF               [12] 3492 	mov	r7,a
      0088D5 8E 04            [24] 3493 	mov	ar4,r6
      0088D7 8F 05            [24] 3494 	mov	ar5,r7
      0088D9 90 E5 2D         [24] 3495 	mov	dptr,#_writeCharEPD_end_65539_263
      0088DC E0               [24] 3496 	movx	a,@dptr
      0088DD FB               [12] 3497 	mov	r3,a
      0088DE                       3498 00132$:
      0088DE 90 E5 2E         [24] 3499 	mov	dptr,#_writeCharEPD_pos_131075_265
      0088E1 E0               [24] 3500 	movx	a,@dptr
      0088E2 FA               [12] 3501 	mov	r2,a
      0088E3 C3               [12] 3502 	clr	c
      0088E4 9B               [12] 3503 	subb	a,r3
      0088E5 50 7B            [24] 3504 	jnc	00121$
                                   3505 ;	board/zbs29_BW_uc/../uc8151.c:699: if (directionY) {
      0088E7 90 FB A6         [24] 3506 	mov	dptr,#_directionY
      0088EA E0               [24] 3507 	movx	a,@dptr
      0088EB 60 37            [24] 3508 	jz	00119$
                                   3509 ;	board/zbs29_BW_uc/../uc8151.c:700: pushYFontBytesToEPD(font[c][pos + 1], font[c][pos]);
      0088ED 8A 01            [24] 3510 	mov	ar1,r2
      0088EF E9               [12] 3511 	mov	a,r1
      0088F0 04               [12] 3512 	inc	a
      0088F1 2C               [12] 3513 	add	a,r4
      0088F2 F5 82            [12] 3514 	mov	dpl,a
      0088F4 E4               [12] 3515 	clr	a
      0088F5 3D               [12] 3516 	addc	a,r5
      0088F6 F5 83            [12] 3517 	mov	dph,a
      0088F8 E4               [12] 3518 	clr	a
      0088F9 93               [24] 3519 	movc	a,@a+dptr
      0088FA F9               [12] 3520 	mov	r1,a
      0088FB EA               [12] 3521 	mov	a,r2
      0088FC 2C               [12] 3522 	add	a,r4
      0088FD F5 82            [12] 3523 	mov	dpl,a
      0088FF E4               [12] 3524 	clr	a
      008900 3D               [12] 3525 	addc	a,r5
      008901 F5 83            [12] 3526 	mov	dph,a
      008903 E4               [12] 3527 	clr	a
      008904 93               [24] 3528 	movc	a,@a+dptr
      008905 90 E5 27         [24] 3529 	mov	dptr,#_pushYFontBytesToEPD_PARM_2
      008908 F0               [24] 3530 	movx	@dptr,a
      008909 89 82            [24] 3531 	mov	dpl,r1
      00890B C0 07            [24] 3532 	push	ar7
      00890D C0 06            [24] 3533 	push	ar6
      00890F C0 05            [24] 3534 	push	ar5
      008911 C0 04            [24] 3535 	push	ar4
      008913 C0 03            [24] 3536 	push	ar3
      008915 12 86 A1         [24] 3537 	lcall	_pushYFontBytesToEPD
      008918 D0 03            [24] 3538 	pop	ar3
      00891A D0 04            [24] 3539 	pop	ar4
      00891C D0 05            [24] 3540 	pop	ar5
      00891E D0 06            [24] 3541 	pop	ar6
      008920 D0 07            [24] 3542 	pop	ar7
      008922 80 33            [24] 3543 	sjmp	00133$
      008924                       3544 00119$:
                                   3545 ;	board/zbs29_BW_uc/../uc8151.c:702: pushXFontBytesToEPD(font[c][pos], font[c][pos + 1]);
      008924 EA               [12] 3546 	mov	a,r2
      008925 2E               [12] 3547 	add	a,r6
      008926 F5 82            [12] 3548 	mov	dpl,a
      008928 E4               [12] 3549 	clr	a
      008929 3F               [12] 3550 	addc	a,r7
      00892A F5 83            [12] 3551 	mov	dph,a
      00892C E4               [12] 3552 	clr	a
      00892D 93               [24] 3553 	movc	a,@a+dptr
      00892E F9               [12] 3554 	mov	r1,a
      00892F EA               [12] 3555 	mov	a,r2
      008930 04               [12] 3556 	inc	a
      008931 2E               [12] 3557 	add	a,r6
      008932 F5 82            [12] 3558 	mov	dpl,a
      008934 E4               [12] 3559 	clr	a
      008935 3F               [12] 3560 	addc	a,r7
      008936 F5 83            [12] 3561 	mov	dph,a
      008938 E4               [12] 3562 	clr	a
      008939 93               [24] 3563 	movc	a,@a+dptr
      00893A 90 E5 22         [24] 3564 	mov	dptr,#_pushXFontBytesToEPD_PARM_2
      00893D F0               [24] 3565 	movx	@dptr,a
      00893E 89 82            [24] 3566 	mov	dpl,r1
      008940 C0 07            [24] 3567 	push	ar7
      008942 C0 06            [24] 3568 	push	ar6
      008944 C0 05            [24] 3569 	push	ar5
      008946 C0 04            [24] 3570 	push	ar4
      008948 C0 03            [24] 3571 	push	ar3
      00894A 12 83 8C         [24] 3572 	lcall	_pushXFontBytesToEPD
      00894D D0 03            [24] 3573 	pop	ar3
      00894F D0 04            [24] 3574 	pop	ar4
      008951 D0 05            [24] 3575 	pop	ar5
      008953 D0 06            [24] 3576 	pop	ar6
      008955 D0 07            [24] 3577 	pop	ar7
      008957                       3578 00133$:
                                   3579 ;	board/zbs29_BW_uc/../uc8151.c:698: for (uint8_t pos = begin; pos < end; pos += 2) {
      008957 90 E5 2E         [24] 3580 	mov	dptr,#_writeCharEPD_pos_131075_265
      00895A E0               [24] 3581 	movx	a,@dptr
      00895B FA               [12] 3582 	mov	r2,a
      00895C 24 02            [12] 3583 	add	a,#0x02
      00895E F0               [24] 3584 	movx	@dptr,a
      00895F 02 88 DE         [24] 3585 	ljmp	00132$
      008962                       3586 00121$:
                                   3587 ;	board/zbs29_BW_uc/../uc8151.c:707: if (directionY) {
      008962 90 FB A6         [24] 3588 	mov	dptr,#_directionY
      008965 E0               [24] 3589 	movx	a,@dptr
      008966 60 0B            [24] 3590 	jz	00123$
                                   3591 ;	board/zbs29_BW_uc/../uc8151.c:708: pushYFontBytesToEPD(0x00, 0x00);
      008968 90 E5 27         [24] 3592 	mov	dptr,#_pushYFontBytesToEPD_PARM_2
      00896B E4               [12] 3593 	clr	a
      00896C F0               [24] 3594 	movx	@dptr,a
      00896D 75 82 00         [24] 3595 	mov	dpl,#0x00
      008970 02 86 A1         [24] 3596 	ljmp	_pushYFontBytesToEPD
      008973                       3597 00123$:
                                   3598 ;	board/zbs29_BW_uc/../uc8151.c:710: pushXFontBytesToEPD(0x00, 0x00);
      008973 90 E5 22         [24] 3599 	mov	dptr,#_pushXFontBytesToEPD_PARM_2
      008976 E4               [12] 3600 	clr	a
      008977 F0               [24] 3601 	movx	@dptr,a
      008978 75 82 00         [24] 3602 	mov	dpl,#0x00
                                   3603 ;	board/zbs29_BW_uc/../uc8151.c:712: }
      00897B 02 83 8C         [24] 3604 	ljmp	_pushXFontBytesToEPD
                                   3605 ;------------------------------------------------------------
                                   3606 ;Allocation info for local variables in function 'epdPrintBegin'
                                   3607 ;------------------------------------------------------------
                                   3608 ;y                         Allocated with name '_epdPrintBegin_PARM_2'
                                   3609 ;direction                 Allocated with name '_epdPrintBegin_PARM_3'
                                   3610 ;fontsize                  Allocated with name '_epdPrintBegin_PARM_4'
                                   3611 ;color                     Allocated with name '_epdPrintBegin_PARM_5'
                                   3612 ;x                         Allocated with name '_epdPrintBegin_x_65536_271'
                                   3613 ;extra                     Allocated with name '_epdPrintBegin_extra_131072_273'
                                   3614 ;------------------------------------------------------------
                                   3615 ;	board/zbs29_BW_uc/../uc8151.c:715: void epdPrintBegin(uint16_t x, uint16_t y, bool direction, bool fontsize, bool color) {
                                   3616 ;	-----------------------------------------
                                   3617 ;	 function epdPrintBegin
                                   3618 ;	-----------------------------------------
      00897E                       3619 _epdPrintBegin:
      00897E AF 83            [24] 3620 	mov	r7,dph
      008980 E5 82            [12] 3621 	mov	a,dpl
      008982 90 E5 34         [24] 3622 	mov	dptr,#_epdPrintBegin_x_65536_271
      008985 F0               [24] 3623 	movx	@dptr,a
      008986 EF               [12] 3624 	mov	a,r7
      008987 A3               [24] 3625 	inc	dptr
      008988 F0               [24] 3626 	movx	@dptr,a
                                   3627 ;	board/zbs29_BW_uc/../uc8151.c:716: directionY = direction;
      008989 90 E5 31         [24] 3628 	mov	dptr,#_epdPrintBegin_PARM_3
      00898C E0               [24] 3629 	movx	a,@dptr
      00898D FF               [12] 3630 	mov	r7,a
      00898E 90 FB A6         [24] 3631 	mov	dptr,#_directionY
      008991 F0               [24] 3632 	movx	@dptr,a
                                   3633 ;	board/zbs29_BW_uc/../uc8151.c:717: epdCharSize = 1 + fontsize;
      008992 90 E5 32         [24] 3634 	mov	dptr,#_epdPrintBegin_PARM_4
      008995 E0               [24] 3635 	movx	a,@dptr
      008996 FE               [12] 3636 	mov	r6,a
      008997 0E               [12] 3637 	inc	r6
      008998 90 FB A5         [24] 3638 	mov	dptr,#_epdCharSize
      00899B EE               [12] 3639 	mov	a,r6
      00899C F0               [24] 3640 	movx	@dptr,a
                                   3641 ;	board/zbs29_BW_uc/../uc8151.c:718: if (directionY) {
      00899D EF               [12] 3642 	mov	a,r7
      00899E 70 03            [24] 3643 	jnz	00138$
      0089A0 02 8A 91         [24] 3644 	ljmp	00111$
      0089A3                       3645 00138$:
                                   3646 ;	board/zbs29_BW_uc/../uc8151.c:719: uint8_t extra = 0;
      0089A3 90 E5 36         [24] 3647 	mov	dptr,#_epdPrintBegin_extra_131072_273
      0089A6 E4               [12] 3648 	clr	a
      0089A7 F0               [24] 3649 	movx	@dptr,a
                                   3650 ;	board/zbs29_BW_uc/../uc8151.c:722: if (x % 8) {
      0089A8 90 E5 34         [24] 3651 	mov	dptr,#_epdPrintBegin_x_65536_271
      0089AB E0               [24] 3652 	movx	a,@dptr
      0089AC FD               [12] 3653 	mov	r5,a
      0089AD A3               [24] 3654 	inc	dptr
      0089AE E0               [24] 3655 	movx	a,@dptr
      0089AF 53 05 07         [24] 3656 	anl	ar5,#0x07
      0089B2 7F 00            [12] 3657 	mov	r7,#0x00
      0089B4 ED               [12] 3658 	mov	a,r5
      0089B5 4F               [12] 3659 	orl	a,r7
      0089B6 60 22            [24] 3660 	jz	00102$
                                   3661 ;	board/zbs29_BW_uc/../uc8151.c:723: extra = 8;
      0089B8 90 E5 36         [24] 3662 	mov	dptr,#_epdPrintBegin_extra_131072_273
      0089BB 74 08            [12] 3663 	mov	a,#0x08
      0089BD F0               [24] 3664 	movx	@dptr,a
                                   3665 ;	board/zbs29_BW_uc/../uc8151.c:724: rbuffer[0] = 0;      // previous value
      0089BE 90 E4 4A         [24] 3666 	mov	dptr,#_rbuffer
      0089C1 E4               [12] 3667 	clr	a
      0089C2 F0               [24] 3668 	movx	@dptr,a
                                   3669 ;	board/zbs29_BW_uc/../uc8151.c:725: rbuffer[1] = x % 8;  // offset
      0089C3 90 E4 4B         [24] 3670 	mov	dptr,#(_rbuffer + 0x0001)
      0089C6 ED               [12] 3671 	mov	a,r5
      0089C7 F0               [24] 3672 	movx	@dptr,a
                                   3673 ;	board/zbs29_BW_uc/../uc8151.c:726: rbuffer[2] = 0;      // current byte counter;
      0089C8 90 E4 4C         [24] 3674 	mov	dptr,#(_rbuffer + 0x0002)
      0089CB E4               [12] 3675 	clr	a
      0089CC F0               [24] 3676 	movx	@dptr,a
                                   3677 ;	board/zbs29_BW_uc/../uc8151.c:727: rbuffer[3] = (epdCharSize * 2);
      0089CD 90 FB A5         [24] 3678 	mov	dptr,#_epdCharSize
      0089D0 E0               [24] 3679 	movx	a,@dptr
      0089D1 25 E0            [12] 3680 	add	a,acc
      0089D3 FF               [12] 3681 	mov	r7,a
      0089D4 90 E4 4D         [24] 3682 	mov	dptr,#(_rbuffer + 0x0003)
      0089D7 F0               [24] 3683 	movx	@dptr,a
      0089D8 80 05            [24] 3684 	sjmp	00103$
      0089DA                       3685 00102$:
                                   3686 ;	board/zbs29_BW_uc/../uc8151.c:729: rbuffer[1] = 0;
      0089DA 90 E4 4B         [24] 3687 	mov	dptr,#(_rbuffer + 0x0001)
      0089DD E4               [12] 3688 	clr	a
      0089DE F0               [24] 3689 	movx	@dptr,a
      0089DF                       3690 00103$:
                                   3691 ;	board/zbs29_BW_uc/../uc8151.c:733: if (epdCharSize == 2) {
      0089DF 90 FB A5         [24] 3692 	mov	dptr,#_epdCharSize
      0089E2 E0               [24] 3693 	movx	a,@dptr
      0089E3 FF               [12] 3694 	mov	r7,a
      0089E4 BF 02 55         [24] 3695 	cjne	r7,#0x02,00105$
                                   3696 ;	board/zbs29_BW_uc/../uc8151.c:734: setWindowXY(x, x + 32 + extra, SCREEN_HEIGHT - y, SCREEN_HEIGHT);
      0089E7 90 E5 34         [24] 3697 	mov	dptr,#_epdPrintBegin_x_65536_271
      0089EA E0               [24] 3698 	movx	a,@dptr
      0089EB FD               [12] 3699 	mov	r5,a
      0089EC A3               [24] 3700 	inc	dptr
      0089ED E0               [24] 3701 	movx	a,@dptr
      0089EE FF               [12] 3702 	mov	r7,a
      0089EF 8D 03            [24] 3703 	mov	ar3,r5
      0089F1 8F 04            [24] 3704 	mov	ar4,r7
      0089F3 74 20            [12] 3705 	mov	a,#0x20
      0089F5 2B               [12] 3706 	add	a,r3
      0089F6 FB               [12] 3707 	mov	r3,a
      0089F7 E4               [12] 3708 	clr	a
      0089F8 3C               [12] 3709 	addc	a,r4
      0089F9 FC               [12] 3710 	mov	r4,a
      0089FA 90 E5 36         [24] 3711 	mov	dptr,#_epdPrintBegin_extra_131072_273
      0089FD E0               [24] 3712 	movx	a,@dptr
      0089FE F9               [12] 3713 	mov	r1,a
      0089FF 7A 00            [12] 3714 	mov	r2,#0x00
      008A01 E9               [12] 3715 	mov	a,r1
      008A02 2B               [12] 3716 	add	a,r3
      008A03 FB               [12] 3717 	mov	r3,a
      008A04 EA               [12] 3718 	mov	a,r2
      008A05 3C               [12] 3719 	addc	a,r4
      008A06 FC               [12] 3720 	mov	r4,a
      008A07 90 E5 2F         [24] 3721 	mov	dptr,#_epdPrintBegin_PARM_2
      008A0A E0               [24] 3722 	movx	a,@dptr
      008A0B F9               [12] 3723 	mov	r1,a
      008A0C A3               [24] 3724 	inc	dptr
      008A0D E0               [24] 3725 	movx	a,@dptr
      008A0E FA               [12] 3726 	mov	r2,a
      008A0F 74 28            [12] 3727 	mov	a,#0x28
      008A11 C3               [12] 3728 	clr	c
      008A12 99               [12] 3729 	subb	a,r1
      008A13 F9               [12] 3730 	mov	r1,a
      008A14 74 01            [12] 3731 	mov	a,#0x01
      008A16 9A               [12] 3732 	subb	a,r2
      008A17 FA               [12] 3733 	mov	r2,a
      008A18 90 E5 03         [24] 3734 	mov	dptr,#_setWindowXY_PARM_2
      008A1B EB               [12] 3735 	mov	a,r3
      008A1C F0               [24] 3736 	movx	@dptr,a
      008A1D EC               [12] 3737 	mov	a,r4
      008A1E A3               [24] 3738 	inc	dptr
      008A1F F0               [24] 3739 	movx	@dptr,a
      008A20 90 E5 05         [24] 3740 	mov	dptr,#_setWindowXY_PARM_3
      008A23 E9               [12] 3741 	mov	a,r1
      008A24 F0               [24] 3742 	movx	@dptr,a
      008A25 EA               [12] 3743 	mov	a,r2
      008A26 A3               [24] 3744 	inc	dptr
      008A27 F0               [24] 3745 	movx	@dptr,a
      008A28 90 E5 07         [24] 3746 	mov	dptr,#_setWindowXY_PARM_4
      008A2B 74 28            [12] 3747 	mov	a,#0x28
      008A2D F0               [24] 3748 	movx	@dptr,a
      008A2E 74 01            [12] 3749 	mov	a,#0x01
      008A30 A3               [24] 3750 	inc	dptr
      008A31 F0               [24] 3751 	movx	@dptr,a
      008A32 8D 82            [24] 3752 	mov	dpl,r5
      008A34 8F 83            [24] 3753 	mov	dph,r7
      008A36 12 7E D4         [24] 3754 	lcall	_setWindowXY
      008A39 02 8B 5E         [24] 3755 	ljmp	00112$
      008A3C                       3756 00105$:
                                   3757 ;	board/zbs29_BW_uc/../uc8151.c:737: setWindowXY(x, x + 16 + extra, SCREEN_HEIGHT - y, SCREEN_HEIGHT);
      008A3C 90 E5 34         [24] 3758 	mov	dptr,#_epdPrintBegin_x_65536_271
      008A3F E0               [24] 3759 	movx	a,@dptr
      008A40 FD               [12] 3760 	mov	r5,a
      008A41 A3               [24] 3761 	inc	dptr
      008A42 E0               [24] 3762 	movx	a,@dptr
      008A43 FF               [12] 3763 	mov	r7,a
      008A44 8D 03            [24] 3764 	mov	ar3,r5
      008A46 8F 04            [24] 3765 	mov	ar4,r7
      008A48 74 10            [12] 3766 	mov	a,#0x10
      008A4A 2B               [12] 3767 	add	a,r3
      008A4B FB               [12] 3768 	mov	r3,a
      008A4C E4               [12] 3769 	clr	a
      008A4D 3C               [12] 3770 	addc	a,r4
      008A4E FC               [12] 3771 	mov	r4,a
      008A4F 90 E5 36         [24] 3772 	mov	dptr,#_epdPrintBegin_extra_131072_273
      008A52 E0               [24] 3773 	movx	a,@dptr
      008A53 F9               [12] 3774 	mov	r1,a
      008A54 7A 00            [12] 3775 	mov	r2,#0x00
      008A56 E9               [12] 3776 	mov	a,r1
      008A57 2B               [12] 3777 	add	a,r3
      008A58 FB               [12] 3778 	mov	r3,a
      008A59 EA               [12] 3779 	mov	a,r2
      008A5A 3C               [12] 3780 	addc	a,r4
      008A5B FC               [12] 3781 	mov	r4,a
      008A5C 90 E5 2F         [24] 3782 	mov	dptr,#_epdPrintBegin_PARM_2
      008A5F E0               [24] 3783 	movx	a,@dptr
      008A60 F9               [12] 3784 	mov	r1,a
      008A61 A3               [24] 3785 	inc	dptr
      008A62 E0               [24] 3786 	movx	a,@dptr
      008A63 FA               [12] 3787 	mov	r2,a
      008A64 74 28            [12] 3788 	mov	a,#0x28
      008A66 C3               [12] 3789 	clr	c
      008A67 99               [12] 3790 	subb	a,r1
      008A68 F9               [12] 3791 	mov	r1,a
      008A69 74 01            [12] 3792 	mov	a,#0x01
      008A6B 9A               [12] 3793 	subb	a,r2
      008A6C FA               [12] 3794 	mov	r2,a
      008A6D 90 E5 03         [24] 3795 	mov	dptr,#_setWindowXY_PARM_2
      008A70 EB               [12] 3796 	mov	a,r3
      008A71 F0               [24] 3797 	movx	@dptr,a
      008A72 EC               [12] 3798 	mov	a,r4
      008A73 A3               [24] 3799 	inc	dptr
      008A74 F0               [24] 3800 	movx	@dptr,a
      008A75 90 E5 05         [24] 3801 	mov	dptr,#_setWindowXY_PARM_3
      008A78 E9               [12] 3802 	mov	a,r1
      008A79 F0               [24] 3803 	movx	@dptr,a
      008A7A EA               [12] 3804 	mov	a,r2
      008A7B A3               [24] 3805 	inc	dptr
      008A7C F0               [24] 3806 	movx	@dptr,a
      008A7D 90 E5 07         [24] 3807 	mov	dptr,#_setWindowXY_PARM_4
      008A80 74 28            [12] 3808 	mov	a,#0x28
      008A82 F0               [24] 3809 	movx	@dptr,a
      008A83 74 01            [12] 3810 	mov	a,#0x01
      008A85 A3               [24] 3811 	inc	dptr
      008A86 F0               [24] 3812 	movx	@dptr,a
      008A87 8D 82            [24] 3813 	mov	dpl,r5
      008A89 8F 83            [24] 3814 	mov	dph,r7
      008A8B 12 7E D4         [24] 3815 	lcall	_setWindowXY
      008A8E 02 8B 5E         [24] 3816 	ljmp	00112$
      008A91                       3817 00111$:
                                   3818 ;	board/zbs29_BW_uc/../uc8151.c:742: if (epdCharSize == 2) {
      008A91 BE 02 68         [24] 3819 	cjne	r6,#0x02,00108$
                                   3820 ;	board/zbs29_BW_uc/../uc8151.c:743: x /= 2;
      008A94 90 E5 34         [24] 3821 	mov	dptr,#_epdPrintBegin_x_65536_271
      008A97 E0               [24] 3822 	movx	a,@dptr
      008A98 FE               [12] 3823 	mov	r6,a
      008A99 A3               [24] 3824 	inc	dptr
      008A9A E0               [24] 3825 	movx	a,@dptr
      008A9B C3               [12] 3826 	clr	c
      008A9C 13               [12] 3827 	rrc	a
      008A9D CE               [12] 3828 	xch	a,r6
      008A9E 13               [12] 3829 	rrc	a
      008A9F CE               [12] 3830 	xch	a,r6
      008AA0 FF               [12] 3831 	mov	r7,a
      008AA1 90 E5 34         [24] 3832 	mov	dptr,#_epdPrintBegin_x_65536_271
      008AA4 EE               [12] 3833 	mov	a,r6
      008AA5 F0               [24] 3834 	movx	@dptr,a
      008AA6 EF               [12] 3835 	mov	a,r7
      008AA7 A3               [24] 3836 	inc	dptr
      008AA8 F0               [24] 3837 	movx	@dptr,a
                                   3838 ;	board/zbs29_BW_uc/../uc8151.c:744: x *= 2;
      008AA9 90 E5 34         [24] 3839 	mov	dptr,#_epdPrintBegin_x_65536_271
      008AAC E0               [24] 3840 	movx	a,@dptr
      008AAD FE               [12] 3841 	mov	r6,a
      008AAE A3               [24] 3842 	inc	dptr
      008AAF E0               [24] 3843 	movx	a,@dptr
      008AB0 FF               [12] 3844 	mov	r7,a
      008AB1 EE               [12] 3845 	mov	a,r6
      008AB2 2E               [12] 3846 	add	a,r6
      008AB3 FE               [12] 3847 	mov	r6,a
      008AB4 EF               [12] 3848 	mov	a,r7
      008AB5 33               [12] 3849 	rlc	a
      008AB6 FF               [12] 3850 	mov	r7,a
      008AB7 90 E5 34         [24] 3851 	mov	dptr,#_epdPrintBegin_x_65536_271
      008ABA EE               [12] 3852 	mov	a,r6
      008ABB F0               [24] 3853 	movx	@dptr,a
      008ABC EF               [12] 3854 	mov	a,r7
      008ABD A3               [24] 3855 	inc	dptr
      008ABE F0               [24] 3856 	movx	@dptr,a
                                   3857 ;	board/zbs29_BW_uc/../uc8151.c:745: setWindowXY(x, SCREEN_WIDTH, y, y + 32);
      008ABF 90 E5 34         [24] 3858 	mov	dptr,#_epdPrintBegin_x_65536_271
      008AC2 E0               [24] 3859 	movx	a,@dptr
      008AC3 FE               [12] 3860 	mov	r6,a
      008AC4 A3               [24] 3861 	inc	dptr
      008AC5 E0               [24] 3862 	movx	a,@dptr
      008AC6 FF               [12] 3863 	mov	r7,a
      008AC7 90 E5 2F         [24] 3864 	mov	dptr,#_epdPrintBegin_PARM_2
      008ACA E0               [24] 3865 	movx	a,@dptr
      008ACB FC               [12] 3866 	mov	r4,a
      008ACC A3               [24] 3867 	inc	dptr
      008ACD E0               [24] 3868 	movx	a,@dptr
      008ACE FD               [12] 3869 	mov	r5,a
      008ACF 8C 02            [24] 3870 	mov	ar2,r4
      008AD1 8D 03            [24] 3871 	mov	ar3,r5
      008AD3 74 20            [12] 3872 	mov	a,#0x20
      008AD5 2A               [12] 3873 	add	a,r2
      008AD6 FA               [12] 3874 	mov	r2,a
      008AD7 E4               [12] 3875 	clr	a
      008AD8 3B               [12] 3876 	addc	a,r3
      008AD9 FB               [12] 3877 	mov	r3,a
      008ADA 90 E5 03         [24] 3878 	mov	dptr,#_setWindowXY_PARM_2
      008ADD 74 80            [12] 3879 	mov	a,#0x80
      008ADF F0               [24] 3880 	movx	@dptr,a
      008AE0 E4               [12] 3881 	clr	a
      008AE1 A3               [24] 3882 	inc	dptr
      008AE2 F0               [24] 3883 	movx	@dptr,a
      008AE3 90 E5 05         [24] 3884 	mov	dptr,#_setWindowXY_PARM_3
      008AE6 EC               [12] 3885 	mov	a,r4
      008AE7 F0               [24] 3886 	movx	@dptr,a
      008AE8 ED               [12] 3887 	mov	a,r5
      008AE9 A3               [24] 3888 	inc	dptr
      008AEA F0               [24] 3889 	movx	@dptr,a
      008AEB 90 E5 07         [24] 3890 	mov	dptr,#_setWindowXY_PARM_4
      008AEE EA               [12] 3891 	mov	a,r2
      008AEF F0               [24] 3892 	movx	@dptr,a
      008AF0 EB               [12] 3893 	mov	a,r3
      008AF1 A3               [24] 3894 	inc	dptr
      008AF2 F0               [24] 3895 	movx	@dptr,a
      008AF3 8E 82            [24] 3896 	mov	dpl,r6
      008AF5 8F 83            [24] 3897 	mov	dph,r7
      008AF7 12 7E D4         [24] 3898 	lcall	_setWindowXY
      008AFA 80 3B            [24] 3899 	sjmp	00109$
      008AFC                       3900 00108$:
                                   3901 ;	board/zbs29_BW_uc/../uc8151.c:747: setWindowXY(x, SCREEN_WIDTH, y, y + 16);
      008AFC 90 E5 34         [24] 3902 	mov	dptr,#_epdPrintBegin_x_65536_271
      008AFF E0               [24] 3903 	movx	a,@dptr
      008B00 FE               [12] 3904 	mov	r6,a
      008B01 A3               [24] 3905 	inc	dptr
      008B02 E0               [24] 3906 	movx	a,@dptr
      008B03 FF               [12] 3907 	mov	r7,a
      008B04 90 E5 2F         [24] 3908 	mov	dptr,#_epdPrintBegin_PARM_2
      008B07 E0               [24] 3909 	movx	a,@dptr
      008B08 FC               [12] 3910 	mov	r4,a
      008B09 A3               [24] 3911 	inc	dptr
      008B0A E0               [24] 3912 	movx	a,@dptr
      008B0B FD               [12] 3913 	mov	r5,a
      008B0C 8C 02            [24] 3914 	mov	ar2,r4
      008B0E 8D 03            [24] 3915 	mov	ar3,r5
      008B10 74 10            [12] 3916 	mov	a,#0x10
      008B12 2A               [12] 3917 	add	a,r2
      008B13 FA               [12] 3918 	mov	r2,a
      008B14 E4               [12] 3919 	clr	a
      008B15 3B               [12] 3920 	addc	a,r3
      008B16 FB               [12] 3921 	mov	r3,a
      008B17 90 E5 03         [24] 3922 	mov	dptr,#_setWindowXY_PARM_2
      008B1A 74 80            [12] 3923 	mov	a,#0x80
      008B1C F0               [24] 3924 	movx	@dptr,a
      008B1D E4               [12] 3925 	clr	a
      008B1E A3               [24] 3926 	inc	dptr
      008B1F F0               [24] 3927 	movx	@dptr,a
      008B20 90 E5 05         [24] 3928 	mov	dptr,#_setWindowXY_PARM_3
      008B23 EC               [12] 3929 	mov	a,r4
      008B24 F0               [24] 3930 	movx	@dptr,a
      008B25 ED               [12] 3931 	mov	a,r5
      008B26 A3               [24] 3932 	inc	dptr
      008B27 F0               [24] 3933 	movx	@dptr,a
      008B28 90 E5 07         [24] 3934 	mov	dptr,#_setWindowXY_PARM_4
      008B2B EA               [12] 3935 	mov	a,r2
      008B2C F0               [24] 3936 	movx	@dptr,a
      008B2D EB               [12] 3937 	mov	a,r3
      008B2E A3               [24] 3938 	inc	dptr
      008B2F F0               [24] 3939 	movx	@dptr,a
      008B30 8E 82            [24] 3940 	mov	dpl,r6
      008B32 8F 83            [24] 3941 	mov	dph,r7
      008B34 12 7E D4         [24] 3942 	lcall	_setWindowXY
      008B37                       3943 00109$:
                                   3944 ;	board/zbs29_BW_uc/../uc8151.c:750: fontCurXpos = x;
      008B37 90 E5 34         [24] 3945 	mov	dptr,#_epdPrintBegin_x_65536_271
      008B3A E0               [24] 3946 	movx	a,@dptr
      008B3B FE               [12] 3947 	mov	r6,a
      008B3C A3               [24] 3948 	inc	dptr
      008B3D E0               [24] 3949 	movx	a,@dptr
      008B3E FF               [12] 3950 	mov	r7,a
      008B3F 90 FB A7         [24] 3951 	mov	dptr,#_fontCurXpos
      008B42 EE               [12] 3952 	mov	a,r6
      008B43 F0               [24] 3953 	movx	@dptr,a
      008B44 EF               [12] 3954 	mov	a,r7
      008B45 A3               [24] 3955 	inc	dptr
      008B46 F0               [24] 3956 	movx	@dptr,a
                                   3957 ;	board/zbs29_BW_uc/../uc8151.c:753: memset(rbuffer, 0, 32);
      008B47 90 E5 C6         [24] 3958 	mov	dptr,#_memset_PARM_2
      008B4A E4               [12] 3959 	clr	a
      008B4B F0               [24] 3960 	movx	@dptr,a
      008B4C 90 E5 C7         [24] 3961 	mov	dptr,#_memset_PARM_3
      008B4F 74 20            [12] 3962 	mov	a,#0x20
      008B51 F0               [24] 3963 	movx	@dptr,a
      008B52 E4               [12] 3964 	clr	a
      008B53 A3               [24] 3965 	inc	dptr
      008B54 F0               [24] 3966 	movx	@dptr,a
      008B55 90 E4 4A         [24] 3967 	mov	dptr,#_rbuffer
      008B58 75 F0 00         [24] 3968 	mov	b,#0x00
      008B5B 12 A0 D9         [24] 3969 	lcall	_memset
      008B5E                       3970 00112$:
                                   3971 ;	board/zbs29_BW_uc/../uc8151.c:755: if (color) {
      008B5E 90 E5 33         [24] 3972 	mov	dptr,#_epdPrintBegin_PARM_5
      008B61 E0               [24] 3973 	movx	a,@dptr
      008B62 60 06            [24] 3974 	jz	00114$
                                   3975 ;	board/zbs29_BW_uc/../uc8151.c:756: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM2);
      008B64 75 82 13         [24] 3976 	mov	dpl,#0x13
      008B67 02 7C FD         [24] 3977 	ljmp	_commandBegin
      008B6A                       3978 00114$:
                                   3979 ;	board/zbs29_BW_uc/../uc8151.c:758: commandBegin(CMD_DISPLAY_START_TRANSMISSION_DTM1);
      008B6A 75 82 13         [24] 3980 	mov	dpl,#0x13
                                   3981 ;	board/zbs29_BW_uc/../uc8151.c:760: }
      008B6D 02 7C FD         [24] 3982 	ljmp	_commandBegin
                                   3983 ;------------------------------------------------------------
                                   3984 ;Allocation info for local variables in function 'epdPrintEnd'
                                   3985 ;------------------------------------------------------------
                                   3986 ;i                         Allocated with name '_epdPrintEnd_i_196608_285'
                                   3987 ;------------------------------------------------------------
                                   3988 ;	board/zbs29_BW_uc/../uc8151.c:761: void epdPrintEnd() {
                                   3989 ;	-----------------------------------------
                                   3990 ;	 function epdPrintEnd
                                   3991 ;	-----------------------------------------
      008B70                       3992 _epdPrintEnd:
                                   3993 ;	board/zbs29_BW_uc/../uc8151.c:762: if (!directionY && ((fontCurXpos % 8) != 0)) {
      008B70 90 FB A6         [24] 3994 	mov	dptr,#_directionY
      008B73 E0               [24] 3995 	movx	a,@dptr
      008B74 70 49            [24] 3996 	jnz	00105$
      008B76 90 FB A7         [24] 3997 	mov	dptr,#_fontCurXpos
      008B79 E0               [24] 3998 	movx	a,@dptr
      008B7A FE               [12] 3999 	mov	r6,a
      008B7B A3               [24] 4000 	inc	dptr
      008B7C E0               [24] 4001 	movx	a,@dptr
      008B7D FF               [12] 4002 	mov	r7,a
      008B7E EE               [12] 4003 	mov	a,r6
      008B7F 54 07            [12] 4004 	anl	a,#0x07
      008B81 60 3C            [24] 4005 	jz	00105$
                                   4006 ;	board/zbs29_BW_uc/../uc8151.c:763: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
      008B83 7F 00            [12] 4007 	mov	r7,#0x00
      008B85                       4008 00109$:
      008B85 90 FB A5         [24] 4009 	mov	dptr,#_epdCharSize
      008B88 E0               [24] 4010 	movx	a,@dptr
      008B89 FE               [12] 4011 	mov	r6,a
      008B8A E4               [12] 4012 	clr	a
      008B8B C4               [12] 4013 	swap	a
      008B8C 54 F0            [12] 4014 	anl	a,#0xf0
      008B8E CE               [12] 4015 	xch	a,r6
      008B8F C4               [12] 4016 	swap	a
      008B90 CE               [12] 4017 	xch	a,r6
      008B91 6E               [12] 4018 	xrl	a,r6
      008B92 CE               [12] 4019 	xch	a,r6
      008B93 54 F0            [12] 4020 	anl	a,#0xf0
      008B95 CE               [12] 4021 	xch	a,r6
      008B96 6E               [12] 4022 	xrl	a,r6
      008B97 FD               [12] 4023 	mov	r5,a
      008B98 8F 03            [24] 4024 	mov	ar3,r7
      008B9A 7C 00            [12] 4025 	mov	r4,#0x00
      008B9C C3               [12] 4026 	clr	c
      008B9D EB               [12] 4027 	mov	a,r3
      008B9E 9E               [12] 4028 	subb	a,r6
      008B9F EC               [12] 4029 	mov	a,r4
      008BA0 64 80            [12] 4030 	xrl	a,#0x80
      008BA2 8D F0            [24] 4031 	mov	b,r5
      008BA4 63 F0 80         [24] 4032 	xrl	b,#0x80
      008BA7 95 F0            [12] 4033 	subb	a,b
      008BA9 50 14            [24] 4034 	jnc	00105$
                                   4035 ;	board/zbs29_BW_uc/../uc8151.c:764: epdSend(rbuffer[i]);
      008BAB EF               [12] 4036 	mov	a,r7
      008BAC 24 4A            [12] 4037 	add	a,#_rbuffer
      008BAE F5 82            [12] 4038 	mov	dpl,a
      008BB0 E4               [12] 4039 	clr	a
      008BB1 34 E4            [12] 4040 	addc	a,#(_rbuffer >> 8)
      008BB3 F5 83            [12] 4041 	mov	dph,a
      008BB5 E0               [24] 4042 	movx	a,@dptr
      008BB6 FE               [12] 4043 	mov	r6,a
      008BB7 F5 82            [12] 4044 	mov	dpl,a
      008BB9 12 5B 9E         [24] 4045 	lcall	_spiTXByte
                                   4046 ;	board/zbs29_BW_uc/../uc8151.c:763: for (uint8_t i = 0; i < (16 * epdCharSize); i++) {
      008BBC 0F               [12] 4047 	inc	r7
                                   4048 ;	board/zbs29_BW_uc/../uc8151.c:767: commandEnd();
      008BBD 80 C6            [24] 4049 	sjmp	00109$
      008BBF                       4050 00105$:
                                   4051 ;	assignBit
      008BBF D2 97            [12] 4052 	setb	_P1_7
                                   4053 ;	board/zbs29_BW_uc/../uc8151.c:768: shortCommand(CMD_PARTIAL_OUT);
      008BC1 75 82 92         [24] 4054 	mov	dpl,#0x92
      008BC4 12 7C 9C         [24] 4055 	lcall	_shortCommand
                                   4056 ;	board/zbs29_BW_uc/../uc8151.c:769: epdDrawDirection(true);
      008BC7 75 82 01         [24] 4057 	mov	dpl,#0x01
                                   4058 ;	board/zbs29_BW_uc/../uc8151.c:770: }
      008BCA 02 7D AC         [24] 4059 	ljmp	_epdDrawDirection
                                   4060 	.area CSEG    (CODE)
                                   4061 	.area CONST   (CODE)
      00B94A                       4062 _font:
      00B94A 00                    4063 	.db #0x00	; 0
      00B94B 00                    4064 	.db #0x00	; 0
      00B94C 00                    4065 	.db #0x00	; 0
      00B94D 00                    4066 	.db #0x00	; 0
      00B94E 00                    4067 	.db #0x00	; 0
      00B94F 00                    4068 	.db #0x00	; 0
      00B950 00                    4069 	.db #0x00	; 0
      00B951 00                    4070 	.db #0x00	; 0
      00B952 00                    4071 	.db #0x00	; 0
      00B953 00                    4072 	.db #0x00	; 0
      00B954 00                    4073 	.db #0x00	; 0
      00B955 00                    4074 	.db #0x00	; 0
      00B956 00                    4075 	.db #0x00	; 0
      00B957 00                    4076 	.db #0x00	; 0
      00B958 00                    4077 	.db #0x00	; 0
      00B959 00                    4078 	.db #0x00	; 0
      00B95A 00                    4079 	.db #0x00	; 0
      00B95B 00                    4080 	.db #0x00	; 0
      00B95C 00                    4081 	.db #0x00	; 0
      00B95D 00                    4082 	.db #0x00	; 0
      00B95E 00                    4083 	.db #0x00	; 0
      00B95F 00                    4084 	.db #0x00	; 0
      00B960 00                    4085 	.db #0x00	; 0
      00B961 00                    4086 	.db #0x00	; 0
      00B962 00                    4087 	.db #0x00	; 0
      00B963 00                    4088 	.db #0x00	; 0
      00B964 00                    4089 	.db #0x00	; 0
      00B965 00                    4090 	.db #0x00	; 0
      00B966 D8                    4091 	.db #0xd8	; 216
      00B967 7F                    4092 	.db #0x7f	; 127
      00B968 00                    4093 	.db #0x00	; 0
      00B969 00                    4094 	.db #0x00	; 0
      00B96A 00                    4095 	.db #0x00	; 0
      00B96B 00                    4096 	.db #0x00	; 0
      00B96C 00                    4097 	.db #0x00	; 0
      00B96D 00                    4098 	.db #0x00	; 0
      00B96E 00                    4099 	.db #0x00	; 0
      00B96F 00                    4100 	.db #0x00	; 0
      00B970 00                    4101 	.db #0x00	; 0
      00B971 00                    4102 	.db #0x00	; 0
      00B972 00                    4103 	.db #0x00	; 0
      00B973 00                    4104 	.db #0x00	; 0
      00B974 00                    4105 	.db #0x00	; 0
      00B975 00                    4106 	.db #0x00	; 0
      00B976 00                    4107 	.db #0x00	; 0
      00B977 78                    4108 	.db #0x78	; 120	'x'
      00B978 00                    4109 	.db #0x00	; 0
      00B979 00                    4110 	.db #0x00	; 0
      00B97A 00                    4111 	.db #0x00	; 0
      00B97B 00                    4112 	.db #0x00	; 0
      00B97C 00                    4113 	.db #0x00	; 0
      00B97D 00                    4114 	.db #0x00	; 0
      00B97E 00                    4115 	.db #0x00	; 0
      00B97F 78                    4116 	.db #0x78	; 120	'x'
      00B980 00                    4117 	.db #0x00	; 0
      00B981 00                    4118 	.db #0x00	; 0
      00B982 00                    4119 	.db #0x00	; 0
      00B983 00                    4120 	.db #0x00	; 0
      00B984 00                    4121 	.db #0x00	; 0
      00B985 00                    4122 	.db #0x00	; 0
      00B986 80                    4123 	.db #0x80	; 128
      00B987 00                    4124 	.db #0x00	; 0
      00B988 98                    4125 	.db #0x98	; 152
      00B989 04                    4126 	.db #0x04	; 4
      00B98A E0                    4127 	.db #0xe0	; 224
      00B98B 05                    4128 	.db #0x05	; 5
      00B98C 80                    4129 	.db #0x80	; 128
      00B98D 1E                    4130 	.db #0x1e	; 30
      00B98E 98                    4131 	.db #0x98	; 152
      00B98F 64                    4132 	.db #0x64	; 100	'd'
      00B990 E0                    4133 	.db #0xe0	; 224
      00B991 05                    4134 	.db #0x05	; 5
      00B992 80                    4135 	.db #0x80	; 128
      00B993 1E                    4136 	.db #0x1e	; 30
      00B994 80                    4137 	.db #0x80	; 128
      00B995 64                    4138 	.db #0x64	; 100	'd'
      00B996 80                    4139 	.db #0x80	; 128
      00B997 04                    4140 	.db #0x04	; 4
      00B998 00                    4141 	.db #0x00	; 0
      00B999 00                    4142 	.db #0x00	; 0
      00B99A 00                    4143 	.db #0x00	; 0
      00B99B 00                    4144 	.db #0x00	; 0
      00B99C 00                    4145 	.db #0x00	; 0
      00B99D 00                    4146 	.db #0x00	; 0
      00B99E 18                    4147 	.db #0x18	; 24
      00B99F 38                    4148 	.db #0x38	; 56	'8'
      00B9A0 08                    4149 	.db #0x08	; 8
      00B9A1 64                    4150 	.db #0x64	; 100	'd'
      00B9A2 08                    4151 	.db #0x08	; 8
      00B9A3 42                    4152 	.db #0x42	; 66	'B'
      00B9A4 FC                    4153 	.db #0xfc	; 252
      00B9A5 FF                    4154 	.db #0xff	; 255
      00B9A6 88                    4155 	.db #0x88	; 136
      00B9A7 41                    4156 	.db #0x41	; 65	'A'
      00B9A8 F0                    4157 	.db #0xf0	; 240
      00B9A9 40                    4158 	.db #0x40	; 64
      00B9AA 00                    4159 	.db #0x00	; 0
      00B9AB 00                    4160 	.db #0x00	; 0
      00B9AC 00                    4161 	.db #0x00	; 0
      00B9AD 00                    4162 	.db #0x00	; 0
      00B9AE 08                    4163 	.db #0x08	; 8
      00B9AF 38                    4164 	.db #0x38	; 56	'8'
      00B9B0 10                    4165 	.db #0x10	; 16
      00B9B1 44                    4166 	.db #0x44	; 68	'D'
      00B9B2 20                    4167 	.db #0x20	; 32
      00B9B3 44                    4168 	.db #0x44	; 68	'D'
      00B9B4 C0                    4169 	.db #0xc0	; 192
      00B9B5 44                    4170 	.db #0x44	; 68	'D'
      00B9B6 00                    4171 	.db #0x00	; 0
      00B9B7 39                    4172 	.db #0x39	; 57	'9'
      00B9B8 70                    4173 	.db #0x70	; 112	'p'
      00B9B9 02                    4174 	.db #0x02	; 2
      00B9BA 88                    4175 	.db #0x88	; 136
      00B9BB 0C                    4176 	.db #0x0c	; 12
      00B9BC 88                    4177 	.db #0x88	; 136
      00B9BD 10                    4178 	.db #0x10	; 16
      00B9BE 88                    4179 	.db #0x88	; 136
      00B9BF 20                    4180 	.db #0x20	; 32
      00B9C0 70                    4181 	.db #0x70	; 112	'p'
      00B9C1 40                    4182 	.db #0x40	; 64
      00B9C2 E0                    4183 	.db #0xe0	; 224
      00B9C3 00                    4184 	.db #0x00	; 0
      00B9C4 10                    4185 	.db #0x10	; 16
      00B9C5 01                    4186 	.db #0x01	; 1
      00B9C6 08                    4187 	.db #0x08	; 8
      00B9C7 3A                    4188 	.db #0x3a	; 58
      00B9C8 08                    4189 	.db #0x08	; 8
      00B9C9 46                    4190 	.db #0x46	; 70	'F'
      00B9CA 88                    4191 	.db #0x88	; 136
      00B9CB 45                    4192 	.db #0x45	; 69	'E'
      00B9CC C8                    4193 	.db #0xc8	; 200
      00B9CD 4C                    4194 	.db #0x4c	; 76	'L'
      00B9CE 38                    4195 	.db #0x38	; 56	'8'
      00B9CF 38                    4196 	.db #0x38	; 56	'8'
      00B9D0 18                    4197 	.db #0x18	; 24
      00B9D1 00                    4198 	.db #0x00	; 0
      00B9D2 68                    4199 	.db #0x68	; 104	'h'
      00B9D3 00                    4200 	.db #0x00	; 0
      00B9D4 80                    4201 	.db #0x80	; 128
      00B9D5 01                    4202 	.db #0x01	; 1
      00B9D6 00                    4203 	.db #0x00	; 0
      00B9D7 00                    4204 	.db #0x00	; 0
      00B9D8 00                    4205 	.db #0x00	; 0
      00B9D9 00                    4206 	.db #0x00	; 0
      00B9DA 00                    4207 	.db #0x00	; 0
      00B9DB 00                    4208 	.db #0x00	; 0
      00B9DC 00                    4209 	.db #0x00	; 0
      00B9DD 00                    4210 	.db #0x00	; 0
      00B9DE 00                    4211 	.db #0x00	; 0
      00B9DF 78                    4212 	.db #0x78	; 120	'x'
      00B9E0 00                    4213 	.db #0x00	; 0
      00B9E1 00                    4214 	.db #0x00	; 0
      00B9E2 00                    4215 	.db #0x00	; 0
      00B9E3 00                    4216 	.db #0x00	; 0
      00B9E4 00                    4217 	.db #0x00	; 0
      00B9E5 00                    4218 	.db #0x00	; 0
      00B9E6 00                    4219 	.db #0x00	; 0
      00B9E7 00                    4220 	.db #0x00	; 0
      00B9E8 00                    4221 	.db #0x00	; 0
      00B9E9 00                    4222 	.db #0x00	; 0
      00B9EA 00                    4223 	.db #0x00	; 0
      00B9EB 00                    4224 	.db #0x00	; 0
      00B9EC 00                    4225 	.db #0x00	; 0
      00B9ED 00                    4226 	.db #0x00	; 0
      00B9EE 00                    4227 	.db #0x00	; 0
      00B9EF 00                    4228 	.db #0x00	; 0
      00B9F0 E0                    4229 	.db #0xe0	; 224
      00B9F1 07                    4230 	.db #0x07	; 7
      00B9F2 18                    4231 	.db #0x18	; 24
      00B9F3 18                    4232 	.db #0x18	; 24
      00B9F4 0C                    4233 	.db #0x0c	; 12
      00B9F5 30                    4234 	.db #0x30	; 48	'0'
      00B9F6 04                    4235 	.db #0x04	; 4
      00B9F7 20                    4236 	.db #0x20	; 32
      00B9F8 02                    4237 	.db #0x02	; 2
      00B9F9 40                    4238 	.db #0x40	; 64
      00B9FA 02                    4239 	.db #0x02	; 2
      00B9FB 40                    4240 	.db #0x40	; 64
      00B9FC 00                    4241 	.db #0x00	; 0
      00B9FD 00                    4242 	.db #0x00	; 0
      00B9FE 00                    4243 	.db #0x00	; 0
      00B9FF 00                    4244 	.db #0x00	; 0
      00BA00 02                    4245 	.db #0x02	; 2
      00BA01 40                    4246 	.db #0x40	; 64
      00BA02 02                    4247 	.db #0x02	; 2
      00BA03 40                    4248 	.db #0x40	; 64
      00BA04 04                    4249 	.db #0x04	; 4
      00BA05 20                    4250 	.db #0x20	; 32
      00BA06 0C                    4251 	.db #0x0c	; 12
      00BA07 30                    4252 	.db #0x30	; 48	'0'
      00BA08 18                    4253 	.db #0x18	; 24
      00BA09 18                    4254 	.db #0x18	; 24
      00BA0A E0                    4255 	.db #0xe0	; 224
      00BA0B 07                    4256 	.db #0x07	; 7
      00BA0C 00                    4257 	.db #0x00	; 0
      00BA0D 00                    4258 	.db #0x00	; 0
      00BA0E 00                    4259 	.db #0x00	; 0
      00BA0F 00                    4260 	.db #0x00	; 0
      00BA10 00                    4261 	.db #0x00	; 0
      00BA11 00                    4262 	.db #0x00	; 0
      00BA12 00                    4263 	.db #0x00	; 0
      00BA13 00                    4264 	.db #0x00	; 0
      00BA14 00                    4265 	.db #0x00	; 0
      00BA15 10                    4266 	.db #0x10	; 16
      00BA16 00                    4267 	.db #0x00	; 0
      00BA17 18                    4268 	.db #0x18	; 24
      00BA18 00                    4269 	.db #0x00	; 0
      00BA19 0F                    4270 	.db #0x0f	; 15
      00BA1A 00                    4271 	.db #0x00	; 0
      00BA1B 72                    4272 	.db #0x72	; 114	'r'
      00BA1C 00                    4273 	.db #0x00	; 0
      00BA1D 0F                    4274 	.db #0x0f	; 15
      00BA1E 00                    4275 	.db #0x00	; 0
      00BA1F 18                    4276 	.db #0x18	; 24
      00BA20 00                    4277 	.db #0x00	; 0
      00BA21 10                    4278 	.db #0x10	; 16
      00BA22 00                    4279 	.db #0x00	; 0
      00BA23 00                    4280 	.db #0x00	; 0
      00BA24 00                    4281 	.db #0x00	; 0
      00BA25 00                    4282 	.db #0x00	; 0
      00BA26 40                    4283 	.db #0x40	; 64
      00BA27 00                    4284 	.db #0x00	; 0
      00BA28 40                    4285 	.db #0x40	; 64
      00BA29 00                    4286 	.db #0x00	; 0
      00BA2A 40                    4287 	.db #0x40	; 64
      00BA2B 00                    4288 	.db #0x00	; 0
      00BA2C 40                    4289 	.db #0x40	; 64
      00BA2D 00                    4290 	.db #0x00	; 0
      00BA2E F8                    4291 	.db #0xf8	; 248
      00BA2F 07                    4292 	.db #0x07	; 7
      00BA30 40                    4293 	.db #0x40	; 64
      00BA31 00                    4294 	.db #0x00	; 0
      00BA32 40                    4295 	.db #0x40	; 64
      00BA33 00                    4296 	.db #0x00	; 0
      00BA34 40                    4297 	.db #0x40	; 64
      00BA35 00                    4298 	.db #0x00	; 0
      00BA36 40                    4299 	.db #0x40	; 64
      00BA37 00                    4300 	.db #0x00	; 0
      00BA38 00                    4301 	.db #0x00	; 0
      00BA39 00                    4302 	.db #0x00	; 0
      00BA3A 00                    4303 	.db #0x00	; 0
      00BA3B 00                    4304 	.db #0x00	; 0
      00BA3C 00                    4305 	.db #0x00	; 0
      00BA3D 00                    4306 	.db #0x00	; 0
      00BA3E 00                    4307 	.db #0x00	; 0
      00BA3F 00                    4308 	.db #0x00	; 0
      00BA40 19                    4309 	.db #0x19	; 25
      00BA41 00                    4310 	.db #0x00	; 0
      00BA42 1E                    4311 	.db #0x1e	; 30
      00BA43 00                    4312 	.db #0x00	; 0
      00BA44 00                    4313 	.db #0x00	; 0
      00BA45 00                    4314 	.db #0x00	; 0
      00BA46 00                    4315 	.db #0x00	; 0
      00BA47 00                    4316 	.db #0x00	; 0
      00BA48 00                    4317 	.db #0x00	; 0
      00BA49 00                    4318 	.db #0x00	; 0
      00BA4A 00                    4319 	.db #0x00	; 0
      00BA4B 00                    4320 	.db #0x00	; 0
      00BA4C 00                    4321 	.db #0x00	; 0
      00BA4D 00                    4322 	.db #0x00	; 0
      00BA4E 00                    4323 	.db #0x00	; 0
      00BA4F 00                    4324 	.db #0x00	; 0
      00BA50 00                    4325 	.db #0x00	; 0
      00BA51 00                    4326 	.db #0x00	; 0
      00BA52 80                    4327 	.db #0x80	; 128
      00BA53 00                    4328 	.db #0x00	; 0
      00BA54 80                    4329 	.db #0x80	; 128
      00BA55 00                    4330 	.db #0x00	; 0
      00BA56 80                    4331 	.db #0x80	; 128
      00BA57 00                    4332 	.db #0x00	; 0
      00BA58 80                    4333 	.db #0x80	; 128
      00BA59 00                    4334 	.db #0x00	; 0
      00BA5A 80                    4335 	.db #0x80	; 128
      00BA5B 00                    4336 	.db #0x00	; 0
      00BA5C 80                    4337 	.db #0x80	; 128
      00BA5D 00                    4338 	.db #0x00	; 0
      00BA5E 00                    4339 	.db #0x00	; 0
      00BA5F 00                    4340 	.db #0x00	; 0
      00BA60 00                    4341 	.db #0x00	; 0
      00BA61 00                    4342 	.db #0x00	; 0
      00BA62 00                    4343 	.db #0x00	; 0
      00BA63 00                    4344 	.db #0x00	; 0
      00BA64 00                    4345 	.db #0x00	; 0
      00BA65 00                    4346 	.db #0x00	; 0
      00BA66 00                    4347 	.db #0x00	; 0
      00BA67 00                    4348 	.db #0x00	; 0
      00BA68 18                    4349 	.db #0x18	; 24
      00BA69 00                    4350 	.db #0x00	; 0
      00BA6A 18                    4351 	.db #0x18	; 24
      00BA6B 00                    4352 	.db #0x00	; 0
      00BA6C 00                    4353 	.db #0x00	; 0
      00BA6D 00                    4354 	.db #0x00	; 0
      00BA6E 00                    4355 	.db #0x00	; 0
      00BA6F 00                    4356 	.db #0x00	; 0
      00BA70 00                    4357 	.db #0x00	; 0
      00BA71 00                    4358 	.db #0x00	; 0
      00BA72 00                    4359 	.db #0x00	; 0
      00BA73 00                    4360 	.db #0x00	; 0
      00BA74 00                    4361 	.db #0x00	; 0
      00BA75 00                    4362 	.db #0x00	; 0
      00BA76 00                    4363 	.db #0x00	; 0
      00BA77 00                    4364 	.db #0x00	; 0
      00BA78 02                    4365 	.db #0x02	; 2
      00BA79 00                    4366 	.db #0x00	; 0
      00BA7A 0C                    4367 	.db #0x0c	; 12
      00BA7B 00                    4368 	.db #0x00	; 0
      00BA7C 30                    4369 	.db #0x30	; 48	'0'
      00BA7D 00                    4370 	.db #0x00	; 0
      00BA7E C0                    4371 	.db #0xc0	; 192
      00BA7F 00                    4372 	.db #0x00	; 0
      00BA80 00                    4373 	.db #0x00	; 0
      00BA81 03                    4374 	.db #0x03	; 3
      00BA82 00                    4375 	.db #0x00	; 0
      00BA83 0C                    4376 	.db #0x0c	; 12
      00BA84 00                    4377 	.db #0x00	; 0
      00BA85 30                    4378 	.db #0x30	; 48	'0'
      00BA86 00                    4379 	.db #0x00	; 0
      00BA87 40                    4380 	.db #0x40	; 64
      00BA88 00                    4381 	.db #0x00	; 0
      00BA89 00                    4382 	.db #0x00	; 0
      00BA8A 00                    4383 	.db #0x00	; 0
      00BA8B 00                    4384 	.db #0x00	; 0
      00BA8C C0                    4385 	.db #0xc0	; 192
      00BA8D 0F                    4386 	.db #0x0f	; 15
      00BA8E 30                    4387 	.db #0x30	; 48	'0'
      00BA8F 30                    4388 	.db #0x30	; 48	'0'
      00BA90 08                    4389 	.db #0x08	; 8
      00BA91 40                    4390 	.db #0x40	; 64
      00BA92 08                    4391 	.db #0x08	; 8
      00BA93 40                    4392 	.db #0x40	; 64
      00BA94 08                    4393 	.db #0x08	; 8
      00BA95 40                    4394 	.db #0x40	; 64
      00BA96 30                    4395 	.db #0x30	; 48	'0'
      00BA97 30                    4396 	.db #0x30	; 48	'0'
      00BA98 C0                    4397 	.db #0xc0	; 192
      00BA99 0F                    4398 	.db #0x0f	; 15
      00BA9A 00                    4399 	.db #0x00	; 0
      00BA9B 00                    4400 	.db #0x00	; 0
      00BA9C 00                    4401 	.db #0x00	; 0
      00BA9D 00                    4402 	.db #0x00	; 0
      00BA9E 00                    4403 	.db #0x00	; 0
      00BA9F 00                    4404 	.db #0x00	; 0
      00BAA0 08                    4405 	.db #0x08	; 8
      00BAA1 20                    4406 	.db #0x20	; 32
      00BAA2 08                    4407 	.db #0x08	; 8
      00BAA3 20                    4408 	.db #0x20	; 32
      00BAA4 08                    4409 	.db #0x08	; 8
      00BAA5 20                    4410 	.db #0x20	; 32
      00BAA6 F8                    4411 	.db #0xf8	; 248
      00BAA7 7F                    4412 	.db #0x7f	; 127
      00BAA8 08                    4413 	.db #0x08	; 8
      00BAA9 00                    4414 	.db #0x00	; 0
      00BAAA 08                    4415 	.db #0x08	; 8
      00BAAB 00                    4416 	.db #0x00	; 0
      00BAAC 08                    4417 	.db #0x08	; 8
      00BAAD 00                    4418 	.db #0x00	; 0
      00BAAE 00                    4419 	.db #0x00	; 0
      00BAAF 00                    4420 	.db #0x00	; 0
      00BAB0 00                    4421 	.db #0x00	; 0
      00BAB1 00                    4422 	.db #0x00	; 0
      00BAB2 00                    4423 	.db #0x00	; 0
      00BAB3 00                    4424 	.db #0x00	; 0
      00BAB4 18                    4425 	.db #0x18	; 24
      00BAB5 60                    4426 	.db #0x60	; 96
      00BAB6 28                    4427 	.db #0x28	; 40
      00BAB7 40                    4428 	.db #0x40	; 64
      00BAB8 48                    4429 	.db #0x48	; 72	'H'
      00BAB9 40                    4430 	.db #0x40	; 64
      00BABA 88                    4431 	.db #0x88	; 136
      00BABB 40                    4432 	.db #0x40	; 64
      00BABC 08                    4433 	.db #0x08	; 8
      00BABD 43                    4434 	.db #0x43	; 67	'C'
      00BABE 08                    4435 	.db #0x08	; 8
      00BABF 3C                    4436 	.db #0x3c	; 60
      00BAC0 00                    4437 	.db #0x00	; 0
      00BAC1 00                    4438 	.db #0x00	; 0
      00BAC2 00                    4439 	.db #0x00	; 0
      00BAC3 00                    4440 	.db #0x00	; 0
      00BAC4 00                    4441 	.db #0x00	; 0
      00BAC5 00                    4442 	.db #0x00	; 0
      00BAC6 00                    4443 	.db #0x00	; 0
      00BAC7 00                    4444 	.db #0x00	; 0
      00BAC8 00                    4445 	.db #0x00	; 0
      00BAC9 00                    4446 	.db #0x00	; 0
      00BACA 08                    4447 	.db #0x08	; 8
      00BACB 40                    4448 	.db #0x40	; 64
      00BACC 08                    4449 	.db #0x08	; 8
      00BACD 42                    4450 	.db #0x42	; 66	'B'
      00BACE 08                    4451 	.db #0x08	; 8
      00BACF 42                    4452 	.db #0x42	; 66	'B'
      00BAD0 08                    4453 	.db #0x08	; 8
      00BAD1 42                    4454 	.db #0x42	; 66	'B'
      00BAD2 F0                    4455 	.db #0xf0	; 240
      00BAD3 3D                    4456 	.db #0x3d	; 61
      00BAD4 00                    4457 	.db #0x00	; 0
      00BAD5 00                    4458 	.db #0x00	; 0
      00BAD6 00                    4459 	.db #0x00	; 0
      00BAD7 00                    4460 	.db #0x00	; 0
      00BAD8 00                    4461 	.db #0x00	; 0
      00BAD9 00                    4462 	.db #0x00	; 0
      00BADA C0                    4463 	.db #0xc0	; 192
      00BADB 00                    4464 	.db #0x00	; 0
      00BADC 40                    4465 	.db #0x40	; 64
      00BADD 03                    4466 	.db #0x03	; 3
      00BADE 40                    4467 	.db #0x40	; 64
      00BADF 04                    4468 	.db #0x04	; 4
      00BAE0 40                    4469 	.db #0x40	; 64
      00BAE1 18                    4470 	.db #0x18	; 24
      00BAE2 40                    4471 	.db #0x40	; 64
      00BAE3 20                    4472 	.db #0x20	; 32
      00BAE4 F8                    4473 	.db #0xf8	; 248
      00BAE5 7F                    4474 	.db #0x7f	; 127
      00BAE6 40                    4475 	.db #0x40	; 64
      00BAE7 00                    4476 	.db #0x00	; 0
      00BAE8 40                    4477 	.db #0x40	; 64
      00BAE9 00                    4478 	.db #0x00	; 0
      00BAEA 00                    4479 	.db #0x00	; 0
      00BAEB 00                    4480 	.db #0x00	; 0
      00BAEC 00                    4481 	.db #0x00	; 0
      00BAED 00                    4482 	.db #0x00	; 0
      00BAEE 00                    4483 	.db #0x00	; 0
      00BAEF 00                    4484 	.db #0x00	; 0
      00BAF0 00                    4485 	.db #0x00	; 0
      00BAF1 00                    4486 	.db #0x00	; 0
      00BAF2 08                    4487 	.db #0x08	; 8
      00BAF3 7C                    4488 	.db #0x7c	; 124
      00BAF4 08                    4489 	.db #0x08	; 8
      00BAF5 44                    4490 	.db #0x44	; 68	'D'
      00BAF6 08                    4491 	.db #0x08	; 8
      00BAF7 44                    4492 	.db #0x44	; 68	'D'
      00BAF8 10                    4493 	.db #0x10	; 16
      00BAF9 42                    4494 	.db #0x42	; 66	'B'
      00BAFA E0                    4495 	.db #0xe0	; 224
      00BAFB 41                    4496 	.db #0x41	; 65	'A'
      00BAFC 00                    4497 	.db #0x00	; 0
      00BAFD 00                    4498 	.db #0x00	; 0
      00BAFE 00                    4499 	.db #0x00	; 0
      00BAFF 00                    4500 	.db #0x00	; 0
      00BB00 00                    4501 	.db #0x00	; 0
      00BB01 00                    4502 	.db #0x00	; 0
      00BB02 00                    4503 	.db #0x00	; 0
      00BB03 00                    4504 	.db #0x00	; 0
      00BB04 E0                    4505 	.db #0xe0	; 224
      00BB05 0F                    4506 	.db #0x0f	; 15
      00BB06 10                    4507 	.db #0x10	; 16
      00BB07 32                    4508 	.db #0x32	; 50	'2'
      00BB08 08                    4509 	.db #0x08	; 8
      00BB09 44                    4510 	.db #0x44	; 68	'D'
      00BB0A 08                    4511 	.db #0x08	; 8
      00BB0B 44                    4512 	.db #0x44	; 68	'D'
      00BB0C 08                    4513 	.db #0x08	; 8
      00BB0D 44                    4514 	.db #0x44	; 68	'D'
      00BB0E 10                    4515 	.db #0x10	; 16
      00BB0F 42                    4516 	.db #0x42	; 66	'B'
      00BB10 E0                    4517 	.db #0xe0	; 224
      00BB11 01                    4518 	.db #0x01	; 1
      00BB12 00                    4519 	.db #0x00	; 0
      00BB13 00                    4520 	.db #0x00	; 0
      00BB14 00                    4521 	.db #0x00	; 0
      00BB15 00                    4522 	.db #0x00	; 0
      00BB16 00                    4523 	.db #0x00	; 0
      00BB17 00                    4524 	.db #0x00	; 0
      00BB18 00                    4525 	.db #0x00	; 0
      00BB19 40                    4526 	.db #0x40	; 64
      00BB1A 18                    4527 	.db #0x18	; 24
      00BB1B 40                    4528 	.db #0x40	; 64
      00BB1C E0                    4529 	.db #0xe0	; 224
      00BB1D 40                    4530 	.db #0x40	; 64
      00BB1E 00                    4531 	.db #0x00	; 0
      00BB1F 43                    4532 	.db #0x43	; 67	'C'
      00BB20 00                    4533 	.db #0x00	; 0
      00BB21 4C                    4534 	.db #0x4c	; 76	'L'
      00BB22 00                    4535 	.db #0x00	; 0
      00BB23 50                    4536 	.db #0x50	; 80	'P'
      00BB24 00                    4537 	.db #0x00	; 0
      00BB25 60                    4538 	.db #0x60	; 96
      00BB26 00                    4539 	.db #0x00	; 0
      00BB27 00                    4540 	.db #0x00	; 0
      00BB28 00                    4541 	.db #0x00	; 0
      00BB29 00                    4542 	.db #0x00	; 0
      00BB2A 00                    4543 	.db #0x00	; 0
      00BB2B 00                    4544 	.db #0x00	; 0
      00BB2C F0                    4545 	.db #0xf0	; 240
      00BB2D 38                    4546 	.db #0x38	; 56	'8'
      00BB2E 08                    4547 	.db #0x08	; 8
      00BB2F 45                    4548 	.db #0x45	; 69	'E'
      00BB30 08                    4549 	.db #0x08	; 8
      00BB31 42                    4550 	.db #0x42	; 66	'B'
      00BB32 08                    4551 	.db #0x08	; 8
      00BB33 42                    4552 	.db #0x42	; 66	'B'
      00BB34 08                    4553 	.db #0x08	; 8
      00BB35 45                    4554 	.db #0x45	; 69	'E'
      00BB36 90                    4555 	.db #0x90	; 144
      00BB37 45                    4556 	.db #0x45	; 69	'E'
      00BB38 60                    4557 	.db #0x60	; 96
      00BB39 38                    4558 	.db #0x38	; 56	'8'
      00BB3A 00                    4559 	.db #0x00	; 0
      00BB3B 00                    4560 	.db #0x00	; 0
      00BB3C 00                    4561 	.db #0x00	; 0
      00BB3D 00                    4562 	.db #0x00	; 0
      00BB3E 00                    4563 	.db #0x00	; 0
      00BB3F 00                    4564 	.db #0x00	; 0
      00BB40 00                    4565 	.db #0x00	; 0
      00BB41 1E                    4566 	.db #0x1e	; 30
      00BB42 08                    4567 	.db #0x08	; 8
      00BB43 21                    4568 	.db #0x21	; 33
      00BB44 88                    4569 	.db #0x88	; 136
      00BB45 40                    4570 	.db #0x40	; 64
      00BB46 88                    4571 	.db #0x88	; 136
      00BB47 40                    4572 	.db #0x40	; 64
      00BB48 88                    4573 	.db #0x88	; 136
      00BB49 40                    4574 	.db #0x40	; 64
      00BB4A 30                    4575 	.db #0x30	; 48	'0'
      00BB4B 21                    4576 	.db #0x21	; 33
      00BB4C C0                    4577 	.db #0xc0	; 192
      00BB4D 1F                    4578 	.db #0x1f	; 31
      00BB4E 00                    4579 	.db #0x00	; 0
      00BB4F 00                    4580 	.db #0x00	; 0
      00BB50 00                    4581 	.db #0x00	; 0
      00BB51 00                    4582 	.db #0x00	; 0
      00BB52 00                    4583 	.db #0x00	; 0
      00BB53 00                    4584 	.db #0x00	; 0
      00BB54 00                    4585 	.db #0x00	; 0
      00BB55 00                    4586 	.db #0x00	; 0
      00BB56 00                    4587 	.db #0x00	; 0
      00BB57 00                    4588 	.db #0x00	; 0
      00BB58 18                    4589 	.db #0x18	; 24
      00BB59 06                    4590 	.db #0x06	; 6
      00BB5A 18                    4591 	.db #0x18	; 24
      00BB5B 06                    4592 	.db #0x06	; 6
      00BB5C 00                    4593 	.db #0x00	; 0
      00BB5D 00                    4594 	.db #0x00	; 0
      00BB5E 00                    4595 	.db #0x00	; 0
      00BB5F 00                    4596 	.db #0x00	; 0
      00BB60 00                    4597 	.db #0x00	; 0
      00BB61 00                    4598 	.db #0x00	; 0
      00BB62 00                    4599 	.db #0x00	; 0
      00BB63 00                    4600 	.db #0x00	; 0
      00BB64 00                    4601 	.db #0x00	; 0
      00BB65 00                    4602 	.db #0x00	; 0
      00BB66 00                    4603 	.db #0x00	; 0
      00BB67 00                    4604 	.db #0x00	; 0
      00BB68 00                    4605 	.db #0x00	; 0
      00BB69 00                    4606 	.db #0x00	; 0
      00BB6A 00                    4607 	.db #0x00	; 0
      00BB6B 00                    4608 	.db #0x00	; 0
      00BB6C 19                    4609 	.db #0x19	; 25
      00BB6D 06                    4610 	.db #0x06	; 6
      00BB6E 1E                    4611 	.db #0x1e	; 30
      00BB6F 06                    4612 	.db #0x06	; 6
      00BB70 00                    4613 	.db #0x00	; 0
      00BB71 00                    4614 	.db #0x00	; 0
      00BB72 00                    4615 	.db #0x00	; 0
      00BB73 00                    4616 	.db #0x00	; 0
      00BB74 00                    4617 	.db #0x00	; 0
      00BB75 00                    4618 	.db #0x00	; 0
      00BB76 00                    4619 	.db #0x00	; 0
      00BB77 00                    4620 	.db #0x00	; 0
      00BB78 00                    4621 	.db #0x00	; 0
      00BB79 00                    4622 	.db #0x00	; 0
      00BB7A 00                    4623 	.db #0x00	; 0
      00BB7B 00                    4624 	.db #0x00	; 0
      00BB7C 00                    4625 	.db #0x00	; 0
      00BB7D 00                    4626 	.db #0x00	; 0
      00BB7E C0                    4627 	.db #0xc0	; 192
      00BB7F 00                    4628 	.db #0x00	; 0
      00BB80 C0                    4629 	.db #0xc0	; 192
      00BB81 00                    4630 	.db #0x00	; 0
      00BB82 20                    4631 	.db #0x20	; 32
      00BB83 01                    4632 	.db #0x01	; 1
      00BB84 20                    4633 	.db #0x20	; 32
      00BB85 01                    4634 	.db #0x01	; 1
      00BB86 10                    4635 	.db #0x10	; 16
      00BB87 02                    4636 	.db #0x02	; 2
      00BB88 10                    4637 	.db #0x10	; 16
      00BB89 02                    4638 	.db #0x02	; 2
      00BB8A 08                    4639 	.db #0x08	; 8
      00BB8B 04                    4640 	.db #0x04	; 4
      00BB8C 00                    4641 	.db #0x00	; 0
      00BB8D 00                    4642 	.db #0x00	; 0
      00BB8E 00                    4643 	.db #0x00	; 0
      00BB8F 00                    4644 	.db #0x00	; 0
      00BB90 20                    4645 	.db #0x20	; 32
      00BB91 01                    4646 	.db #0x01	; 1
      00BB92 20                    4647 	.db #0x20	; 32
      00BB93 01                    4648 	.db #0x01	; 1
      00BB94 20                    4649 	.db #0x20	; 32
      00BB95 01                    4650 	.db #0x01	; 1
      00BB96 20                    4651 	.db #0x20	; 32
      00BB97 01                    4652 	.db #0x01	; 1
      00BB98 20                    4653 	.db #0x20	; 32
      00BB99 01                    4654 	.db #0x01	; 1
      00BB9A 20                    4655 	.db #0x20	; 32
      00BB9B 01                    4656 	.db #0x01	; 1
      00BB9C 20                    4657 	.db #0x20	; 32
      00BB9D 01                    4658 	.db #0x01	; 1
      00BB9E 20                    4659 	.db #0x20	; 32
      00BB9F 01                    4660 	.db #0x01	; 1
      00BBA0 00                    4661 	.db #0x00	; 0
      00BBA1 00                    4662 	.db #0x00	; 0
      00BBA2 00                    4663 	.db #0x00	; 0
      00BBA3 00                    4664 	.db #0x00	; 0
      00BBA4 08                    4665 	.db #0x08	; 8
      00BBA5 04                    4666 	.db #0x04	; 4
      00BBA6 10                    4667 	.db #0x10	; 16
      00BBA7 02                    4668 	.db #0x02	; 2
      00BBA8 10                    4669 	.db #0x10	; 16
      00BBA9 02                    4670 	.db #0x02	; 2
      00BBAA 20                    4671 	.db #0x20	; 32
      00BBAB 01                    4672 	.db #0x01	; 1
      00BBAC 20                    4673 	.db #0x20	; 32
      00BBAD 01                    4674 	.db #0x01	; 1
      00BBAE C0                    4675 	.db #0xc0	; 192
      00BBAF 00                    4676 	.db #0x00	; 0
      00BBB0 C0                    4677 	.db #0xc0	; 192
      00BBB1 00                    4678 	.db #0x00	; 0
      00BBB2 00                    4679 	.db #0x00	; 0
      00BBB3 00                    4680 	.db #0x00	; 0
      00BBB4 00                    4681 	.db #0x00	; 0
      00BBB5 00                    4682 	.db #0x00	; 0
      00BBB6 00                    4683 	.db #0x00	; 0
      00BBB7 00                    4684 	.db #0x00	; 0
      00BBB8 00                    4685 	.db #0x00	; 0
      00BBB9 70                    4686 	.db #0x70	; 112	'p'
      00BBBA 00                    4687 	.db #0x00	; 0
      00BBBB 40                    4688 	.db #0x40	; 64
      00BBBC D8                    4689 	.db #0xd8	; 216
      00BBBD 40                    4690 	.db #0x40	; 64
      00BBBE 00                    4691 	.db #0x00	; 0
      00BBBF 41                    4692 	.db #0x41	; 65	'A'
      00BBC0 00                    4693 	.db #0x00	; 0
      00BBC1 42                    4694 	.db #0x42	; 66	'B'
      00BBC2 00                    4695 	.db #0x00	; 0
      00BBC3 64                    4696 	.db #0x64	; 100	'd'
      00BBC4 00                    4697 	.db #0x00	; 0
      00BBC5 38                    4698 	.db #0x38	; 56	'8'
      00BBC6 00                    4699 	.db #0x00	; 0
      00BBC7 00                    4700 	.db #0x00	; 0
      00BBC8 00                    4701 	.db #0x00	; 0
      00BBC9 00                    4702 	.db #0x00	; 0
      00BBCA C0                    4703 	.db #0xc0	; 192
      00BBCB 0F                    4704 	.db #0x0f	; 15
      00BBCC 30                    4705 	.db #0x30	; 48	'0'
      00BBCD 18                    4706 	.db #0x18	; 24
      00BBCE 18                    4707 	.db #0x18	; 24
      00BBCF 20                    4708 	.db #0x20	; 32
      00BBD0 C8                    4709 	.db #0xc8	; 200
      00BBD1 47                    4710 	.db #0x47	; 71	'G'
      00BBD2 28                    4711 	.db #0x28	; 40
      00BBD3 48                    4712 	.db #0x48	; 72	'H'
      00BBD4 68                    4713 	.db #0x68	; 104	'h'
      00BBD5 50                    4714 	.db #0x50	; 80	'P'
      00BBD6 D8                    4715 	.db #0xd8	; 216
      00BBD7 51                    4716 	.db #0x51	; 81	'Q'
      00BBD8 E0                    4717 	.db #0xe0	; 224
      00BBD9 3F                    4718 	.db #0x3f	; 63
      00BBDA 20                    4719 	.db #0x20	; 32
      00BBDB 00                    4720 	.db #0x00	; 0
      00BBDC 20                    4721 	.db #0x20	; 32
      00BBDD 00                    4722 	.db #0x00	; 0
      00BBDE 08                    4723 	.db #0x08	; 8
      00BBDF 00                    4724 	.db #0x00	; 0
      00BBE0 70                    4725 	.db #0x70	; 112	'p'
      00BBE1 00                    4726 	.db #0x00	; 0
      00BBE2 C0                    4727 	.db #0xc0	; 192
      00BBE3 01                    4728 	.db #0x01	; 1
      00BBE4 40                    4729 	.db #0x40	; 64
      00BBE5 0E                    4730 	.db #0x0e	; 14
      00BBE6 40                    4731 	.db #0x40	; 64
      00BBE7 18                    4732 	.db #0x18	; 24
      00BBE8 40                    4733 	.db #0x40	; 64
      00BBE9 0C                    4734 	.db #0x0c	; 12
      00BBEA 40                    4735 	.db #0x40	; 64
      00BBEB 03                    4736 	.db #0x03	; 3
      00BBEC C0                    4737 	.db #0xc0	; 192
      00BBED 00                    4738 	.db #0x00	; 0
      00BBEE 30                    4739 	.db #0x30	; 48	'0'
      00BBEF 00                    4740 	.db #0x00	; 0
      00BBF0 08                    4741 	.db #0x08	; 8
      00BBF1 00                    4742 	.db #0x00	; 0
      00BBF2 00                    4743 	.db #0x00	; 0
      00BBF3 00                    4744 	.db #0x00	; 0
      00BBF4 F8                    4745 	.db #0xf8	; 248
      00BBF5 1F                    4746 	.db #0x1f	; 31
      00BBF6 08                    4747 	.db #0x08	; 8
      00BBF7 11                    4748 	.db #0x11	; 17
      00BBF8 08                    4749 	.db #0x08	; 8
      00BBF9 11                    4750 	.db #0x11	; 17
      00BBFA 08                    4751 	.db #0x08	; 8
      00BBFB 11                    4752 	.db #0x11	; 17
      00BBFC 08                    4753 	.db #0x08	; 8
      00BBFD 11                    4754 	.db #0x11	; 17
      00BBFE 88                    4755 	.db #0x88	; 136
      00BBFF 12                    4756 	.db #0x12	; 18
      00BC00 70                    4757 	.db #0x70	; 112	'p'
      00BC01 0C                    4758 	.db #0x0c	; 12
      00BC02 00                    4759 	.db #0x00	; 0
      00BC03 00                    4760 	.db #0x00	; 0
      00BC04 00                    4761 	.db #0x00	; 0
      00BC05 00                    4762 	.db #0x00	; 0
      00BC06 C0                    4763 	.db #0xc0	; 192
      00BC07 03                    4764 	.db #0x03	; 3
      00BC08 30                    4765 	.db #0x30	; 48	'0'
      00BC09 0C                    4766 	.db #0x0c	; 12
      00BC0A 10                    4767 	.db #0x10	; 16
      00BC0B 08                    4768 	.db #0x08	; 8
      00BC0C 08                    4769 	.db #0x08	; 8
      00BC0D 10                    4770 	.db #0x10	; 16
      00BC0E 08                    4771 	.db #0x08	; 8
      00BC0F 10                    4772 	.db #0x10	; 16
      00BC10 08                    4773 	.db #0x08	; 8
      00BC11 10                    4774 	.db #0x10	; 16
      00BC12 08                    4775 	.db #0x08	; 8
      00BC13 10                    4776 	.db #0x10	; 16
      00BC14 08                    4777 	.db #0x08	; 8
      00BC15 18                    4778 	.db #0x18	; 24
      00BC16 00                    4779 	.db #0x00	; 0
      00BC17 00                    4780 	.db #0x00	; 0
      00BC18 00                    4781 	.db #0x00	; 0
      00BC19 00                    4782 	.db #0x00	; 0
      00BC1A 00                    4783 	.db #0x00	; 0
      00BC1B 00                    4784 	.db #0x00	; 0
      00BC1C F8                    4785 	.db #0xf8	; 248
      00BC1D 1F                    4786 	.db #0x1f	; 31
      00BC1E 08                    4787 	.db #0x08	; 8
      00BC1F 10                    4788 	.db #0x10	; 16
      00BC20 08                    4789 	.db #0x08	; 8
      00BC21 10                    4790 	.db #0x10	; 16
      00BC22 08                    4791 	.db #0x08	; 8
      00BC23 10                    4792 	.db #0x10	; 16
      00BC24 08                    4793 	.db #0x08	; 8
      00BC25 10                    4794 	.db #0x10	; 16
      00BC26 10                    4795 	.db #0x10	; 16
      00BC27 08                    4796 	.db #0x08	; 8
      00BC28 E0                    4797 	.db #0xe0	; 224
      00BC29 07                    4798 	.db #0x07	; 7
      00BC2A 00                    4799 	.db #0x00	; 0
      00BC2B 00                    4800 	.db #0x00	; 0
      00BC2C 00                    4801 	.db #0x00	; 0
      00BC2D 00                    4802 	.db #0x00	; 0
      00BC2E 00                    4803 	.db #0x00	; 0
      00BC2F 00                    4804 	.db #0x00	; 0
      00BC30 F8                    4805 	.db #0xf8	; 248
      00BC31 1F                    4806 	.db #0x1f	; 31
      00BC32 88                    4807 	.db #0x88	; 136
      00BC33 10                    4808 	.db #0x10	; 16
      00BC34 88                    4809 	.db #0x88	; 136
      00BC35 10                    4810 	.db #0x10	; 16
      00BC36 88                    4811 	.db #0x88	; 136
      00BC37 10                    4812 	.db #0x10	; 16
      00BC38 88                    4813 	.db #0x88	; 136
      00BC39 10                    4814 	.db #0x10	; 16
      00BC3A 88                    4815 	.db #0x88	; 136
      00BC3B 10                    4816 	.db #0x10	; 16
      00BC3C 08                    4817 	.db #0x08	; 8
      00BC3D 10                    4818 	.db #0x10	; 16
      00BC3E 00                    4819 	.db #0x00	; 0
      00BC3F 00                    4820 	.db #0x00	; 0
      00BC40 00                    4821 	.db #0x00	; 0
      00BC41 00                    4822 	.db #0x00	; 0
      00BC42 00                    4823 	.db #0x00	; 0
      00BC43 00                    4824 	.db #0x00	; 0
      00BC44 F8                    4825 	.db #0xf8	; 248
      00BC45 1F                    4826 	.db #0x1f	; 31
      00BC46 80                    4827 	.db #0x80	; 128
      00BC47 10                    4828 	.db #0x10	; 16
      00BC48 80                    4829 	.db #0x80	; 128
      00BC49 10                    4830 	.db #0x10	; 16
      00BC4A 80                    4831 	.db #0x80	; 128
      00BC4B 10                    4832 	.db #0x10	; 16
      00BC4C 80                    4833 	.db #0x80	; 128
      00BC4D 10                    4834 	.db #0x10	; 16
      00BC4E 80                    4835 	.db #0x80	; 128
      00BC4F 10                    4836 	.db #0x10	; 16
      00BC50 00                    4837 	.db #0x00	; 0
      00BC51 10                    4838 	.db #0x10	; 16
      00BC52 00                    4839 	.db #0x00	; 0
      00BC53 00                    4840 	.db #0x00	; 0
      00BC54 00                    4841 	.db #0x00	; 0
      00BC55 00                    4842 	.db #0x00	; 0
      00BC56 00                    4843 	.db #0x00	; 0
      00BC57 00                    4844 	.db #0x00	; 0
      00BC58 C0                    4845 	.db #0xc0	; 192
      00BC59 03                    4846 	.db #0x03	; 3
      00BC5A 30                    4847 	.db #0x30	; 48	'0'
      00BC5B 0C                    4848 	.db #0x0c	; 12
      00BC5C 10                    4849 	.db #0x10	; 16
      00BC5D 08                    4850 	.db #0x08	; 8
      00BC5E 08                    4851 	.db #0x08	; 8
      00BC5F 10                    4852 	.db #0x10	; 16
      00BC60 08                    4853 	.db #0x08	; 8
      00BC61 10                    4854 	.db #0x10	; 16
      00BC62 88                    4855 	.db #0x88	; 136
      00BC63 10                    4856 	.db #0x10	; 16
      00BC64 88                    4857 	.db #0x88	; 136
      00BC65 10                    4858 	.db #0x10	; 16
      00BC66 F8                    4859 	.db #0xf8	; 248
      00BC67 18                    4860 	.db #0x18	; 24
      00BC68 00                    4861 	.db #0x00	; 0
      00BC69 00                    4862 	.db #0x00	; 0
      00BC6A 00                    4863 	.db #0x00	; 0
      00BC6B 00                    4864 	.db #0x00	; 0
      00BC6C F8                    4865 	.db #0xf8	; 248
      00BC6D 1F                    4866 	.db #0x1f	; 31
      00BC6E 80                    4867 	.db #0x80	; 128
      00BC6F 00                    4868 	.db #0x00	; 0
      00BC70 80                    4869 	.db #0x80	; 128
      00BC71 00                    4870 	.db #0x00	; 0
      00BC72 80                    4871 	.db #0x80	; 128
      00BC73 00                    4872 	.db #0x00	; 0
      00BC74 80                    4873 	.db #0x80	; 128
      00BC75 00                    4874 	.db #0x00	; 0
      00BC76 80                    4875 	.db #0x80	; 128
      00BC77 00                    4876 	.db #0x00	; 0
      00BC78 F8                    4877 	.db #0xf8	; 248
      00BC79 1F                    4878 	.db #0x1f	; 31
      00BC7A 00                    4879 	.db #0x00	; 0
      00BC7B 00                    4880 	.db #0x00	; 0
      00BC7C 00                    4881 	.db #0x00	; 0
      00BC7D 00                    4882 	.db #0x00	; 0
      00BC7E 00                    4883 	.db #0x00	; 0
      00BC7F 00                    4884 	.db #0x00	; 0
      00BC80 08                    4885 	.db #0x08	; 8
      00BC81 10                    4886 	.db #0x10	; 16
      00BC82 08                    4887 	.db #0x08	; 8
      00BC83 10                    4888 	.db #0x10	; 16
      00BC84 08                    4889 	.db #0x08	; 8
      00BC85 10                    4890 	.db #0x10	; 16
      00BC86 F8                    4891 	.db #0xf8	; 248
      00BC87 1F                    4892 	.db #0x1f	; 31
      00BC88 08                    4893 	.db #0x08	; 8
      00BC89 10                    4894 	.db #0x10	; 16
      00BC8A 08                    4895 	.db #0x08	; 8
      00BC8B 10                    4896 	.db #0x10	; 16
      00BC8C 08                    4897 	.db #0x08	; 8
      00BC8D 10                    4898 	.db #0x10	; 16
      00BC8E 00                    4899 	.db #0x00	; 0
      00BC8F 00                    4900 	.db #0x00	; 0
      00BC90 00                    4901 	.db #0x00	; 0
      00BC91 00                    4902 	.db #0x00	; 0
      00BC92 00                    4903 	.db #0x00	; 0
      00BC93 00                    4904 	.db #0x00	; 0
      00BC94 00                    4905 	.db #0x00	; 0
      00BC95 00                    4906 	.db #0x00	; 0
      00BC96 08                    4907 	.db #0x08	; 8
      00BC97 00                    4908 	.db #0x00	; 0
      00BC98 08                    4909 	.db #0x08	; 8
      00BC99 10                    4910 	.db #0x10	; 16
      00BC9A 08                    4911 	.db #0x08	; 8
      00BC9B 10                    4912 	.db #0x10	; 16
      00BC9C 08                    4913 	.db #0x08	; 8
      00BC9D 10                    4914 	.db #0x10	; 16
      00BC9E F0                    4915 	.db #0xf0	; 240
      00BC9F 1F                    4916 	.db #0x1f	; 31
      00BCA0 00                    4917 	.db #0x00	; 0
      00BCA1 00                    4918 	.db #0x00	; 0
      00BCA2 00                    4919 	.db #0x00	; 0
      00BCA3 00                    4920 	.db #0x00	; 0
      00BCA4 00                    4921 	.db #0x00	; 0
      00BCA5 00                    4922 	.db #0x00	; 0
      00BCA6 00                    4923 	.db #0x00	; 0
      00BCA7 00                    4924 	.db #0x00	; 0
      00BCA8 F8                    4925 	.db #0xf8	; 248
      00BCA9 1F                    4926 	.db #0x1f	; 31
      00BCAA 00                    4927 	.db #0x00	; 0
      00BCAB 01                    4928 	.db #0x01	; 1
      00BCAC 80                    4929 	.db #0x80	; 128
      00BCAD 01                    4930 	.db #0x01	; 1
      00BCAE 40                    4931 	.db #0x40	; 64
      00BCAF 02                    4932 	.db #0x02	; 2
      00BCB0 20                    4933 	.db #0x20	; 32
      00BCB1 04                    4934 	.db #0x04	; 4
      00BCB2 20                    4935 	.db #0x20	; 32
      00BCB3 08                    4936 	.db #0x08	; 8
      00BCB4 10                    4937 	.db #0x10	; 16
      00BCB5 10                    4938 	.db #0x10	; 16
      00BCB6 08                    4939 	.db #0x08	; 8
      00BCB7 00                    4940 	.db #0x00	; 0
      00BCB8 00                    4941 	.db #0x00	; 0
      00BCB9 00                    4942 	.db #0x00	; 0
      00BCBA 00                    4943 	.db #0x00	; 0
      00BCBB 00                    4944 	.db #0x00	; 0
      00BCBC F8                    4945 	.db #0xf8	; 248
      00BCBD 1F                    4946 	.db #0x1f	; 31
      00BCBE 08                    4947 	.db #0x08	; 8
      00BCBF 00                    4948 	.db #0x00	; 0
      00BCC0 08                    4949 	.db #0x08	; 8
      00BCC1 00                    4950 	.db #0x00	; 0
      00BCC2 08                    4951 	.db #0x08	; 8
      00BCC3 00                    4952 	.db #0x00	; 0
      00BCC4 08                    4953 	.db #0x08	; 8
      00BCC5 00                    4954 	.db #0x00	; 0
      00BCC6 08                    4955 	.db #0x08	; 8
      00BCC7 00                    4956 	.db #0x00	; 0
      00BCC8 08                    4957 	.db #0x08	; 8
      00BCC9 00                    4958 	.db #0x00	; 0
      00BCCA 00                    4959 	.db #0x00	; 0
      00BCCB 00                    4960 	.db #0x00	; 0
      00BCCC 00                    4961 	.db #0x00	; 0
      00BCCD 00                    4962 	.db #0x00	; 0
      00BCCE F8                    4963 	.db #0xf8	; 248
      00BCCF 1F                    4964 	.db #0x1f	; 31
      00BCD0 00                    4965 	.db #0x00	; 0
      00BCD1 1C                    4966 	.db #0x1c	; 28
      00BCD2 80                    4967 	.db #0x80	; 128
      00BCD3 07                    4968 	.db #0x07	; 7
      00BCD4 E0                    4969 	.db #0xe0	; 224
      00BCD5 00                    4970 	.db #0x00	; 0
      00BCD6 60                    4971 	.db #0x60	; 96
      00BCD7 00                    4972 	.db #0x00	; 0
      00BCD8 80                    4973 	.db #0x80	; 128
      00BCD9 03                    4974 	.db #0x03	; 3
      00BCDA 00                    4975 	.db #0x00	; 0
      00BCDB 1C                    4976 	.db #0x1c	; 28
      00BCDC F8                    4977 	.db #0xf8	; 248
      00BCDD 1F                    4978 	.db #0x1f	; 31
      00BCDE 00                    4979 	.db #0x00	; 0
      00BCDF 00                    4980 	.db #0x00	; 0
      00BCE0 00                    4981 	.db #0x00	; 0
      00BCE1 00                    4982 	.db #0x00	; 0
      00BCE2 00                    4983 	.db #0x00	; 0
      00BCE3 00                    4984 	.db #0x00	; 0
      00BCE4 F8                    4985 	.db #0xf8	; 248
      00BCE5 1F                    4986 	.db #0x1f	; 31
      00BCE6 00                    4987 	.db #0x00	; 0
      00BCE7 08                    4988 	.db #0x08	; 8
      00BCE8 00                    4989 	.db #0x00	; 0
      00BCE9 06                    4990 	.db #0x06	; 6
      00BCEA 80                    4991 	.db #0x80	; 128
      00BCEB 01                    4992 	.db #0x01	; 1
      00BCEC 60                    4993 	.db #0x60	; 96
      00BCED 00                    4994 	.db #0x00	; 0
      00BCEE 10                    4995 	.db #0x10	; 16
      00BCEF 00                    4996 	.db #0x00	; 0
      00BCF0 F8                    4997 	.db #0xf8	; 248
      00BCF1 1F                    4998 	.db #0x1f	; 31
      00BCF2 00                    4999 	.db #0x00	; 0
      00BCF3 00                    5000 	.db #0x00	; 0
      00BCF4 00                    5001 	.db #0x00	; 0
      00BCF5 00                    5002 	.db #0x00	; 0
      00BCF6 00                    5003 	.db #0x00	; 0
      00BCF7 00                    5004 	.db #0x00	; 0
      00BCF8 E0                    5005 	.db #0xe0	; 224
      00BCF9 07                    5006 	.db #0x07	; 7
      00BCFA 10                    5007 	.db #0x10	; 16
      00BCFB 08                    5008 	.db #0x08	; 8
      00BCFC 08                    5009 	.db #0x08	; 8
      00BCFD 10                    5010 	.db #0x10	; 16
      00BCFE 08                    5011 	.db #0x08	; 8
      00BCFF 10                    5012 	.db #0x10	; 16
      00BD00 08                    5013 	.db #0x08	; 8
      00BD01 10                    5014 	.db #0x10	; 16
      00BD02 08                    5015 	.db #0x08	; 8
      00BD03 10                    5016 	.db #0x10	; 16
      00BD04 10                    5017 	.db #0x10	; 16
      00BD05 08                    5018 	.db #0x08	; 8
      00BD06 E0                    5019 	.db #0xe0	; 224
      00BD07 07                    5020 	.db #0x07	; 7
      00BD08 00                    5021 	.db #0x00	; 0
      00BD09 00                    5022 	.db #0x00	; 0
      00BD0A 00                    5023 	.db #0x00	; 0
      00BD0B 00                    5024 	.db #0x00	; 0
      00BD0C F8                    5025 	.db #0xf8	; 248
      00BD0D 1F                    5026 	.db #0x1f	; 31
      00BD0E 80                    5027 	.db #0x80	; 128
      00BD0F 10                    5028 	.db #0x10	; 16
      00BD10 80                    5029 	.db #0x80	; 128
      00BD11 10                    5030 	.db #0x10	; 16
      00BD12 80                    5031 	.db #0x80	; 128
      00BD13 10                    5032 	.db #0x10	; 16
      00BD14 80                    5033 	.db #0x80	; 128
      00BD15 10                    5034 	.db #0x10	; 16
      00BD16 00                    5035 	.db #0x00	; 0
      00BD17 11                    5036 	.db #0x11	; 17
      00BD18 00                    5037 	.db #0x00	; 0
      00BD19 0E                    5038 	.db #0x0e	; 14
      00BD1A 00                    5039 	.db #0x00	; 0
      00BD1B 00                    5040 	.db #0x00	; 0
      00BD1C 00                    5041 	.db #0x00	; 0
      00BD1D 00                    5042 	.db #0x00	; 0
      00BD1E 00                    5043 	.db #0x00	; 0
      00BD1F 00                    5044 	.db #0x00	; 0
      00BD20 E0                    5045 	.db #0xe0	; 224
      00BD21 07                    5046 	.db #0x07	; 7
      00BD22 10                    5047 	.db #0x10	; 16
      00BD23 08                    5048 	.db #0x08	; 8
      00BD24 08                    5049 	.db #0x08	; 8
      00BD25 10                    5050 	.db #0x10	; 16
      00BD26 08                    5051 	.db #0x08	; 8
      00BD27 10                    5052 	.db #0x10	; 16
      00BD28 08                    5053 	.db #0x08	; 8
      00BD29 10                    5054 	.db #0x10	; 16
      00BD2A 0C                    5055 	.db #0x0c	; 12
      00BD2B 10                    5056 	.db #0x10	; 16
      00BD2C 12                    5057 	.db #0x12	; 18
      00BD2D 08                    5058 	.db #0x08	; 8
      00BD2E E2                    5059 	.db #0xe2	; 226
      00BD2F 07                    5060 	.db #0x07	; 7
      00BD30 00                    5061 	.db #0x00	; 0
      00BD31 00                    5062 	.db #0x00	; 0
      00BD32 00                    5063 	.db #0x00	; 0
      00BD33 00                    5064 	.db #0x00	; 0
      00BD34 F8                    5065 	.db #0xf8	; 248
      00BD35 1F                    5066 	.db #0x1f	; 31
      00BD36 80                    5067 	.db #0x80	; 128
      00BD37 10                    5068 	.db #0x10	; 16
      00BD38 80                    5069 	.db #0x80	; 128
      00BD39 10                    5070 	.db #0x10	; 16
      00BD3A C0                    5071 	.db #0xc0	; 192
      00BD3B 10                    5072 	.db #0x10	; 16
      00BD3C 20                    5073 	.db #0x20	; 32
      00BD3D 11                    5074 	.db #0x11	; 17
      00BD3E 10                    5075 	.db #0x10	; 16
      00BD3F 0E                    5076 	.db #0x0e	; 14
      00BD40 08                    5077 	.db #0x08	; 8
      00BD41 00                    5078 	.db #0x00	; 0
      00BD42 00                    5079 	.db #0x00	; 0
      00BD43 00                    5080 	.db #0x00	; 0
      00BD44 00                    5081 	.db #0x00	; 0
      00BD45 00                    5082 	.db #0x00	; 0
      00BD46 00                    5083 	.db #0x00	; 0
      00BD47 00                    5084 	.db #0x00	; 0
      00BD48 18                    5085 	.db #0x18	; 24
      00BD49 0E                    5086 	.db #0x0e	; 14
      00BD4A 08                    5087 	.db #0x08	; 8
      00BD4B 12                    5088 	.db #0x12	; 18
      00BD4C 08                    5089 	.db #0x08	; 8
      00BD4D 11                    5090 	.db #0x11	; 17
      00BD4E 08                    5091 	.db #0x08	; 8
      00BD4F 11                    5092 	.db #0x11	; 17
      00BD50 88                    5093 	.db #0x88	; 136
      00BD51 10                    5094 	.db #0x10	; 16
      00BD52 90                    5095 	.db #0x90	; 144
      00BD53 10                    5096 	.db #0x10	; 16
      00BD54 70                    5097 	.db #0x70	; 112	'p'
      00BD55 18                    5098 	.db #0x18	; 24
      00BD56 00                    5099 	.db #0x00	; 0
      00BD57 00                    5100 	.db #0x00	; 0
      00BD58 00                    5101 	.db #0x00	; 0
      00BD59 00                    5102 	.db #0x00	; 0
      00BD5A 00                    5103 	.db #0x00	; 0
      00BD5B 10                    5104 	.db #0x10	; 16
      00BD5C 00                    5105 	.db #0x00	; 0
      00BD5D 10                    5106 	.db #0x10	; 16
      00BD5E 00                    5107 	.db #0x00	; 0
      00BD5F 10                    5108 	.db #0x10	; 16
      00BD60 00                    5109 	.db #0x00	; 0
      00BD61 10                    5110 	.db #0x10	; 16
      00BD62 F8                    5111 	.db #0xf8	; 248
      00BD63 1F                    5112 	.db #0x1f	; 31
      00BD64 00                    5113 	.db #0x00	; 0
      00BD65 10                    5114 	.db #0x10	; 16
      00BD66 00                    5115 	.db #0x00	; 0
      00BD67 10                    5116 	.db #0x10	; 16
      00BD68 00                    5117 	.db #0x00	; 0
      00BD69 10                    5118 	.db #0x10	; 16
      00BD6A 00                    5119 	.db #0x00	; 0
      00BD6B 10                    5120 	.db #0x10	; 16
      00BD6C 00                    5121 	.db #0x00	; 0
      00BD6D 00                    5122 	.db #0x00	; 0
      00BD6E 00                    5123 	.db #0x00	; 0
      00BD6F 00                    5124 	.db #0x00	; 0
      00BD70 E0                    5125 	.db #0xe0	; 224
      00BD71 1F                    5126 	.db #0x1f	; 31
      00BD72 18                    5127 	.db #0x18	; 24
      00BD73 00                    5128 	.db #0x00	; 0
      00BD74 08                    5129 	.db #0x08	; 8
      00BD75 00                    5130 	.db #0x00	; 0
      00BD76 08                    5131 	.db #0x08	; 8
      00BD77 00                    5132 	.db #0x00	; 0
      00BD78 08                    5133 	.db #0x08	; 8
      00BD79 00                    5134 	.db #0x00	; 0
      00BD7A 10                    5135 	.db #0x10	; 16
      00BD7B 00                    5136 	.db #0x00	; 0
      00BD7C E0                    5137 	.db #0xe0	; 224
      00BD7D 1F                    5138 	.db #0x1f	; 31
      00BD7E 00                    5139 	.db #0x00	; 0
      00BD7F 00                    5140 	.db #0x00	; 0
      00BD80 00                    5141 	.db #0x00	; 0
      00BD81 00                    5142 	.db #0x00	; 0
      00BD82 00                    5143 	.db #0x00	; 0
      00BD83 10                    5144 	.db #0x10	; 16
      00BD84 00                    5145 	.db #0x00	; 0
      00BD85 0C                    5146 	.db #0x0c	; 12
      00BD86 80                    5147 	.db #0x80	; 128
      00BD87 03                    5148 	.db #0x03	; 3
      00BD88 60                    5149 	.db #0x60	; 96
      00BD89 00                    5150 	.db #0x00	; 0
      00BD8A 18                    5151 	.db #0x18	; 24
      00BD8B 00                    5152 	.db #0x00	; 0
      00BD8C 18                    5153 	.db #0x18	; 24
      00BD8D 00                    5154 	.db #0x00	; 0
      00BD8E E0                    5155 	.db #0xe0	; 224
      00BD8F 00                    5156 	.db #0x00	; 0
      00BD90 00                    5157 	.db #0x00	; 0
      00BD91 03                    5158 	.db #0x03	; 3
      00BD92 00                    5159 	.db #0x00	; 0
      00BD93 0C                    5160 	.db #0x0c	; 12
      00BD94 00                    5161 	.db #0x00	; 0
      00BD95 10                    5162 	.db #0x10	; 16
      00BD96 00                    5163 	.db #0x00	; 0
      00BD97 18                    5164 	.db #0x18	; 24
      00BD98 C0                    5165 	.db #0xc0	; 192
      00BD99 07                    5166 	.db #0x07	; 7
      00BD9A 38                    5167 	.db #0x38	; 56	'8'
      00BD9B 00                    5168 	.db #0x00	; 0
      00BD9C F0                    5169 	.db #0xf0	; 240
      00BD9D 00                    5170 	.db #0x00	; 0
      00BD9E 00                    5171 	.db #0x00	; 0
      00BD9F 07                    5172 	.db #0x07	; 7
      00BDA0 80                    5173 	.db #0x80	; 128
      00BDA1 03                    5174 	.db #0x03	; 3
      00BDA2 70                    5175 	.db #0x70	; 112	'p'
      00BDA3 00                    5176 	.db #0x00	; 0
      00BDA4 38                    5177 	.db #0x38	; 56	'8'
      00BDA5 00                    5178 	.db #0x00	; 0
      00BDA6 C0                    5179 	.db #0xc0	; 192
      00BDA7 07                    5180 	.db #0x07	; 7
      00BDA8 00                    5181 	.db #0x00	; 0
      00BDA9 18                    5182 	.db #0x18	; 24
      00BDAA 08                    5183 	.db #0x08	; 8
      00BDAB 10                    5184 	.db #0x10	; 16
      00BDAC 10                    5185 	.db #0x10	; 16
      00BDAD 08                    5186 	.db #0x08	; 8
      00BDAE 20                    5187 	.db #0x20	; 32
      00BDAF 04                    5188 	.db #0x04	; 4
      00BDB0 40                    5189 	.db #0x40	; 64
      00BDB1 02                    5190 	.db #0x02	; 2
      00BDB2 80                    5191 	.db #0x80	; 128
      00BDB3 01                    5192 	.db #0x01	; 1
      00BDB4 80                    5193 	.db #0x80	; 128
      00BDB5 01                    5194 	.db #0x01	; 1
      00BDB6 40                    5195 	.db #0x40	; 64
      00BDB7 02                    5196 	.db #0x02	; 2
      00BDB8 20                    5197 	.db #0x20	; 32
      00BDB9 04                    5198 	.db #0x04	; 4
      00BDBA 10                    5199 	.db #0x10	; 16
      00BDBB 08                    5200 	.db #0x08	; 8
      00BDBC 08                    5201 	.db #0x08	; 8
      00BDBD 10                    5202 	.db #0x10	; 16
      00BDBE 00                    5203 	.db #0x00	; 0
      00BDBF 10                    5204 	.db #0x10	; 16
      00BDC0 00                    5205 	.db #0x00	; 0
      00BDC1 08                    5206 	.db #0x08	; 8
      00BDC2 00                    5207 	.db #0x00	; 0
      00BDC3 06                    5208 	.db #0x06	; 6
      00BDC4 00                    5209 	.db #0x00	; 0
      00BDC5 01                    5210 	.db #0x01	; 1
      00BDC6 F8                    5211 	.db #0xf8	; 248
      00BDC7 00                    5212 	.db #0x00	; 0
      00BDC8 00                    5213 	.db #0x00	; 0
      00BDC9 01                    5214 	.db #0x01	; 1
      00BDCA 00                    5215 	.db #0x00	; 0
      00BDCB 02                    5216 	.db #0x02	; 2
      00BDCC 00                    5217 	.db #0x00	; 0
      00BDCD 04                    5218 	.db #0x04	; 4
      00BDCE 00                    5219 	.db #0x00	; 0
      00BDCF 08                    5220 	.db #0x08	; 8
      00BDD0 00                    5221 	.db #0x00	; 0
      00BDD1 10                    5222 	.db #0x10	; 16
      00BDD2 00                    5223 	.db #0x00	; 0
      00BDD3 00                    5224 	.db #0x00	; 0
      00BDD4 18                    5225 	.db #0x18	; 24
      00BDD5 10                    5226 	.db #0x10	; 16
      00BDD6 28                    5227 	.db #0x28	; 40
      00BDD7 10                    5228 	.db #0x10	; 16
      00BDD8 48                    5229 	.db #0x48	; 72	'H'
      00BDD9 10                    5230 	.db #0x10	; 16
      00BDDA 88                    5231 	.db #0x88	; 136
      00BDDB 10                    5232 	.db #0x10	; 16
      00BDDC 08                    5233 	.db #0x08	; 8
      00BDDD 11                    5234 	.db #0x11	; 17
      00BDDE 08                    5235 	.db #0x08	; 8
      00BDDF 12                    5236 	.db #0x12	; 18
      00BDE0 08                    5237 	.db #0x08	; 8
      00BDE1 14                    5238 	.db #0x14	; 20
      00BDE2 08                    5239 	.db #0x08	; 8
      00BDE3 18                    5240 	.db #0x18	; 24
      00BDE4 00                    5241 	.db #0x00	; 0
      00BDE5 00                    5242 	.db #0x00	; 0
      00BDE6 00                    5243 	.db #0x00	; 0
      00BDE7 00                    5244 	.db #0x00	; 0
      00BDE8 00                    5245 	.db #0x00	; 0
      00BDE9 00                    5246 	.db #0x00	; 0
      00BDEA 00                    5247 	.db #0x00	; 0
      00BDEB 00                    5248 	.db #0x00	; 0
      00BDEC FE                    5249 	.db #0xfe	; 254
      00BDED 7F                    5250 	.db #0x7f	; 127
      00BDEE 02                    5251 	.db #0x02	; 2
      00BDEF 40                    5252 	.db #0x40	; 64
      00BDF0 02                    5253 	.db #0x02	; 2
      00BDF1 40                    5254 	.db #0x40	; 64
      00BDF2 02                    5255 	.db #0x02	; 2
      00BDF3 40                    5256 	.db #0x40	; 64
      00BDF4 02                    5257 	.db #0x02	; 2
      00BDF5 40                    5258 	.db #0x40	; 64
      00BDF6 00                    5259 	.db #0x00	; 0
      00BDF7 00                    5260 	.db #0x00	; 0
      00BDF8 00                    5261 	.db #0x00	; 0
      00BDF9 00                    5262 	.db #0x00	; 0
      00BDFA 00                    5263 	.db #0x00	; 0
      00BDFB 00                    5264 	.db #0x00	; 0
      00BDFC 00                    5265 	.db #0x00	; 0
      00BDFD 40                    5266 	.db #0x40	; 64
      00BDFE 00                    5267 	.db #0x00	; 0
      00BDFF 30                    5268 	.db #0x30	; 48	'0'
      00BE00 00                    5269 	.db #0x00	; 0
      00BE01 0C                    5270 	.db #0x0c	; 12
      00BE02 00                    5271 	.db #0x00	; 0
      00BE03 03                    5272 	.db #0x03	; 3
      00BE04 C0                    5273 	.db #0xc0	; 192
      00BE05 00                    5274 	.db #0x00	; 0
      00BE06 30                    5275 	.db #0x30	; 48	'0'
      00BE07 00                    5276 	.db #0x00	; 0
      00BE08 0C                    5277 	.db #0x0c	; 12
      00BE09 00                    5278 	.db #0x00	; 0
      00BE0A 02                    5279 	.db #0x02	; 2
      00BE0B 00                    5280 	.db #0x00	; 0
      00BE0C 00                    5281 	.db #0x00	; 0
      00BE0D 00                    5282 	.db #0x00	; 0
      00BE0E 00                    5283 	.db #0x00	; 0
      00BE0F 00                    5284 	.db #0x00	; 0
      00BE10 02                    5285 	.db #0x02	; 2
      00BE11 40                    5286 	.db #0x40	; 64
      00BE12 02                    5287 	.db #0x02	; 2
      00BE13 40                    5288 	.db #0x40	; 64
      00BE14 02                    5289 	.db #0x02	; 2
      00BE15 40                    5290 	.db #0x40	; 64
      00BE16 02                    5291 	.db #0x02	; 2
      00BE17 40                    5292 	.db #0x40	; 64
      00BE18 FE                    5293 	.db #0xfe	; 254
      00BE19 7F                    5294 	.db #0x7f	; 127
      00BE1A 00                    5295 	.db #0x00	; 0
      00BE1B 00                    5296 	.db #0x00	; 0
      00BE1C 00                    5297 	.db #0x00	; 0
      00BE1D 00                    5298 	.db #0x00	; 0
      00BE1E 00                    5299 	.db #0x00	; 0
      00BE1F 00                    5300 	.db #0x00	; 0
      00BE20 00                    5301 	.db #0x00	; 0
      00BE21 00                    5302 	.db #0x00	; 0
      00BE22 00                    5303 	.db #0x00	; 0
      00BE23 00                    5304 	.db #0x00	; 0
      00BE24 20                    5305 	.db #0x20	; 32
      00BE25 00                    5306 	.db #0x00	; 0
      00BE26 C0                    5307 	.db #0xc0	; 192
      00BE27 00                    5308 	.db #0x00	; 0
      00BE28 00                    5309 	.db #0x00	; 0
      00BE29 07                    5310 	.db #0x07	; 7
      00BE2A 00                    5311 	.db #0x00	; 0
      00BE2B 1C                    5312 	.db #0x1c	; 28
      00BE2C 00                    5313 	.db #0x00	; 0
      00BE2D 70                    5314 	.db #0x70	; 112	'p'
      00BE2E 00                    5315 	.db #0x00	; 0
      00BE2F 0E                    5316 	.db #0x0e	; 14
      00BE30 C0                    5317 	.db #0xc0	; 192
      00BE31 01                    5318 	.db #0x01	; 1
      00BE32 20                    5319 	.db #0x20	; 32
      00BE33 00                    5320 	.db #0x00	; 0
      00BE34 00                    5321 	.db #0x00	; 0
      00BE35 00                    5322 	.db #0x00	; 0
      00BE36 04                    5323 	.db #0x04	; 4
      00BE37 00                    5324 	.db #0x00	; 0
      00BE38 04                    5325 	.db #0x04	; 4
      00BE39 00                    5326 	.db #0x00	; 0
      00BE3A 04                    5327 	.db #0x04	; 4
      00BE3B 00                    5328 	.db #0x00	; 0
      00BE3C 04                    5329 	.db #0x04	; 4
      00BE3D 00                    5330 	.db #0x00	; 0
      00BE3E 04                    5331 	.db #0x04	; 4
      00BE3F 00                    5332 	.db #0x00	; 0
      00BE40 04                    5333 	.db #0x04	; 4
      00BE41 00                    5334 	.db #0x00	; 0
      00BE42 04                    5335 	.db #0x04	; 4
      00BE43 00                    5336 	.db #0x00	; 0
      00BE44 04                    5337 	.db #0x04	; 4
      00BE45 00                    5338 	.db #0x00	; 0
      00BE46 04                    5339 	.db #0x04	; 4
      00BE47 00                    5340 	.db #0x00	; 0
      00BE48 04                    5341 	.db #0x04	; 4
      00BE49 00                    5342 	.db #0x00	; 0
      00BE4A 00                    5343 	.db #0x00	; 0
      00BE4B 00                    5344 	.db #0x00	; 0
      00BE4C 00                    5345 	.db #0x00	; 0
      00BE4D 00                    5346 	.db #0x00	; 0
      00BE4E 00                    5347 	.db #0x00	; 0
      00BE4F 00                    5348 	.db #0x00	; 0
      00BE50 00                    5349 	.db #0x00	; 0
      00BE51 00                    5350 	.db #0x00	; 0
      00BE52 00                    5351 	.db #0x00	; 0
      00BE53 80                    5352 	.db #0x80	; 128
      00BE54 00                    5353 	.db #0x00	; 0
      00BE55 40                    5354 	.db #0x40	; 64
      00BE56 00                    5355 	.db #0x00	; 0
      00BE57 00                    5356 	.db #0x00	; 0
      00BE58 00                    5357 	.db #0x00	; 0
      00BE59 00                    5358 	.db #0x00	; 0
      00BE5A 00                    5359 	.db #0x00	; 0
      00BE5B 00                    5360 	.db #0x00	; 0
      00BE5C 00                    5361 	.db #0x00	; 0
      00BE5D 00                    5362 	.db #0x00	; 0
      00BE5E 00                    5363 	.db #0x00	; 0
      00BE5F 00                    5364 	.db #0x00	; 0
      00BE60 30                    5365 	.db #0x30	; 48	'0'
      00BE61 00                    5366 	.db #0x00	; 0
      00BE62 48                    5367 	.db #0x48	; 72	'H'
      00BE63 04                    5368 	.db #0x04	; 4
      00BE64 88                    5369 	.db #0x88	; 136
      00BE65 04                    5370 	.db #0x04	; 4
      00BE66 88                    5371 	.db #0x88	; 136
      00BE67 04                    5372 	.db #0x04	; 4
      00BE68 90                    5373 	.db #0x90	; 144
      00BE69 04                    5374 	.db #0x04	; 4
      00BE6A F8                    5375 	.db #0xf8	; 248
      00BE6B 03                    5376 	.db #0x03	; 3
      00BE6C 08                    5377 	.db #0x08	; 8
      00BE6D 00                    5378 	.db #0x00	; 0
      00BE6E 00                    5379 	.db #0x00	; 0
      00BE6F 00                    5380 	.db #0x00	; 0
      00BE70 00                    5381 	.db #0x00	; 0
      00BE71 00                    5382 	.db #0x00	; 0
      00BE72 00                    5383 	.db #0x00	; 0
      00BE73 00                    5384 	.db #0x00	; 0
      00BE74 F8                    5385 	.db #0xf8	; 248
      00BE75 7F                    5386 	.db #0x7f	; 127
      00BE76 10                    5387 	.db #0x10	; 16
      00BE77 02                    5388 	.db #0x02	; 2
      00BE78 08                    5389 	.db #0x08	; 8
      00BE79 04                    5390 	.db #0x04	; 4
      00BE7A 08                    5391 	.db #0x08	; 8
      00BE7B 04                    5392 	.db #0x04	; 4
      00BE7C 08                    5393 	.db #0x08	; 8
      00BE7D 04                    5394 	.db #0x04	; 4
      00BE7E 10                    5395 	.db #0x10	; 16
      00BE7F 06                    5396 	.db #0x06	; 6
      00BE80 E0                    5397 	.db #0xe0	; 224
      00BE81 01                    5398 	.db #0x01	; 1
      00BE82 00                    5399 	.db #0x00	; 0
      00BE83 00                    5400 	.db #0x00	; 0
      00BE84 00                    5401 	.db #0x00	; 0
      00BE85 00                    5402 	.db #0x00	; 0
      00BE86 00                    5403 	.db #0x00	; 0
      00BE87 00                    5404 	.db #0x00	; 0
      00BE88 E0                    5405 	.db #0xe0	; 224
      00BE89 01                    5406 	.db #0x01	; 1
      00BE8A 10                    5407 	.db #0x10	; 16
      00BE8B 02                    5408 	.db #0x02	; 2
      00BE8C 08                    5409 	.db #0x08	; 8
      00BE8D 04                    5410 	.db #0x04	; 4
      00BE8E 08                    5411 	.db #0x08	; 8
      00BE8F 04                    5412 	.db #0x04	; 4
      00BE90 08                    5413 	.db #0x08	; 8
      00BE91 04                    5414 	.db #0x04	; 4
      00BE92 08                    5415 	.db #0x08	; 8
      00BE93 04                    5416 	.db #0x04	; 4
      00BE94 08                    5417 	.db #0x08	; 8
      00BE95 04                    5418 	.db #0x04	; 4
      00BE96 00                    5419 	.db #0x00	; 0
      00BE97 00                    5420 	.db #0x00	; 0
      00BE98 00                    5421 	.db #0x00	; 0
      00BE99 00                    5422 	.db #0x00	; 0
      00BE9A 00                    5423 	.db #0x00	; 0
      00BE9B 00                    5424 	.db #0x00	; 0
      00BE9C E0                    5425 	.db #0xe0	; 224
      00BE9D 01                    5426 	.db #0x01	; 1
      00BE9E 18                    5427 	.db #0x18	; 24
      00BE9F 02                    5428 	.db #0x02	; 2
      00BEA0 08                    5429 	.db #0x08	; 8
      00BEA1 04                    5430 	.db #0x04	; 4
      00BEA2 08                    5431 	.db #0x08	; 8
      00BEA3 04                    5432 	.db #0x04	; 4
      00BEA4 08                    5433 	.db #0x08	; 8
      00BEA5 04                    5434 	.db #0x04	; 4
      00BEA6 10                    5435 	.db #0x10	; 16
      00BEA7 02                    5436 	.db #0x02	; 2
      00BEA8 F8                    5437 	.db #0xf8	; 248
      00BEA9 7F                    5438 	.db #0x7f	; 127
      00BEAA 00                    5439 	.db #0x00	; 0
      00BEAB 00                    5440 	.db #0x00	; 0
      00BEAC 00                    5441 	.db #0x00	; 0
      00BEAD 00                    5442 	.db #0x00	; 0
      00BEAE 00                    5443 	.db #0x00	; 0
      00BEAF 00                    5444 	.db #0x00	; 0
      00BEB0 E0                    5445 	.db #0xe0	; 224
      00BEB1 01                    5446 	.db #0x01	; 1
      00BEB2 90                    5447 	.db #0x90	; 144
      00BEB3 02                    5448 	.db #0x02	; 2
      00BEB4 88                    5449 	.db #0x88	; 136
      00BEB5 04                    5450 	.db #0x04	; 4
      00BEB6 88                    5451 	.db #0x88	; 136
      00BEB7 04                    5452 	.db #0x04	; 4
      00BEB8 88                    5453 	.db #0x88	; 136
      00BEB9 04                    5454 	.db #0x04	; 4
      00BEBA 88                    5455 	.db #0x88	; 136
      00BEBB 04                    5456 	.db #0x04	; 4
      00BEBC 88                    5457 	.db #0x88	; 136
      00BEBD 03                    5458 	.db #0x03	; 3
      00BEBE 00                    5459 	.db #0x00	; 0
      00BEBF 00                    5460 	.db #0x00	; 0
      00BEC0 00                    5461 	.db #0x00	; 0
      00BEC1 00                    5462 	.db #0x00	; 0
      00BEC2 00                    5463 	.db #0x00	; 0
      00BEC3 00                    5464 	.db #0x00	; 0
      00BEC4 00                    5465 	.db #0x00	; 0
      00BEC5 04                    5466 	.db #0x04	; 4
      00BEC6 00                    5467 	.db #0x00	; 0
      00BEC7 04                    5468 	.db #0x04	; 4
      00BEC8 F8                    5469 	.db #0xf8	; 248
      00BEC9 3F                    5470 	.db #0x3f	; 63
      00BECA 00                    5471 	.db #0x00	; 0
      00BECB 24                    5472 	.db #0x24	; 36
      00BECC 00                    5473 	.db #0x00	; 0
      00BECD 44                    5474 	.db #0x44	; 68	'D'
      00BECE 00                    5475 	.db #0x00	; 0
      00BECF 44                    5476 	.db #0x44	; 68	'D'
      00BED0 00                    5477 	.db #0x00	; 0
      00BED1 44                    5478 	.db #0x44	; 68	'D'
      00BED2 00                    5479 	.db #0x00	; 0
      00BED3 44                    5480 	.db #0x44	; 68	'D'
      00BED4 00                    5481 	.db #0x00	; 0
      00BED5 00                    5482 	.db #0x00	; 0
      00BED6 00                    5483 	.db #0x00	; 0
      00BED7 00                    5484 	.db #0x00	; 0
      00BED8 E0                    5485 	.db #0xe0	; 224
      00BED9 01                    5486 	.db #0x01	; 1
      00BEDA 19                    5487 	.db #0x19	; 25
      00BEDB 02                    5488 	.db #0x02	; 2
      00BEDC 09                    5489 	.db #0x09	; 9
      00BEDD 04                    5490 	.db #0x04	; 4
      00BEDE 09                    5491 	.db #0x09	; 9
      00BEDF 04                    5492 	.db #0x04	; 4
      00BEE0 09                    5493 	.db #0x09	; 9
      00BEE1 04                    5494 	.db #0x04	; 4
      00BEE2 12                    5495 	.db #0x12	; 18
      00BEE3 02                    5496 	.db #0x02	; 2
      00BEE4 FC                    5497 	.db #0xfc	; 252
      00BEE5 07                    5498 	.db #0x07	; 7
      00BEE6 00                    5499 	.db #0x00	; 0
      00BEE7 00                    5500 	.db #0x00	; 0
      00BEE8 00                    5501 	.db #0x00	; 0
      00BEE9 00                    5502 	.db #0x00	; 0
      00BEEA 00                    5503 	.db #0x00	; 0
      00BEEB 00                    5504 	.db #0x00	; 0
      00BEEC F8                    5505 	.db #0xf8	; 248
      00BEED 7F                    5506 	.db #0x7f	; 127
      00BEEE 00                    5507 	.db #0x00	; 0
      00BEEF 01                    5508 	.db #0x01	; 1
      00BEF0 00                    5509 	.db #0x00	; 0
      00BEF1 02                    5510 	.db #0x02	; 2
      00BEF2 00                    5511 	.db #0x00	; 0
      00BEF3 04                    5512 	.db #0x04	; 4
      00BEF4 00                    5513 	.db #0x00	; 0
      00BEF5 04                    5514 	.db #0x04	; 4
      00BEF6 00                    5515 	.db #0x00	; 0
      00BEF7 04                    5516 	.db #0x04	; 4
      00BEF8 F8                    5517 	.db #0xf8	; 248
      00BEF9 03                    5518 	.db #0x03	; 3
      00BEFA 00                    5519 	.db #0x00	; 0
      00BEFB 00                    5520 	.db #0x00	; 0
      00BEFC 00                    5521 	.db #0x00	; 0
      00BEFD 00                    5522 	.db #0x00	; 0
      00BEFE 00                    5523 	.db #0x00	; 0
      00BEFF 00                    5524 	.db #0x00	; 0
      00BF00 00                    5525 	.db #0x00	; 0
      00BF01 04                    5526 	.db #0x04	; 4
      00BF02 00                    5527 	.db #0x00	; 0
      00BF03 04                    5528 	.db #0x04	; 4
      00BF04 00                    5529 	.db #0x00	; 0
      00BF05 64                    5530 	.db #0x64	; 100	'd'
      00BF06 F8                    5531 	.db #0xf8	; 248
      00BF07 67                    5532 	.db #0x67	; 103	'g'
      00BF08 00                    5533 	.db #0x00	; 0
      00BF09 00                    5534 	.db #0x00	; 0
      00BF0A 00                    5535 	.db #0x00	; 0
      00BF0B 00                    5536 	.db #0x00	; 0
      00BF0C 00                    5537 	.db #0x00	; 0
      00BF0D 00                    5538 	.db #0x00	; 0
      00BF0E 00                    5539 	.db #0x00	; 0
      00BF0F 00                    5540 	.db #0x00	; 0
      00BF10 00                    5541 	.db #0x00	; 0
      00BF11 00                    5542 	.db #0x00	; 0
      00BF12 00                    5543 	.db #0x00	; 0
      00BF13 00                    5544 	.db #0x00	; 0
      00BF14 01                    5545 	.db #0x01	; 1
      00BF15 00                    5546 	.db #0x00	; 0
      00BF16 01                    5547 	.db #0x01	; 1
      00BF17 04                    5548 	.db #0x04	; 4
      00BF18 01                    5549 	.db #0x01	; 1
      00BF19 04                    5550 	.db #0x04	; 4
      00BF1A 01                    5551 	.db #0x01	; 1
      00BF1B 64                    5552 	.db #0x64	; 100	'd'
      00BF1C FE                    5553 	.db #0xfe	; 254
      00BF1D 67                    5554 	.db #0x67	; 103	'g'
      00BF1E 00                    5555 	.db #0x00	; 0
      00BF1F 00                    5556 	.db #0x00	; 0
      00BF20 00                    5557 	.db #0x00	; 0
      00BF21 00                    5558 	.db #0x00	; 0
      00BF22 00                    5559 	.db #0x00	; 0
      00BF23 00                    5560 	.db #0x00	; 0
      00BF24 00                    5561 	.db #0x00	; 0
      00BF25 00                    5562 	.db #0x00	; 0
      00BF26 00                    5563 	.db #0x00	; 0
      00BF27 00                    5564 	.db #0x00	; 0
      00BF28 F8                    5565 	.db #0xf8	; 248
      00BF29 7F                    5566 	.db #0x7f	; 127
      00BF2A 80                    5567 	.db #0x80	; 128
      00BF2B 00                    5568 	.db #0x00	; 0
      00BF2C C0                    5569 	.db #0xc0	; 192
      00BF2D 00                    5570 	.db #0x00	; 0
      00BF2E 20                    5571 	.db #0x20	; 32
      00BF2F 01                    5572 	.db #0x01	; 1
      00BF30 20                    5573 	.db #0x20	; 32
      00BF31 02                    5574 	.db #0x02	; 2
      00BF32 10                    5575 	.db #0x10	; 16
      00BF33 02                    5576 	.db #0x02	; 2
      00BF34 08                    5577 	.db #0x08	; 8
      00BF35 04                    5578 	.db #0x04	; 4
      00BF36 00                    5579 	.db #0x00	; 0
      00BF37 00                    5580 	.db #0x00	; 0
      00BF38 00                    5581 	.db #0x00	; 0
      00BF39 00                    5582 	.db #0x00	; 0
      00BF3A 00                    5583 	.db #0x00	; 0
      00BF3B 00                    5584 	.db #0x00	; 0
      00BF3C 00                    5585 	.db #0x00	; 0
      00BF3D 00                    5586 	.db #0x00	; 0
      00BF3E 00                    5587 	.db #0x00	; 0
      00BF3F 40                    5588 	.db #0x40	; 64
      00BF40 00                    5589 	.db #0x00	; 0
      00BF41 40                    5590 	.db #0x40	; 64
      00BF42 00                    5591 	.db #0x00	; 0
      00BF43 40                    5592 	.db #0x40	; 64
      00BF44 F8                    5593 	.db #0xf8	; 248
      00BF45 7F                    5594 	.db #0x7f	; 127
      00BF46 00                    5595 	.db #0x00	; 0
      00BF47 00                    5596 	.db #0x00	; 0
      00BF48 00                    5597 	.db #0x00	; 0
      00BF49 00                    5598 	.db #0x00	; 0
      00BF4A 00                    5599 	.db #0x00	; 0
      00BF4B 00                    5600 	.db #0x00	; 0
      00BF4C 00                    5601 	.db #0x00	; 0
      00BF4D 00                    5602 	.db #0x00	; 0
      00BF4E F8                    5603 	.db #0xf8	; 248
      00BF4F 07                    5604 	.db #0x07	; 7
      00BF50 00                    5605 	.db #0x00	; 0
      00BF51 02                    5606 	.db #0x02	; 2
      00BF52 00                    5607 	.db #0x00	; 0
      00BF53 04                    5608 	.db #0x04	; 4
      00BF54 00                    5609 	.db #0x00	; 0
      00BF55 04                    5610 	.db #0x04	; 4
      00BF56 F8                    5611 	.db #0xf8	; 248
      00BF57 03                    5612 	.db #0x03	; 3
      00BF58 00                    5613 	.db #0x00	; 0
      00BF59 02                    5614 	.db #0x02	; 2
      00BF5A 00                    5615 	.db #0x00	; 0
      00BF5B 04                    5616 	.db #0x04	; 4
      00BF5C 00                    5617 	.db #0x00	; 0
      00BF5D 04                    5618 	.db #0x04	; 4
      00BF5E F8                    5619 	.db #0xf8	; 248
      00BF5F 03                    5620 	.db #0x03	; 3
      00BF60 00                    5621 	.db #0x00	; 0
      00BF61 00                    5622 	.db #0x00	; 0
      00BF62 00                    5623 	.db #0x00	; 0
      00BF63 00                    5624 	.db #0x00	; 0
      00BF64 F8                    5625 	.db #0xf8	; 248
      00BF65 07                    5626 	.db #0x07	; 7
      00BF66 00                    5627 	.db #0x00	; 0
      00BF67 03                    5628 	.db #0x03	; 3
      00BF68 00                    5629 	.db #0x00	; 0
      00BF69 02                    5630 	.db #0x02	; 2
      00BF6A 00                    5631 	.db #0x00	; 0
      00BF6B 04                    5632 	.db #0x04	; 4
      00BF6C 00                    5633 	.db #0x00	; 0
      00BF6D 04                    5634 	.db #0x04	; 4
      00BF6E 00                    5635 	.db #0x00	; 0
      00BF6F 04                    5636 	.db #0x04	; 4
      00BF70 F8                    5637 	.db #0xf8	; 248
      00BF71 03                    5638 	.db #0x03	; 3
      00BF72 00                    5639 	.db #0x00	; 0
      00BF73 00                    5640 	.db #0x00	; 0
      00BF74 00                    5641 	.db #0x00	; 0
      00BF75 00                    5642 	.db #0x00	; 0
      00BF76 00                    5643 	.db #0x00	; 0
      00BF77 00                    5644 	.db #0x00	; 0
      00BF78 E0                    5645 	.db #0xe0	; 224
      00BF79 01                    5646 	.db #0x01	; 1
      00BF7A 10                    5647 	.db #0x10	; 16
      00BF7B 02                    5648 	.db #0x02	; 2
      00BF7C 08                    5649 	.db #0x08	; 8
      00BF7D 04                    5650 	.db #0x04	; 4
      00BF7E 08                    5651 	.db #0x08	; 8
      00BF7F 04                    5652 	.db #0x04	; 4
      00BF80 08                    5653 	.db #0x08	; 8
      00BF81 04                    5654 	.db #0x04	; 4
      00BF82 10                    5655 	.db #0x10	; 16
      00BF83 02                    5656 	.db #0x02	; 2
      00BF84 E0                    5657 	.db #0xe0	; 224
      00BF85 01                    5658 	.db #0x01	; 1
      00BF86 00                    5659 	.db #0x00	; 0
      00BF87 00                    5660 	.db #0x00	; 0
      00BF88 00                    5661 	.db #0x00	; 0
      00BF89 00                    5662 	.db #0x00	; 0
      00BF8A 00                    5663 	.db #0x00	; 0
      00BF8B 00                    5664 	.db #0x00	; 0
      00BF8C FF                    5665 	.db #0xff	; 255
      00BF8D 07                    5666 	.db #0x07	; 7
      00BF8E 10                    5667 	.db #0x10	; 16
      00BF8F 02                    5668 	.db #0x02	; 2
      00BF90 08                    5669 	.db #0x08	; 8
      00BF91 04                    5670 	.db #0x04	; 4
      00BF92 08                    5671 	.db #0x08	; 8
      00BF93 04                    5672 	.db #0x04	; 4
      00BF94 08                    5673 	.db #0x08	; 8
      00BF95 04                    5674 	.db #0x04	; 4
      00BF96 10                    5675 	.db #0x10	; 16
      00BF97 06                    5676 	.db #0x06	; 6
      00BF98 E0                    5677 	.db #0xe0	; 224
      00BF99 01                    5678 	.db #0x01	; 1
      00BF9A 00                    5679 	.db #0x00	; 0
      00BF9B 00                    5680 	.db #0x00	; 0
      00BF9C 00                    5681 	.db #0x00	; 0
      00BF9D 00                    5682 	.db #0x00	; 0
      00BF9E 00                    5683 	.db #0x00	; 0
      00BF9F 00                    5684 	.db #0x00	; 0
      00BFA0 E0                    5685 	.db #0xe0	; 224
      00BFA1 01                    5686 	.db #0x01	; 1
      00BFA2 18                    5687 	.db #0x18	; 24
      00BFA3 02                    5688 	.db #0x02	; 2
      00BFA4 08                    5689 	.db #0x08	; 8
      00BFA5 04                    5690 	.db #0x04	; 4
      00BFA6 08                    5691 	.db #0x08	; 8
      00BFA7 04                    5692 	.db #0x04	; 4
      00BFA8 08                    5693 	.db #0x08	; 8
      00BFA9 04                    5694 	.db #0x04	; 4
      00BFAA 10                    5695 	.db #0x10	; 16
      00BFAB 02                    5696 	.db #0x02	; 2
      00BFAC FF                    5697 	.db #0xff	; 255
      00BFAD 07                    5698 	.db #0x07	; 7
      00BFAE 00                    5699 	.db #0x00	; 0
      00BFAF 00                    5700 	.db #0x00	; 0
      00BFB0 00                    5701 	.db #0x00	; 0
      00BFB1 00                    5702 	.db #0x00	; 0
      00BFB2 00                    5703 	.db #0x00	; 0
      00BFB3 00                    5704 	.db #0x00	; 0
      00BFB4 00                    5705 	.db #0x00	; 0
      00BFB5 00                    5706 	.db #0x00	; 0
      00BFB6 F8                    5707 	.db #0xf8	; 248
      00BFB7 07                    5708 	.db #0x07	; 7
      00BFB8 00                    5709 	.db #0x00	; 0
      00BFB9 01                    5710 	.db #0x01	; 1
      00BFBA 00                    5711 	.db #0x00	; 0
      00BFBB 02                    5712 	.db #0x02	; 2
      00BFBC 00                    5713 	.db #0x00	; 0
      00BFBD 04                    5714 	.db #0x04	; 4
      00BFBE 00                    5715 	.db #0x00	; 0
      00BFBF 04                    5716 	.db #0x04	; 4
      00BFC0 00                    5717 	.db #0x00	; 0
      00BFC1 07                    5718 	.db #0x07	; 7
      00BFC2 00                    5719 	.db #0x00	; 0
      00BFC3 00                    5720 	.db #0x00	; 0
      00BFC4 00                    5721 	.db #0x00	; 0
      00BFC5 00                    5722 	.db #0x00	; 0
      00BFC6 00                    5723 	.db #0x00	; 0
      00BFC7 00                    5724 	.db #0x00	; 0
      00BFC8 18                    5725 	.db #0x18	; 24
      00BFC9 03                    5726 	.db #0x03	; 3
      00BFCA 88                    5727 	.db #0x88	; 136
      00BFCB 04                    5728 	.db #0x04	; 4
      00BFCC 88                    5729 	.db #0x88	; 136
      00BFCD 04                    5730 	.db #0x04	; 4
      00BFCE 48                    5731 	.db #0x48	; 72	'H'
      00BFCF 04                    5732 	.db #0x04	; 4
      00BFD0 48                    5733 	.db #0x48	; 72	'H'
      00BFD1 04                    5734 	.db #0x04	; 4
      00BFD2 30                    5735 	.db #0x30	; 48	'0'
      00BFD3 04                    5736 	.db #0x04	; 4
      00BFD4 00                    5737 	.db #0x00	; 0
      00BFD5 00                    5738 	.db #0x00	; 0
      00BFD6 00                    5739 	.db #0x00	; 0
      00BFD7 00                    5740 	.db #0x00	; 0
      00BFD8 00                    5741 	.db #0x00	; 0
      00BFD9 00                    5742 	.db #0x00	; 0
      00BFDA 00                    5743 	.db #0x00	; 0
      00BFDB 00                    5744 	.db #0x00	; 0
      00BFDC 00                    5745 	.db #0x00	; 0
      00BFDD 04                    5746 	.db #0x04	; 4
      00BFDE 00                    5747 	.db #0x00	; 0
      00BFDF 04                    5748 	.db #0x04	; 4
      00BFE0 F0                    5749 	.db #0xf0	; 240
      00BFE1 1F                    5750 	.db #0x1f	; 31
      00BFE2 08                    5751 	.db #0x08	; 8
      00BFE3 04                    5752 	.db #0x04	; 4
      00BFE4 08                    5753 	.db #0x08	; 8
      00BFE5 04                    5754 	.db #0x04	; 4
      00BFE6 08                    5755 	.db #0x08	; 8
      00BFE7 04                    5756 	.db #0x04	; 4
      00BFE8 08                    5757 	.db #0x08	; 8
      00BFE9 04                    5758 	.db #0x04	; 4
      00BFEA 00                    5759 	.db #0x00	; 0
      00BFEB 00                    5760 	.db #0x00	; 0
      00BFEC 00                    5761 	.db #0x00	; 0
      00BFED 00                    5762 	.db #0x00	; 0
      00BFEE 00                    5763 	.db #0x00	; 0
      00BFEF 00                    5764 	.db #0x00	; 0
      00BFF0 F0                    5765 	.db #0xf0	; 240
      00BFF1 07                    5766 	.db #0x07	; 7
      00BFF2 08                    5767 	.db #0x08	; 8
      00BFF3 00                    5768 	.db #0x00	; 0
      00BFF4 08                    5769 	.db #0x08	; 8
      00BFF5 00                    5770 	.db #0x00	; 0
      00BFF6 08                    5771 	.db #0x08	; 8
      00BFF7 00                    5772 	.db #0x00	; 0
      00BFF8 10                    5773 	.db #0x10	; 16
      00BFF9 00                    5774 	.db #0x00	; 0
      00BFFA F8                    5775 	.db #0xf8	; 248
      00BFFB 07                    5776 	.db #0x07	; 7
      00BFFC 00                    5777 	.db #0x00	; 0
      00BFFD 00                    5778 	.db #0x00	; 0
      00BFFE 00                    5779 	.db #0x00	; 0
      00BFFF 00                    5780 	.db #0x00	; 0
      00C000 00                    5781 	.db #0x00	; 0
      00C001 00                    5782 	.db #0x00	; 0
      00C002 00                    5783 	.db #0x00	; 0
      00C003 04                    5784 	.db #0x04	; 4
      00C004 80                    5785 	.db #0x80	; 128
      00C005 03                    5786 	.db #0x03	; 3
      00C006 60                    5787 	.db #0x60	; 96
      00C007 00                    5788 	.db #0x00	; 0
      00C008 18                    5789 	.db #0x18	; 24
      00C009 00                    5790 	.db #0x00	; 0
      00C00A 08                    5791 	.db #0x08	; 8
      00C00B 00                    5792 	.db #0x00	; 0
      00C00C 30                    5793 	.db #0x30	; 48	'0'
      00C00D 00                    5794 	.db #0x00	; 0
      00C00E C0                    5795 	.db #0xc0	; 192
      00C00F 00                    5796 	.db #0x00	; 0
      00C010 00                    5797 	.db #0x00	; 0
      00C011 03                    5798 	.db #0x03	; 3
      00C012 00                    5799 	.db #0x00	; 0
      00C013 04                    5800 	.db #0x04	; 4
      00C014 00                    5801 	.db #0x00	; 0
      00C015 00                    5802 	.db #0x00	; 0
      00C016 00                    5803 	.db #0x00	; 0
      00C017 06                    5804 	.db #0x06	; 6
      00C018 E0                    5805 	.db #0xe0	; 224
      00C019 01                    5806 	.db #0x01	; 1
      00C01A 18                    5807 	.db #0x18	; 24
      00C01B 00                    5808 	.db #0x00	; 0
      00C01C 70                    5809 	.db #0x70	; 112	'p'
      00C01D 00                    5810 	.db #0x00	; 0
      00C01E 80                    5811 	.db #0x80	; 128
      00C01F 03                    5812 	.db #0x03	; 3
      00C020 80                    5813 	.db #0x80	; 128
      00C021 01                    5814 	.db #0x01	; 1
      00C022 70                    5815 	.db #0x70	; 112	'p'
      00C023 00                    5816 	.db #0x00	; 0
      00C024 18                    5817 	.db #0x18	; 24
      00C025 00                    5818 	.db #0x00	; 0
      00C026 E0                    5819 	.db #0xe0	; 224
      00C027 01                    5820 	.db #0x01	; 1
      00C028 00                    5821 	.db #0x00	; 0
      00C029 06                    5822 	.db #0x06	; 6
      00C02A 00                    5823 	.db #0x00	; 0
      00C02B 00                    5824 	.db #0x00	; 0
      00C02C 08                    5825 	.db #0x08	; 8
      00C02D 04                    5826 	.db #0x04	; 4
      00C02E 10                    5827 	.db #0x10	; 16
      00C02F 02                    5828 	.db #0x02	; 2
      00C030 20                    5829 	.db #0x20	; 32
      00C031 01                    5830 	.db #0x01	; 1
      00C032 C0                    5831 	.db #0xc0	; 192
      00C033 00                    5832 	.db #0x00	; 0
      00C034 C0                    5833 	.db #0xc0	; 192
      00C035 00                    5834 	.db #0x00	; 0
      00C036 20                    5835 	.db #0x20	; 32
      00C037 01                    5836 	.db #0x01	; 1
      00C038 10                    5837 	.db #0x10	; 16
      00C039 02                    5838 	.db #0x02	; 2
      00C03A 08                    5839 	.db #0x08	; 8
      00C03B 04                    5840 	.db #0x04	; 4
      00C03C 00                    5841 	.db #0x00	; 0
      00C03D 00                    5842 	.db #0x00	; 0
      00C03E 01                    5843 	.db #0x01	; 1
      00C03F 04                    5844 	.db #0x04	; 4
      00C040 01                    5845 	.db #0x01	; 1
      00C041 03                    5846 	.db #0x03	; 3
      00C042 C1                    5847 	.db #0xc1	; 193
      00C043 00                    5848 	.db #0x00	; 0
      00C044 62                    5849 	.db #0x62	; 98	'b'
      00C045 00                    5850 	.db #0x00	; 0
      00C046 1C                    5851 	.db #0x1c	; 28
      00C047 00                    5852 	.db #0x00	; 0
      00C048 18                    5853 	.db #0x18	; 24
      00C049 00                    5854 	.db #0x00	; 0
      00C04A 60                    5855 	.db #0x60	; 96
      00C04B 00                    5856 	.db #0x00	; 0
      00C04C 80                    5857 	.db #0x80	; 128
      00C04D 00                    5858 	.db #0x00	; 0
      00C04E 00                    5859 	.db #0x00	; 0
      00C04F 03                    5860 	.db #0x03	; 3
      00C050 00                    5861 	.db #0x00	; 0
      00C051 04                    5862 	.db #0x04	; 4
      00C052 00                    5863 	.db #0x00	; 0
      00C053 00                    5864 	.db #0x00	; 0
      00C054 08                    5865 	.db #0x08	; 8
      00C055 04                    5866 	.db #0x04	; 4
      00C056 18                    5867 	.db #0x18	; 24
      00C057 04                    5868 	.db #0x04	; 4
      00C058 28                    5869 	.db #0x28	; 40
      00C059 04                    5870 	.db #0x04	; 4
      00C05A 48                    5871 	.db #0x48	; 72	'H'
      00C05B 04                    5872 	.db #0x04	; 4
      00C05C 88                    5873 	.db #0x88	; 136
      00C05D 04                    5874 	.db #0x04	; 4
      00C05E 08                    5875 	.db #0x08	; 8
      00C05F 05                    5876 	.db #0x05	; 5
      00C060 08                    5877 	.db #0x08	; 8
      00C061 06                    5878 	.db #0x06	; 6
      00C062 08                    5879 	.db #0x08	; 8
      00C063 04                    5880 	.db #0x04	; 4
      00C064 00                    5881 	.db #0x00	; 0
      00C065 00                    5882 	.db #0x00	; 0
      00C066 00                    5883 	.db #0x00	; 0
      00C067 00                    5884 	.db #0x00	; 0
      00C068 00                    5885 	.db #0x00	; 0
      00C069 00                    5886 	.db #0x00	; 0
      00C06A 80                    5887 	.db #0x80	; 128
      00C06B 00                    5888 	.db #0x00	; 0
      00C06C 80                    5889 	.db #0x80	; 128
      00C06D 00                    5890 	.db #0x00	; 0
      00C06E 7C                    5891 	.db #0x7c	; 124
      00C06F 3F                    5892 	.db #0x3f	; 63
      00C070 02                    5893 	.db #0x02	; 2
      00C071 40                    5894 	.db #0x40	; 64
      00C072 02                    5895 	.db #0x02	; 2
      00C073 40                    5896 	.db #0x40	; 64
      00C074 02                    5897 	.db #0x02	; 2
      00C075 40                    5898 	.db #0x40	; 64
      00C076 00                    5899 	.db #0x00	; 0
      00C077 00                    5900 	.db #0x00	; 0
      00C078 00                    5901 	.db #0x00	; 0
      00C079 00                    5902 	.db #0x00	; 0
      00C07A 00                    5903 	.db #0x00	; 0
      00C07B 00                    5904 	.db #0x00	; 0
      00C07C 00                    5905 	.db #0x00	; 0
      00C07D 00                    5906 	.db #0x00	; 0
      00C07E 00                    5907 	.db #0x00	; 0
      00C07F 00                    5908 	.db #0x00	; 0
      00C080 00                    5909 	.db #0x00	; 0
      00C081 00                    5910 	.db #0x00	; 0
      00C082 FE                    5911 	.db #0xfe	; 254
      00C083 7F                    5912 	.db #0x7f	; 127
      00C084 00                    5913 	.db #0x00	; 0
      00C085 00                    5914 	.db #0x00	; 0
      00C086 00                    5915 	.db #0x00	; 0
      00C087 00                    5916 	.db #0x00	; 0
      00C088 00                    5917 	.db #0x00	; 0
      00C089 00                    5918 	.db #0x00	; 0
      00C08A 00                    5919 	.db #0x00	; 0
      00C08B 00                    5920 	.db #0x00	; 0
      00C08C 00                    5921 	.db #0x00	; 0
      00C08D 00                    5922 	.db #0x00	; 0
      00C08E 00                    5923 	.db #0x00	; 0
      00C08F 00                    5924 	.db #0x00	; 0
      00C090 00                    5925 	.db #0x00	; 0
      00C091 00                    5926 	.db #0x00	; 0
      00C092 02                    5927 	.db #0x02	; 2
      00C093 40                    5928 	.db #0x40	; 64
      00C094 02                    5929 	.db #0x02	; 2
      00C095 40                    5930 	.db #0x40	; 64
      00C096 02                    5931 	.db #0x02	; 2
      00C097 40                    5932 	.db #0x40	; 64
      00C098 7C                    5933 	.db #0x7c	; 124
      00C099 3F                    5934 	.db #0x3f	; 63
      00C09A 80                    5935 	.db #0x80	; 128
      00C09B 00                    5936 	.db #0x00	; 0
      00C09C 80                    5937 	.db #0x80	; 128
      00C09D 00                    5938 	.db #0x00	; 0
      00C09E 00                    5939 	.db #0x00	; 0
      00C09F 00                    5940 	.db #0x00	; 0
      00C0A0 00                    5941 	.db #0x00	; 0
      00C0A1 00                    5942 	.db #0x00	; 0
      00C0A2 C0                    5943 	.db #0xc0	; 192
      00C0A3 00                    5944 	.db #0x00	; 0
      00C0A4 00                    5945 	.db #0x00	; 0
      00C0A5 01                    5946 	.db #0x01	; 1
      00C0A6 00                    5947 	.db #0x00	; 0
      00C0A7 01                    5948 	.db #0x01	; 1
      00C0A8 00                    5949 	.db #0x00	; 0
      00C0A9 01                    5950 	.db #0x01	; 1
      00C0AA 80                    5951 	.db #0x80	; 128
      00C0AB 00                    5952 	.db #0x00	; 0
      00C0AC 80                    5953 	.db #0x80	; 128
      00C0AD 00                    5954 	.db #0x00	; 0
      00C0AE 40                    5955 	.db #0x40	; 64
      00C0AF 00                    5956 	.db #0x00	; 0
      00C0B0 40                    5957 	.db #0x40	; 64
      00C0B1 00                    5958 	.db #0x00	; 0
      00C0B2 40                    5959 	.db #0x40	; 64
      00C0B3 00                    5960 	.db #0x00	; 0
      00C0B4 80                    5961 	.db #0x80	; 128
      00C0B5 01                    5962 	.db #0x01	; 1
      00C0B6 00                    5963 	.db #0x00	; 0
      00C0B7 00                    5964 	.db #0x00	; 0
      00C0B8 F8                    5965 	.db #0xf8	; 248
      00C0B9 01                    5966 	.db #0x01	; 1
      00C0BA 08                    5967 	.db #0x08	; 8
      00C0BB 03                    5968 	.db #0x03	; 3
      00C0BC 08                    5969 	.db #0x08	; 8
      00C0BD 04                    5970 	.db #0x04	; 4
      00C0BE 08                    5971 	.db #0x08	; 8
      00C0BF 08                    5972 	.db #0x08	; 8
      00C0C0 08                    5973 	.db #0x08	; 8
      00C0C1 04                    5974 	.db #0x04	; 4
      00C0C2 08                    5975 	.db #0x08	; 8
      00C0C3 03                    5976 	.db #0x03	; 3
      00C0C4 F8                    5977 	.db #0xf8	; 248
      00C0C5 01                    5978 	.db #0x01	; 1
      00C0C6 00                    5979 	.db #0x00	; 0
      00C0C7 00                    5980 	.db #0x00	; 0
      00C0C8 00                    5981 	.db #0x00	; 0
      00C0C9 00                    5982 	.db #0x00	; 0
                                   5983 	.area XINIT   (CODE)
      00D4BD                       5984 __xinit__epdCharSize:
      00D4BD 01                    5985 	.db #0x01	; 1
      00D4BE                       5986 __xinit__directionY:
      00D4BE 01                    5987 	.db #0x01	;  1
      00D4BF                       5988 __xinit__fontCurXpos:
      00D4BF 00 00                 5989 	.byte #0x00, #0x00	; 0
      00D4C1                       5990 __xinit__fontCurYpos:
      00D4C1 00 00                 5991 	.byte #0x00, #0x00	; 0
      00D4C3                       5992 __xinit__currentLut:
      00D4C3 00                    5993 	.db #0x00	; 0
      00D4C4                       5994 __xinit__dispLutSize:
      00D4C4 00                    5995 	.db #0x00	; 0
      00D4C5                       5996 __xinit__drawDirection:
      00D4C5 00                    5997 	.db #0x00	;  0
      00D4C6                       5998 __xinit__isInited:
      00D4C6 00                    5999 	.db #0x00	;  0
      00D4C7                       6000 __xinit__epdGPIOActive:
      00D4C7 00                    6001 	.db #0x00	;  0
      00D4C8                       6002 __xinit__waveform10:
      00D4C8 6A E4 00              6003 	.byte _waveformbuffer, (_waveformbuffer >> 8),#0x00
      00D4CB                       6004 __xinit__waveform7:
      00D4CB 6A E4 00              6005 	.byte _waveformbuffer, (_waveformbuffer >> 8),#0x00
                                   6006 	.area CABS    (ABS,CODE)
