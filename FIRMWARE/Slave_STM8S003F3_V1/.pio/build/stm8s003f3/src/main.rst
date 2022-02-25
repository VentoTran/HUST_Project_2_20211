                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _UART1_GetFlagStatus
                                     13 	.globl _UART1_SendData8
                                     14 	.globl _UART1_ReceiveData8
                                     15 	.globl _UART1_HalfDuplexCmd
                                     16 	.globl _UART1_Init
                                     17 	.globl _UART1_DeInit
                                     18 	.globl _GPIO_Init
                                     19 	.globl _CLK_HSIPrescalerConfig
                                     20 	.globl _TransferStatus2
                                     21 	.globl _TransferStatus1
                                     22 	.globl _RxCounter2
                                     23 	.globl _TxCounter2
                                     24 	.globl _RxCounter1
                                     25 	.globl _TxCounter1
                                     26 	.globl _NbrOfDataToRead2
                                     27 	.globl _NbrOfDataToRead1
                                     28 	.globl _RxBuffer2
                                     29 	.globl _RxBuffer1
                                     30 	.globl _TxBuffer2
                                     31 	.globl _TxBuffer1
                                     32 	.globl _Buffercmp
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DATA
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area INITIALIZED
      000001                         41 _TxBuffer1::
      000001                         42 	.ds 57
      00003A                         43 _TxBuffer2::
      00003A                         44 	.ds 57
      000073                         45 _RxBuffer1::
      000073                         46 	.ds 56
      0000AB                         47 _RxBuffer2::
      0000AB                         48 	.ds 56
      0000E3                         49 _NbrOfDataToRead1::
      0000E3                         50 	.ds 1
      0000E4                         51 _NbrOfDataToRead2::
      0000E4                         52 	.ds 1
      0000E5                         53 _TxCounter1::
      0000E5                         54 	.ds 1
      0000E6                         55 _RxCounter1::
      0000E6                         56 	.ds 1
      0000E7                         57 _TxCounter2::
      0000E7                         58 	.ds 1
      0000E8                         59 _RxCounter2::
      0000E8                         60 	.ds 1
      0000E9                         61 _TransferStatus1::
      0000E9                         62 	.ds 1
      0000EA                         63 _TransferStatus2::
      0000EA                         64 	.ds 1
                                     65 ;--------------------------------------------------------
                                     66 ; Stack segment in internal ram 
                                     67 ;--------------------------------------------------------
                                     68 	.area	SSEG
      00DDC4                         69 __start__stack:
      00DDC4                         70 	.ds	1
                                     71 
                                     72 ;--------------------------------------------------------
                                     73 ; absolute external ram data
                                     74 ;--------------------------------------------------------
                                     75 	.area DABS (ABS)
                                     76 
                                     77 ; default segment ordering for linker
                                     78 	.area HOME
                                     79 	.area GSINIT
                                     80 	.area GSFINAL
                                     81 	.area CONST
                                     82 	.area INITIALIZER
                                     83 	.area CODE
                                     84 
                                     85 ;--------------------------------------------------------
                                     86 ; interrupt vector 
                                     87 ;--------------------------------------------------------
                                     88 	.area HOME
      008000                         89 __interrupt_vect:
      008000 82 00 80 6F             90 	int s_GSINIT ; reset
      008004 82 00 DC AD             91 	int _TRAP_IRQHandler ; trap
      008008 82 00 DC AE             92 	int _TLI_IRQHandler ; int0
      00800C 82 00 DC AF             93 	int _AWU_IRQHandler ; int1
      008010 82 00 DC B0             94 	int _CLK_IRQHandler ; int2
      008014 82 00 DC B1             95 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 DC B2             96 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 DC B3             97 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 DC B4             98 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 DC B5             99 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00            100 	int 0x000000 ; int8
      00802C 82 00 00 00            101 	int 0x000000 ; int9
      008030 82 00 DC B6            102 	int _SPI_IRQHandler ; int10
      008034 82 00 DC B7            103 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 DC B8            104 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 DC B9            105 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 DC BA            106 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 00 00            107 	int 0x000000 ; int15
      008048 82 00 00 00            108 	int 0x000000 ; int16
      00804C 82 00 DC BB            109 	int _UART1_TX_IRQHandler ; int17
      008050 82 00 DC BC            110 	int _UART1_RX_IRQHandler ; int18
      008054 82 00 DC BD            111 	int _I2C_IRQHandler ; int19
      008058 82 00 00 00            112 	int 0x000000 ; int20
      00805C 82 00 00 00            113 	int 0x000000 ; int21
      008060 82 00 DC BE            114 	int _ADC1_IRQHandler ; int22
      008064 82 00 DC BF            115 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 DC C0            116 	int _EEPROM_EEC_IRQHandler ; int24
                                    117 ;--------------------------------------------------------
                                    118 ; global & static initialisations
                                    119 ;--------------------------------------------------------
                                    120 	.area HOME
                                    121 	.area GSINIT
                                    122 	.area GSFINAL
                                    123 	.area GSINIT
      00806F                        124 __sdcc_init_data:
                                    125 ; stm8_genXINIT() start
      00806F AE 00 00         [ 2]  126 	ldw x, #l_DATA
      008072 27 07            [ 1]  127 	jreq	00002$
      008074                        128 00001$:
      008074 72 4F 00 00      [ 1]  129 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  130 	decw x
      008079 26 F9            [ 1]  131 	jrne	00001$
      00807B                        132 00002$:
      00807B AE 00 EA         [ 2]  133 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  134 	jreq	00004$
      008080                        135 00003$:
      008080 D6 87 BF         [ 1]  136 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 00 00         [ 1]  137 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  138 	decw	x
      008087 26 F7            [ 1]  139 	jrne	00003$
      008089                        140 00004$:
                                    141 ; stm8_genXINIT() end
                                    142 	.area GSFINAL
      008089 CC 80 6C         [ 2]  143 	jp	__sdcc_program_startup
                                    144 ;--------------------------------------------------------
                                    145 ; Home
                                    146 ;--------------------------------------------------------
                                    147 	.area HOME
                                    148 	.area HOME
      00806C                        149 __sdcc_program_startup:
      00806C CC DB B9         [ 2]  150 	jp	_main
                                    151 ;	return from main will return to caller
                                    152 ;--------------------------------------------------------
                                    153 ; code
                                    154 ;--------------------------------------------------------
                                    155 	.area CODE
                                    156 ;	src\main.c: 75: void main(void)
                                    157 ;	-----------------------------------------
                                    158 ;	 function main
                                    159 ;	-----------------------------------------
      00DBB9                        160 _main:
                                    161 ;	src\main.c: 78: GPIO_Config();
      00DBB9 CD DC 48         [ 4]  162 	call	_GPIO_Config
                                    163 ;	src\main.c: 81: CLK_Config();
      00DBBC CD DC 41         [ 4]  164 	call	_CLK_Config
                                    165 ;	src\main.c: 84: UART_Config();  
      00DBBF CD DC 56         [ 4]  166 	call	_UART_Config
                                    167 ;	src\main.c: 88: while (NbrOfDataToRead2--)
      00DBC2                        168 00104$:
      00DBC2 C6 00 E4         [ 1]  169 	ld	a, _NbrOfDataToRead2+0
      00DBC5 72 5A 00 E4      [ 1]  170 	dec	_NbrOfDataToRead2+0
      00DBC9 4D               [ 1]  171 	tnz	a
      00DBCA 27 1E            [ 1]  172 	jreq	00106$
                                    173 ;	src\main.c: 91: while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET)
      00DBCC                        174 00101$:
      00DBCC 4B 80            [ 1]  175 	push	#0x80
      00DBCE 4B 00            [ 1]  176 	push	#0x00
      00DBD0 CD D9 9B         [ 4]  177 	call	_UART1_GetFlagStatus
      00DBD3 85               [ 2]  178 	popw	x
      00DBD4 4D               [ 1]  179 	tnz	a
      00DBD5 27 F5            [ 1]  180 	jreq	00101$
                                    181 ;	src\main.c: 95: UART1_SendData8(TxBuffer1[TxCounter1++]);
      00DBD7 C6 00 E5         [ 1]  182 	ld	a, _TxCounter1+0
      00DBDA 72 5C 00 E5      [ 1]  183 	inc	_TxCounter1+0
      00DBDE 5F               [ 1]  184 	clrw	x
      00DBDF 97               [ 1]  185 	ld	xl, a
      00DBE0 D6 00 01         [ 1]  186 	ld	a, (_TxBuffer1+0, x)
      00DBE3 88               [ 1]  187 	push	a
      00DBE4 CD D9 3E         [ 4]  188 	call	_UART1_SendData8
      00DBE7 84               [ 1]  189 	pop	a
      00DBE8 20 D8            [ 2]  190 	jra	00104$
      00DBEA                        191 00106$:
                                    192 ;	src\main.c: 106: TransferStatus1 = Buffercmp(TxBuffer1, RxBuffer2, TxBufferSize1);
      00DBEA 4B 38            [ 1]  193 	push	#0x38
      00DBEC 4B 00            [ 1]  194 	push	#0x00
      00DBEE 4B AB            [ 1]  195 	push	#<(_RxBuffer2+0)
      00DBF0 4B 00            [ 1]  196 	push	#((_RxBuffer2+0) >> 8)
      00DBF2 4B 01            [ 1]  197 	push	#<(_TxBuffer1+0)
      00DBF4 4B 00            [ 1]  198 	push	#((_TxBuffer1+0) >> 8)
      00DBF6 CD DC 77         [ 4]  199 	call	_Buffercmp
      00DBF9 5B 06            [ 2]  200 	addw	sp, #6
      00DBFB C7 00 E9         [ 1]  201 	ld	_TransferStatus1+0, a
                                    202 ;	src\main.c: 114: UART1_ReceiveData8();
      00DBFE CD D9 1F         [ 4]  203 	call	_UART1_ReceiveData8
                                    204 ;	src\main.c: 116: while (NbrOfDataToRead1--)
      00DC01                        205 00110$:
      00DC01 C6 00 E3         [ 1]  206 	ld	a, _NbrOfDataToRead1+0
      00DC04 72 5A 00 E3      [ 1]  207 	dec	_NbrOfDataToRead1+0
      00DC08 4D               [ 1]  208 	tnz	a
      00DC09 27 1F            [ 1]  209 	jreq	00112$
                                    210 ;	src\main.c: 126: while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET)
      00DC0B                        211 00107$:
      00DC0B 4B 20            [ 1]  212 	push	#0x20
      00DC0D 4B 00            [ 1]  213 	push	#0x00
      00DC0F CD D9 9B         [ 4]  214 	call	_UART1_GetFlagStatus
      00DC12 85               [ 2]  215 	popw	x
      00DC13 4D               [ 1]  216 	tnz	a
      00DC14 27 F5            [ 1]  217 	jreq	00107$
                                    218 ;	src\main.c: 130: RxBuffer1[RxCounter1++] = UART1_ReceiveData8();
      00DC16 C6 00 E6         [ 1]  219 	ld	a, _RxCounter1+0
      00DC19 72 5C 00 E6      [ 1]  220 	inc	_RxCounter1+0
      00DC1D 5F               [ 1]  221 	clrw	x
      00DC1E 97               [ 1]  222 	ld	xl, a
      00DC1F 1C 00 73         [ 2]  223 	addw	x, #(_RxBuffer1+0)
      00DC22 89               [ 2]  224 	pushw	x
      00DC23 CD D9 1F         [ 4]  225 	call	_UART1_ReceiveData8
      00DC26 85               [ 2]  226 	popw	x
      00DC27 F7               [ 1]  227 	ld	(x), a
      00DC28 20 D7            [ 2]  228 	jra	00110$
      00DC2A                        229 00112$:
                                    230 ;	src\main.c: 134: TransferStatus2 = Buffercmp(TxBuffer2, RxBuffer1, TxBufferSize2);
      00DC2A 4B 38            [ 1]  231 	push	#0x38
      00DC2C 4B 00            [ 1]  232 	push	#0x00
      00DC2E 4B 73            [ 1]  233 	push	#<(_RxBuffer1+0)
      00DC30 4B 00            [ 1]  234 	push	#((_RxBuffer1+0) >> 8)
      00DC32 4B 3A            [ 1]  235 	push	#<(_TxBuffer2+0)
      00DC34 4B 00            [ 1]  236 	push	#((_TxBuffer2+0) >> 8)
      00DC36 CD DC 77         [ 4]  237 	call	_Buffercmp
      00DC39 5B 06            [ 2]  238 	addw	sp, #6
      00DC3B C7 00 EA         [ 1]  239 	ld	_TransferStatus2+0, a
                                    240 ;	src\main.c: 140: while (1)
      00DC3E                        241 00114$:
      00DC3E 20 FE            [ 2]  242 	jra	00114$
                                    243 ;	src\main.c: 142: }
      00DC40 81               [ 4]  244 	ret
                                    245 ;	src\main.c: 149: static void CLK_Config(void)
                                    246 ;	-----------------------------------------
                                    247 ;	 function CLK_Config
                                    248 ;	-----------------------------------------
      00DC41                        249 _CLK_Config:
                                    250 ;	src\main.c: 153: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      00DC41 4B 00            [ 1]  251 	push	#0x00
      00DC43 CD 97 FD         [ 4]  252 	call	_CLK_HSIPrescalerConfig
      00DC46 84               [ 1]  253 	pop	a
                                    254 ;	src\main.c: 154: }
      00DC47 81               [ 4]  255 	ret
                                    256 ;	src\main.c: 161: static void GPIO_Config(void)
                                    257 ;	-----------------------------------------
                                    258 ;	 function GPIO_Config
                                    259 ;	-----------------------------------------
      00DC48                        260 _GPIO_Config:
                                    261 ;	src\main.c: 164: GPIO_Init(GPIOA, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_FAST);
      00DC48 4B B0            [ 1]  262 	push	#0xb0
      00DC4A 4B 20            [ 1]  263 	push	#0x20
      00DC4C 4B 00            [ 1]  264 	push	#0x00
      00DC4E 4B 50            [ 1]  265 	push	#0x50
      00DC50 CD A2 32         [ 4]  266 	call	_GPIO_Init
      00DC53 5B 04            [ 2]  267 	addw	sp, #4
                                    268 ;	src\main.c: 165: }
      00DC55 81               [ 4]  269 	ret
                                    270 ;	src\main.c: 172: static void UART_Config(void)
                                    271 ;	-----------------------------------------
                                    272 ;	 function UART_Config
                                    273 ;	-----------------------------------------
      00DC56                        274 _UART_Config:
                                    275 ;	src\main.c: 181: UART1_DeInit();
      00DC56 CD D4 40         [ 4]  276 	call	_UART1_DeInit
                                    277 ;	src\main.c: 182: UART1_Init((uint32_t)230400, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO,
      00DC59 4B 0C            [ 1]  278 	push	#0x0c
      00DC5B 4B 80            [ 1]  279 	push	#0x80
      00DC5D 4B 00            [ 1]  280 	push	#0x00
      00DC5F 4B 00            [ 1]  281 	push	#0x00
      00DC61 4B 00            [ 1]  282 	push	#0x00
      00DC63 4B 00            [ 1]  283 	push	#0x00
      00DC65 4B 84            [ 1]  284 	push	#0x84
      00DC67 4B 03            [ 1]  285 	push	#0x03
      00DC69 4B 00            [ 1]  286 	push	#0x00
      00DC6B CD D4 6B         [ 4]  287 	call	_UART1_Init
      00DC6E 5B 09            [ 2]  288 	addw	sp, #9
                                    289 ;	src\main.c: 190: UART1_HalfDuplexCmd(ENABLE);
      00DC70 4B 01            [ 1]  290 	push	#0x01
      00DC72 CD D7 A1         [ 4]  291 	call	_UART1_HalfDuplexCmd
      00DC75 84               [ 1]  292 	pop	a
                                    293 ;	src\main.c: 191: }
      00DC76 81               [ 4]  294 	ret
                                    295 ;	src\main.c: 204: TestStatus Buffercmp(uint8_t* pBuffer1, uint8_t* pBuffer2, uint16_t BufferLength)
                                    296 ;	-----------------------------------------
                                    297 ;	 function Buffercmp
                                    298 ;	-----------------------------------------
      00DC77                        299 _Buffercmp:
      00DC77 52 06            [ 2]  300 	sub	sp, #6
                                    301 ;	src\main.c: 206: while (BufferLength--)
      00DC79 16 09            [ 2]  302 	ldw	y, (0x09, sp)
      00DC7B 17 03            [ 2]  303 	ldw	(0x03, sp), y
      00DC7D 16 0B            [ 2]  304 	ldw	y, (0x0b, sp)
      00DC7F 17 05            [ 2]  305 	ldw	(0x05, sp), y
      00DC81 16 0D            [ 2]  306 	ldw	y, (0x0d, sp)
      00DC83                        307 00103$:
      00DC83 17 01            [ 2]  308 	ldw	(0x01, sp), y
      00DC85 90 5A            [ 2]  309 	decw	y
      00DC87 1E 01            [ 2]  310 	ldw	x, (0x01, sp)
      00DC89 27 1D            [ 1]  311 	jreq	00105$
                                    312 ;	src\main.c: 208: if (*pBuffer1 != *pBuffer2)
      00DC8B 1E 03            [ 2]  313 	ldw	x, (0x03, sp)
      00DC8D F6               [ 1]  314 	ld	a, (x)
      00DC8E 1E 05            [ 2]  315 	ldw	x, (0x05, sp)
      00DC90 88               [ 1]  316 	push	a
      00DC91 F6               [ 1]  317 	ld	a, (x)
      00DC92 6B 03            [ 1]  318 	ld	(0x03, sp), a
      00DC94 84               [ 1]  319 	pop	a
      00DC95 11 02            [ 1]  320 	cp	a, (0x02, sp)
      00DC97 27 03            [ 1]  321 	jreq	00102$
                                    322 ;	src\main.c: 210: return FAILED;
      00DC99 4F               [ 1]  323 	clr	a
      00DC9A 20 0E            [ 2]  324 	jra	00106$
      00DC9C                        325 00102$:
                                    326 ;	src\main.c: 213: pBuffer1++;
      00DC9C 1E 03            [ 2]  327 	ldw	x, (0x03, sp)
      00DC9E 5C               [ 1]  328 	incw	x
      00DC9F 1F 03            [ 2]  329 	ldw	(0x03, sp), x
                                    330 ;	src\main.c: 214: pBuffer2++;
      00DCA1 1E 05            [ 2]  331 	ldw	x, (0x05, sp)
      00DCA3 5C               [ 1]  332 	incw	x
      00DCA4 1F 05            [ 2]  333 	ldw	(0x05, sp), x
      00DCA6 20 DB            [ 2]  334 	jra	00103$
      00DCA8                        335 00105$:
                                    336 ;	src\main.c: 217: return PASSED;
      00DCA8 A6 01            [ 1]  337 	ld	a, #0x01
      00DCAA                        338 00106$:
                                    339 ;	src\main.c: 218: }
      00DCAA 5B 06            [ 2]  340 	addw	sp, #6
      00DCAC 81               [ 4]  341 	ret
                                    342 	.area CODE
                                    343 	.area CONST
                                    344 	.area INITIALIZER
      0087C0                        345 __xinit__TxBuffer1:
      0087C0 48 61 6C 66 44 75 70   346 	.ascii "HalfDuplex Example: UART1 -> UART3 using HalfDuplex mode"
             6C 65 78 20 45 78 61
             6D 70 6C 65 3A 20 55
             41 52 54 31 20 2D 3E
             20 55 41 52 54 33 20
             75 73 69 6E 67 20 48
             61 6C 66 44 75 70 6C
             65 78 20 6D 6F 64 65
      0087F8 00                     347 	.db 0x00
      0087F9                        348 __xinit__TxBuffer2:
      0087F9 48 61 6C 66 44 75 70   349 	.ascii "HalfDuplex Example: UART3 -> UART1 using HalfDuplex mode"
             6C 65 78 20 45 78 61
             6D 70 6C 65 3A 20 55
             41 52 54 33 20 2D 3E
             20 55 41 52 54 31 20
             75 73 69 6E 67 20 48
             61 6C 66 44 75 70 6C
             65 78 20 6D 6F 64 65
      008831 00                     350 	.db 0x00
      008832                        351 __xinit__RxBuffer1:
      008832 00                     352 	.db #0x00	; 0
      008833 00                     353 	.db 0x00
      008834 00                     354 	.db 0x00
      008835 00                     355 	.db 0x00
      008836 00                     356 	.db 0x00
      008837 00                     357 	.db 0x00
      008838 00                     358 	.db 0x00
      008839 00                     359 	.db 0x00
      00883A 00                     360 	.db 0x00
      00883B 00                     361 	.db 0x00
      00883C 00                     362 	.db 0x00
      00883D 00                     363 	.db 0x00
      00883E 00                     364 	.db 0x00
      00883F 00                     365 	.db 0x00
      008840 00                     366 	.db 0x00
      008841 00                     367 	.db 0x00
      008842 00                     368 	.db 0x00
      008843 00                     369 	.db 0x00
      008844 00                     370 	.db 0x00
      008845 00                     371 	.db 0x00
      008846 00                     372 	.db 0x00
      008847 00                     373 	.db 0x00
      008848 00                     374 	.db 0x00
      008849 00                     375 	.db 0x00
      00884A 00                     376 	.db 0x00
      00884B 00                     377 	.db 0x00
      00884C 00                     378 	.db 0x00
      00884D 00                     379 	.db 0x00
      00884E 00                     380 	.db 0x00
      00884F 00                     381 	.db 0x00
      008850 00                     382 	.db 0x00
      008851 00                     383 	.db 0x00
      008852 00                     384 	.db 0x00
      008853 00                     385 	.db 0x00
      008854 00                     386 	.db 0x00
      008855 00                     387 	.db 0x00
      008856 00                     388 	.db 0x00
      008857 00                     389 	.db 0x00
      008858 00                     390 	.db 0x00
      008859 00                     391 	.db 0x00
      00885A 00                     392 	.db 0x00
      00885B 00                     393 	.db 0x00
      00885C 00                     394 	.db 0x00
      00885D 00                     395 	.db 0x00
      00885E 00                     396 	.db 0x00
      00885F 00                     397 	.db 0x00
      008860 00                     398 	.db 0x00
      008861 00                     399 	.db 0x00
      008862 00                     400 	.db 0x00
      008863 00                     401 	.db 0x00
      008864 00                     402 	.db 0x00
      008865 00                     403 	.db 0x00
      008866 00                     404 	.db 0x00
      008867 00                     405 	.db 0x00
      008868 00                     406 	.db 0x00
      008869 00                     407 	.db 0x00
      00886A                        408 __xinit__RxBuffer2:
      00886A 00                     409 	.db #0x00	; 0
      00886B 00                     410 	.db 0x00
      00886C 00                     411 	.db 0x00
      00886D 00                     412 	.db 0x00
      00886E 00                     413 	.db 0x00
      00886F 00                     414 	.db 0x00
      008870 00                     415 	.db 0x00
      008871 00                     416 	.db 0x00
      008872 00                     417 	.db 0x00
      008873 00                     418 	.db 0x00
      008874 00                     419 	.db 0x00
      008875 00                     420 	.db 0x00
      008876 00                     421 	.db 0x00
      008877 00                     422 	.db 0x00
      008878 00                     423 	.db 0x00
      008879 00                     424 	.db 0x00
      00887A 00                     425 	.db 0x00
      00887B 00                     426 	.db 0x00
      00887C 00                     427 	.db 0x00
      00887D 00                     428 	.db 0x00
      00887E 00                     429 	.db 0x00
      00887F 00                     430 	.db 0x00
      008880 00                     431 	.db 0x00
      008881 00                     432 	.db 0x00
      008882 00                     433 	.db 0x00
      008883 00                     434 	.db 0x00
      008884 00                     435 	.db 0x00
      008885 00                     436 	.db 0x00
      008886 00                     437 	.db 0x00
      008887 00                     438 	.db 0x00
      008888 00                     439 	.db 0x00
      008889 00                     440 	.db 0x00
      00888A 00                     441 	.db 0x00
      00888B 00                     442 	.db 0x00
      00888C 00                     443 	.db 0x00
      00888D 00                     444 	.db 0x00
      00888E 00                     445 	.db 0x00
      00888F 00                     446 	.db 0x00
      008890 00                     447 	.db 0x00
      008891 00                     448 	.db 0x00
      008892 00                     449 	.db 0x00
      008893 00                     450 	.db 0x00
      008894 00                     451 	.db 0x00
      008895 00                     452 	.db 0x00
      008896 00                     453 	.db 0x00
      008897 00                     454 	.db 0x00
      008898 00                     455 	.db 0x00
      008899 00                     456 	.db 0x00
      00889A 00                     457 	.db 0x00
      00889B 00                     458 	.db 0x00
      00889C 00                     459 	.db 0x00
      00889D 00                     460 	.db 0x00
      00889E 00                     461 	.db 0x00
      00889F 00                     462 	.db 0x00
      0088A0 00                     463 	.db 0x00
      0088A1 00                     464 	.db 0x00
      0088A2                        465 __xinit__NbrOfDataToRead1:
      0088A2 38                     466 	.db #0x38	; 56	'8'
      0088A3                        467 __xinit__NbrOfDataToRead2:
      0088A3 38                     468 	.db #0x38	; 56	'8'
      0088A4                        469 __xinit__TxCounter1:
      0088A4 00                     470 	.db #0x00	; 0
      0088A5                        471 __xinit__RxCounter1:
      0088A5 00                     472 	.db #0x00	; 0
      0088A6                        473 __xinit__TxCounter2:
      0088A6 00                     474 	.db #0x00	; 0
      0088A7                        475 __xinit__RxCounter2:
      0088A7 00                     476 	.db #0x00	; 0
      0088A8                        477 __xinit__TransferStatus1:
      0088A8 00                     478 	.db #0x00	; 0
      0088A9                        479 __xinit__TransferStatus2:
      0088A9 00                     480 	.db #0x00	; 0
                                    481 	.area CABS (ABS)
