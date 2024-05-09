                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module board
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _malloc
                                     12 	.globl _wdtDeviceReset
                                     13 	.globl _flashWrite
                                     14 	.globl _flashRead
                                     15 	.globl _spiInit
                                     16 	.globl _pr
                                     17 	.globl _UART_TXE
                                     18 	.globl _UART_RXF
                                     19 	.globl _IEN_EA
                                     20 	.globl _IEN_RF2
                                     21 	.globl _IEN_RF1
                                     22 	.globl _IEN_TMR1
                                     23 	.globl _IEN_TMR0
                                     24 	.globl _IEN_UART0
                                     25 	.globl _P2_7
                                     26 	.globl _P2_6
                                     27 	.globl _P2_5
                                     28 	.globl _P2_4
                                     29 	.globl _P2_3
                                     30 	.globl _P2_2
                                     31 	.globl _P2_1
                                     32 	.globl _P2_0
                                     33 	.globl _P1_7
                                     34 	.globl _P1_6
                                     35 	.globl _P1_5
                                     36 	.globl _P1_4
                                     37 	.globl _P1_3
                                     38 	.globl _P1_2
                                     39 	.globl _P1_1
                                     40 	.globl _P1_0
                                     41 	.globl _P0_7
                                     42 	.globl _P0_6
                                     43 	.globl _P0_5
                                     44 	.globl _P0_4
                                     45 	.globl _P0_3
                                     46 	.globl _P0_2
                                     47 	.globl _P0_1
                                     48 	.globl _P0_0
                                     49 	.globl _CFGPAGE
                                     50 	.globl _TCON2
                                     51 	.globl _SETTINGS
                                     52 	.globl _TRIGGER
                                     53 	.globl _UNK_C1
                                     54 	.globl _RADIO_GOTLEN
                                     55 	.globl _RADIO_INITSEQ3
                                     56 	.globl _RADIO_RXLEN
                                     57 	.globl _RADIO_RXPTRH
                                     58 	.globl _RADIO_RXPTRL
                                     59 	.globl _RADIO_INITSEQ5
                                     60 	.globl _RADIO_INITSEQ4
                                     61 	.globl _RADIO_INITSEQ0
                                     62 	.globl _RADIO_TXLEN
                                     63 	.globl _RADIO_INITSEQ2
                                     64 	.globl _RADIO_INITSEQ1
                                     65 	.globl _RADIO_TXPTRH
                                     66 	.globl _RADIO_TXPTRL
                                     67 	.globl _TEMPCAL6
                                     68 	.globl _TEMPCAL5
                                     69 	.globl _TEMPCAL4
                                     70 	.globl _TEMPCAL3
                                     71 	.globl _TEMPRETL
                                     72 	.globl _TEMPRETH
                                     73 	.globl _TEMPCFG
                                     74 	.globl _TEMPCAL2
                                     75 	.globl _TEMPCAL1
                                     76 	.globl _FWRTHREE
                                     77 	.globl _FWRLENH
                                     78 	.globl _FWRLENL
                                     79 	.globl _FWRDSTH
                                     80 	.globl _FWRDSTL
                                     81 	.globl _FWRSRCH
                                     82 	.globl _FWRSRCL
                                     83 	.globl _FPGNO
                                     84 	.globl _T1
                                     85 	.globl _T0
                                     86 	.globl _TH1
                                     87 	.globl _TH0
                                     88 	.globl _TL1
                                     89 	.globl _TL0
                                     90 	.globl _TMOD
                                     91 	.globl _TCON
                                     92 	.globl _UARTBRGH
                                     93 	.globl _UARTBRGL
                                     94 	.globl _UARTBUF
                                     95 	.globl _UARTSTA
                                     96 	.globl _I2CUNKNOWN
                                     97 	.globl _I2CSPEED
                                     98 	.globl _I2CCTL
                                     99 	.globl _I2CBUF
                                    100 	.globl _I2CSTATE
                                    101 	.globl _SPIRX
                                    102 	.globl _SPITX
                                    103 	.globl _SPIENA
                                    104 	.globl _SPICFG
                                    105 	.globl _SPIUNKNOWN
                                    106 	.globl _WDTCONF
                                    107 	.globl _WDTRSTVALH
                                    108 	.globl _WDTRSTVALM
                                    109 	.globl _WDTRSTVALL
                                    110 	.globl _WDTPET
                                    111 	.globl _WDTENA
                                    112 	.globl _RESET
                                    113 	.globl _CLKEN
                                    114 	.globl _CLKSPEED
                                    115 	.globl _IEN1
                                    116 	.globl _IEN0
                                    117 	.globl _XPAGE
                                    118 	.globl _P2PULL
                                    119 	.globl _P1PULL
                                    120 	.globl _P0PULL
                                    121 	.globl _P2DIR
                                    122 	.globl _P1DIR
                                    123 	.globl _P0DIR
                                    124 	.globl _P2FUNC
                                    125 	.globl _P1FUNC
                                    126 	.globl _P0FUNC
                                    127 	.globl _P2CHSTA
                                    128 	.globl _P1CHSTA
                                    129 	.globl _P0CHSTA
                                    130 	.globl _P2INTEN
                                    131 	.globl _P1INTEN
                                    132 	.globl _P0INTEN
                                    133 	.globl _P2LVLSEL
                                    134 	.globl _P1LVLSEL
                                    135 	.globl _P0LVLSEL
                                    136 	.globl _P2
                                    137 	.globl _P1
                                    138 	.globl _P0
                                    139 	.globl _PERFMON4
                                    140 	.globl _PCL
                                    141 	.globl _PCH
                                    142 	.globl _PERFMON1
                                    143 	.globl _PERFMON0
                                    144 	.globl _PCON
                                    145 	.globl _DPS
                                    146 	.globl _DPH1
                                    147 	.globl _DPL1
                                    148 	.globl _DPH
                                    149 	.globl _DPL
                                    150 	.globl _ACC
                                    151 	.globl _B
                                    152 	.globl _powerPortsDownForSleep
                                    153 	.globl _boardInit
                                    154 	.globl _boardGetOwnMac
                                    155 	.globl _selfUpdate
                                    156 ;--------------------------------------------------------
                                    157 ; special function registers
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           0000F0   161 _B	=	0x00f0
                           0000E0   162 _ACC	=	0x00e0
                           000082   163 _DPL	=	0x0082
                           000083   164 _DPH	=	0x0083
                           000084   165 _DPL1	=	0x0084
                           000085   166 _DPH1	=	0x0085
                           000092   167 _DPS	=	0x0092
                           000087   168 _PCON	=	0x0087
                           0000B2   169 _PERFMON0	=	0x00b2
                           0000B3   170 _PERFMON1	=	0x00b3
                           0000B4   171 _PCH	=	0x00b4
                           0000B5   172 _PCL	=	0x00b5
                           0000B6   173 _PERFMON4	=	0x00b6
                           000080   174 _P0	=	0x0080
                           000090   175 _P1	=	0x0090
                           0000A0   176 _P2	=	0x00a0
                           0000A3   177 _P0LVLSEL	=	0x00a3
                           0000A4   178 _P1LVLSEL	=	0x00a4
                           0000A5   179 _P2LVLSEL	=	0x00a5
                           0000A6   180 _P0INTEN	=	0x00a6
                           0000A7   181 _P1INTEN	=	0x00a7
                           0000A9   182 _P2INTEN	=	0x00a9
                           0000AA   183 _P0CHSTA	=	0x00aa
                           0000AB   184 _P1CHSTA	=	0x00ab
                           0000AC   185 _P2CHSTA	=	0x00ac
                           0000AD   186 _P0FUNC	=	0x00ad
                           0000AE   187 _P1FUNC	=	0x00ae
                           0000AF   188 _P2FUNC	=	0x00af
                           0000B9   189 _P0DIR	=	0x00b9
                           0000BA   190 _P1DIR	=	0x00ba
                           0000BB   191 _P2DIR	=	0x00bb
                           0000BC   192 _P0PULL	=	0x00bc
                           0000BD   193 _P1PULL	=	0x00bd
                           0000BE   194 _P2PULL	=	0x00be
                           0000A0   195 _XPAGE	=	0x00a0
                           0000A8   196 _IEN0	=	0x00a8
                           0000A1   197 _IEN1	=	0x00a1
                           00008E   198 _CLKSPEED	=	0x008e
                           0000B7   199 _CLKEN	=	0x00b7
                           00008F   200 _RESET	=	0x008f
                           0000BA   201 _WDTENA	=	0x00ba
                           0000BB   202 _WDTPET	=	0x00bb
                           0000BC   203 _WDTRSTVALL	=	0x00bc
                           0000BD   204 _WDTRSTVALM	=	0x00bd
                           0000BE   205 _WDTRSTVALH	=	0x00be
                           0000BF   206 _WDTCONF	=	0x00bf
                           0000EB   207 _SPIUNKNOWN	=	0x00eb
                           0000EC   208 _SPICFG	=	0x00ec
                           0000ED   209 _SPIENA	=	0x00ed
                           0000EE   210 _SPITX	=	0x00ee
                           0000EF   211 _SPIRX	=	0x00ef
                           000091   212 _I2CSTATE	=	0x0091
                           000094   213 _I2CBUF	=	0x0094
                           000095   214 _I2CCTL	=	0x0095
                           000096   215 _I2CSPEED	=	0x0096
                           0000A2   216 _I2CUNKNOWN	=	0x00a2
                           000098   217 _UARTSTA	=	0x0098
                           000099   218 _UARTBUF	=	0x0099
                           00009A   219 _UARTBRGL	=	0x009a
                           00009B   220 _UARTBRGH	=	0x009b
                           000088   221 _TCON	=	0x0088
                           000089   222 _TMOD	=	0x0089
                           00008A   223 _TL0	=	0x008a
                           00008B   224 _TL1	=	0x008b
                           00008C   225 _TH0	=	0x008c
                           00008D   226 _TH1	=	0x008d
                           008C8A   227 _T0	=	0x8c8a
                           008D8B   228 _T1	=	0x8d8b
                           0000D8   229 _FPGNO	=	0x00d8
                           0000D9   230 _FWRSRCL	=	0x00d9
                           0000DA   231 _FWRSRCH	=	0x00da
                           0000DB   232 _FWRDSTL	=	0x00db
                           0000DC   233 _FWRDSTH	=	0x00dc
                           0000DD   234 _FWRLENL	=	0x00dd
                           0000DE   235 _FWRLENH	=	0x00de
                           0000DF   236 _FWRTHREE	=	0x00df
                           0000E6   237 _TEMPCAL1	=	0x00e6
                           0000E7   238 _TEMPCAL2	=	0x00e7
                           0000F7   239 _TEMPCFG	=	0x00f7
                           0000F8   240 _TEMPRETH	=	0x00f8
                           0000F9   241 _TEMPRETL	=	0x00f9
                           0000FB   242 _TEMPCAL3	=	0x00fb
                           0000FC   243 _TEMPCAL4	=	0x00fc
                           0000FD   244 _TEMPCAL5	=	0x00fd
                           0000FE   245 _TEMPCAL6	=	0x00fe
                           0000C9   246 _RADIO_TXPTRL	=	0x00c9
                           0000CA   247 _RADIO_TXPTRH	=	0x00ca
                           0000CB   248 _RADIO_INITSEQ1	=	0x00cb
                           0000CC   249 _RADIO_INITSEQ2	=	0x00cc
                           0000CD   250 _RADIO_TXLEN	=	0x00cd
                           0000CE   251 _RADIO_INITSEQ0	=	0x00ce
                           0000D1   252 _RADIO_INITSEQ4	=	0x00d1
                           0000D2   253 _RADIO_INITSEQ5	=	0x00d2
                           0000D3   254 _RADIO_RXPTRL	=	0x00d3
                           0000D4   255 _RADIO_RXPTRH	=	0x00d4
                           0000D5   256 _RADIO_RXLEN	=	0x00d5
                           0000D6   257 _RADIO_INITSEQ3	=	0x00d6
                           0000FA   258 _RADIO_GOTLEN	=	0x00fa
                           0000C1   259 _UNK_C1	=	0x00c1
                           0000D7   260 _TRIGGER	=	0x00d7
                           0000C7   261 _SETTINGS	=	0x00c7
                           0000CF   262 _TCON2	=	0x00cf
                           0000FF   263 _CFGPAGE	=	0x00ff
                                    264 ;--------------------------------------------------------
                                    265 ; special function bits
                                    266 ;--------------------------------------------------------
                                    267 	.area RSEG    (ABS,DATA)
      000000                        268 	.org 0x0000
                           000080   269 _P0_0	=	0x0080
                           000081   270 _P0_1	=	0x0081
                           000082   271 _P0_2	=	0x0082
                           000083   272 _P0_3	=	0x0083
                           000084   273 _P0_4	=	0x0084
                           000085   274 _P0_5	=	0x0085
                           000086   275 _P0_6	=	0x0086
                           000087   276 _P0_7	=	0x0087
                           000090   277 _P1_0	=	0x0090
                           000091   278 _P1_1	=	0x0091
                           000092   279 _P1_2	=	0x0092
                           000093   280 _P1_3	=	0x0093
                           000094   281 _P1_4	=	0x0094
                           000095   282 _P1_5	=	0x0095
                           000096   283 _P1_6	=	0x0096
                           000097   284 _P1_7	=	0x0097
                           0000A0   285 _P2_0	=	0x00a0
                           0000A1   286 _P2_1	=	0x00a1
                           0000A2   287 _P2_2	=	0x00a2
                           0000A3   288 _P2_3	=	0x00a3
                           0000A4   289 _P2_4	=	0x00a4
                           0000A5   290 _P2_5	=	0x00a5
                           0000A6   291 _P2_6	=	0x00a6
                           0000A7   292 _P2_7	=	0x00a7
                           0000A8   293 _IEN_UART0	=	0x00a8
                           0000A9   294 _IEN_TMR0	=	0x00a9
                           0000AB   295 _IEN_TMR1	=	0x00ab
                           0000AC   296 _IEN_RF1	=	0x00ac
                           0000AD   297 _IEN_RF2	=	0x00ad
                           0000AF   298 _IEN_EA	=	0x00af
                           000098   299 _UART_RXF	=	0x0098
                           000099   300 _UART_TXE	=	0x0099
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable register banks
                                    303 ;--------------------------------------------------------
                                    304 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        305 	.ds 8
                                    306 ;--------------------------------------------------------
                                    307 ; overlayable bit register bank
                                    308 ;--------------------------------------------------------
                                    309 	.area BIT_BANK	(REL,OVR,DATA)
      000023                        310 bits:
      000023                        311 	.ds 1
                           008000   312 	b0 = bits[0]
                           008100   313 	b1 = bits[1]
                           008200   314 	b2 = bits[2]
                           008300   315 	b3 = bits[3]
                           008400   316 	b4 = bits[4]
                           008500   317 	b5 = bits[5]
                           008600   318 	b6 = bits[6]
                           008700   319 	b7 = bits[7]
                                    320 ;--------------------------------------------------------
                                    321 ; internal ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area DSEG    (DATA)
                                    324 ;--------------------------------------------------------
                                    325 ; overlayable items in internal ram
                                    326 ;--------------------------------------------------------
                                    327 ;--------------------------------------------------------
                                    328 ; indirectly addressable internal ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area ISEG    (DATA)
                           000000   331 _R0	=	0x0000
                           000001   332 _R1	=	0x0001
                           000002   333 _R2	=	0x0002
                           000003   334 _R3	=	0x0003
                           000004   335 _R4	=	0x0004
                           000005   336 _R5	=	0x0005
                           000006   337 _R6	=	0x0006
                           000007   338 _R7	=	0x0007
                                    339 ;--------------------------------------------------------
                                    340 ; absolute internal ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area IABS    (ABS,DATA)
                                    343 	.area IABS    (ABS,DATA)
                                    344 ;--------------------------------------------------------
                                    345 ; bit data
                                    346 ;--------------------------------------------------------
                                    347 	.area BSEG    (BIT)
      000017                        348 _boardGetOwnMac_sloc0_1_0:
      000017                        349 	.ds 1
                                    350 ;--------------------------------------------------------
                                    351 ; paged external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area PSEG    (PAG,XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XSEG    (XDATA)
                           00DF48   358 _RADIO_command	=	0xdf48
                           00DF70   359 _RADIO_calibration_70	=	0xdf70
                           00DF71   360 _RADIO_calibration_71	=	0xdf71
                           00DF80   361 _RADIO_FLAGS	=	0xdf80
                           00DF81   362 _RADIO_calibration_81	=	0xdf81
                           00DF83   363 _RADIO_unk_83	=	0xdf83
                           00DF84   364 _RADIO_currentRSSI	=	0xdf84
                           00DF86   365 _RADIO_calibration_86	=	0xdf86
                           00DF88   366 _RADIO_ownMac_7	=	0xdf88
                           00DF89   367 _RADIO_ownMac_6	=	0xdf89
                           00DF8A   368 _RADIO_ownMac_5	=	0xdf8a
                           00DF8B   369 _RADIO_ownMac_4	=	0xdf8b
                           00DF8C   370 _RADIO_ownMac_3	=	0xdf8c
                           00DF8D   371 _RADIO_ownMac_2	=	0xdf8d
                           00DF8E   372 _RADIO_ownMac_1	=	0xdf8e
                           00DF8F   373 _RADIO_ownMac_0	=	0xdf8f
                           00DF90   374 _RADIO_PANID_Hi	=	0xdf90
                           00DF91   375 _RADIO_PANID_Lo	=	0xdf91
                           00DF92   376 _RADIO_ownShortAddress_Hi	=	0xdf92
                           00DF93   377 _RADIO_ownShortAddress_Lo	=	0xdf93
                           00DF94   378 _RADIO_calibration_94	=	0xdf94
                           00DF95   379 _RADIO_calibration_95	=	0xdf95
                           00DF96   380 _RADIO_calibration_96	=	0xdf96
                           00DF98   381 _RADIO_rxFirstByte	=	0xdf98
                           00DF9B   382 _RADIO_curRfState	=	0xdf9b
                           00DF9D   383 _RADIO_calibration_9D	=	0xdf9d
                           00DFA1   384 _RADIO_calibration_A1	=	0xdfa1
                           00DFA5   385 _RADIO_unk_rxAckSta	=	0xdfa5
                           00DFA6   386 _RADIO_unk_A6	=	0xdfa6
                           00DFAD   387 _RADIO_IRQ4_pending	=	0xdfad
                           00DFAF   388 _RADIO_unk_AF	=	0xdfaf
                           00DFC0   389 _RADIO_channel	=	0xdfc0
                           00DFC1   390 _RADIO_unk_C1	=	0xdfc1
                           00DFC2   391 _RADIO_calibration_C2	=	0xdfc2
                           00DFC3   392 _RADIO_calibration_C3	=	0xdfc3
                           00DFC4   393 _RADIO_calibration_C4	=	0xdfc4
                           00DFC5   394 _RADIO_calibration_C5	=	0xdfc5
                           00DFC6   395 _RADIO_calibration_C6	=	0xdfc6
                           00DFC7   396 _RADIO_calibration_C7	=	0xdfc7
                           00DFC8   397 _RADIO_unk_C8	=	0xdfc8
                           00DFC9   398 _RADIO_txPower	=	0xdfc9
                           00DFCA   399 _RADIO_unk_CA	=	0xdfca
                           00DFCB   400 _RADIO_perChannelSetting2	=	0xdfcb
                           00DFCD   401 _RADIO_unk_CD	=	0xdfcd
                           00DFCE   402 _RADIO_unk_CE	=	0xdfce
                           00DFCF   403 _RADIO_calibration_CF	=	0xdfcf
                           00DFD0   404 _RADIO_calibration_D0	=	0xdfd0
                           00DFD1   405 _RADIO_calibration_D1	=	0xdfd1
                           00DFD2   406 _RADIO_calibration_D2	=	0xdfd2
                           00DFD3   407 _RADIO_calibration_D3	=	0xdfd3
                           00DFD4   408 _RADIO_calibration_D4	=	0xdfd4
                           00DFD5   409 _RADIO_calibration_D5	=	0xdfd5
                           00DFD7   410 _RADIO_unk_D7	=	0xdfd7
                           00DFD8   411 _RADIO_unk_D8	=	0xdfd8
                           00DFD9   412 _RADIO_SleepTimerHi	=	0xdfd9
                           00DFDA   413 _RADIO_SleepTimerMid	=	0xdfda
                           00DFDB   414 _RADIO_SleepTimerLo	=	0xdfdb
                           00DFE2   415 _RADIO_unk_E2	=	0xdfe2
                           00DFF0   416 _RADIO_unk_F0	=	0xdff0
                           00DFF3   417 _RADIO_SleepTimerSettings	=	0xdff3
                           00DFF4   418 _RADIO_RadioPowerCtl	=	0xdff4
                           00DFFB   419 _RADIO_Wake_Reason	=	0xdffb
                           00DFFD   420 _RADIO_perChannelSetting1	=	0xdffd
      00E448                        421 _boardGetOwnMac_mac_65536_82:
      00E448                        422 	.ds 2
                                    423 ;--------------------------------------------------------
                                    424 ; absolute external ram data
                                    425 ;--------------------------------------------------------
                                    426 	.area XABS    (ABS,XDATA)
                                    427 ;--------------------------------------------------------
                                    428 ; external initialized ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area XISEG   (XDATA)
                                    431 	.area HOME    (CODE)
                                    432 	.area GSINIT0 (CODE)
                                    433 	.area GSINIT1 (CODE)
                                    434 	.area GSINIT2 (CODE)
                                    435 	.area GSINIT3 (CODE)
                                    436 	.area GSINIT4 (CODE)
                                    437 	.area GSINIT5 (CODE)
                                    438 	.area GSINIT  (CODE)
                                    439 	.area GSFINAL (CODE)
                                    440 	.area CSEG    (CODE)
                                    441 ;--------------------------------------------------------
                                    442 ; global & static initialisations
                                    443 ;--------------------------------------------------------
                                    444 	.area HOME    (CODE)
                                    445 	.area GSINIT  (CODE)
                                    446 	.area GSFINAL (CODE)
                                    447 	.area GSINIT  (CODE)
                                    448 ;--------------------------------------------------------
                                    449 ; Home
                                    450 ;--------------------------------------------------------
                                    451 	.area HOME    (CODE)
                                    452 	.area HOME    (CODE)
                                    453 ;--------------------------------------------------------
                                    454 ; code
                                    455 ;--------------------------------------------------------
                                    456 	.area CSEG    (CODE)
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'powerPortsDownForSleep'
                                    459 ;------------------------------------------------------------
                                    460 ;	board/zbs29_uc8151/../boardZBS29common.c:13: void powerPortsDownForSleep(void)
                                    461 ;	-----------------------------------------
                                    462 ;	 function powerPortsDownForSleep
                                    463 ;	-----------------------------------------
      007961                        464 _powerPortsDownForSleep:
                           000007   465 	ar7 = 0x07
                           000006   466 	ar6 = 0x06
                           000005   467 	ar5 = 0x05
                           000004   468 	ar4 = 0x04
                           000003   469 	ar3 = 0x03
                           000002   470 	ar2 = 0x02
                           000001   471 	ar1 = 0x01
                           000000   472 	ar0 = 0x00
                                    473 ;	board/zbs29_uc8151/../boardZBS29common.c:15: P0FUNC = 0;
      007961 75 AD 00         [24]  474 	mov	_P0FUNC,#0x00
                                    475 ;	board/zbs29_uc8151/../boardZBS29common.c:16: P1FUNC = 0;
      007964 75 AE 00         [24]  476 	mov	_P1FUNC,#0x00
                                    477 ;	board/zbs29_uc8151/../boardZBS29common.c:17: P2FUNC = 0;
      007967 75 AF 00         [24]  478 	mov	_P2FUNC,#0x00
                                    479 ;	board/zbs29_uc8151/../boardZBS29common.c:18: P0DIR = 0;
      00796A 75 B9 00         [24]  480 	mov	_P0DIR,#0x00
                                    481 ;	board/zbs29_uc8151/../boardZBS29common.c:19: P0 = 0;
      00796D 75 80 00         [24]  482 	mov	_P0,#0x00
                                    483 ;	board/zbs29_uc8151/../boardZBS29common.c:20: P0PULL = 0;
      007970 75 BC 00         [24]  484 	mov	_P0PULL,#0x00
                                    485 ;	board/zbs29_uc8151/../boardZBS29common.c:21: P1DIR = 0;
      007973 75 BA 00         [24]  486 	mov	_P1DIR,#0x00
                                    487 ;	board/zbs29_uc8151/../boardZBS29common.c:22: P1 = 2;
      007976 75 90 02         [24]  488 	mov	_P1,#0x02
                                    489 ;	board/zbs29_uc8151/../boardZBS29common.c:23: P1PULL = 0;
      007979 75 BD 00         [24]  490 	mov	_P1PULL,#0x00
                                    491 ;	board/zbs29_uc8151/../boardZBS29common.c:24: P2DIR = 2;
      00797C 75 BB 02         [24]  492 	mov	_P2DIR,#0x02
                                    493 ;	board/zbs29_uc8151/../boardZBS29common.c:25: P2 =1;
      00797F 75 A0 01         [24]  494 	mov	_P2,#0x01
                                    495 ;	board/zbs29_uc8151/../boardZBS29common.c:26: P2PULL = 0;
      007982 75 BE 00         [24]  496 	mov	_P2PULL,#0x00
                                    497 ;	board/zbs29_uc8151/../boardZBS29common.c:27: }
      007985 22               [24]  498 	ret
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'boardInit'
                                    501 ;------------------------------------------------------------
                                    502 ;	board/zbs29_uc8151/../boardZBS29common.c:29: void boardInit(void)
                                    503 ;	-----------------------------------------
                                    504 ;	 function boardInit
                                    505 ;	-----------------------------------------
      007986                        506 _boardInit:
                                    507 ;	board/zbs29_uc8151/../boardZBS29common.c:32: P0FUNC |= (1 << 0) | (1 << 1) | (1 << 2) | (1 << 6);
      007986 43 AD 47         [24]  508 	orl	_P0FUNC,#0x47
                                    509 ;	board/zbs29_uc8151/../boardZBS29common.c:33: P0DIR = (P0DIR &~ ((1 << 0) | (1 << 1) | (1 << 6))) | (1 << 2);
      007989 74 BC            [12]  510 	mov	a,#0xbc
      00798B 55 B9            [12]  511 	anl	a,_P0DIR
      00798D 44 04            [12]  512 	orl	a,#0x04
      00798F F5 B9            [12]  513 	mov	_P0DIR,a
                                    514 ;	board/zbs29_uc8151/../boardZBS29common.c:36: P0PULL = (P0PULL &~ ((1 << 0) | (1 << 1) | (1 << 6))) | (1 << 2);
      007991 74 BC            [12]  515 	mov	a,#0xbc
      007993 55 BC            [12]  516 	anl	a,_P0PULL
      007995 44 04            [12]  517 	orl	a,#0x04
      007997 F5 BC            [12]  518 	mov	_P0PULL,a
                                    519 ;	board/zbs29_uc8151/../boardZBS29common.c:39: P1FUNC &=~ ((1 << 1) | (1 << 2) | (1 << 7));
      007999 53 AE 79         [24]  520 	anl	_P1FUNC,#0x79
                                    521 ;	board/zbs29_uc8151/../boardZBS29common.c:40: P1DIR &= ~((1 << 1) | (1 << 2) | (1 << 7));
      00799C 53 BA 79         [24]  522 	anl	_P1DIR,#0x79
                                    523 ;	board/zbs29_uc8151/../boardZBS29common.c:43: P2FUNC &= ~((1 << 0) | (1 << 1) | (1 << 2));
      00799F 53 AF F8         [24]  524 	anl	_P2FUNC,#0xf8
                                    525 ;	board/zbs29_uc8151/../boardZBS29common.c:44: P2DIR = (P2DIR &~ ((1 << 0) | (1 << 2))) | (1 << 1);
      0079A2 74 FA            [12]  526 	mov	a,#0xfa
      0079A4 55 BB            [12]  527 	anl	a,_P2DIR
      0079A6 44 02            [12]  528 	orl	a,#0x02
      0079A8 F5 BB            [12]  529 	mov	_P2DIR,a
                                    530 ;	board/zbs29_uc8151/../boardZBS29common.c:47: P1_1 = 1;
                                    531 ;	assignBit
      0079AA D2 91            [12]  532 	setb	_P1_1
                                    533 ;	board/zbs29_uc8151/../boardZBS29common.c:48: P1_7 = 1;
                                    534 ;	assignBit
      0079AC D2 97            [12]  535 	setb	_P1_7
                                    536 ;	board/zbs29_uc8151/../boardZBS29common.c:51: P1_2 = 0;
                                    537 ;	assignBit
      0079AE C2 92            [12]  538 	clr	_P1_2
                                    539 ;	board/zbs29_uc8151/../boardZBS29common.c:53: spiInit();
                                    540 ;	board/zbs29_uc8151/../boardZBS29common.c:54: }
      0079B0 02 5B 57         [24]  541 	ljmp	_spiInit
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'boardGetOwnMac'
                                    544 ;------------------------------------------------------------
                                    545 ;mac                       Allocated with name '_boardGetOwnMac_mac_65536_82'
                                    546 ;------------------------------------------------------------
                                    547 ;	board/zbs29_uc8151/../boardZBS29common.c:57: __bit boardGetOwnMac(uint8_t __xdata *mac)
                                    548 ;	-----------------------------------------
                                    549 ;	 function boardGetOwnMac
                                    550 ;	-----------------------------------------
      0079B3                        551 _boardGetOwnMac:
      0079B3 AF 83            [24]  552 	mov	r7,dph
      0079B5 E5 82            [12]  553 	mov	a,dpl
      0079B7 90 E4 48         [24]  554 	mov	dptr,#_boardGetOwnMac_mac_65536_82
      0079BA F0               [24]  555 	movx	@dptr,a
      0079BB EF               [12]  556 	mov	a,r7
      0079BC A3               [24]  557 	inc	dptr
      0079BD F0               [24]  558 	movx	@dptr,a
                                    559 ;	board/zbs29_uc8151/../boardZBS29common.c:59: return flashRead(FLASH_INFOPAGE_ADDR + 0x10, mac, 8);
      0079BE 90 E4 48         [24]  560 	mov	dptr,#_boardGetOwnMac_mac_65536_82
      0079C1 E0               [24]  561 	movx	a,@dptr
      0079C2 FE               [12]  562 	mov	r6,a
      0079C3 A3               [24]  563 	inc	dptr
      0079C4 E0               [24]  564 	movx	a,@dptr
      0079C5 FF               [12]  565 	mov	r7,a
      0079C6 90 E3 61         [24]  566 	mov	dptr,#_flashRead_PARM_2
      0079C9 EE               [12]  567 	mov	a,r6
      0079CA F0               [24]  568 	movx	@dptr,a
      0079CB EF               [12]  569 	mov	a,r7
      0079CC A3               [24]  570 	inc	dptr
      0079CD F0               [24]  571 	movx	@dptr,a
      0079CE 90 E3 63         [24]  572 	mov	dptr,#_flashRead_PARM_3
      0079D1 74 08            [12]  573 	mov	a,#0x08
      0079D3 F0               [24]  574 	movx	@dptr,a
      0079D4 E4               [12]  575 	clr	a
      0079D5 A3               [24]  576 	inc	dptr
      0079D6 F0               [24]  577 	movx	@dptr,a
      0079D7 90 00 10         [24]  578 	mov	dptr,#0x0010
      0079DA 75 F0 80         [24]  579 	mov	b,#0x80
      0079DD E4               [12]  580 	clr	a
      0079DE 12 63 D9         [24]  581 	lcall	_flashRead
      0079E1 92 17            [24]  582 	mov  _boardGetOwnMac_sloc0_1_0,c
                                    583 ;	board/zbs29_uc8151/../boardZBS29common.c:60: }
      0079E3 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'prvUpdateApplierGet'
                                    587 ;------------------------------------------------------------
                                    588 ;	board/zbs29_uc8151/../boardZBS29common.c:63: static uint32_t prvUpdateApplierGet(void) __naked
                                    589 ;	-----------------------------------------
                                    590 ;	 function prvUpdateApplierGet
                                    591 ;	-----------------------------------------
      0079E4                        592 _prvUpdateApplierGet:
                                    593 ;	naked function: no prologue.
                                    594 ;	board/zbs29_uc8151/../boardZBS29common.c:135: );
      0079E4 90 79 EF         [24]  595 	mov	  DPTR, #00098$			
      0079E7 74 4B            [12]  596 	mov	  A, #00099$			
      0079E9 C3               [12]  597 	clr	  C						
      0079EA 95 82            [12]  598 	subb	 A, DPL				
      0079EC F5 F0            [12]  599 	mov	  B, A					
      0079EE 22               [24]  600 	ret							
      0079EF                        601 	00098$:
      0079EF 75 8E 21         [24]  602 	mov	  _CLKSPEED, #0x21		
      0079F2 75 FF 04         [24]  603 	mov	  _CFGPAGE, #0x04		
      0079F5 78 00            [12]  604 	mov	  R0, #0				
      0079F7                        605 	00001$:
      0079F7 90 E0 00         [24]  606 	mov	  DPTR, #0xe000			
      0079FA 79 04            [12]  607 	mov	  R1, #0x04				
      0079FC 7A 00            [12]  608 	mov	  R2, #0x00				
      0079FE                        609 	000010$:
      0079FE 75 EE 00         [24]  610 	mov	  _SPITX, #0x00			
      007A01 75 EC A0         [24]  611 	mov	  _SPICFG, #0xa0		
      007A04                        612 	000011$:
      007A04 E5 EC            [12]  613 	mov	  A, _SPICFG			
      007A06 20 E5 FB         [24]  614 	jb	   A.5, 000011$			
      007A09 E5 EF            [12]  615 	mov	  A, _SPIRX				
      007A0B F0               [24]  616 	movx	 @DPTR, A				
      007A0C A3               [24]  617 	inc	  DPTR					
      007A0D DA EF            [24]  618 	djnz	 R2, 000010$			
      007A0F D9 ED            [24]  619 	djnz	 R1, 000010$			
      007A11 E4               [12]  620 	clr	  A						
      007A12 43 C7 38         [24]  621 	orl	  _SETTINGS, #0x38		
      007A15 75 DF 03         [24]  622 	mov	  _FWRTHREE, #0x03		
      007A18 88 D8            [24]  623 	mov	  _FPGNO, R0			
      007A1A F5 DB            [12]  624 	mov	  _FWRDSTL, A			
      007A1C F5 DC            [12]  625 	mov	  _FWRDSTH, A			
      007A1E 75 DD FF         [24]  626 	mov	  _FWRLENL, #0xff		
      007A21 75 DE 03         [24]  627 	mov	  _FWRLENH, #0x03		
      007A24 F5 D9            [12]  628 	mov	  _FWRSRCL, A			
      007A26 75 DA E0         [24]  629 	mov	  _FWRSRCH, #0xe0		
      007A29 43 D7 08         [24]  630 	orl	  _TRIGGER, #0x08		
      007A2C                        631 	00050$:
      007A2C E5 CF            [12]  632 	mov	  A, _TCON2				
      007A2E 30 E3 FB         [24]  633 	jnb	  A.3, 00050$			
      007A31 53 CF B7         [24]  634 	anl	  _TCON2, #~0x48		
      007A34 53 C7 EF         [24]  635 	anl	  _SETTINGS, #~0x10		
      007A37 08               [12]  636 	inc	  R0					
      007A38 B8 3F BC         [24]  637 	cjne	 R0, #63, 00001$		
      007A3B 75 BF 80         [24]  638 	mov	  _WDTCONF, #0x80		
      007A3E 75 BA 01         [24]  639 	mov	  _WDTENA, #0x01		
      007A41 74 FF            [12]  640 	mov	  A, #0xff				
      007A43 F5 BE            [12]  641 	mov	  _WDTRSTVALH, A		
      007A45 F5 BD            [12]  642 	mov	  _WDTRSTVALM, A		
      007A47 F5 BC            [12]  643 	mov	  _WDTRSTVALL, A		
      007A49                        644 	00090$:
      007A49 80 FE            [24]  645 	sjmp	 00090$				
      007A4B                        646 	00099$:
                                    647 ;	board/zbs29_uc8151/../boardZBS29common.c:136: }
                                    648 ;	naked function: no epilogue.
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'selfUpdate'
                                    651 ;------------------------------------------------------------
                                    652 ;tempBuffer                Allocated with name '_selfUpdate_tempBuffer_65536_87'
                                    653 ;updaterInfo               Allocated with name '_selfUpdate_updaterInfo_65537_88'
                                    654 ;src                       Allocated with name '_selfUpdate_src_65537_88'
                                    655 ;i                         Allocated with name '_selfUpdate_i_65537_88'
                                    656 ;len                       Allocated with name '_selfUpdate_len_65537_88'
                                    657 ;dst                       Allocated with name '_selfUpdate_dst_65537_88'
                                    658 ;------------------------------------------------------------
                                    659 ;	board/zbs29_uc8151/../boardZBS29common.c:138: void selfUpdate(void)
                                    660 ;	-----------------------------------------
                                    661 ;	 function selfUpdate
                                    662 ;	-----------------------------------------
      007A4B                        663 _selfUpdate:
      007A4B C0 07            [24]  664 	push	ar7
      007A4D C0 06            [24]  665 	push	ar6
      007A4F C0 05            [24]  666 	push	ar5
      007A51 C0 04            [24]  667 	push	ar4
      007A53 C0 03            [24]  668 	push	ar3
      007A55 C0 02            [24]  669 	push	ar2
      007A57 C0 01            [24]  670 	push	ar1
      007A59 C0 00            [24]  671 	push	ar0
                                    672 ;	board/zbs29_uc8151/../boardZBS29common.c:142: tempBuffer = malloc(320);
      007A5B 90 01 40         [24]  673 	mov	dptr,#0x0140
      007A5E C0 05            [24]  674 	push	ar5
      007A60 C0 04            [24]  675 	push	ar4
      007A62 C0 03            [24]  676 	push	ar3
      007A64 C0 02            [24]  677 	push	ar2
      007A66 C0 01            [24]  678 	push	ar1
      007A68 C0 00            [24]  679 	push	ar0
      007A6A 12 A2 46         [24]  680 	lcall	_malloc
      007A6D AE 82            [24]  681 	mov	r6,dpl
      007A6F AF 83            [24]  682 	mov	r7,dph
      007A71 D0 00            [24]  683 	pop	ar0
      007A73 D0 01            [24]  684 	pop	ar1
      007A75 D0 02            [24]  685 	pop	ar2
      007A77 D0 03            [24]  686 	pop	ar3
      007A79 D0 04            [24]  687 	pop	ar4
      007A7B D0 05            [24]  688 	pop	ar5
                                    689 ;	board/zbs29_uc8151/../boardZBS29common.c:143: uint32_t updaterInfo = prvUpdateApplierGet();
      007A7D 12 79 E4         [24]  690 	lcall	_prvUpdateApplierGet
      007A80 AA 82            [24]  691 	mov	r2,dpl
      007A82 AB 83            [24]  692 	mov	r3,dph
      007A84 AC F0            [24]  693 	mov	r4,b
                                    694 ;	board/zbs29_uc8151/../boardZBS29common.c:144: uint8_t __code *src = (uint8_t __code*)updaterInfo;
      007A86 8A 00            [24]  695 	mov	ar0,r2
      007A88 8B 01            [24]  696 	mov	ar1,r3
                                    697 ;	board/zbs29_uc8151/../boardZBS29common.c:145: uint8_t i, len = updaterInfo >> 16;
      007A8A 8C 05            [24]  698 	mov	ar5,r4
                                    699 ;	board/zbs29_uc8151/../boardZBS29common.c:147: if(!tempBuffer)wdtDeviceReset();
      007A8C EE               [12]  700 	mov	a,r6
      007A8D 4F               [12]  701 	orl	a,r7
      007A8E 70 03            [24]  702 	jnz	00113$
      007A90 12 59 AE         [24]  703 	lcall	_wdtDeviceReset
                                    704 ;	board/zbs29_uc8151/../boardZBS29common.c:149: for (i = len; i ; i--)
      007A93                        705 00113$:
      007A93 88 03            [24]  706 	mov	ar3,r0
      007A95 89 04            [24]  707 	mov	ar4,r1
      007A97 8E 01            [24]  708 	mov	ar1,r6
      007A99 8F 02            [24]  709 	mov	ar2,r7
      007A9B 8D 00            [24]  710 	mov	ar0,r5
      007A9D                        711 00107$:
      007A9D E8               [12]  712 	mov	a,r0
      007A9E 60 1E            [24]  713 	jz	00103$
                                    714 ;	board/zbs29_uc8151/../boardZBS29common.c:150: *dst++ = *src++;
      007AA0 C0 05            [24]  715 	push	ar5
      007AA2 8B 82            [24]  716 	mov	dpl,r3
      007AA4 8C 83            [24]  717 	mov	dph,r4
      007AA6 E4               [12]  718 	clr	a
      007AA7 93               [24]  719 	movc	a,@a+dptr
      007AA8 FD               [12]  720 	mov	r5,a
      007AA9 A3               [24]  721 	inc	dptr
      007AAA AB 82            [24]  722 	mov	r3,dpl
      007AAC AC 83            [24]  723 	mov	r4,dph
      007AAE 89 82            [24]  724 	mov	dpl,r1
      007AB0 8A 83            [24]  725 	mov	dph,r2
      007AB2 ED               [12]  726 	mov	a,r5
      007AB3 F0               [24]  727 	movx	@dptr,a
      007AB4 A3               [24]  728 	inc	dptr
      007AB5 A9 82            [24]  729 	mov	r1,dpl
      007AB7 AA 83            [24]  730 	mov	r2,dph
                                    731 ;	board/zbs29_uc8151/../boardZBS29common.c:149: for (i = len; i ; i--)
      007AB9 18               [12]  732 	dec	r0
      007ABA D0 05            [24]  733 	pop	ar5
      007ABC 80 DF            [24]  734 	sjmp	00107$
      007ABE                        735 00103$:
                                    736 ;	board/zbs29_uc8151/../boardZBS29common.c:152: if (!flashWrite(0xfc00, tempBuffer, len, true))
      007ABE 90 E3 57         [24]  737 	mov	dptr,#_flashWrite_PARM_2
      007AC1 EE               [12]  738 	mov	a,r6
      007AC2 F0               [24]  739 	movx	@dptr,a
      007AC3 EF               [12]  740 	mov	a,r7
      007AC4 A3               [24]  741 	inc	dptr
      007AC5 F0               [24]  742 	movx	@dptr,a
      007AC6 90 E3 59         [24]  743 	mov	dptr,#_flashWrite_PARM_3
      007AC9 ED               [12]  744 	mov	a,r5
      007ACA F0               [24]  745 	movx	@dptr,a
      007ACB E4               [12]  746 	clr	a
      007ACC A3               [24]  747 	inc	dptr
      007ACD F0               [24]  748 	movx	@dptr,a
                                    749 ;	assignBit
      007ACE D2 13            [12]  750 	setb	_flashWrite_PARM_4
      007AD0 90 FC 00         [24]  751 	mov	dptr,#0xfc00
      007AD3 E4               [12]  752 	clr	a
      007AD4 F5 F0            [12]  753 	mov	b,a
      007AD6 12 63 06         [24]  754 	lcall	_flashWrite
      007AD9 40 0F            [24]  755 	jc	00105$
                                    756 ;	board/zbs29_uc8151/../boardZBS29common.c:153: pr("failed to write updater\n");
      007ADB 74 3D            [12]  757 	mov	a,#___str_0
      007ADD C0 E0            [24]  758 	push	acc
      007ADF 74 B9            [12]  759 	mov	a,#(___str_0 >> 8)
      007AE1 C0 E0            [24]  760 	push	acc
      007AE3 12 70 97         [24]  761 	lcall	_pr
      007AE6 15 81            [12]  762 	dec	sp
      007AE8 15 81            [12]  763 	dec	sp
      007AEA                        764 00105$:
                                    765 ;	board/zbs29_uc8151/../boardZBS29common.c:155: IEN_EA = 0;	//ints off
                                    766 ;	assignBit
      007AEA C2 AF            [12]  767 	clr	_IEN_EA
                                    768 ;	board/zbs29_uc8151/../boardZBS29common.c:161: );
      007AEC 90 FC 00         [24]  769 	mov	dptr, #0xfc00			
      007AEF E4               [12]  770 	clr	a						
      007AF0 73               [24]  771 	jmp	@a+dptr					
                                    772 ;	board/zbs29_uc8151/../boardZBS29common.c:162: }
      007AF1 D0 00            [24]  773 	pop	ar0
      007AF3 D0 01            [24]  774 	pop	ar1
      007AF5 D0 02            [24]  775 	pop	ar2
      007AF7 D0 03            [24]  776 	pop	ar3
      007AF9 D0 04            [24]  777 	pop	ar4
      007AFB D0 05            [24]  778 	pop	ar5
      007AFD D0 06            [24]  779 	pop	ar6
      007AFF D0 07            [24]  780 	pop	ar7
      007B01 22               [24]  781 	ret
                                    782 	.area CSEG    (CODE)
                                    783 	.area CONST   (CODE)
                                    784 	.area CONST   (CODE)
      00B93D                        785 ___str_0:
      00B93D 66 61 69 6C 65 64 20   786 	.ascii "failed to write updater"
             74 6F 20 77 72 69 74
             65 20 75 70 64 61 74
             65 72
      00B954 0A                     787 	.db 0x0a
      00B955 00                     788 	.db 0x00
                                    789 	.area CSEG    (CODE)
                                    790 	.area XINIT   (CODE)
                                    791 	.area CABS    (ABS,CODE)
