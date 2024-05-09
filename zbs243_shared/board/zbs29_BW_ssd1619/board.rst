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
                                     11 	.globl _flashWrite
                                     12 	.globl _flashRead
                                     13 	.globl _spiInit
                                     14 	.globl _pr
                                     15 	.globl _UART_TXE
                                     16 	.globl _UART_RXF
                                     17 	.globl _IEN_EA
                                     18 	.globl _IEN_RF2
                                     19 	.globl _IEN_RF1
                                     20 	.globl _IEN_TMR1
                                     21 	.globl _IEN_TMR0
                                     22 	.globl _IEN_UART0
                                     23 	.globl _P2_7
                                     24 	.globl _P2_6
                                     25 	.globl _P2_5
                                     26 	.globl _P2_4
                                     27 	.globl _P2_3
                                     28 	.globl _P2_2
                                     29 	.globl _P2_1
                                     30 	.globl _P2_0
                                     31 	.globl _P1_7
                                     32 	.globl _P1_6
                                     33 	.globl _P1_5
                                     34 	.globl _P1_4
                                     35 	.globl _P1_3
                                     36 	.globl _P1_2
                                     37 	.globl _P1_1
                                     38 	.globl _P1_0
                                     39 	.globl _P0_7
                                     40 	.globl _P0_6
                                     41 	.globl _P0_5
                                     42 	.globl _P0_4
                                     43 	.globl _P0_3
                                     44 	.globl _P0_2
                                     45 	.globl _P0_1
                                     46 	.globl _P0_0
                                     47 	.globl _CFGPAGE
                                     48 	.globl _TCON2
                                     49 	.globl _SETTINGS
                                     50 	.globl _TRIGGER
                                     51 	.globl _UNK_C1
                                     52 	.globl _RADIO_GOTLEN
                                     53 	.globl _RADIO_INITSEQ3
                                     54 	.globl _RADIO_RXLEN
                                     55 	.globl _RADIO_RXPTRH
                                     56 	.globl _RADIO_RXPTRL
                                     57 	.globl _RADIO_INITSEQ5
                                     58 	.globl _RADIO_INITSEQ4
                                     59 	.globl _RADIO_INITSEQ0
                                     60 	.globl _RADIO_TXLEN
                                     61 	.globl _RADIO_INITSEQ2
                                     62 	.globl _RADIO_INITSEQ1
                                     63 	.globl _RADIO_TXPTRH
                                     64 	.globl _RADIO_TXPTRL
                                     65 	.globl _TEMPCAL6
                                     66 	.globl _TEMPCAL5
                                     67 	.globl _TEMPCAL4
                                     68 	.globl _TEMPCAL3
                                     69 	.globl _TEMPRETL
                                     70 	.globl _TEMPRETH
                                     71 	.globl _TEMPCFG
                                     72 	.globl _TEMPCAL2
                                     73 	.globl _TEMPCAL1
                                     74 	.globl _FWRTHREE
                                     75 	.globl _FWRLENH
                                     76 	.globl _FWRLENL
                                     77 	.globl _FWRDSTH
                                     78 	.globl _FWRDSTL
                                     79 	.globl _FWRSRCH
                                     80 	.globl _FWRSRCL
                                     81 	.globl _FPGNO
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _TH1
                                     85 	.globl _TH0
                                     86 	.globl _TL1
                                     87 	.globl _TL0
                                     88 	.globl _TMOD
                                     89 	.globl _TCON
                                     90 	.globl _UARTBRGH
                                     91 	.globl _UARTBRGL
                                     92 	.globl _UARTBUF
                                     93 	.globl _UARTSTA
                                     94 	.globl _I2CUNKNOWN
                                     95 	.globl _I2CSPEED
                                     96 	.globl _I2CCTL
                                     97 	.globl _I2CBUF
                                     98 	.globl _I2CSTATE
                                     99 	.globl _SPIRX
                                    100 	.globl _SPITX
                                    101 	.globl _SPIENA
                                    102 	.globl _SPICFG
                                    103 	.globl _SPIUNKNOWN
                                    104 	.globl _WDTCONF
                                    105 	.globl _WDTRSTVALH
                                    106 	.globl _WDTRSTVALM
                                    107 	.globl _WDTRSTVALL
                                    108 	.globl _WDTPET
                                    109 	.globl _WDTENA
                                    110 	.globl _RESET
                                    111 	.globl _CLKEN
                                    112 	.globl _CLKSPEED
                                    113 	.globl _IEN1
                                    114 	.globl _IEN0
                                    115 	.globl _XPAGE
                                    116 	.globl _P2PULL
                                    117 	.globl _P1PULL
                                    118 	.globl _P0PULL
                                    119 	.globl _P2DIR
                                    120 	.globl _P1DIR
                                    121 	.globl _P0DIR
                                    122 	.globl _P2FUNC
                                    123 	.globl _P1FUNC
                                    124 	.globl _P0FUNC
                                    125 	.globl _P2CHSTA
                                    126 	.globl _P1CHSTA
                                    127 	.globl _P0CHSTA
                                    128 	.globl _P2INTEN
                                    129 	.globl _P1INTEN
                                    130 	.globl _P0INTEN
                                    131 	.globl _P2LVLSEL
                                    132 	.globl _P1LVLSEL
                                    133 	.globl _P0LVLSEL
                                    134 	.globl _P2
                                    135 	.globl _P1
                                    136 	.globl _P0
                                    137 	.globl _PERFMON4
                                    138 	.globl _PCL
                                    139 	.globl _PCH
                                    140 	.globl _PERFMON1
                                    141 	.globl _PERFMON0
                                    142 	.globl _PCON
                                    143 	.globl _DPS
                                    144 	.globl _DPH1
                                    145 	.globl _DPL1
                                    146 	.globl _DPH
                                    147 	.globl _DPL
                                    148 	.globl _ACC
                                    149 	.globl _B
                                    150 	.globl _tempBuffer
                                    151 	.globl _powerPortsDownForSleep
                                    152 	.globl _boardInit
                                    153 	.globl _boardGetOwnMac
                                    154 	.globl _selfUpdate
                                    155 ;--------------------------------------------------------
                                    156 ; special function registers
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           0000F0   160 _B	=	0x00f0
                           0000E0   161 _ACC	=	0x00e0
                           000082   162 _DPL	=	0x0082
                           000083   163 _DPH	=	0x0083
                           000084   164 _DPL1	=	0x0084
                           000085   165 _DPH1	=	0x0085
                           000092   166 _DPS	=	0x0092
                           000087   167 _PCON	=	0x0087
                           0000B2   168 _PERFMON0	=	0x00b2
                           0000B3   169 _PERFMON1	=	0x00b3
                           0000B4   170 _PCH	=	0x00b4
                           0000B5   171 _PCL	=	0x00b5
                           0000B6   172 _PERFMON4	=	0x00b6
                           000080   173 _P0	=	0x0080
                           000090   174 _P1	=	0x0090
                           0000A0   175 _P2	=	0x00a0
                           0000A3   176 _P0LVLSEL	=	0x00a3
                           0000A4   177 _P1LVLSEL	=	0x00a4
                           0000A5   178 _P2LVLSEL	=	0x00a5
                           0000A6   179 _P0INTEN	=	0x00a6
                           0000A7   180 _P1INTEN	=	0x00a7
                           0000A9   181 _P2INTEN	=	0x00a9
                           0000AA   182 _P0CHSTA	=	0x00aa
                           0000AB   183 _P1CHSTA	=	0x00ab
                           0000AC   184 _P2CHSTA	=	0x00ac
                           0000AD   185 _P0FUNC	=	0x00ad
                           0000AE   186 _P1FUNC	=	0x00ae
                           0000AF   187 _P2FUNC	=	0x00af
                           0000B9   188 _P0DIR	=	0x00b9
                           0000BA   189 _P1DIR	=	0x00ba
                           0000BB   190 _P2DIR	=	0x00bb
                           0000BC   191 _P0PULL	=	0x00bc
                           0000BD   192 _P1PULL	=	0x00bd
                           0000BE   193 _P2PULL	=	0x00be
                           0000A0   194 _XPAGE	=	0x00a0
                           0000A8   195 _IEN0	=	0x00a8
                           0000A1   196 _IEN1	=	0x00a1
                           00008E   197 _CLKSPEED	=	0x008e
                           0000B7   198 _CLKEN	=	0x00b7
                           00008F   199 _RESET	=	0x008f
                           0000BA   200 _WDTENA	=	0x00ba
                           0000BB   201 _WDTPET	=	0x00bb
                           0000BC   202 _WDTRSTVALL	=	0x00bc
                           0000BD   203 _WDTRSTVALM	=	0x00bd
                           0000BE   204 _WDTRSTVALH	=	0x00be
                           0000BF   205 _WDTCONF	=	0x00bf
                           0000EB   206 _SPIUNKNOWN	=	0x00eb
                           0000EC   207 _SPICFG	=	0x00ec
                           0000ED   208 _SPIENA	=	0x00ed
                           0000EE   209 _SPITX	=	0x00ee
                           0000EF   210 _SPIRX	=	0x00ef
                           000091   211 _I2CSTATE	=	0x0091
                           000094   212 _I2CBUF	=	0x0094
                           000095   213 _I2CCTL	=	0x0095
                           000096   214 _I2CSPEED	=	0x0096
                           0000A2   215 _I2CUNKNOWN	=	0x00a2
                           000098   216 _UARTSTA	=	0x0098
                           000099   217 _UARTBUF	=	0x0099
                           00009A   218 _UARTBRGL	=	0x009a
                           00009B   219 _UARTBRGH	=	0x009b
                           000088   220 _TCON	=	0x0088
                           000089   221 _TMOD	=	0x0089
                           00008A   222 _TL0	=	0x008a
                           00008B   223 _TL1	=	0x008b
                           00008C   224 _TH0	=	0x008c
                           00008D   225 _TH1	=	0x008d
                           008C8A   226 _T0	=	0x8c8a
                           008D8B   227 _T1	=	0x8d8b
                           0000D8   228 _FPGNO	=	0x00d8
                           0000D9   229 _FWRSRCL	=	0x00d9
                           0000DA   230 _FWRSRCH	=	0x00da
                           0000DB   231 _FWRDSTL	=	0x00db
                           0000DC   232 _FWRDSTH	=	0x00dc
                           0000DD   233 _FWRLENL	=	0x00dd
                           0000DE   234 _FWRLENH	=	0x00de
                           0000DF   235 _FWRTHREE	=	0x00df
                           0000E6   236 _TEMPCAL1	=	0x00e6
                           0000E7   237 _TEMPCAL2	=	0x00e7
                           0000F7   238 _TEMPCFG	=	0x00f7
                           0000F8   239 _TEMPRETH	=	0x00f8
                           0000F9   240 _TEMPRETL	=	0x00f9
                           0000FB   241 _TEMPCAL3	=	0x00fb
                           0000FC   242 _TEMPCAL4	=	0x00fc
                           0000FD   243 _TEMPCAL5	=	0x00fd
                           0000FE   244 _TEMPCAL6	=	0x00fe
                           0000C9   245 _RADIO_TXPTRL	=	0x00c9
                           0000CA   246 _RADIO_TXPTRH	=	0x00ca
                           0000CB   247 _RADIO_INITSEQ1	=	0x00cb
                           0000CC   248 _RADIO_INITSEQ2	=	0x00cc
                           0000CD   249 _RADIO_TXLEN	=	0x00cd
                           0000CE   250 _RADIO_INITSEQ0	=	0x00ce
                           0000D1   251 _RADIO_INITSEQ4	=	0x00d1
                           0000D2   252 _RADIO_INITSEQ5	=	0x00d2
                           0000D3   253 _RADIO_RXPTRL	=	0x00d3
                           0000D4   254 _RADIO_RXPTRH	=	0x00d4
                           0000D5   255 _RADIO_RXLEN	=	0x00d5
                           0000D6   256 _RADIO_INITSEQ3	=	0x00d6
                           0000FA   257 _RADIO_GOTLEN	=	0x00fa
                           0000C1   258 _UNK_C1	=	0x00c1
                           0000D7   259 _TRIGGER	=	0x00d7
                           0000C7   260 _SETTINGS	=	0x00c7
                           0000CF   261 _TCON2	=	0x00cf
                           0000FF   262 _CFGPAGE	=	0x00ff
                                    263 ;--------------------------------------------------------
                                    264 ; special function bits
                                    265 ;--------------------------------------------------------
                                    266 	.area RSEG    (ABS,DATA)
      000000                        267 	.org 0x0000
                           000080   268 _P0_0	=	0x0080
                           000081   269 _P0_1	=	0x0081
                           000082   270 _P0_2	=	0x0082
                           000083   271 _P0_3	=	0x0083
                           000084   272 _P0_4	=	0x0084
                           000085   273 _P0_5	=	0x0085
                           000086   274 _P0_6	=	0x0086
                           000087   275 _P0_7	=	0x0087
                           000090   276 _P1_0	=	0x0090
                           000091   277 _P1_1	=	0x0091
                           000092   278 _P1_2	=	0x0092
                           000093   279 _P1_3	=	0x0093
                           000094   280 _P1_4	=	0x0094
                           000095   281 _P1_5	=	0x0095
                           000096   282 _P1_6	=	0x0096
                           000097   283 _P1_7	=	0x0097
                           0000A0   284 _P2_0	=	0x00a0
                           0000A1   285 _P2_1	=	0x00a1
                           0000A2   286 _P2_2	=	0x00a2
                           0000A3   287 _P2_3	=	0x00a3
                           0000A4   288 _P2_4	=	0x00a4
                           0000A5   289 _P2_5	=	0x00a5
                           0000A6   290 _P2_6	=	0x00a6
                           0000A7   291 _P2_7	=	0x00a7
                           0000A8   292 _IEN_UART0	=	0x00a8
                           0000A9   293 _IEN_TMR0	=	0x00a9
                           0000AB   294 _IEN_TMR1	=	0x00ab
                           0000AC   295 _IEN_RF1	=	0x00ac
                           0000AD   296 _IEN_RF2	=	0x00ad
                           0000AF   297 _IEN_EA	=	0x00af
                           000098   298 _UART_RXF	=	0x0098
                           000099   299 _UART_TXE	=	0x0099
                                    300 ;--------------------------------------------------------
                                    301 ; overlayable register banks
                                    302 ;--------------------------------------------------------
                                    303 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        304 	.ds 8
                                    305 ;--------------------------------------------------------
                                    306 ; internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area DSEG    (DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; overlayable items in internal ram
                                    311 ;--------------------------------------------------------
                                    312 ;--------------------------------------------------------
                                    313 ; indirectly addressable internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area ISEG    (DATA)
                           000000   316 _R0	=	0x0000
                           000001   317 _R1	=	0x0001
                           000002   318 _R2	=	0x0002
                           000003   319 _R3	=	0x0003
                           000004   320 _R4	=	0x0004
                           000005   321 _R5	=	0x0005
                           000006   322 _R6	=	0x0006
                           000007   323 _R7	=	0x0007
                                    324 ;--------------------------------------------------------
                                    325 ; absolute internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area IABS    (ABS,DATA)
                                    328 	.area IABS    (ABS,DATA)
                                    329 ;--------------------------------------------------------
                                    330 ; bit data
                                    331 ;--------------------------------------------------------
                                    332 	.area BSEG    (BIT)
      000017                        333 _boardGetOwnMac_sloc0_1_0:
      000017                        334 	.ds 1
                                    335 ;--------------------------------------------------------
                                    336 ; paged external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area PSEG    (PAG,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XSEG    (XDATA)
                           00DF48   343 _RADIO_command	=	0xdf48
                           00DF70   344 _RADIO_calibration_70	=	0xdf70
                           00DF71   345 _RADIO_calibration_71	=	0xdf71
                           00DF80   346 _RADIO_FLAGS	=	0xdf80
                           00DF81   347 _RADIO_calibration_81	=	0xdf81
                           00DF83   348 _RADIO_unk_83	=	0xdf83
                           00DF84   349 _RADIO_currentRSSI	=	0xdf84
                           00DF86   350 _RADIO_calibration_86	=	0xdf86
                           00DF88   351 _RADIO_ownMac_7	=	0xdf88
                           00DF89   352 _RADIO_ownMac_6	=	0xdf89
                           00DF8A   353 _RADIO_ownMac_5	=	0xdf8a
                           00DF8B   354 _RADIO_ownMac_4	=	0xdf8b
                           00DF8C   355 _RADIO_ownMac_3	=	0xdf8c
                           00DF8D   356 _RADIO_ownMac_2	=	0xdf8d
                           00DF8E   357 _RADIO_ownMac_1	=	0xdf8e
                           00DF8F   358 _RADIO_ownMac_0	=	0xdf8f
                           00DF90   359 _RADIO_PANID_Hi	=	0xdf90
                           00DF91   360 _RADIO_PANID_Lo	=	0xdf91
                           00DF92   361 _RADIO_ownShortAddress_Hi	=	0xdf92
                           00DF93   362 _RADIO_ownShortAddress_Lo	=	0xdf93
                           00DF94   363 _RADIO_calibration_94	=	0xdf94
                           00DF95   364 _RADIO_calibration_95	=	0xdf95
                           00DF96   365 _RADIO_calibration_96	=	0xdf96
                           00DF98   366 _RADIO_rxFirstByte	=	0xdf98
                           00DF9B   367 _RADIO_curRfState	=	0xdf9b
                           00DF9D   368 _RADIO_calibration_9D	=	0xdf9d
                           00DFA1   369 _RADIO_calibration_A1	=	0xdfa1
                           00DFA5   370 _RADIO_unk_rxAckSta	=	0xdfa5
                           00DFA6   371 _RADIO_unk_A6	=	0xdfa6
                           00DFAD   372 _RADIO_IRQ4_pending	=	0xdfad
                           00DFAF   373 _RADIO_unk_AF	=	0xdfaf
                           00DFC0   374 _RADIO_channel	=	0xdfc0
                           00DFC1   375 _RADIO_unk_C1	=	0xdfc1
                           00DFC2   376 _RADIO_calibration_C2	=	0xdfc2
                           00DFC3   377 _RADIO_calibration_C3	=	0xdfc3
                           00DFC4   378 _RADIO_calibration_C4	=	0xdfc4
                           00DFC5   379 _RADIO_calibration_C5	=	0xdfc5
                           00DFC6   380 _RADIO_calibration_C6	=	0xdfc6
                           00DFC7   381 _RADIO_calibration_C7	=	0xdfc7
                           00DFC8   382 _RADIO_unk_C8	=	0xdfc8
                           00DFC9   383 _RADIO_txPower	=	0xdfc9
                           00DFCA   384 _RADIO_unk_CA	=	0xdfca
                           00DFCB   385 _RADIO_perChannelSetting2	=	0xdfcb
                           00DFCD   386 _RADIO_unk_CD	=	0xdfcd
                           00DFCE   387 _RADIO_unk_CE	=	0xdfce
                           00DFCF   388 _RADIO_calibration_CF	=	0xdfcf
                           00DFD0   389 _RADIO_calibration_D0	=	0xdfd0
                           00DFD1   390 _RADIO_calibration_D1	=	0xdfd1
                           00DFD2   391 _RADIO_calibration_D2	=	0xdfd2
                           00DFD3   392 _RADIO_calibration_D3	=	0xdfd3
                           00DFD4   393 _RADIO_calibration_D4	=	0xdfd4
                           00DFD5   394 _RADIO_calibration_D5	=	0xdfd5
                           00DFD7   395 _RADIO_unk_D7	=	0xdfd7
                           00DFD8   396 _RADIO_unk_D8	=	0xdfd8
                           00DFD9   397 _RADIO_SleepTimerHi	=	0xdfd9
                           00DFDA   398 _RADIO_SleepTimerMid	=	0xdfda
                           00DFDB   399 _RADIO_SleepTimerLo	=	0xdfdb
                           00DFE2   400 _RADIO_unk_E2	=	0xdfe2
                           00DFF0   401 _RADIO_unk_F0	=	0xdff0
                           00DFF3   402 _RADIO_SleepTimerSettings	=	0xdff3
                           00DFF4   403 _RADIO_RadioPowerCtl	=	0xdff4
                           00DFFB   404 _RADIO_Wake_Reason	=	0xdffb
                           00DFFD   405 _RADIO_perChannelSetting1	=	0xdffd
      00E448                        406 _tempBuffer::
      00E448                        407 	.ds 320
      00E588                        408 _boardGetOwnMac_mac_65536_61:
      00E588                        409 	.ds 2
                                    410 ;--------------------------------------------------------
                                    411 ; absolute external ram data
                                    412 ;--------------------------------------------------------
                                    413 	.area XABS    (ABS,XDATA)
                                    414 ;--------------------------------------------------------
                                    415 ; external initialized ram data
                                    416 ;--------------------------------------------------------
                                    417 	.area XISEG   (XDATA)
                                    418 	.area HOME    (CODE)
                                    419 	.area GSINIT0 (CODE)
                                    420 	.area GSINIT1 (CODE)
                                    421 	.area GSINIT2 (CODE)
                                    422 	.area GSINIT3 (CODE)
                                    423 	.area GSINIT4 (CODE)
                                    424 	.area GSINIT5 (CODE)
                                    425 	.area GSINIT  (CODE)
                                    426 	.area GSFINAL (CODE)
                                    427 	.area CSEG    (CODE)
                                    428 ;--------------------------------------------------------
                                    429 ; global & static initialisations
                                    430 ;--------------------------------------------------------
                                    431 	.area HOME    (CODE)
                                    432 	.area GSINIT  (CODE)
                                    433 	.area GSFINAL (CODE)
                                    434 	.area GSINIT  (CODE)
                                    435 ;--------------------------------------------------------
                                    436 ; Home
                                    437 ;--------------------------------------------------------
                                    438 	.area HOME    (CODE)
                                    439 	.area HOME    (CODE)
                                    440 ;--------------------------------------------------------
                                    441 ; code
                                    442 ;--------------------------------------------------------
                                    443 	.area CSEG    (CODE)
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'powerPortsDownForSleep'
                                    446 ;------------------------------------------------------------
                                    447 ;	board/zbs29_BW_ssd1619/board.c:15: void powerPortsDownForSleep(void)
                                    448 ;	-----------------------------------------
                                    449 ;	 function powerPortsDownForSleep
                                    450 ;	-----------------------------------------
      007A86                        451 _powerPortsDownForSleep:
                           000007   452 	ar7 = 0x07
                           000006   453 	ar6 = 0x06
                           000005   454 	ar5 = 0x05
                           000004   455 	ar4 = 0x04
                           000003   456 	ar3 = 0x03
                           000002   457 	ar2 = 0x02
                           000001   458 	ar1 = 0x01
                           000000   459 	ar0 = 0x00
                                    460 ;	board/zbs29_BW_ssd1619/board.c:17: P0FUNC = 0;
      007A86 75 AD 00         [24]  461 	mov	_P0FUNC,#0x00
                                    462 ;	board/zbs29_BW_ssd1619/board.c:18: P1FUNC = 0;
      007A89 75 AE 00         [24]  463 	mov	_P1FUNC,#0x00
                                    464 ;	board/zbs29_BW_ssd1619/board.c:19: P2FUNC = 0;
      007A8C 75 AF 00         [24]  465 	mov	_P2FUNC,#0x00
                                    466 ;	board/zbs29_BW_ssd1619/board.c:20: P0DIR = 0;
      007A8F 75 B9 00         [24]  467 	mov	_P0DIR,#0x00
                                    468 ;	board/zbs29_BW_ssd1619/board.c:21: P0 = 0;
      007A92 75 80 00         [24]  469 	mov	_P0,#0x00
                                    470 ;	board/zbs29_BW_ssd1619/board.c:22: P0PULL = 0;
      007A95 75 BC 00         [24]  471 	mov	_P0PULL,#0x00
                                    472 ;	board/zbs29_BW_ssd1619/board.c:23: P1DIR = 0;
      007A98 75 BA 00         [24]  473 	mov	_P1DIR,#0x00
                                    474 ;	board/zbs29_BW_ssd1619/board.c:24: P1 = 2;
      007A9B 75 90 02         [24]  475 	mov	_P1,#0x02
                                    476 ;	board/zbs29_BW_ssd1619/board.c:25: P1PULL = 0;
      007A9E 75 BD 00         [24]  477 	mov	_P1PULL,#0x00
                                    478 ;	board/zbs29_BW_ssd1619/board.c:26: P2DIR = 2;
      007AA1 75 BB 02         [24]  479 	mov	_P2DIR,#0x02
                                    480 ;	board/zbs29_BW_ssd1619/board.c:27: P2 =1;
      007AA4 75 A0 01         [24]  481 	mov	_P2,#0x01
                                    482 ;	board/zbs29_BW_ssd1619/board.c:28: P2PULL = 0;
      007AA7 75 BE 00         [24]  483 	mov	_P2PULL,#0x00
                                    484 ;	board/zbs29_BW_ssd1619/board.c:29: }
      007AAA 22               [24]  485 	ret
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'boardInit'
                                    488 ;------------------------------------------------------------
                                    489 ;	board/zbs29_BW_ssd1619/board.c:31: void boardInit(void)
                                    490 ;	-----------------------------------------
                                    491 ;	 function boardInit
                                    492 ;	-----------------------------------------
      007AAB                        493 _boardInit:
                                    494 ;	board/zbs29_BW_ssd1619/board.c:33: pr("board init\n");
      007AAB 74 04            [12]  495 	mov	a,#___str_0
      007AAD C0 E0            [24]  496 	push	acc
      007AAF 74 C2            [12]  497 	mov	a,#(___str_0 >> 8)
      007AB1 C0 E0            [24]  498 	push	acc
      007AB3 12 71 BC         [24]  499 	lcall	_pr
      007AB6 15 81            [12]  500 	dec	sp
      007AB8 15 81            [12]  501 	dec	sp
                                    502 ;	board/zbs29_BW_ssd1619/board.c:35: P0FUNC |= (1 << 0) | (1 << 1) | (1 << 2) | (1 << 6);
      007ABA 43 AD 47         [24]  503 	orl	_P0FUNC,#0x47
                                    504 ;	board/zbs29_BW_ssd1619/board.c:36: P0DIR = (P0DIR &~ ((1 << 0) | (1 << 1) | (1 << 6))) | (1 << 2);
      007ABD 74 BC            [12]  505 	mov	a,#0xbc
      007ABF 55 B9            [12]  506 	anl	a,_P0DIR
      007AC1 44 04            [12]  507 	orl	a,#0x04
      007AC3 F5 B9            [12]  508 	mov	_P0DIR,a
                                    509 ;	board/zbs29_BW_ssd1619/board.c:39: P0PULL = (P0PULL &~ ((1 << 0) | (1 << 1) | (1 << 6))) | (1 << 2);
      007AC5 74 BC            [12]  510 	mov	a,#0xbc
      007AC7 55 BC            [12]  511 	anl	a,_P0PULL
      007AC9 44 04            [12]  512 	orl	a,#0x04
      007ACB F5 BC            [12]  513 	mov	_P0PULL,a
                                    514 ;	board/zbs29_BW_ssd1619/board.c:42: P1FUNC &=~ ((1 << 1) | (1 << 2) | (1 << 5) | (1 << 6) | (1 << 7));
      007ACD 53 AE 19         [24]  515 	anl	_P1FUNC,#0x19
                                    516 ;	board/zbs29_BW_ssd1619/board.c:43: P1DIR &= ~((1 << 1) | (1 << 2) | (1 << 5) | (1 << 6) | (1 << 7));
      007AD0 53 BA 19         [24]  517 	anl	_P1DIR,#0x19
                                    518 ;	board/zbs29_BW_ssd1619/board.c:46: P2FUNC &= ~((1 << 0) | (1 << 1) | (1 << 2));
      007AD3 53 AF F8         [24]  519 	anl	_P2FUNC,#0xf8
                                    520 ;	board/zbs29_BW_ssd1619/board.c:47: P2DIR = (P2DIR &~ ((1 << 0) | (1 << 2))) | (1 << 1);
      007AD6 74 FA            [12]  521 	mov	a,#0xfa
      007AD8 55 BB            [12]  522 	anl	a,_P2DIR
      007ADA 44 02            [12]  523 	orl	a,#0x02
      007ADC F5 BB            [12]  524 	mov	_P2DIR,a
                                    525 ;	board/zbs29_BW_ssd1619/board.c:50: P1_1 = 1;
                                    526 ;	assignBit
      007ADE D2 91            [12]  527 	setb	_P1_1
                                    528 ;	board/zbs29_BW_ssd1619/board.c:51: P1_7 = 1;
                                    529 ;	assignBit
      007AE0 D2 97            [12]  530 	setb	_P1_7
                                    531 ;	board/zbs29_BW_ssd1619/board.c:54: P1_2 = 1;
                                    532 ;	assignBit
      007AE2 D2 92            [12]  533 	setb	_P1_2
                                    534 ;	board/zbs29_BW_ssd1619/board.c:55: P1_5 = 0;
                                    535 ;	assignBit
      007AE4 C2 95            [12]  536 	clr	_P1_5
                                    537 ;	board/zbs29_BW_ssd1619/board.c:56: P1_6 = 1;
                                    538 ;	assignBit
      007AE6 D2 96            [12]  539 	setb	_P1_6
                                    540 ;	board/zbs29_BW_ssd1619/board.c:58: spiInit();
                                    541 ;	board/zbs29_BW_ssd1619/board.c:59: }
      007AE8 02 5C 7C         [24]  542 	ljmp	_spiInit
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'boardGetOwnMac'
                                    545 ;------------------------------------------------------------
                                    546 ;mac                       Allocated with name '_boardGetOwnMac_mac_65536_61'
                                    547 ;------------------------------------------------------------
                                    548 ;	board/zbs29_BW_ssd1619/board.c:62: __bit boardGetOwnMac(uint8_t __xdata *mac)
                                    549 ;	-----------------------------------------
                                    550 ;	 function boardGetOwnMac
                                    551 ;	-----------------------------------------
      007AEB                        552 _boardGetOwnMac:
      007AEB AF 83            [24]  553 	mov	r7,dph
      007AED E5 82            [12]  554 	mov	a,dpl
      007AEF 90 E5 88         [24]  555 	mov	dptr,#_boardGetOwnMac_mac_65536_61
      007AF2 F0               [24]  556 	movx	@dptr,a
      007AF3 EF               [12]  557 	mov	a,r7
      007AF4 A3               [24]  558 	inc	dptr
      007AF5 F0               [24]  559 	movx	@dptr,a
                                    560 ;	board/zbs29_BW_ssd1619/board.c:64: return flashRead(FLASH_INFOPAGE_ADDR + 0x10, mac, 8);
      007AF6 90 E5 88         [24]  561 	mov	dptr,#_boardGetOwnMac_mac_65536_61
      007AF9 E0               [24]  562 	movx	a,@dptr
      007AFA FE               [12]  563 	mov	r6,a
      007AFB A3               [24]  564 	inc	dptr
      007AFC E0               [24]  565 	movx	a,@dptr
      007AFD FF               [12]  566 	mov	r7,a
      007AFE 90 E3 61         [24]  567 	mov	dptr,#_flashRead_PARM_2
      007B01 EE               [12]  568 	mov	a,r6
      007B02 F0               [24]  569 	movx	@dptr,a
      007B03 EF               [12]  570 	mov	a,r7
      007B04 A3               [24]  571 	inc	dptr
      007B05 F0               [24]  572 	movx	@dptr,a
      007B06 90 E3 63         [24]  573 	mov	dptr,#_flashRead_PARM_3
      007B09 74 08            [12]  574 	mov	a,#0x08
      007B0B F0               [24]  575 	movx	@dptr,a
      007B0C E4               [12]  576 	clr	a
      007B0D A3               [24]  577 	inc	dptr
      007B0E F0               [24]  578 	movx	@dptr,a
      007B0F 90 00 10         [24]  579 	mov	dptr,#0x0010
      007B12 75 F0 80         [24]  580 	mov	b,#0x80
      007B15 E4               [12]  581 	clr	a
      007B16 12 64 FE         [24]  582 	lcall	_flashRead
      007B19 92 17            [24]  583 	mov  _boardGetOwnMac_sloc0_1_0,c
                                    584 ;	board/zbs29_BW_ssd1619/board.c:65: }
      007B1B 22               [24]  585 	ret
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'prvUpdateApplierGet'
                                    588 ;------------------------------------------------------------
                                    589 ;	board/zbs29_BW_ssd1619/board.c:68: static uint32_t prvUpdateApplierGet(void) __naked
                                    590 ;	-----------------------------------------
                                    591 ;	 function prvUpdateApplierGet
                                    592 ;	-----------------------------------------
      007B1C                        593 _prvUpdateApplierGet:
                                    594 ;	naked function: no prologue.
                                    595 ;	board/zbs29_BW_ssd1619/board.c:140: );
      007B1C 90 7B 27         [24]  596 	mov	  DPTR, #00098$			
      007B1F 74 83            [12]  597 	mov	  A, #00099$			
      007B21 C3               [12]  598 	clr	  C						
      007B22 95 82            [12]  599 	subb	 A, DPL				
      007B24 F5 F0            [12]  600 	mov	  B, A					
      007B26 22               [24]  601 	ret							
      007B27                        602 	00098$:
      007B27 75 8E 21         [24]  603 	mov	  _CLKSPEED, #0x21		
      007B2A 75 FF 04         [24]  604 	mov	  _CFGPAGE, #0x04		
      007B2D 78 00            [12]  605 	mov	  R0, #0				
      007B2F                        606 	00001$:
      007B2F 90 E0 00         [24]  607 	mov	  DPTR, #0xe000			
      007B32 79 04            [12]  608 	mov	  R1, #0x04				
      007B34 7A 00            [12]  609 	mov	  R2, #0x00				
      007B36                        610 	000010$:
      007B36 75 EE 00         [24]  611 	mov	  _SPITX, #0x00			
      007B39 75 EC A0         [24]  612 	mov	  _SPICFG, #0xa0		
      007B3C                        613 	000011$:
      007B3C E5 EC            [12]  614 	mov	  A, _SPICFG			
      007B3E 20 E5 FB         [24]  615 	jb	   A.5, 000011$			
      007B41 E5 EF            [12]  616 	mov	  A, _SPIRX				
      007B43 F0               [24]  617 	movx	 @DPTR, A				
      007B44 A3               [24]  618 	inc	  DPTR					
      007B45 DA EF            [24]  619 	djnz	 R2, 000010$			
      007B47 D9 ED            [24]  620 	djnz	 R1, 000010$			
      007B49 E4               [12]  621 	clr	  A						
      007B4A 43 C7 38         [24]  622 	orl	  _SETTINGS, #0x38		
      007B4D 75 DF 03         [24]  623 	mov	  _FWRTHREE, #0x03		
      007B50 88 D8            [24]  624 	mov	  _FPGNO, R0			
      007B52 F5 DB            [12]  625 	mov	  _FWRDSTL, A			
      007B54 F5 DC            [12]  626 	mov	  _FWRDSTH, A			
      007B56 75 DD FF         [24]  627 	mov	  _FWRLENL, #0xff		
      007B59 75 DE 03         [24]  628 	mov	  _FWRLENH, #0x03		
      007B5C F5 D9            [12]  629 	mov	  _FWRSRCL, A			
      007B5E 75 DA E0         [24]  630 	mov	  _FWRSRCH, #0xe0		
      007B61 43 D7 08         [24]  631 	orl	  _TRIGGER, #0x08		
      007B64                        632 	00050$:
      007B64 E5 CF            [12]  633 	mov	  A, _TCON2				
      007B66 30 E3 FB         [24]  634 	jnb	  A.3, 00050$			
      007B69 53 CF B7         [24]  635 	anl	  _TCON2, #~0x48		
      007B6C 53 C7 EF         [24]  636 	anl	  _SETTINGS, #~0x10		
      007B6F 08               [12]  637 	inc	  R0					
      007B70 B8 3F BC         [24]  638 	cjne	 R0, #63, 00001$		
      007B73 75 BF 80         [24]  639 	mov	  _WDTCONF, #0x80		
      007B76 75 BA 01         [24]  640 	mov	  _WDTENA, #0x01		
      007B79 74 FF            [12]  641 	mov	  A, #0xff				
      007B7B F5 BE            [12]  642 	mov	  _WDTRSTVALH, A		
      007B7D F5 BD            [12]  643 	mov	  _WDTRSTVALM, A		
      007B7F F5 BC            [12]  644 	mov	  _WDTRSTVALL, A		
      007B81                        645 	00090$:
      007B81 80 FE            [24]  646 	sjmp	 00090$				
      007B83                        647 	00099$:
                                    648 ;	board/zbs29_BW_ssd1619/board.c:141: }
                                    649 ;	naked function: no epilogue.
                                    650 ;------------------------------------------------------------
                                    651 ;Allocation info for local variables in function 'selfUpdate'
                                    652 ;------------------------------------------------------------
                                    653 ;updaterInfo               Allocated with name '_selfUpdate_updaterInfo_65536_66'
                                    654 ;src                       Allocated with name '_selfUpdate_src_65536_66'
                                    655 ;i                         Allocated with name '_selfUpdate_i_65536_66'
                                    656 ;len                       Allocated with name '_selfUpdate_len_65536_66'
                                    657 ;dst                       Allocated with name '_selfUpdate_dst_65536_66'
                                    658 ;------------------------------------------------------------
                                    659 ;	board/zbs29_BW_ssd1619/board.c:143: void selfUpdate(void)
                                    660 ;	-----------------------------------------
                                    661 ;	 function selfUpdate
                                    662 ;	-----------------------------------------
      007B83                        663 _selfUpdate:
      007B83 C0 07            [24]  664 	push	ar7
      007B85 C0 06            [24]  665 	push	ar6
      007B87 C0 05            [24]  666 	push	ar5
      007B89 C0 04            [24]  667 	push	ar4
      007B8B C0 03            [24]  668 	push	ar3
      007B8D C0 02            [24]  669 	push	ar2
      007B8F C0 01            [24]  670 	push	ar1
                                    671 ;	board/zbs29_BW_ssd1619/board.c:145: uint32_t updaterInfo = prvUpdateApplierGet();
      007B91 12 7B 1C         [24]  672 	lcall	_prvUpdateApplierGet
      007B94 AC 82            [24]  673 	mov	r4,dpl
      007B96 AD 83            [24]  674 	mov	r5,dph
      007B98 AE F0            [24]  675 	mov	r6,b
                                    676 ;	board/zbs29_BW_ssd1619/board.c:146: uint8_t __code *src = (uint8_t __code*)updaterInfo;
      007B9A 8C 02            [24]  677 	mov	ar2,r4
      007B9C 8D 03            [24]  678 	mov	ar3,r5
                                    679 ;	board/zbs29_BW_ssd1619/board.c:147: uint8_t i, len = updaterInfo >> 16;
      007B9E 8E 07            [24]  680 	mov	ar7,r6
                                    681 ;	board/zbs29_BW_ssd1619/board.c:148: uint8_t __xdata *dst = tempBuffer;
                                    682 ;	board/zbs29_BW_ssd1619/board.c:150: for (i = len; i ; i--)
      007BA0 7D 48            [12]  683 	mov	r5,#_tempBuffer
      007BA2 7E E4            [12]  684 	mov	r6,#(_tempBuffer >> 8)
      007BA4 8F 04            [24]  685 	mov	ar4,r7
      007BA6                        686 00105$:
      007BA6 EC               [12]  687 	mov	a,r4
      007BA7 60 1A            [24]  688 	jz	00101$
                                    689 ;	board/zbs29_BW_ssd1619/board.c:151: *dst++ = *src++;
      007BA9 8A 82            [24]  690 	mov	dpl,r2
      007BAB 8B 83            [24]  691 	mov	dph,r3
      007BAD E4               [12]  692 	clr	a
      007BAE 93               [24]  693 	movc	a,@a+dptr
      007BAF F9               [12]  694 	mov	r1,a
      007BB0 A3               [24]  695 	inc	dptr
      007BB1 AA 82            [24]  696 	mov	r2,dpl
      007BB3 AB 83            [24]  697 	mov	r3,dph
      007BB5 8D 82            [24]  698 	mov	dpl,r5
      007BB7 8E 83            [24]  699 	mov	dph,r6
      007BB9 E9               [12]  700 	mov	a,r1
      007BBA F0               [24]  701 	movx	@dptr,a
      007BBB A3               [24]  702 	inc	dptr
      007BBC AD 82            [24]  703 	mov	r5,dpl
      007BBE AE 83            [24]  704 	mov	r6,dph
                                    705 ;	board/zbs29_BW_ssd1619/board.c:150: for (i = len; i ; i--)
      007BC0 1C               [12]  706 	dec	r4
      007BC1 80 E3            [24]  707 	sjmp	00105$
      007BC3                        708 00101$:
                                    709 ;	board/zbs29_BW_ssd1619/board.c:153: if (!flashWrite(0xfc00, tempBuffer, len, true))
      007BC3 90 E3 57         [24]  710 	mov	dptr,#_flashWrite_PARM_2
      007BC6 74 48            [12]  711 	mov	a,#_tempBuffer
      007BC8 F0               [24]  712 	movx	@dptr,a
      007BC9 74 E4            [12]  713 	mov	a,#(_tempBuffer >> 8)
      007BCB A3               [24]  714 	inc	dptr
      007BCC F0               [24]  715 	movx	@dptr,a
      007BCD 90 E3 59         [24]  716 	mov	dptr,#_flashWrite_PARM_3
      007BD0 EF               [12]  717 	mov	a,r7
      007BD1 F0               [24]  718 	movx	@dptr,a
      007BD2 E4               [12]  719 	clr	a
      007BD3 A3               [24]  720 	inc	dptr
      007BD4 F0               [24]  721 	movx	@dptr,a
                                    722 ;	assignBit
      007BD5 D2 13            [12]  723 	setb	_flashWrite_PARM_4
      007BD7 90 FC 00         [24]  724 	mov	dptr,#0xfc00
      007BDA E4               [12]  725 	clr	a
      007BDB F5 F0            [12]  726 	mov	b,a
      007BDD 12 64 2B         [24]  727 	lcall	_flashWrite
      007BE0 40 0F            [24]  728 	jc	00103$
                                    729 ;	board/zbs29_BW_ssd1619/board.c:154: pr("failed to write updater\n");
      007BE2 74 10            [12]  730 	mov	a,#___str_1
      007BE4 C0 E0            [24]  731 	push	acc
      007BE6 74 C2            [12]  732 	mov	a,#(___str_1 >> 8)
      007BE8 C0 E0            [24]  733 	push	acc
      007BEA 12 71 BC         [24]  734 	lcall	_pr
      007BED 15 81            [12]  735 	dec	sp
      007BEF 15 81            [12]  736 	dec	sp
      007BF1                        737 00103$:
                                    738 ;	board/zbs29_BW_ssd1619/board.c:156: IEN_EA = 0;	//ints off
                                    739 ;	assignBit
      007BF1 C2 AF            [12]  740 	clr	_IEN_EA
                                    741 ;	board/zbs29_BW_ssd1619/board.c:162: );
      007BF3 90 FC 00         [24]  742 	mov	dptr, #0xfc00			
      007BF6 E4               [12]  743 	clr	a						
      007BF7 73               [24]  744 	jmp	@a+dptr					
                                    745 ;	board/zbs29_BW_ssd1619/board.c:163: }
      007BF8 D0 01            [24]  746 	pop	ar1
      007BFA D0 02            [24]  747 	pop	ar2
      007BFC D0 03            [24]  748 	pop	ar3
      007BFE D0 04            [24]  749 	pop	ar4
      007C00 D0 05            [24]  750 	pop	ar5
      007C02 D0 06            [24]  751 	pop	ar6
      007C04 D0 07            [24]  752 	pop	ar7
      007C06 22               [24]  753 	ret
                                    754 	.area CSEG    (CODE)
                                    755 	.area CONST   (CODE)
                                    756 	.area CONST   (CODE)
      00C204                        757 ___str_0:
      00C204 62 6F 61 72 64 20 69   758 	.ascii "board init"
             6E 69 74
      00C20E 0A                     759 	.db 0x0a
      00C20F 00                     760 	.db 0x00
                                    761 	.area CSEG    (CODE)
                                    762 	.area CONST   (CODE)
      00C210                        763 ___str_1:
      00C210 66 61 69 6C 65 64 20   764 	.ascii "failed to write updater"
             74 6F 20 77 72 69 74
             65 20 75 70 64 61 74
             65 72
      00C227 0A                     765 	.db 0x0a
      00C228 00                     766 	.db 0x00
                                    767 	.area CSEG    (CODE)
                                    768 	.area XINIT   (CODE)
                                    769 	.area CABS    (ABS,CODE)
