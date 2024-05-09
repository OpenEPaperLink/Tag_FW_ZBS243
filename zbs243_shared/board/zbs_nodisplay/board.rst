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
      000012                        333 _boardGetOwnMac_sloc0_1_0:
      000012                        334 	.ds 1
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
                           00DFFD   404 _RADIO_perChannelSetting1	=	0xdffd
      00FA42                        405 _tempBuffer::
      00FA42                        406 	.ds 320
      00FB82                        407 _boardGetOwnMac_mac_65536_36:
      00FB82                        408 	.ds 2
                                    409 ;--------------------------------------------------------
                                    410 ; absolute external ram data
                                    411 ;--------------------------------------------------------
                                    412 	.area XABS    (ABS,XDATA)
                                    413 ;--------------------------------------------------------
                                    414 ; external initialized ram data
                                    415 ;--------------------------------------------------------
                                    416 	.area XISEG   (XDATA)
                                    417 	.area HOME    (CODE)
                                    418 	.area GSINIT0 (CODE)
                                    419 	.area GSINIT1 (CODE)
                                    420 	.area GSINIT2 (CODE)
                                    421 	.area GSINIT3 (CODE)
                                    422 	.area GSINIT4 (CODE)
                                    423 	.area GSINIT5 (CODE)
                                    424 	.area GSINIT  (CODE)
                                    425 	.area GSFINAL (CODE)
                                    426 	.area CSEG    (CODE)
                                    427 ;--------------------------------------------------------
                                    428 ; global & static initialisations
                                    429 ;--------------------------------------------------------
                                    430 	.area HOME    (CODE)
                                    431 	.area GSINIT  (CODE)
                                    432 	.area GSFINAL (CODE)
                                    433 	.area GSINIT  (CODE)
                                    434 ;--------------------------------------------------------
                                    435 ; Home
                                    436 ;--------------------------------------------------------
                                    437 	.area HOME    (CODE)
                                    438 	.area HOME    (CODE)
                                    439 ;--------------------------------------------------------
                                    440 ; code
                                    441 ;--------------------------------------------------------
                                    442 	.area CSEG    (CODE)
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'powerPortsDownForSleep'
                                    445 ;------------------------------------------------------------
                                    446 ;	board/zbs_nodisplay/../boardZBS29common.c:15: void powerPortsDownForSleep(void)
                                    447 ;	-----------------------------------------
                                    448 ;	 function powerPortsDownForSleep
                                    449 ;	-----------------------------------------
      00444A                        450 _powerPortsDownForSleep:
                           000007   451 	ar7 = 0x07
                           000006   452 	ar6 = 0x06
                           000005   453 	ar5 = 0x05
                           000004   454 	ar4 = 0x04
                           000003   455 	ar3 = 0x03
                           000002   456 	ar2 = 0x02
                           000001   457 	ar1 = 0x01
                           000000   458 	ar0 = 0x00
                                    459 ;	board/zbs_nodisplay/../boardZBS29common.c:17: P0FUNC = 0;
      00444A 75 AD 00         [24]  460 	mov	_P0FUNC,#0x00
                                    461 ;	board/zbs_nodisplay/../boardZBS29common.c:18: P1FUNC = 0;
      00444D 75 AE 00         [24]  462 	mov	_P1FUNC,#0x00
                                    463 ;	board/zbs_nodisplay/../boardZBS29common.c:19: P2FUNC = 0;
      004450 75 AF 00         [24]  464 	mov	_P2FUNC,#0x00
                                    465 ;	board/zbs_nodisplay/../boardZBS29common.c:20: P0DIR = 0;
      004453 75 B9 00         [24]  466 	mov	_P0DIR,#0x00
                                    467 ;	board/zbs_nodisplay/../boardZBS29common.c:21: P0 = 0;
      004456 75 80 00         [24]  468 	mov	_P0,#0x00
                                    469 ;	board/zbs_nodisplay/../boardZBS29common.c:22: P0PULL = 0;
      004459 75 BC 00         [24]  470 	mov	_P0PULL,#0x00
                                    471 ;	board/zbs_nodisplay/../boardZBS29common.c:23: P1DIR = 0;
      00445C 75 BA 00         [24]  472 	mov	_P1DIR,#0x00
                                    473 ;	board/zbs_nodisplay/../boardZBS29common.c:24: P1 = 2;
      00445F 75 90 02         [24]  474 	mov	_P1,#0x02
                                    475 ;	board/zbs_nodisplay/../boardZBS29common.c:25: P1PULL = 0;
      004462 75 BD 00         [24]  476 	mov	_P1PULL,#0x00
                                    477 ;	board/zbs_nodisplay/../boardZBS29common.c:26: P2DIR = 2;
      004465 75 BB 02         [24]  478 	mov	_P2DIR,#0x02
                                    479 ;	board/zbs_nodisplay/../boardZBS29common.c:27: P2 =1;
      004468 75 A0 01         [24]  480 	mov	_P2,#0x01
                                    481 ;	board/zbs_nodisplay/../boardZBS29common.c:28: P2PULL = 0;
      00446B 75 BE 00         [24]  482 	mov	_P2PULL,#0x00
                                    483 ;	board/zbs_nodisplay/../boardZBS29common.c:29: }
      00446E 22               [24]  484 	ret
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'boardInit'
                                    487 ;------------------------------------------------------------
                                    488 ;	board/zbs_nodisplay/../boardZBS29common.c:31: void boardInit(void)
                                    489 ;	-----------------------------------------
                                    490 ;	 function boardInit
                                    491 ;	-----------------------------------------
      00446F                        492 _boardInit:
                                    493 ;	board/zbs_nodisplay/../boardZBS29common.c:34: P0FUNC |= (1 << 0) | (1 << 1) | (1 << 2) | (1 << 6);
      00446F 43 AD 47         [24]  494 	orl	_P0FUNC,#0x47
                                    495 ;	board/zbs_nodisplay/../boardZBS29common.c:35: P0DIR = (P0DIR &~ ((1 << 0) | (1 << 1) | (1 << 6))) | (1 << 2);
      004472 74 BC            [12]  496 	mov	a,#0xbc
      004474 55 B9            [12]  497 	anl	a,_P0DIR
      004476 44 04            [12]  498 	orl	a,#0x04
      004478 F5 B9            [12]  499 	mov	_P0DIR,a
                                    500 ;	board/zbs_nodisplay/../boardZBS29common.c:38: P0PULL = (P0PULL &~ ((1 << 0) | (1 << 1) | (1 << 6))) | (1 << 2);
      00447A 74 BC            [12]  501 	mov	a,#0xbc
      00447C 55 BC            [12]  502 	anl	a,_P0PULL
      00447E 44 04            [12]  503 	orl	a,#0x04
      004480 F5 BC            [12]  504 	mov	_P0PULL,a
                                    505 ;	board/zbs_nodisplay/../boardZBS29common.c:41: P1FUNC &=~ ((1 << 1) | (1 << 2) | (1 << 7));
      004482 53 AE 79         [24]  506 	anl	_P1FUNC,#0x79
                                    507 ;	board/zbs_nodisplay/../boardZBS29common.c:42: P1DIR &= ~((1 << 1) | (1 << 2) | (1 << 7));
      004485 53 BA 79         [24]  508 	anl	_P1DIR,#0x79
                                    509 ;	board/zbs_nodisplay/../boardZBS29common.c:45: P2FUNC &= ~((1 << 0) | (1 << 1) | (1 << 2));
      004488 53 AF F8         [24]  510 	anl	_P2FUNC,#0xf8
                                    511 ;	board/zbs_nodisplay/../boardZBS29common.c:46: P2DIR = (P2DIR &~ ((1 << 0) | (1 << 2))) | (1 << 1);
      00448B 74 FA            [12]  512 	mov	a,#0xfa
      00448D 55 BB            [12]  513 	anl	a,_P2DIR
      00448F 44 02            [12]  514 	orl	a,#0x02
      004491 F5 BB            [12]  515 	mov	_P2DIR,a
                                    516 ;	board/zbs_nodisplay/../boardZBS29common.c:49: P1_1 = 1;
                                    517 ;	assignBit
      004493 D2 91            [12]  518 	setb	_P1_1
                                    519 ;	board/zbs_nodisplay/../boardZBS29common.c:50: P1_7 = 1;
                                    520 ;	assignBit
      004495 D2 97            [12]  521 	setb	_P1_7
                                    522 ;	board/zbs_nodisplay/../boardZBS29common.c:53: P1_2 = 0;
                                    523 ;	assignBit
      004497 C2 92            [12]  524 	clr	_P1_2
                                    525 ;	board/zbs_nodisplay/../boardZBS29common.c:55: spiInit();
                                    526 ;	board/zbs_nodisplay/../boardZBS29common.c:56: }
      004499 02 27 C9         [24]  527 	ljmp	_spiInit
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'boardGetOwnMac'
                                    530 ;------------------------------------------------------------
                                    531 ;mac                       Allocated with name '_boardGetOwnMac_mac_65536_36'
                                    532 ;------------------------------------------------------------
                                    533 ;	board/zbs_nodisplay/../boardZBS29common.c:59: __bit boardGetOwnMac(uint8_t __xdata *mac)
                                    534 ;	-----------------------------------------
                                    535 ;	 function boardGetOwnMac
                                    536 ;	-----------------------------------------
      00449C                        537 _boardGetOwnMac:
      00449C AF 83            [24]  538 	mov	r7,dph
      00449E E5 82            [12]  539 	mov	a,dpl
      0044A0 90 FB 82         [24]  540 	mov	dptr,#_boardGetOwnMac_mac_65536_36
      0044A3 F0               [24]  541 	movx	@dptr,a
      0044A4 EF               [12]  542 	mov	a,r7
      0044A5 A3               [24]  543 	inc	dptr
      0044A6 F0               [24]  544 	movx	@dptr,a
                                    545 ;	board/zbs_nodisplay/../boardZBS29common.c:61: return flashRead(FLASH_INFOPAGE_ADDR + 0x10, mac, 8);
      0044A7 90 FB 82         [24]  546 	mov	dptr,#_boardGetOwnMac_mac_65536_36
      0044AA E0               [24]  547 	movx	a,@dptr
      0044AB FE               [12]  548 	mov	r6,a
      0044AC A3               [24]  549 	inc	dptr
      0044AD E0               [24]  550 	movx	a,@dptr
      0044AE FF               [12]  551 	mov	r7,a
      0044AF 90 FA 0B         [24]  552 	mov	dptr,#_flashRead_PARM_2
      0044B2 EE               [12]  553 	mov	a,r6
      0044B3 F0               [24]  554 	movx	@dptr,a
      0044B4 EF               [12]  555 	mov	a,r7
      0044B5 A3               [24]  556 	inc	dptr
      0044B6 F0               [24]  557 	movx	@dptr,a
      0044B7 90 FA 0D         [24]  558 	mov	dptr,#_flashRead_PARM_3
      0044BA 74 08            [12]  559 	mov	a,#0x08
      0044BC F0               [24]  560 	movx	@dptr,a
      0044BD E4               [12]  561 	clr	a
      0044BE A3               [24]  562 	inc	dptr
      0044BF F0               [24]  563 	movx	@dptr,a
      0044C0 90 00 10         [24]  564 	mov	dptr,#0x0010
      0044C3 75 F0 80         [24]  565 	mov	b,#0x80
      0044C6 E4               [12]  566 	clr	a
      0044C7 12 31 EB         [24]  567 	lcall	_flashRead
      0044CA 92 12            [24]  568 	mov  _boardGetOwnMac_sloc0_1_0,c
                                    569 ;	board/zbs_nodisplay/../boardZBS29common.c:62: }
      0044CC 22               [24]  570 	ret
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'prvUpdateApplierGet'
                                    573 ;------------------------------------------------------------
                                    574 ;	board/zbs_nodisplay/../boardZBS29common.c:65: static uint32_t prvUpdateApplierGet(void) __naked
                                    575 ;	-----------------------------------------
                                    576 ;	 function prvUpdateApplierGet
                                    577 ;	-----------------------------------------
      0044CD                        578 _prvUpdateApplierGet:
                                    579 ;	naked function: no prologue.
                                    580 ;	board/zbs_nodisplay/../boardZBS29common.c:137: );
      0044CD 90 44 D8         [24]  581 	mov	  DPTR, #00098$			
      0044D0 74 34            [12]  582 	mov	  A, #00099$			
      0044D2 C3               [12]  583 	clr	  C						
      0044D3 95 82            [12]  584 	subb	 A, DPL				
      0044D5 F5 F0            [12]  585 	mov	  B, A					
      0044D7 22               [24]  586 	ret							
      0044D8                        587 	00098$:
      0044D8 75 8E 21         [24]  588 	mov	  _CLKSPEED, #0x21		
      0044DB 75 FF 04         [24]  589 	mov	  _CFGPAGE, #0x04		
      0044DE 78 00            [12]  590 	mov	  R0, #0				
      0044E0                        591 	00001$:
      0044E0 90 E0 00         [24]  592 	mov	  DPTR, #0xe000			
      0044E3 79 04            [12]  593 	mov	  R1, #0x04				
      0044E5 7A 00            [12]  594 	mov	  R2, #0x00				
      0044E7                        595 	000010$:
      0044E7 75 EE 00         [24]  596 	mov	  _SPITX, #0x00			
      0044EA 75 EC A0         [24]  597 	mov	  _SPICFG, #0xa0		
      0044ED                        598 	000011$:
      0044ED E5 EC            [12]  599 	mov	  A, _SPICFG			
      0044EF 20 E5 FB         [24]  600 	jb	   A.5, 000011$			
      0044F2 E5 EF            [12]  601 	mov	  A, _SPIRX				
      0044F4 F0               [24]  602 	movx	 @DPTR, A				
      0044F5 A3               [24]  603 	inc	  DPTR					
      0044F6 DA EF            [24]  604 	djnz	 R2, 000010$			
      0044F8 D9 ED            [24]  605 	djnz	 R1, 000010$			
      0044FA E4               [12]  606 	clr	  A						
      0044FB 43 C7 38         [24]  607 	orl	  _SETTINGS, #0x38		
      0044FE 75 DF 03         [24]  608 	mov	  _FWRTHREE, #0x03		
      004501 88 D8            [24]  609 	mov	  _FPGNO, R0			
      004503 F5 DB            [12]  610 	mov	  _FWRDSTL, A			
      004505 F5 DC            [12]  611 	mov	  _FWRDSTH, A			
      004507 75 DD FF         [24]  612 	mov	  _FWRLENL, #0xff		
      00450A 75 DE 03         [24]  613 	mov	  _FWRLENH, #0x03		
      00450D F5 D9            [12]  614 	mov	  _FWRSRCL, A			
      00450F 75 DA E0         [24]  615 	mov	  _FWRSRCH, #0xe0		
      004512 43 D7 08         [24]  616 	orl	  _TRIGGER, #0x08		
      004515                        617 	00050$:
      004515 E5 CF            [12]  618 	mov	  A, _TCON2				
      004517 30 E3 FB         [24]  619 	jnb	  A.3, 00050$			
      00451A 53 CF B7         [24]  620 	anl	  _TCON2, #~0x48		
      00451D 53 C7 EF         [24]  621 	anl	  _SETTINGS, #~0x10		
      004520 08               [12]  622 	inc	  R0					
      004521 B8 3F BC         [24]  623 	cjne	 R0, #63, 00001$		
      004524 75 BF 80         [24]  624 	mov	  _WDTCONF, #0x80		
      004527 75 BA 01         [24]  625 	mov	  _WDTENA, #0x01		
      00452A 74 FF            [12]  626 	mov	  A, #0xff				
      00452C F5 BE            [12]  627 	mov	  _WDTRSTVALH, A		
      00452E F5 BD            [12]  628 	mov	  _WDTRSTVALM, A		
      004530 F5 BC            [12]  629 	mov	  _WDTRSTVALL, A		
      004532                        630 	00090$:
      004532 80 FE            [24]  631 	sjmp	 00090$				
      004534                        632 	00099$:
                                    633 ;	board/zbs_nodisplay/../boardZBS29common.c:138: }
                                    634 ;	naked function: no epilogue.
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'selfUpdate'
                                    637 ;------------------------------------------------------------
                                    638 ;updaterInfo               Allocated with name '_selfUpdate_updaterInfo_65536_41'
                                    639 ;src                       Allocated with name '_selfUpdate_src_65536_41'
                                    640 ;i                         Allocated with name '_selfUpdate_i_65536_41'
                                    641 ;len                       Allocated with name '_selfUpdate_len_65536_41'
                                    642 ;dst                       Allocated with name '_selfUpdate_dst_65536_41'
                                    643 ;------------------------------------------------------------
                                    644 ;	board/zbs_nodisplay/../boardZBS29common.c:140: void selfUpdate(void)
                                    645 ;	-----------------------------------------
                                    646 ;	 function selfUpdate
                                    647 ;	-----------------------------------------
      004534                        648 _selfUpdate:
      004534 C0 07            [24]  649 	push	ar7
      004536 C0 06            [24]  650 	push	ar6
      004538 C0 05            [24]  651 	push	ar5
      00453A C0 04            [24]  652 	push	ar4
      00453C C0 03            [24]  653 	push	ar3
      00453E C0 02            [24]  654 	push	ar2
      004540 C0 01            [24]  655 	push	ar1
                                    656 ;	board/zbs_nodisplay/../boardZBS29common.c:142: uint32_t updaterInfo = prvUpdateApplierGet();
      004542 12 44 CD         [24]  657 	lcall	_prvUpdateApplierGet
      004545 AC 82            [24]  658 	mov	r4,dpl
      004547 AD 83            [24]  659 	mov	r5,dph
      004549 AE F0            [24]  660 	mov	r6,b
                                    661 ;	board/zbs_nodisplay/../boardZBS29common.c:143: uint8_t __code *src = (uint8_t __code*)updaterInfo;
      00454B 8C 02            [24]  662 	mov	ar2,r4
      00454D 8D 03            [24]  663 	mov	ar3,r5
                                    664 ;	board/zbs_nodisplay/../boardZBS29common.c:144: uint8_t i, len = updaterInfo >> 16;
      00454F 8E 07            [24]  665 	mov	ar7,r6
                                    666 ;	board/zbs_nodisplay/../boardZBS29common.c:145: uint8_t __xdata *dst = tempBuffer;
                                    667 ;	board/zbs_nodisplay/../boardZBS29common.c:147: for (i = len; i ; i--)
      004551 7D 42            [12]  668 	mov	r5,#_tempBuffer
      004553 7E FA            [12]  669 	mov	r6,#(_tempBuffer >> 8)
      004555 8F 04            [24]  670 	mov	ar4,r7
      004557                        671 00105$:
      004557 EC               [12]  672 	mov	a,r4
      004558 60 1A            [24]  673 	jz	00101$
                                    674 ;	board/zbs_nodisplay/../boardZBS29common.c:148: *dst++ = *src++;
      00455A 8A 82            [24]  675 	mov	dpl,r2
      00455C 8B 83            [24]  676 	mov	dph,r3
      00455E E4               [12]  677 	clr	a
      00455F 93               [24]  678 	movc	a,@a+dptr
      004560 F9               [12]  679 	mov	r1,a
      004561 A3               [24]  680 	inc	dptr
      004562 AA 82            [24]  681 	mov	r2,dpl
      004564 AB 83            [24]  682 	mov	r3,dph
      004566 8D 82            [24]  683 	mov	dpl,r5
      004568 8E 83            [24]  684 	mov	dph,r6
      00456A E9               [12]  685 	mov	a,r1
      00456B F0               [24]  686 	movx	@dptr,a
      00456C A3               [24]  687 	inc	dptr
      00456D AD 82            [24]  688 	mov	r5,dpl
      00456F AE 83            [24]  689 	mov	r6,dph
                                    690 ;	board/zbs_nodisplay/../boardZBS29common.c:147: for (i = len; i ; i--)
      004571 1C               [12]  691 	dec	r4
      004572 80 E3            [24]  692 	sjmp	00105$
      004574                        693 00101$:
                                    694 ;	board/zbs_nodisplay/../boardZBS29common.c:150: if (!flashWrite(0xfc00, tempBuffer, len, true))
      004574 90 FA 01         [24]  695 	mov	dptr,#_flashWrite_PARM_2
      004577 74 42            [12]  696 	mov	a,#_tempBuffer
      004579 F0               [24]  697 	movx	@dptr,a
      00457A 74 FA            [12]  698 	mov	a,#(_tempBuffer >> 8)
      00457C A3               [24]  699 	inc	dptr
      00457D F0               [24]  700 	movx	@dptr,a
      00457E 90 FA 03         [24]  701 	mov	dptr,#_flashWrite_PARM_3
      004581 EF               [12]  702 	mov	a,r7
      004582 F0               [24]  703 	movx	@dptr,a
      004583 E4               [12]  704 	clr	a
      004584 A3               [24]  705 	inc	dptr
      004585 F0               [24]  706 	movx	@dptr,a
                                    707 ;	assignBit
      004586 D2 0E            [12]  708 	setb	_flashWrite_PARM_4
      004588 90 FC 00         [24]  709 	mov	dptr,#0xfc00
      00458B E4               [12]  710 	clr	a
      00458C F5 F0            [12]  711 	mov	b,a
      00458E 12 31 18         [24]  712 	lcall	_flashWrite
      004591 40 0F            [24]  713 	jc	00103$
                                    714 ;	board/zbs_nodisplay/../boardZBS29common.c:151: pr("failed to write updater\n");
      004593 74 B2            [12]  715 	mov	a,#___str_0
      004595 C0 E0            [24]  716 	push	acc
      004597 74 4C            [12]  717 	mov	a,#(___str_0 >> 8)
      004599 C0 E0            [24]  718 	push	acc
      00459B 12 3B 80         [24]  719 	lcall	_pr
      00459E 15 81            [12]  720 	dec	sp
      0045A0 15 81            [12]  721 	dec	sp
      0045A2                        722 00103$:
                                    723 ;	board/zbs_nodisplay/../boardZBS29common.c:153: IEN_EA = 0;	//ints off
                                    724 ;	assignBit
      0045A2 C2 AF            [12]  725 	clr	_IEN_EA
                                    726 ;	board/zbs_nodisplay/../boardZBS29common.c:159: );
      0045A4 90 FC 00         [24]  727 	mov	dptr, #0xfc00			
      0045A7 E4               [12]  728 	clr	a						
      0045A8 73               [24]  729 	jmp	@a+dptr					
                                    730 ;	board/zbs_nodisplay/../boardZBS29common.c:160: }
      0045A9 D0 01            [24]  731 	pop	ar1
      0045AB D0 02            [24]  732 	pop	ar2
      0045AD D0 03            [24]  733 	pop	ar3
      0045AF D0 04            [24]  734 	pop	ar4
      0045B1 D0 05            [24]  735 	pop	ar5
      0045B3 D0 06            [24]  736 	pop	ar6
      0045B5 D0 07            [24]  737 	pop	ar7
      0045B7 22               [24]  738 	ret
                                    739 	.area CSEG    (CODE)
                                    740 	.area CONST   (CODE)
                                    741 	.area CONST   (CODE)
      004CB2                        742 ___str_0:
      004CB2 66 61 69 6C 65 64 20   743 	.ascii "failed to write updater"
             74 6F 20 77 72 69 74
             65 20 75 70 64 61 74
             65 72
      004CC9 0A                     744 	.db 0x0a
      004CCA 00                     745 	.db 0x00
                                    746 	.area CSEG    (CODE)
                                    747 	.area XINIT   (CODE)
                                    748 	.area CABS    (ABS,CODE)
