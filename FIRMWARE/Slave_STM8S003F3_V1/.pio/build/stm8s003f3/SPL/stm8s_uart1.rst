                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _CLK_GetClockFreq
                                     13 	.globl _UART1_DeInit
                                     14 	.globl _UART1_Init
                                     15 	.globl _UART1_Cmd
                                     16 	.globl _UART1_ITConfig
                                     17 	.globl _UART1_HalfDuplexCmd
                                     18 	.globl _UART1_IrDAConfig
                                     19 	.globl _UART1_IrDACmd
                                     20 	.globl _UART1_LINBreakDetectionConfig
                                     21 	.globl _UART1_LINCmd
                                     22 	.globl _UART1_SmartCardCmd
                                     23 	.globl _UART1_SmartCardNACKCmd
                                     24 	.globl _UART1_WakeUpConfig
                                     25 	.globl _UART1_ReceiverWakeUpCmd
                                     26 	.globl _UART1_ReceiveData8
                                     27 	.globl _UART1_ReceiveData9
                                     28 	.globl _UART1_SendData8
                                     29 	.globl _UART1_SendData9
                                     30 	.globl _UART1_SendBreak
                                     31 	.globl _UART1_SetAddress
                                     32 	.globl _UART1_SetGuardTime
                                     33 	.globl _UART1_SetPrescaler
                                     34 	.globl _UART1_GetFlagStatus
                                     35 	.globl _UART1_ClearFlag
                                     36 	.globl _UART1_GetITStatus
                                     37 	.globl _UART1_ClearITPendingBit
                                     38 ;--------------------------------------------------------
                                     39 ; ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DATA
                                     42 ;--------------------------------------------------------
                                     43 ; ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area INITIALIZED
                                     46 ;--------------------------------------------------------
                                     47 ; absolute external ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DABS (ABS)
                                     50 
                                     51 ; default segment ordering for linker
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area CONST
                                     56 	.area INITIALIZER
                                     57 	.area CODE
                                     58 
                                     59 ;--------------------------------------------------------
                                     60 ; global & static initialisations
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area GSINIT
                                     64 	.area GSFINAL
                                     65 	.area GSINIT
                                     66 ;--------------------------------------------------------
                                     67 ; Home
                                     68 ;--------------------------------------------------------
                                     69 	.area HOME
                                     70 	.area HOME
                                     71 ;--------------------------------------------------------
                                     72 ; code
                                     73 ;--------------------------------------------------------
                                     74 	.area CODE
                                     75 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 53: void UART1_DeInit(void)
                                     76 ;	-----------------------------------------
                                     77 ;	 function UART1_DeInit
                                     78 ;	-----------------------------------------
      00D440                         79 _UART1_DeInit:
                                     80 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 57: (void)UART1->SR;
      00D440 C6 52 30         [ 1]   81 	ld	a, 0x5230
                                     82 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 58: (void)UART1->DR;
      00D443 C6 52 31         [ 1]   83 	ld	a, 0x5231
                                     84 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      00D446 35 00 52 33      [ 1]   85 	mov	0x5233+0, #0x00
                                     86 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      00D44A 35 00 52 32      [ 1]   87 	mov	0x5232+0, #0x00
                                     88 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      00D44E 35 00 52 34      [ 1]   89 	mov	0x5234+0, #0x00
                                     90 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      00D452 35 00 52 35      [ 1]   91 	mov	0x5235+0, #0x00
                                     92 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      00D456 35 00 52 36      [ 1]   93 	mov	0x5236+0, #0x00
                                     94 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      00D45A 35 00 52 37      [ 1]   95 	mov	0x5237+0, #0x00
                                     96 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      00D45E 35 00 52 38      [ 1]   97 	mov	0x5238+0, #0x00
                                     98 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      00D462 35 00 52 39      [ 1]   99 	mov	0x5239+0, #0x00
                                    100 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      00D466 35 00 52 3A      [ 1]  101 	mov	0x523a+0, #0x00
                                    102 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 71: }
      00D46A 81               [ 4]  103 	ret
                                    104 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                    105 ;	-----------------------------------------
                                    106 ;	 function UART1_Init
                                    107 ;	-----------------------------------------
      00D46B                        108 _UART1_Init:
      00D46B 52 0D            [ 2]  109 	sub	sp, #13
                                    110 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 97: assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
      00D46D AE 89 68         [ 2]  111 	ldw	x, #0x8968
      00D470 13 12            [ 2]  112 	cpw	x, (0x12, sp)
      00D472 A6 09            [ 1]  113 	ld	a, #0x09
      00D474 12 11            [ 1]  114 	sbc	a, (0x11, sp)
      00D476 4F               [ 1]  115 	clr	a
      00D477 12 10            [ 1]  116 	sbc	a, (0x10, sp)
      00D479 24 0F            [ 1]  117 	jrnc	00113$
      00D47B 4B 61            [ 1]  118 	push	#0x61
      00D47D 5F               [ 1]  119 	clrw	x
      00D47E 89               [ 2]  120 	pushw	x
      00D47F 4B 00            [ 1]  121 	push	#0x00
      00D481 4B EB            [ 1]  122 	push	#<(___str_0+0)
      00D483 4B 86            [ 1]  123 	push	#((___str_0+0) >> 8)
      00D485 CD 00 00         [ 4]  124 	call	_assert_failed
      00D488 5B 06            [ 2]  125 	addw	sp, #6
      00D48A                        126 00113$:
                                    127 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 98: assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
      00D48A 0D 14            [ 1]  128 	tnz	(0x14, sp)
      00D48C 27 15            [ 1]  129 	jreq	00115$
      00D48E 7B 14            [ 1]  130 	ld	a, (0x14, sp)
      00D490 A1 10            [ 1]  131 	cp	a, #0x10
      00D492 27 0F            [ 1]  132 	jreq	00115$
      00D494 4B 62            [ 1]  133 	push	#0x62
      00D496 5F               [ 1]  134 	clrw	x
      00D497 89               [ 2]  135 	pushw	x
      00D498 4B 00            [ 1]  136 	push	#0x00
      00D49A 4B EB            [ 1]  137 	push	#<(___str_0+0)
      00D49C 4B 86            [ 1]  138 	push	#((___str_0+0) >> 8)
      00D49E CD 00 00         [ 4]  139 	call	_assert_failed
      00D4A1 5B 06            [ 2]  140 	addw	sp, #6
      00D4A3                        141 00115$:
                                    142 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 99: assert_param(IS_UART1_STOPBITS_OK(StopBits));
      00D4A3 0D 15            [ 1]  143 	tnz	(0x15, sp)
      00D4A5 27 21            [ 1]  144 	jreq	00120$
      00D4A7 7B 15            [ 1]  145 	ld	a, (0x15, sp)
      00D4A9 A1 10            [ 1]  146 	cp	a, #0x10
      00D4AB 27 1B            [ 1]  147 	jreq	00120$
      00D4AD 7B 15            [ 1]  148 	ld	a, (0x15, sp)
      00D4AF A1 20            [ 1]  149 	cp	a, #0x20
      00D4B1 27 15            [ 1]  150 	jreq	00120$
      00D4B3 7B 15            [ 1]  151 	ld	a, (0x15, sp)
      00D4B5 A1 30            [ 1]  152 	cp	a, #0x30
      00D4B7 27 0F            [ 1]  153 	jreq	00120$
      00D4B9 4B 63            [ 1]  154 	push	#0x63
      00D4BB 5F               [ 1]  155 	clrw	x
      00D4BC 89               [ 2]  156 	pushw	x
      00D4BD 4B 00            [ 1]  157 	push	#0x00
      00D4BF 4B EB            [ 1]  158 	push	#<(___str_0+0)
      00D4C1 4B 86            [ 1]  159 	push	#((___str_0+0) >> 8)
      00D4C3 CD 00 00         [ 4]  160 	call	_assert_failed
      00D4C6 5B 06            [ 2]  161 	addw	sp, #6
      00D4C8                        162 00120$:
                                    163 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 100: assert_param(IS_UART1_PARITY_OK(Parity));
      00D4C8 0D 16            [ 1]  164 	tnz	(0x16, sp)
      00D4CA 27 1B            [ 1]  165 	jreq	00131$
      00D4CC 7B 16            [ 1]  166 	ld	a, (0x16, sp)
      00D4CE A1 04            [ 1]  167 	cp	a, #0x04
      00D4D0 27 15            [ 1]  168 	jreq	00131$
      00D4D2 7B 16            [ 1]  169 	ld	a, (0x16, sp)
      00D4D4 A1 06            [ 1]  170 	cp	a, #0x06
      00D4D6 27 0F            [ 1]  171 	jreq	00131$
      00D4D8 4B 64            [ 1]  172 	push	#0x64
      00D4DA 5F               [ 1]  173 	clrw	x
      00D4DB 89               [ 2]  174 	pushw	x
      00D4DC 4B 00            [ 1]  175 	push	#0x00
      00D4DE 4B EB            [ 1]  176 	push	#<(___str_0+0)
      00D4E0 4B 86            [ 1]  177 	push	#((___str_0+0) >> 8)
      00D4E2 CD 00 00         [ 4]  178 	call	_assert_failed
      00D4E5 5B 06            [ 2]  179 	addw	sp, #6
      00D4E7                        180 00131$:
                                    181 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 101: assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
      00D4E7 7B 18            [ 1]  182 	ld	a, (0x18, sp)
      00D4E9 A1 08            [ 1]  183 	cp	a, #0x08
      00D4EB 27 42            [ 1]  184 	jreq	00139$
      00D4ED 7B 18            [ 1]  185 	ld	a, (0x18, sp)
      00D4EF A1 40            [ 1]  186 	cp	a, #0x40
      00D4F1 27 3C            [ 1]  187 	jreq	00139$
      00D4F3 7B 18            [ 1]  188 	ld	a, (0x18, sp)
      00D4F5 A1 04            [ 1]  189 	cp	a, #0x04
      00D4F7 27 36            [ 1]  190 	jreq	00139$
      00D4F9 7B 18            [ 1]  191 	ld	a, (0x18, sp)
      00D4FB A1 80            [ 1]  192 	cp	a, #0x80
      00D4FD 27 30            [ 1]  193 	jreq	00139$
      00D4FF 7B 18            [ 1]  194 	ld	a, (0x18, sp)
      00D501 A0 0C            [ 1]  195 	sub	a, #0x0c
      00D503 26 02            [ 1]  196 	jrne	00339$
      00D505 4C               [ 1]  197 	inc	a
      00D506 21                     198 	.byte 0x21
      00D507                        199 00339$:
      00D507 4F               [ 1]  200 	clr	a
      00D508                        201 00340$:
      00D508 4D               [ 1]  202 	tnz	a
      00D509 26 24            [ 1]  203 	jrne	00139$
      00D50B 4D               [ 1]  204 	tnz	a
      00D50C 26 21            [ 1]  205 	jrne	00139$
      00D50E 7B 18            [ 1]  206 	ld	a, (0x18, sp)
      00D510 A1 44            [ 1]  207 	cp	a, #0x44
      00D512 27 1B            [ 1]  208 	jreq	00139$
      00D514 7B 18            [ 1]  209 	ld	a, (0x18, sp)
      00D516 A1 C0            [ 1]  210 	cp	a, #0xc0
      00D518 27 15            [ 1]  211 	jreq	00139$
      00D51A 7B 18            [ 1]  212 	ld	a, (0x18, sp)
      00D51C A1 88            [ 1]  213 	cp	a, #0x88
      00D51E 27 0F            [ 1]  214 	jreq	00139$
      00D520 4B 65            [ 1]  215 	push	#0x65
      00D522 5F               [ 1]  216 	clrw	x
      00D523 89               [ 2]  217 	pushw	x
      00D524 4B 00            [ 1]  218 	push	#0x00
      00D526 4B EB            [ 1]  219 	push	#<(___str_0+0)
      00D528 4B 86            [ 1]  220 	push	#((___str_0+0) >> 8)
      00D52A CD 00 00         [ 4]  221 	call	_assert_failed
      00D52D 5B 06            [ 2]  222 	addw	sp, #6
      00D52F                        223 00139$:
                                    224 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 102: assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
      00D52F 7B 17            [ 1]  225 	ld	a, (0x17, sp)
      00D531 A4 88            [ 1]  226 	and	a, #0x88
      00D533 A1 88            [ 1]  227 	cp	a, #0x88
      00D535 27 18            [ 1]  228 	jreq	00167$
      00D537 7B 17            [ 1]  229 	ld	a, (0x17, sp)
      00D539 A4 44            [ 1]  230 	and	a, #0x44
      00D53B A1 44            [ 1]  231 	cp	a, #0x44
      00D53D 27 10            [ 1]  232 	jreq	00167$
      00D53F 7B 17            [ 1]  233 	ld	a, (0x17, sp)
      00D541 A4 22            [ 1]  234 	and	a, #0x22
      00D543 A1 22            [ 1]  235 	cp	a, #0x22
      00D545 27 08            [ 1]  236 	jreq	00167$
      00D547 7B 17            [ 1]  237 	ld	a, (0x17, sp)
      00D549 A4 11            [ 1]  238 	and	a, #0x11
      00D54B A1 11            [ 1]  239 	cp	a, #0x11
      00D54D 26 0F            [ 1]  240 	jrne	00165$
      00D54F                        241 00167$:
      00D54F 4B 66            [ 1]  242 	push	#0x66
      00D551 5F               [ 1]  243 	clrw	x
      00D552 89               [ 2]  244 	pushw	x
      00D553 4B 00            [ 1]  245 	push	#0x00
      00D555 4B EB            [ 1]  246 	push	#<(___str_0+0)
      00D557 4B 86            [ 1]  247 	push	#((___str_0+0) >> 8)
      00D559 CD 00 00         [ 4]  248 	call	_assert_failed
      00D55C 5B 06            [ 2]  249 	addw	sp, #6
      00D55E                        250 00165$:
                                    251 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      00D55E 72 19 52 34      [ 1]  252 	bres	21044, #4
                                    253 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      00D562 C6 52 34         [ 1]  254 	ld	a, 0x5234
      00D565 1A 14            [ 1]  255 	or	a, (0x14, sp)
      00D567 C7 52 34         [ 1]  256 	ld	0x5234, a
                                    257 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      00D56A C6 52 36         [ 1]  258 	ld	a, 0x5236
      00D56D A4 CF            [ 1]  259 	and	a, #0xcf
      00D56F C7 52 36         [ 1]  260 	ld	0x5236, a
                                    261 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      00D572 C6 52 36         [ 1]  262 	ld	a, 0x5236
      00D575 1A 15            [ 1]  263 	or	a, (0x15, sp)
      00D577 C7 52 36         [ 1]  264 	ld	0x5236, a
                                    265 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      00D57A C6 52 34         [ 1]  266 	ld	a, 0x5234
      00D57D A4 F9            [ 1]  267 	and	a, #0xf9
      00D57F C7 52 34         [ 1]  268 	ld	0x5234, a
                                    269 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      00D582 C6 52 34         [ 1]  270 	ld	a, 0x5234
      00D585 1A 16            [ 1]  271 	or	a, (0x16, sp)
      00D587 C7 52 34         [ 1]  272 	ld	0x5234, a
                                    273 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      00D58A C6 52 32         [ 1]  274 	ld	a, 0x5232
      00D58D 35 00 52 32      [ 1]  275 	mov	0x5232+0, #0x00
                                    276 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      00D591 C6 52 33         [ 1]  277 	ld	a, 0x5233
      00D594 A4 0F            [ 1]  278 	and	a, #0x0f
      00D596 C7 52 33         [ 1]  279 	ld	0x5233, a
                                    280 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      00D599 C6 52 33         [ 1]  281 	ld	a, 0x5233
      00D59C A4 F0            [ 1]  282 	and	a, #0xf0
      00D59E C7 52 33         [ 1]  283 	ld	0x5233, a
                                    284 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      00D5A1 CD 99 D3         [ 4]  285 	call	_CLK_GetClockFreq
      00D5A4 1F 0C            [ 2]  286 	ldw	(0x0c, sp), x
      00D5A6 1E 10            [ 2]  287 	ldw	x, (0x10, sp)
      00D5A8 1F 06            [ 2]  288 	ldw	(0x06, sp), x
      00D5AA 1E 12            [ 2]  289 	ldw	x, (0x12, sp)
      00D5AC A6 04            [ 1]  290 	ld	a, #0x04
      00D5AE                        291 00364$:
      00D5AE 58               [ 2]  292 	sllw	x
      00D5AF 09 07            [ 1]  293 	rlc	(0x07, sp)
      00D5B1 09 06            [ 1]  294 	rlc	(0x06, sp)
      00D5B3 4A               [ 1]  295 	dec	a
      00D5B4 26 F8            [ 1]  296 	jrne	00364$
      00D5B6 1F 08            [ 2]  297 	ldw	(0x08, sp), x
      00D5B8 89               [ 2]  298 	pushw	x
      00D5B9 1E 08            [ 2]  299 	ldw	x, (0x08, sp)
      00D5BB 89               [ 2]  300 	pushw	x
      00D5BC 1E 10            [ 2]  301 	ldw	x, (0x10, sp)
      00D5BE 89               [ 2]  302 	pushw	x
      00D5BF 90 89            [ 2]  303 	pushw	y
      00D5C1 CD DC DA         [ 4]  304 	call	__divulong
      00D5C4 5B 08            [ 2]  305 	addw	sp, #8
      00D5C6 1F 03            [ 2]  306 	ldw	(0x03, sp), x
      00D5C8 17 01            [ 2]  307 	ldw	(0x01, sp), y
                                    308 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      00D5CA CD 99 D3         [ 4]  309 	call	_CLK_GetClockFreq
      00D5CD 89               [ 2]  310 	pushw	x
      00D5CE 90 89            [ 2]  311 	pushw	y
      00D5D0 4B 64            [ 1]  312 	push	#0x64
      00D5D2 5F               [ 1]  313 	clrw	x
      00D5D3 89               [ 2]  314 	pushw	x
      00D5D4 4B 00            [ 1]  315 	push	#0x00
      00D5D6 CD DD 34         [ 4]  316 	call	__mullong
      00D5D9 5B 08            [ 2]  317 	addw	sp, #8
      00D5DB 1F 0C            [ 2]  318 	ldw	(0x0c, sp), x
      00D5DD 1E 08            [ 2]  319 	ldw	x, (0x08, sp)
      00D5DF 89               [ 2]  320 	pushw	x
      00D5E0 1E 08            [ 2]  321 	ldw	x, (0x08, sp)
      00D5E2 89               [ 2]  322 	pushw	x
      00D5E3 1E 10            [ 2]  323 	ldw	x, (0x10, sp)
      00D5E5 89               [ 2]  324 	pushw	x
      00D5E6 90 89            [ 2]  325 	pushw	y
      00D5E8 CD DC DA         [ 4]  326 	call	__divulong
      00D5EB 5B 08            [ 2]  327 	addw	sp, #8
      00D5ED 90 9E            [ 1]  328 	ld	a, yh
      00D5EF 1F 07            [ 2]  329 	ldw	(0x07, sp), x
      00D5F1 6B 05            [ 1]  330 	ld	(0x05, sp), a
      00D5F3 90 9F            [ 1]  331 	ld	a, yl
                                    332 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      00D5F5 AE 52 33         [ 2]  333 	ldw	x, #0x5233
      00D5F8 88               [ 1]  334 	push	a
      00D5F9 F6               [ 1]  335 	ld	a, (x)
      00D5FA 6B 0A            [ 1]  336 	ld	(0x0a, sp), a
      00D5FC 1E 04            [ 2]  337 	ldw	x, (0x04, sp)
      00D5FE 89               [ 2]  338 	pushw	x
      00D5FF 1E 04            [ 2]  339 	ldw	x, (0x04, sp)
      00D601 89               [ 2]  340 	pushw	x
      00D602 4B 64            [ 1]  341 	push	#0x64
      00D604 5F               [ 1]  342 	clrw	x
      00D605 89               [ 2]  343 	pushw	x
      00D606 4B 00            [ 1]  344 	push	#0x00
      00D608 CD DD 34         [ 4]  345 	call	__mullong
      00D60B 5B 08            [ 2]  346 	addw	sp, #8
      00D60D 1F 0D            [ 2]  347 	ldw	(0x0d, sp), x
      00D60F 17 0B            [ 2]  348 	ldw	(0x0b, sp), y
      00D611 84               [ 1]  349 	pop	a
      00D612 16 07            [ 2]  350 	ldw	y, (0x07, sp)
      00D614 72 F2 0C         [ 2]  351 	subw	y, (0x0c, sp)
      00D617 12 0B            [ 1]  352 	sbc	a, (0x0b, sp)
      00D619 97               [ 1]  353 	ld	xl, a
      00D61A 7B 05            [ 1]  354 	ld	a, (0x05, sp)
      00D61C 12 0A            [ 1]  355 	sbc	a, (0x0a, sp)
      00D61E 95               [ 1]  356 	ld	xh, a
      00D61F A6 04            [ 1]  357 	ld	a, #0x04
      00D621                        358 00366$:
      00D621 90 58            [ 2]  359 	sllw	y
      00D623 59               [ 2]  360 	rlcw	x
      00D624 4A               [ 1]  361 	dec	a
      00D625 26 FA            [ 1]  362 	jrne	00366$
      00D627 4B 64            [ 1]  363 	push	#0x64
      00D629 4B 00            [ 1]  364 	push	#0x00
      00D62B 4B 00            [ 1]  365 	push	#0x00
      00D62D 4B 00            [ 1]  366 	push	#0x00
      00D62F 90 89            [ 2]  367 	pushw	y
      00D631 89               [ 2]  368 	pushw	x
      00D632 CD DC DA         [ 4]  369 	call	__divulong
      00D635 5B 08            [ 2]  370 	addw	sp, #8
      00D637 9F               [ 1]  371 	ld	a, xl
      00D638 A4 0F            [ 1]  372 	and	a, #0x0f
      00D63A 1A 09            [ 1]  373 	or	a, (0x09, sp)
      00D63C C7 52 33         [ 1]  374 	ld	0x5233, a
                                    375 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      00D63F C6 52 33         [ 1]  376 	ld	a, 0x5233
      00D642 6B 0D            [ 1]  377 	ld	(0x0d, sp), a
      00D644 1E 03            [ 2]  378 	ldw	x, (0x03, sp)
      00D646 A6 10            [ 1]  379 	ld	a, #0x10
      00D648 62               [ 2]  380 	div	x, a
      00D649 9F               [ 1]  381 	ld	a, xl
      00D64A A4 F0            [ 1]  382 	and	a, #0xf0
      00D64C 1A 0D            [ 1]  383 	or	a, (0x0d, sp)
      00D64E C7 52 33         [ 1]  384 	ld	0x5233, a
                                    385 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      00D651 C6 52 32         [ 1]  386 	ld	a, 0x5232
      00D654 6B 0D            [ 1]  387 	ld	(0x0d, sp), a
      00D656 7B 04            [ 1]  388 	ld	a, (0x04, sp)
      00D658 1A 0D            [ 1]  389 	or	a, (0x0d, sp)
      00D65A C7 52 32         [ 1]  390 	ld	0x5232, a
                                    391 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      00D65D C6 52 35         [ 1]  392 	ld	a, 0x5235
      00D660 A4 F3            [ 1]  393 	and	a, #0xf3
      00D662 C7 52 35         [ 1]  394 	ld	0x5235, a
                                    395 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      00D665 C6 52 36         [ 1]  396 	ld	a, 0x5236
      00D668 A4 F8            [ 1]  397 	and	a, #0xf8
      00D66A C7 52 36         [ 1]  398 	ld	0x5236, a
                                    399 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      00D66D C6 52 36         [ 1]  400 	ld	a, 0x5236
      00D670 6B 0D            [ 1]  401 	ld	(0x0d, sp), a
      00D672 7B 17            [ 1]  402 	ld	a, (0x17, sp)
      00D674 A4 07            [ 1]  403 	and	a, #0x07
      00D676 1A 0D            [ 1]  404 	or	a, (0x0d, sp)
      00D678 C7 52 36         [ 1]  405 	ld	0x5236, a
                                    406 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      00D67B C6 52 35         [ 1]  407 	ld	a, 0x5235
                                    408 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      00D67E 88               [ 1]  409 	push	a
      00D67F 7B 19            [ 1]  410 	ld	a, (0x19, sp)
      00D681 A5 04            [ 1]  411 	bcp	a, #0x04
      00D683 84               [ 1]  412 	pop	a
      00D684 27 07            [ 1]  413 	jreq	00102$
                                    414 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      00D686 AA 08            [ 1]  415 	or	a, #0x08
      00D688 C7 52 35         [ 1]  416 	ld	0x5235, a
      00D68B 20 05            [ 2]  417 	jra	00103$
      00D68D                        418 00102$:
                                    419 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      00D68D A4 F7            [ 1]  420 	and	a, #0xf7
      00D68F C7 52 35         [ 1]  421 	ld	0x5235, a
      00D692                        422 00103$:
                                    423 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      00D692 C6 52 35         [ 1]  424 	ld	a, 0x5235
                                    425 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      00D695 88               [ 1]  426 	push	a
      00D696 7B 19            [ 1]  427 	ld	a, (0x19, sp)
      00D698 A5 08            [ 1]  428 	bcp	a, #0x08
      00D69A 84               [ 1]  429 	pop	a
      00D69B 27 07            [ 1]  430 	jreq	00105$
                                    431 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      00D69D AA 04            [ 1]  432 	or	a, #0x04
      00D69F C7 52 35         [ 1]  433 	ld	0x5235, a
      00D6A2 20 05            [ 2]  434 	jra	00106$
      00D6A4                        435 00105$:
                                    436 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      00D6A4 A4 FB            [ 1]  437 	and	a, #0xfb
      00D6A6 C7 52 35         [ 1]  438 	ld	0x5235, a
      00D6A9                        439 00106$:
                                    440 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      00D6A9 C6 52 36         [ 1]  441 	ld	a, 0x5236
                                    442 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      00D6AC 0D 17            [ 1]  443 	tnz	(0x17, sp)
      00D6AE 2A 07            [ 1]  444 	jrpl	00108$
                                    445 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      00D6B0 A4 F7            [ 1]  446 	and	a, #0xf7
      00D6B2 C7 52 36         [ 1]  447 	ld	0x5236, a
      00D6B5 20 0D            [ 2]  448 	jra	00110$
      00D6B7                        449 00108$:
                                    450 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      00D6B7 88               [ 1]  451 	push	a
      00D6B8 7B 18            [ 1]  452 	ld	a, (0x18, sp)
      00D6BA A4 08            [ 1]  453 	and	a, #0x08
      00D6BC 6B 0E            [ 1]  454 	ld	(0x0e, sp), a
      00D6BE 84               [ 1]  455 	pop	a
      00D6BF 1A 0D            [ 1]  456 	or	a, (0x0d, sp)
      00D6C1 C7 52 36         [ 1]  457 	ld	0x5236, a
      00D6C4                        458 00110$:
                                    459 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 176: }
      00D6C4 5B 0D            [ 2]  460 	addw	sp, #13
      00D6C6 81               [ 4]  461 	ret
                                    462 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    463 ;	-----------------------------------------
                                    464 ;	 function UART1_Cmd
                                    465 ;	-----------------------------------------
      00D6C7                        466 _UART1_Cmd:
                                    467 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      00D6C7 C6 52 34         [ 1]  468 	ld	a, 0x5234
                                    469 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 186: if (NewState != DISABLE)
      00D6CA 0D 03            [ 1]  470 	tnz	(0x03, sp)
      00D6CC 27 06            [ 1]  471 	jreq	00102$
                                    472 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      00D6CE A4 DF            [ 1]  473 	and	a, #0xdf
      00D6D0 C7 52 34         [ 1]  474 	ld	0x5234, a
      00D6D3 81               [ 4]  475 	ret
      00D6D4                        476 00102$:
                                    477 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      00D6D4 AA 20            [ 1]  478 	or	a, #0x20
      00D6D6 C7 52 34         [ 1]  479 	ld	0x5234, a
                                    480 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 196: }
      00D6D9 81               [ 4]  481 	ret
                                    482 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
                                    483 ;	-----------------------------------------
                                    484 ;	 function UART1_ITConfig
                                    485 ;	-----------------------------------------
      00D6DA                        486 _UART1_ITConfig:
      00D6DA 89               [ 2]  487 	pushw	x
                                    488 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 216: assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
      00D6DB 1E 05            [ 2]  489 	ldw	x, (0x05, sp)
      00D6DD A3 01 00         [ 2]  490 	cpw	x, #0x0100
      00D6E0 27 2C            [ 1]  491 	jreq	00119$
      00D6E2 A3 02 77         [ 2]  492 	cpw	x, #0x0277
      00D6E5 27 27            [ 1]  493 	jreq	00119$
      00D6E7 A3 02 66         [ 2]  494 	cpw	x, #0x0266
      00D6EA 27 22            [ 1]  495 	jreq	00119$
      00D6EC A3 02 05         [ 2]  496 	cpw	x, #0x0205
      00D6EF 27 1D            [ 1]  497 	jreq	00119$
      00D6F1 A3 02 44         [ 2]  498 	cpw	x, #0x0244
      00D6F4 27 18            [ 1]  499 	jreq	00119$
      00D6F6 A3 03 46         [ 2]  500 	cpw	x, #0x0346
      00D6F9 27 13            [ 1]  501 	jreq	00119$
      00D6FB 89               [ 2]  502 	pushw	x
      00D6FC 4B D8            [ 1]  503 	push	#0xd8
      00D6FE 4B 00            [ 1]  504 	push	#0x00
      00D700 4B 00            [ 1]  505 	push	#0x00
      00D702 4B 00            [ 1]  506 	push	#0x00
      00D704 4B EB            [ 1]  507 	push	#<(___str_0+0)
      00D706 4B 86            [ 1]  508 	push	#((___str_0+0) >> 8)
      00D708 CD 00 00         [ 4]  509 	call	_assert_failed
      00D70B 5B 06            [ 2]  510 	addw	sp, #6
      00D70D 85               [ 2]  511 	popw	x
      00D70E                        512 00119$:
                                    513 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 217: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D70E 0D 07            [ 1]  514 	tnz	(0x07, sp)
      00D710 27 18            [ 1]  515 	jreq	00136$
      00D712 7B 07            [ 1]  516 	ld	a, (0x07, sp)
      00D714 4A               [ 1]  517 	dec	a
      00D715 27 13            [ 1]  518 	jreq	00136$
      00D717 89               [ 2]  519 	pushw	x
      00D718 4B D9            [ 1]  520 	push	#0xd9
      00D71A 4B 00            [ 1]  521 	push	#0x00
      00D71C 4B 00            [ 1]  522 	push	#0x00
      00D71E 4B 00            [ 1]  523 	push	#0x00
      00D720 4B EB            [ 1]  524 	push	#<(___str_0+0)
      00D722 4B 86            [ 1]  525 	push	#((___str_0+0) >> 8)
      00D724 CD 00 00         [ 4]  526 	call	_assert_failed
      00D727 5B 06            [ 2]  527 	addw	sp, #6
      00D729 85               [ 2]  528 	popw	x
      00D72A                        529 00136$:
                                    530 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
                                    531 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      00D72A 7B 06            [ 1]  532 	ld	a, (0x06, sp)
      00D72C A4 0F            [ 1]  533 	and	a, #0x0f
      00D72E 88               [ 1]  534 	push	a
      00D72F A6 01            [ 1]  535 	ld	a, #0x01
      00D731 6B 03            [ 1]  536 	ld	(0x03, sp), a
      00D733 84               [ 1]  537 	pop	a
      00D734 4D               [ 1]  538 	tnz	a
      00D735 27 05            [ 1]  539 	jreq	00228$
      00D737                        540 00227$:
      00D737 08 02            [ 1]  541 	sll	(0x02, sp)
      00D739 4A               [ 1]  542 	dec	a
      00D73A 26 FB            [ 1]  543 	jrne	00227$
      00D73C                        544 00228$:
                                    545 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 227: if (uartreg == 0x01)
      00D73C 9E               [ 1]  546 	ld	a, xh
      00D73D 4A               [ 1]  547 	dec	a
      00D73E 26 05            [ 1]  548 	jrne	00230$
      00D740 A6 01            [ 1]  549 	ld	a, #0x01
      00D742 6B 01            [ 1]  550 	ld	(0x01, sp), a
      00D744 C5                     551 	.byte 0xc5
      00D745                        552 00230$:
      00D745 0F 01            [ 1]  553 	clr	(0x01, sp)
      00D747                        554 00231$:
                                    555 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 231: else if (uartreg == 0x02)
      00D747 9E               [ 1]  556 	ld	a, xh
      00D748 A0 02            [ 1]  557 	sub	a, #0x02
      00D74A 26 02            [ 1]  558 	jrne	00233$
      00D74C 4C               [ 1]  559 	inc	a
      00D74D 21                     560 	.byte 0x21
      00D74E                        561 00233$:
      00D74E 4F               [ 1]  562 	clr	a
      00D74F                        563 00234$:
                                    564 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 224: if (NewState != DISABLE)
      00D74F 0D 07            [ 1]  565 	tnz	(0x07, sp)
      00D751 27 25            [ 1]  566 	jreq	00114$
                                    567 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 227: if (uartreg == 0x01)
      00D753 0D 01            [ 1]  568 	tnz	(0x01, sp)
      00D755 27 0A            [ 1]  569 	jreq	00105$
                                    570 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 229: UART1->CR1 |= itpos;
      00D757 C6 52 34         [ 1]  571 	ld	a, 0x5234
      00D75A 1A 02            [ 1]  572 	or	a, (0x02, sp)
      00D75C C7 52 34         [ 1]  573 	ld	0x5234, a
      00D75F 20 3E            [ 2]  574 	jra	00116$
      00D761                        575 00105$:
                                    576 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 231: else if (uartreg == 0x02)
      00D761 4D               [ 1]  577 	tnz	a
      00D762 27 0A            [ 1]  578 	jreq	00102$
                                    579 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 233: UART1->CR2 |= itpos;
      00D764 C6 52 35         [ 1]  580 	ld	a, 0x5235
      00D767 1A 02            [ 1]  581 	or	a, (0x02, sp)
      00D769 C7 52 35         [ 1]  582 	ld	0x5235, a
      00D76C 20 31            [ 2]  583 	jra	00116$
      00D76E                        584 00102$:
                                    585 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 237: UART1->CR4 |= itpos;
      00D76E C6 52 37         [ 1]  586 	ld	a, 0x5237
      00D771 1A 02            [ 1]  587 	or	a, (0x02, sp)
      00D773 C7 52 37         [ 1]  588 	ld	0x5237, a
      00D776 20 27            [ 2]  589 	jra	00116$
      00D778                        590 00114$:
                                    591 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      00D778 88               [ 1]  592 	push	a
      00D779 03 03            [ 1]  593 	cpl	(0x03, sp)
      00D77B 84               [ 1]  594 	pop	a
                                    595 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 243: if (uartreg == 0x01)
      00D77C 0D 01            [ 1]  596 	tnz	(0x01, sp)
      00D77E 27 0A            [ 1]  597 	jreq	00111$
                                    598 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      00D780 C6 52 34         [ 1]  599 	ld	a, 0x5234
      00D783 14 02            [ 1]  600 	and	a, (0x02, sp)
      00D785 C7 52 34         [ 1]  601 	ld	0x5234, a
      00D788 20 15            [ 2]  602 	jra	00116$
      00D78A                        603 00111$:
                                    604 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 247: else if (uartreg == 0x02)
      00D78A 4D               [ 1]  605 	tnz	a
      00D78B 27 0A            [ 1]  606 	jreq	00108$
                                    607 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
      00D78D C6 52 35         [ 1]  608 	ld	a, 0x5235
      00D790 14 02            [ 1]  609 	and	a, (0x02, sp)
      00D792 C7 52 35         [ 1]  610 	ld	0x5235, a
      00D795 20 08            [ 2]  611 	jra	00116$
      00D797                        612 00108$:
                                    613 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
      00D797 C6 52 37         [ 1]  614 	ld	a, 0x5237
      00D79A 14 02            [ 1]  615 	and	a, (0x02, sp)
      00D79C C7 52 37         [ 1]  616 	ld	0x5237, a
      00D79F                        617 00116$:
                                    618 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 257: }
      00D79F 85               [ 2]  619 	popw	x
      00D7A0 81               [ 4]  620 	ret
                                    621 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 265: void UART1_HalfDuplexCmd(FunctionalState NewState)
                                    622 ;	-----------------------------------------
                                    623 ;	 function UART1_HalfDuplexCmd
                                    624 ;	-----------------------------------------
      00D7A1                        625 _UART1_HalfDuplexCmd:
                                    626 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 267: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D7A1 0D 03            [ 1]  627 	tnz	(0x03, sp)
      00D7A3 27 14            [ 1]  628 	jreq	00107$
      00D7A5 7B 03            [ 1]  629 	ld	a, (0x03, sp)
      00D7A7 4A               [ 1]  630 	dec	a
      00D7A8 27 0F            [ 1]  631 	jreq	00107$
      00D7AA 4B 0B            [ 1]  632 	push	#0x0b
      00D7AC 4B 01            [ 1]  633 	push	#0x01
      00D7AE 5F               [ 1]  634 	clrw	x
      00D7AF 89               [ 2]  635 	pushw	x
      00D7B0 4B EB            [ 1]  636 	push	#<(___str_0+0)
      00D7B2 4B 86            [ 1]  637 	push	#((___str_0+0) >> 8)
      00D7B4 CD 00 00         [ 4]  638 	call	_assert_failed
      00D7B7 5B 06            [ 2]  639 	addw	sp, #6
      00D7B9                        640 00107$:
                                    641 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
      00D7B9 C6 52 38         [ 1]  642 	ld	a, 0x5238
                                    643 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 269: if (NewState != DISABLE)
      00D7BC 0D 03            [ 1]  644 	tnz	(0x03, sp)
      00D7BE 27 06            [ 1]  645 	jreq	00102$
                                    646 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
      00D7C0 AA 08            [ 1]  647 	or	a, #0x08
      00D7C2 C7 52 38         [ 1]  648 	ld	0x5238, a
      00D7C5 81               [ 4]  649 	ret
      00D7C6                        650 00102$:
                                    651 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 275: UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
      00D7C6 A4 F7            [ 1]  652 	and	a, #0xf7
      00D7C8 C7 52 38         [ 1]  653 	ld	0x5238, a
                                    654 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 277: }
      00D7CB 81               [ 4]  655 	ret
                                    656 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 285: void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
                                    657 ;	-----------------------------------------
                                    658 ;	 function UART1_IrDAConfig
                                    659 ;	-----------------------------------------
      00D7CC                        660 _UART1_IrDAConfig:
                                    661 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 287: assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
      00D7CC 7B 03            [ 1]  662 	ld	a, (0x03, sp)
      00D7CE 4A               [ 1]  663 	dec	a
      00D7CF 27 13            [ 1]  664 	jreq	00107$
      00D7D1 0D 03            [ 1]  665 	tnz	(0x03, sp)
      00D7D3 27 0F            [ 1]  666 	jreq	00107$
      00D7D5 4B 1F            [ 1]  667 	push	#0x1f
      00D7D7 4B 01            [ 1]  668 	push	#0x01
      00D7D9 5F               [ 1]  669 	clrw	x
      00D7DA 89               [ 2]  670 	pushw	x
      00D7DB 4B EB            [ 1]  671 	push	#<(___str_0+0)
      00D7DD 4B 86            [ 1]  672 	push	#((___str_0+0) >> 8)
      00D7DF CD 00 00         [ 4]  673 	call	_assert_failed
      00D7E2 5B 06            [ 2]  674 	addw	sp, #6
      00D7E4                        675 00107$:
                                    676 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
      00D7E4 C6 52 38         [ 1]  677 	ld	a, 0x5238
                                    678 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 289: if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
      00D7E7 0D 03            [ 1]  679 	tnz	(0x03, sp)
      00D7E9 27 06            [ 1]  680 	jreq	00102$
                                    681 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
      00D7EB AA 04            [ 1]  682 	or	a, #0x04
      00D7ED C7 52 38         [ 1]  683 	ld	0x5238, a
      00D7F0 81               [ 4]  684 	ret
      00D7F1                        685 00102$:
                                    686 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 295: UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
      00D7F1 A4 FB            [ 1]  687 	and	a, #0xfb
      00D7F3 C7 52 38         [ 1]  688 	ld	0x5238, a
                                    689 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 297: }
      00D7F6 81               [ 4]  690 	ret
                                    691 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 305: void UART1_IrDACmd(FunctionalState NewState)
                                    692 ;	-----------------------------------------
                                    693 ;	 function UART1_IrDACmd
                                    694 ;	-----------------------------------------
      00D7F7                        695 _UART1_IrDACmd:
                                    696 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 308: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D7F7 0D 03            [ 1]  697 	tnz	(0x03, sp)
      00D7F9 27 14            [ 1]  698 	jreq	00107$
      00D7FB 7B 03            [ 1]  699 	ld	a, (0x03, sp)
      00D7FD 4A               [ 1]  700 	dec	a
      00D7FE 27 0F            [ 1]  701 	jreq	00107$
      00D800 4B 34            [ 1]  702 	push	#0x34
      00D802 4B 01            [ 1]  703 	push	#0x01
      00D804 5F               [ 1]  704 	clrw	x
      00D805 89               [ 2]  705 	pushw	x
      00D806 4B EB            [ 1]  706 	push	#<(___str_0+0)
      00D808 4B 86            [ 1]  707 	push	#((___str_0+0) >> 8)
      00D80A CD 00 00         [ 4]  708 	call	_assert_failed
      00D80D 5B 06            [ 2]  709 	addw	sp, #6
      00D80F                        710 00107$:
                                    711 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
      00D80F C6 52 38         [ 1]  712 	ld	a, 0x5238
                                    713 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 310: if (NewState != DISABLE)
      00D812 0D 03            [ 1]  714 	tnz	(0x03, sp)
      00D814 27 06            [ 1]  715 	jreq	00102$
                                    716 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
      00D816 AA 02            [ 1]  717 	or	a, #0x02
      00D818 C7 52 38         [ 1]  718 	ld	0x5238, a
      00D81B 81               [ 4]  719 	ret
      00D81C                        720 00102$:
                                    721 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 318: UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
      00D81C A4 FD            [ 1]  722 	and	a, #0xfd
      00D81E C7 52 38         [ 1]  723 	ld	0x5238, a
                                    724 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 320: }
      00D821 81               [ 4]  725 	ret
                                    726 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 329: void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
                                    727 ;	-----------------------------------------
                                    728 ;	 function UART1_LINBreakDetectionConfig
                                    729 ;	-----------------------------------------
      00D822                        730 _UART1_LINBreakDetectionConfig:
                                    731 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 331: assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
      00D822 0D 03            [ 1]  732 	tnz	(0x03, sp)
      00D824 27 14            [ 1]  733 	jreq	00107$
      00D826 7B 03            [ 1]  734 	ld	a, (0x03, sp)
      00D828 4A               [ 1]  735 	dec	a
      00D829 27 0F            [ 1]  736 	jreq	00107$
      00D82B 4B 4B            [ 1]  737 	push	#0x4b
      00D82D 4B 01            [ 1]  738 	push	#0x01
      00D82F 5F               [ 1]  739 	clrw	x
      00D830 89               [ 2]  740 	pushw	x
      00D831 4B EB            [ 1]  741 	push	#<(___str_0+0)
      00D833 4B 86            [ 1]  742 	push	#((___str_0+0) >> 8)
      00D835 CD 00 00         [ 4]  743 	call	_assert_failed
      00D838 5B 06            [ 2]  744 	addw	sp, #6
      00D83A                        745 00107$:
                                    746 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
      00D83A C6 52 37         [ 1]  747 	ld	a, 0x5237
                                    748 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 333: if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
      00D83D 0D 03            [ 1]  749 	tnz	(0x03, sp)
      00D83F 27 06            [ 1]  750 	jreq	00102$
                                    751 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
      00D841 AA 20            [ 1]  752 	or	a, #0x20
      00D843 C7 52 37         [ 1]  753 	ld	0x5237, a
      00D846 81               [ 4]  754 	ret
      00D847                        755 00102$:
                                    756 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 339: UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
      00D847 A4 DF            [ 1]  757 	and	a, #0xdf
      00D849 C7 52 37         [ 1]  758 	ld	0x5237, a
                                    759 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 341: }
      00D84C 81               [ 4]  760 	ret
                                    761 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 349: void UART1_LINCmd(FunctionalState NewState)
                                    762 ;	-----------------------------------------
                                    763 ;	 function UART1_LINCmd
                                    764 ;	-----------------------------------------
      00D84D                        765 _UART1_LINCmd:
                                    766 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 351: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D84D 0D 03            [ 1]  767 	tnz	(0x03, sp)
      00D84F 27 14            [ 1]  768 	jreq	00107$
      00D851 7B 03            [ 1]  769 	ld	a, (0x03, sp)
      00D853 4A               [ 1]  770 	dec	a
      00D854 27 0F            [ 1]  771 	jreq	00107$
      00D856 4B 5F            [ 1]  772 	push	#0x5f
      00D858 4B 01            [ 1]  773 	push	#0x01
      00D85A 5F               [ 1]  774 	clrw	x
      00D85B 89               [ 2]  775 	pushw	x
      00D85C 4B EB            [ 1]  776 	push	#<(___str_0+0)
      00D85E 4B 86            [ 1]  777 	push	#((___str_0+0) >> 8)
      00D860 CD 00 00         [ 4]  778 	call	_assert_failed
      00D863 5B 06            [ 2]  779 	addw	sp, #6
      00D865                        780 00107$:
                                    781 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
      00D865 C6 52 36         [ 1]  782 	ld	a, 0x5236
                                    783 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 353: if (NewState != DISABLE)
      00D868 0D 03            [ 1]  784 	tnz	(0x03, sp)
      00D86A 27 06            [ 1]  785 	jreq	00102$
                                    786 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
      00D86C AA 40            [ 1]  787 	or	a, #0x40
      00D86E C7 52 36         [ 1]  788 	ld	0x5236, a
      00D871 81               [ 4]  789 	ret
      00D872                        790 00102$:
                                    791 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 361: UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
      00D872 A4 BF            [ 1]  792 	and	a, #0xbf
      00D874 C7 52 36         [ 1]  793 	ld	0x5236, a
                                    794 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 363: }
      00D877 81               [ 4]  795 	ret
                                    796 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 371: void UART1_SmartCardCmd(FunctionalState NewState)
                                    797 ;	-----------------------------------------
                                    798 ;	 function UART1_SmartCardCmd
                                    799 ;	-----------------------------------------
      00D878                        800 _UART1_SmartCardCmd:
                                    801 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 373: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D878 0D 03            [ 1]  802 	tnz	(0x03, sp)
      00D87A 27 14            [ 1]  803 	jreq	00107$
      00D87C 7B 03            [ 1]  804 	ld	a, (0x03, sp)
      00D87E 4A               [ 1]  805 	dec	a
      00D87F 27 0F            [ 1]  806 	jreq	00107$
      00D881 4B 75            [ 1]  807 	push	#0x75
      00D883 4B 01            [ 1]  808 	push	#0x01
      00D885 5F               [ 1]  809 	clrw	x
      00D886 89               [ 2]  810 	pushw	x
      00D887 4B EB            [ 1]  811 	push	#<(___str_0+0)
      00D889 4B 86            [ 1]  812 	push	#((___str_0+0) >> 8)
      00D88B CD 00 00         [ 4]  813 	call	_assert_failed
      00D88E 5B 06            [ 2]  814 	addw	sp, #6
      00D890                        815 00107$:
                                    816 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
      00D890 C6 52 38         [ 1]  817 	ld	a, 0x5238
                                    818 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 375: if (NewState != DISABLE)
      00D893 0D 03            [ 1]  819 	tnz	(0x03, sp)
      00D895 27 06            [ 1]  820 	jreq	00102$
                                    821 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
      00D897 AA 20            [ 1]  822 	or	a, #0x20
      00D899 C7 52 38         [ 1]  823 	ld	0x5238, a
      00D89C 81               [ 4]  824 	ret
      00D89D                        825 00102$:
                                    826 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 383: UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
      00D89D A4 DF            [ 1]  827 	and	a, #0xdf
      00D89F C7 52 38         [ 1]  828 	ld	0x5238, a
                                    829 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 385: }
      00D8A2 81               [ 4]  830 	ret
                                    831 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 394: void UART1_SmartCardNACKCmd(FunctionalState NewState)
                                    832 ;	-----------------------------------------
                                    833 ;	 function UART1_SmartCardNACKCmd
                                    834 ;	-----------------------------------------
      00D8A3                        835 _UART1_SmartCardNACKCmd:
                                    836 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 396: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D8A3 0D 03            [ 1]  837 	tnz	(0x03, sp)
      00D8A5 27 14            [ 1]  838 	jreq	00107$
      00D8A7 7B 03            [ 1]  839 	ld	a, (0x03, sp)
      00D8A9 4A               [ 1]  840 	dec	a
      00D8AA 27 0F            [ 1]  841 	jreq	00107$
      00D8AC 4B 8C            [ 1]  842 	push	#0x8c
      00D8AE 4B 01            [ 1]  843 	push	#0x01
      00D8B0 5F               [ 1]  844 	clrw	x
      00D8B1 89               [ 2]  845 	pushw	x
      00D8B2 4B EB            [ 1]  846 	push	#<(___str_0+0)
      00D8B4 4B 86            [ 1]  847 	push	#((___str_0+0) >> 8)
      00D8B6 CD 00 00         [ 4]  848 	call	_assert_failed
      00D8B9 5B 06            [ 2]  849 	addw	sp, #6
      00D8BB                        850 00107$:
                                    851 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
      00D8BB C6 52 38         [ 1]  852 	ld	a, 0x5238
                                    853 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 398: if (NewState != DISABLE)
      00D8BE 0D 03            [ 1]  854 	tnz	(0x03, sp)
      00D8C0 27 06            [ 1]  855 	jreq	00102$
                                    856 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
      00D8C2 AA 10            [ 1]  857 	or	a, #0x10
      00D8C4 C7 52 38         [ 1]  858 	ld	0x5238, a
      00D8C7 81               [ 4]  859 	ret
      00D8C8                        860 00102$:
                                    861 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 406: UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
      00D8C8 A4 EF            [ 1]  862 	and	a, #0xef
      00D8CA C7 52 38         [ 1]  863 	ld	0x5238, a
                                    864 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 408: }
      00D8CD 81               [ 4]  865 	ret
                                    866 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 416: void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
                                    867 ;	-----------------------------------------
                                    868 ;	 function UART1_WakeUpConfig
                                    869 ;	-----------------------------------------
      00D8CE                        870 _UART1_WakeUpConfig:
                                    871 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 418: assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
      00D8CE 0D 03            [ 1]  872 	tnz	(0x03, sp)
      00D8D0 27 15            [ 1]  873 	jreq	00104$
      00D8D2 7B 03            [ 1]  874 	ld	a, (0x03, sp)
      00D8D4 A1 08            [ 1]  875 	cp	a, #0x08
      00D8D6 27 0F            [ 1]  876 	jreq	00104$
      00D8D8 4B A2            [ 1]  877 	push	#0xa2
      00D8DA 4B 01            [ 1]  878 	push	#0x01
      00D8DC 5F               [ 1]  879 	clrw	x
      00D8DD 89               [ 2]  880 	pushw	x
      00D8DE 4B EB            [ 1]  881 	push	#<(___str_0+0)
      00D8E0 4B 86            [ 1]  882 	push	#((___str_0+0) >> 8)
      00D8E2 CD 00 00         [ 4]  883 	call	_assert_failed
      00D8E5 5B 06            [ 2]  884 	addw	sp, #6
      00D8E7                        885 00104$:
                                    886 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 420: UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
      00D8E7 72 17 52 34      [ 1]  887 	bres	21044, #3
                                    888 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 421: UART1->CR1 |= (uint8_t)UART1_WakeUp;
      00D8EB C6 52 34         [ 1]  889 	ld	a, 0x5234
      00D8EE 1A 03            [ 1]  890 	or	a, (0x03, sp)
      00D8F0 C7 52 34         [ 1]  891 	ld	0x5234, a
                                    892 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 422: }
      00D8F3 81               [ 4]  893 	ret
                                    894 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 430: void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
                                    895 ;	-----------------------------------------
                                    896 ;	 function UART1_ReceiverWakeUpCmd
                                    897 ;	-----------------------------------------
      00D8F4                        898 _UART1_ReceiverWakeUpCmd:
                                    899 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 432: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D8F4 0D 03            [ 1]  900 	tnz	(0x03, sp)
      00D8F6 27 14            [ 1]  901 	jreq	00107$
      00D8F8 7B 03            [ 1]  902 	ld	a, (0x03, sp)
      00D8FA 4A               [ 1]  903 	dec	a
      00D8FB 27 0F            [ 1]  904 	jreq	00107$
      00D8FD 4B B0            [ 1]  905 	push	#0xb0
      00D8FF 4B 01            [ 1]  906 	push	#0x01
      00D901 5F               [ 1]  907 	clrw	x
      00D902 89               [ 2]  908 	pushw	x
      00D903 4B EB            [ 1]  909 	push	#<(___str_0+0)
      00D905 4B 86            [ 1]  910 	push	#((___str_0+0) >> 8)
      00D907 CD 00 00         [ 4]  911 	call	_assert_failed
      00D90A 5B 06            [ 2]  912 	addw	sp, #6
      00D90C                        913 00107$:
                                    914 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
      00D90C C6 52 35         [ 1]  915 	ld	a, 0x5235
                                    916 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 434: if (NewState != DISABLE)
      00D90F 0D 03            [ 1]  917 	tnz	(0x03, sp)
      00D911 27 06            [ 1]  918 	jreq	00102$
                                    919 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
      00D913 AA 02            [ 1]  920 	or	a, #0x02
      00D915 C7 52 35         [ 1]  921 	ld	0x5235, a
      00D918 81               [ 4]  922 	ret
      00D919                        923 00102$:
                                    924 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 442: UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
      00D919 A4 FD            [ 1]  925 	and	a, #0xfd
      00D91B C7 52 35         [ 1]  926 	ld	0x5235, a
                                    927 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 444: }
      00D91E 81               [ 4]  928 	ret
                                    929 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
                                    930 ;	-----------------------------------------
                                    931 ;	 function UART1_ReceiveData8
                                    932 ;	-----------------------------------------
      00D91F                        933 _UART1_ReceiveData8:
                                    934 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
      00D91F C6 52 31         [ 1]  935 	ld	a, 0x5231
                                    936 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 454: }
      00D922 81               [ 4]  937 	ret
                                    938 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 461: uint16_t UART1_ReceiveData9(void)
                                    939 ;	-----------------------------------------
                                    940 ;	 function UART1_ReceiveData9
                                    941 ;	-----------------------------------------
      00D923                        942 _UART1_ReceiveData9:
      00D923 89               [ 2]  943 	pushw	x
                                    944 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 465: temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
      00D924 C6 52 34         [ 1]  945 	ld	a, 0x5234
      00D927 A4 80            [ 1]  946 	and	a, #0x80
      00D929 97               [ 1]  947 	ld	xl, a
      00D92A 4F               [ 1]  948 	clr	a
      00D92B 95               [ 1]  949 	ld	xh, a
      00D92C 58               [ 2]  950 	sllw	x
      00D92D 1F 01            [ 2]  951 	ldw	(0x01, sp), x
                                    952 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 466: return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
      00D92F C6 52 31         [ 1]  953 	ld	a, 0x5231
      00D932 5F               [ 1]  954 	clrw	x
      00D933 1A 02            [ 1]  955 	or	a, (0x02, sp)
      00D935 02               [ 1]  956 	rlwa	x
      00D936 1A 01            [ 1]  957 	or	a, (0x01, sp)
      00D938 A4 01            [ 1]  958 	and	a, #0x01
      00D93A 95               [ 1]  959 	ld	xh, a
                                    960 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 467: }
      00D93B 5B 02            [ 2]  961 	addw	sp, #2
      00D93D 81               [ 4]  962 	ret
                                    963 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
                                    964 ;	-----------------------------------------
                                    965 ;	 function UART1_SendData8
                                    966 ;	-----------------------------------------
      00D93E                        967 _UART1_SendData8:
                                    968 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 477: UART1->DR = Data;
      00D93E AE 52 31         [ 2]  969 	ldw	x, #0x5231
      00D941 7B 03            [ 1]  970 	ld	a, (0x03, sp)
      00D943 F7               [ 1]  971 	ld	(x), a
                                    972 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 478: }
      00D944 81               [ 4]  973 	ret
                                    974 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 486: void UART1_SendData9(uint16_t Data)
                                    975 ;	-----------------------------------------
                                    976 ;	 function UART1_SendData9
                                    977 ;	-----------------------------------------
      00D945                        978 _UART1_SendData9:
      00D945 88               [ 1]  979 	push	a
                                    980 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 489: UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
      00D946 72 1D 52 34      [ 1]  981 	bres	21044, #6
                                    982 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 491: UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
      00D94A C6 52 34         [ 1]  983 	ld	a, 0x5234
      00D94D 6B 01            [ 1]  984 	ld	(0x01, sp), a
      00D94F 1E 04            [ 2]  985 	ldw	x, (0x04, sp)
      00D951 54               [ 2]  986 	srlw	x
      00D952 54               [ 2]  987 	srlw	x
      00D953 9F               [ 1]  988 	ld	a, xl
      00D954 A4 40            [ 1]  989 	and	a, #0x40
      00D956 1A 01            [ 1]  990 	or	a, (0x01, sp)
      00D958 C7 52 34         [ 1]  991 	ld	0x5234, a
                                    992 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 493: UART1->DR   = (uint8_t)(Data);
      00D95B 7B 05            [ 1]  993 	ld	a, (0x05, sp)
      00D95D C7 52 31         [ 1]  994 	ld	0x5231, a
                                    995 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 494: }
      00D960 84               [ 1]  996 	pop	a
      00D961 81               [ 4]  997 	ret
                                    998 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 501: void UART1_SendBreak(void)
                                    999 ;	-----------------------------------------
                                   1000 ;	 function UART1_SendBreak
                                   1001 ;	-----------------------------------------
      00D962                       1002 _UART1_SendBreak:
                                   1003 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 503: UART1->CR2 |= UART1_CR2_SBK;
      00D962 72 10 52 35      [ 1] 1004 	bset	21045, #0
                                   1005 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 504: }
      00D966 81               [ 4] 1006 	ret
                                   1007 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 511: void UART1_SetAddress(uint8_t UART1_Address)
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function UART1_SetAddress
                                   1010 ;	-----------------------------------------
      00D967                       1011 _UART1_SetAddress:
                                   1012 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 514: assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
      00D967 7B 03            [ 1] 1013 	ld	a, (0x03, sp)
      00D969 A1 10            [ 1] 1014 	cp	a, #0x10
      00D96B 25 0F            [ 1] 1015 	jrc	00104$
      00D96D 4B 02            [ 1] 1016 	push	#0x02
      00D96F 4B 02            [ 1] 1017 	push	#0x02
      00D971 5F               [ 1] 1018 	clrw	x
      00D972 89               [ 2] 1019 	pushw	x
      00D973 4B EB            [ 1] 1020 	push	#<(___str_0+0)
      00D975 4B 86            [ 1] 1021 	push	#((___str_0+0) >> 8)
      00D977 CD 00 00         [ 4] 1022 	call	_assert_failed
      00D97A 5B 06            [ 2] 1023 	addw	sp, #6
      00D97C                       1024 00104$:
                                   1025 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 517: UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
      00D97C C6 52 37         [ 1] 1026 	ld	a, 0x5237
      00D97F A4 F0            [ 1] 1027 	and	a, #0xf0
      00D981 C7 52 37         [ 1] 1028 	ld	0x5237, a
                                   1029 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 519: UART1->CR4 |= UART1_Address;
      00D984 C6 52 37         [ 1] 1030 	ld	a, 0x5237
      00D987 1A 03            [ 1] 1031 	or	a, (0x03, sp)
      00D989 C7 52 37         [ 1] 1032 	ld	0x5237, a
                                   1033 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 520: }
      00D98C 81               [ 4] 1034 	ret
                                   1035 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 528: void UART1_SetGuardTime(uint8_t UART1_GuardTime)
                                   1036 ;	-----------------------------------------
                                   1037 ;	 function UART1_SetGuardTime
                                   1038 ;	-----------------------------------------
      00D98D                       1039 _UART1_SetGuardTime:
                                   1040 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 531: UART1->GTR = UART1_GuardTime;
      00D98D AE 52 39         [ 2] 1041 	ldw	x, #0x5239
      00D990 7B 03            [ 1] 1042 	ld	a, (0x03, sp)
      00D992 F7               [ 1] 1043 	ld	(x), a
                                   1044 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 532: }
      00D993 81               [ 4] 1045 	ret
                                   1046 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 556: void UART1_SetPrescaler(uint8_t UART1_Prescaler)
                                   1047 ;	-----------------------------------------
                                   1048 ;	 function UART1_SetPrescaler
                                   1049 ;	-----------------------------------------
      00D994                       1050 _UART1_SetPrescaler:
                                   1051 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 559: UART1->PSCR = UART1_Prescaler;
      00D994 AE 52 3A         [ 2] 1052 	ldw	x, #0x523a
      00D997 7B 03            [ 1] 1053 	ld	a, (0x03, sp)
      00D999 F7               [ 1] 1054 	ld	(x), a
                                   1055 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 560: }
      00D99A 81               [ 4] 1056 	ret
                                   1057 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function UART1_GetFlagStatus
                                   1060 ;	-----------------------------------------
      00D99B                       1061 _UART1_GetFlagStatus:
      00D99B 89               [ 2] 1062 	pushw	x
                                   1063 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 573: assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
      00D99C 1E 05            [ 2] 1064 	ldw	x, (0x05, sp)
      00D99E A3 01 01         [ 2] 1065 	cpw	x, #0x0101
      00D9A1 26 05            [ 1] 1066 	jrne	00223$
      00D9A3 A6 01            [ 1] 1067 	ld	a, #0x01
      00D9A5 6B 01            [ 1] 1068 	ld	(0x01, sp), a
      00D9A7 C5                    1069 	.byte 0xc5
      00D9A8                       1070 00223$:
      00D9A8 0F 01            [ 1] 1071 	clr	(0x01, sp)
      00D9AA                       1072 00224$:
      00D9AA A3 02 10         [ 2] 1073 	cpw	x, #0x0210
      00D9AD 26 03            [ 1] 1074 	jrne	00226$
      00D9AF A6 01            [ 1] 1075 	ld	a, #0x01
      00D9B1 21                    1076 	.byte 0x21
      00D9B2                       1077 00226$:
      00D9B2 4F               [ 1] 1078 	clr	a
      00D9B3                       1079 00227$:
      00D9B3 A3 00 80         [ 2] 1080 	cpw	x, #0x0080
      00D9B6 27 39            [ 1] 1081 	jreq	00119$
      00D9B8 A3 00 40         [ 2] 1082 	cpw	x, #0x0040
      00D9BB 27 34            [ 1] 1083 	jreq	00119$
      00D9BD A3 00 20         [ 2] 1084 	cpw	x, #0x0020
      00D9C0 27 2F            [ 1] 1085 	jreq	00119$
      00D9C2 A3 00 10         [ 2] 1086 	cpw	x, #0x0010
      00D9C5 27 2A            [ 1] 1087 	jreq	00119$
      00D9C7 A3 00 08         [ 2] 1088 	cpw	x, #0x0008
      00D9CA 27 25            [ 1] 1089 	jreq	00119$
      00D9CC A3 00 04         [ 2] 1090 	cpw	x, #0x0004
      00D9CF 27 20            [ 1] 1091 	jreq	00119$
      00D9D1 A3 00 02         [ 2] 1092 	cpw	x, #0x0002
      00D9D4 27 1B            [ 1] 1093 	jreq	00119$
      00D9D6 5A               [ 2] 1094 	decw	x
      00D9D7 27 18            [ 1] 1095 	jreq	00119$
      00D9D9 0D 01            [ 1] 1096 	tnz	(0x01, sp)
      00D9DB 26 14            [ 1] 1097 	jrne	00119$
      00D9DD 4D               [ 1] 1098 	tnz	a
      00D9DE 26 11            [ 1] 1099 	jrne	00119$
      00D9E0 88               [ 1] 1100 	push	a
      00D9E1 4B 3D            [ 1] 1101 	push	#0x3d
      00D9E3 4B 02            [ 1] 1102 	push	#0x02
      00D9E5 5F               [ 1] 1103 	clrw	x
      00D9E6 89               [ 2] 1104 	pushw	x
      00D9E7 4B EB            [ 1] 1105 	push	#<(___str_0+0)
      00D9E9 4B 86            [ 1] 1106 	push	#((___str_0+0) >> 8)
      00D9EB CD 00 00         [ 4] 1107 	call	_assert_failed
      00D9EE 5B 06            [ 2] 1108 	addw	sp, #6
      00D9F0 84               [ 1] 1109 	pop	a
      00D9F1                       1110 00119$:
                                   1111 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00D9F1 88               [ 1] 1112 	push	a
      00D9F2 7B 07            [ 1] 1113 	ld	a, (0x07, sp)
      00D9F4 6B 03            [ 1] 1114 	ld	(0x03, sp), a
      00D9F6 84               [ 1] 1115 	pop	a
                                   1116 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      00D9F7 4D               [ 1] 1117 	tnz	a
      00D9F8 27 0E            [ 1] 1118 	jreq	00114$
                                   1119 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00D9FA C6 52 37         [ 1] 1120 	ld	a, 0x5237
      00D9FD 14 02            [ 1] 1121 	and	a, (0x02, sp)
      00D9FF 27 04            [ 1] 1122 	jreq	00102$
                                   1123 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 582: status = SET;
      00DA01 A6 01            [ 1] 1124 	ld	a, #0x01
      00DA03 20 20            [ 2] 1125 	jra	00115$
      00DA05                       1126 00102$:
                                   1127 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 587: status = RESET;
      00DA05 4F               [ 1] 1128 	clr	a
      00DA06 20 1D            [ 2] 1129 	jra	00115$
      00DA08                       1130 00114$:
                                   1131 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
      00DA08 7B 01            [ 1] 1132 	ld	a, (0x01, sp)
      00DA0A 27 0E            [ 1] 1133 	jreq	00111$
                                   1134 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00DA0C C6 52 35         [ 1] 1135 	ld	a, 0x5235
      00DA0F 14 02            [ 1] 1136 	and	a, (0x02, sp)
      00DA11 27 04            [ 1] 1137 	jreq	00105$
                                   1138 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 595: status = SET;
      00DA13 A6 01            [ 1] 1139 	ld	a, #0x01
      00DA15 20 0E            [ 2] 1140 	jra	00115$
      00DA17                       1141 00105$:
                                   1142 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 600: status = RESET;
      00DA17 4F               [ 1] 1143 	clr	a
      00DA18 20 0B            [ 2] 1144 	jra	00115$
      00DA1A                       1145 00111$:
                                   1146 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00DA1A C6 52 30         [ 1] 1147 	ld	a, 0x5230
      00DA1D 14 02            [ 1] 1148 	and	a, (0x02, sp)
      00DA1F 27 03            [ 1] 1149 	jreq	00108$
                                   1150 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 608: status = SET;
      00DA21 A6 01            [ 1] 1151 	ld	a, #0x01
                                   1152 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 613: status = RESET;
      00DA23 21                    1153 	.byte 0x21
      00DA24                       1154 00108$:
      00DA24 4F               [ 1] 1155 	clr	a
      00DA25                       1156 00115$:
                                   1157 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 617: return status;
                                   1158 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 618: }
      00DA25 85               [ 2] 1159 	popw	x
      00DA26 81               [ 4] 1160 	ret
                                   1161 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 646: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                   1162 ;	-----------------------------------------
                                   1163 ;	 function UART1_ClearFlag
                                   1164 ;	-----------------------------------------
      00DA27                       1165 _UART1_ClearFlag:
                                   1166 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 648: assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
      00DA27 1E 03            [ 2] 1167 	ldw	x, (0x03, sp)
      00DA29 A3 00 20         [ 2] 1168 	cpw	x, #0x0020
      00DA2C 26 03            [ 1] 1169 	jrne	00127$
      00DA2E A6 01            [ 1] 1170 	ld	a, #0x01
      00DA30 21                    1171 	.byte 0x21
      00DA31                       1172 00127$:
      00DA31 4F               [ 1] 1173 	clr	a
      00DA32                       1174 00128$:
      00DA32 4D               [ 1] 1175 	tnz	a
      00DA33 26 16            [ 1] 1176 	jrne	00107$
      00DA35 A3 02 10         [ 2] 1177 	cpw	x, #0x0210
      00DA38 27 11            [ 1] 1178 	jreq	00107$
      00DA3A 88               [ 1] 1179 	push	a
      00DA3B 4B 88            [ 1] 1180 	push	#0x88
      00DA3D 4B 02            [ 1] 1181 	push	#0x02
      00DA3F 5F               [ 1] 1182 	clrw	x
      00DA40 89               [ 2] 1183 	pushw	x
      00DA41 4B EB            [ 1] 1184 	push	#<(___str_0+0)
      00DA43 4B 86            [ 1] 1185 	push	#((___str_0+0) >> 8)
      00DA45 CD 00 00         [ 4] 1186 	call	_assert_failed
      00DA48 5B 06            [ 2] 1187 	addw	sp, #6
      00DA4A 84               [ 1] 1188 	pop	a
      00DA4B                       1189 00107$:
                                   1190 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 651: if (UART1_FLAG == UART1_FLAG_RXNE)
      00DA4B 4D               [ 1] 1191 	tnz	a
      00DA4C 27 05            [ 1] 1192 	jreq	00102$
                                   1193 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 653: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      00DA4E 35 DF 52 30      [ 1] 1194 	mov	0x5230+0, #0xdf
      00DA52 81               [ 4] 1195 	ret
      00DA53                       1196 00102$:
                                   1197 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 658: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      00DA53 72 19 52 37      [ 1] 1198 	bres	21047, #4
                                   1199 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 660: }
      00DA57 81               [ 4] 1200 	ret
                                   1201 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
                                   1202 ;	-----------------------------------------
                                   1203 ;	 function UART1_GetITStatus
                                   1204 ;	-----------------------------------------
      00DA58                       1205 _UART1_GetITStatus:
      00DA58 52 04            [ 2] 1206 	sub	sp, #4
                                   1207 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 684: assert_param(IS_UART1_GET_IT_OK(UART1_IT));
      00DA5A 1E 07            [ 2] 1208 	ldw	x, (0x07, sp)
      00DA5C A3 03 46         [ 2] 1209 	cpw	x, #0x0346
      00DA5F 26 05            [ 1] 1210 	jrne	00217$
      00DA61 A6 01            [ 1] 1211 	ld	a, #0x01
      00DA63 6B 01            [ 1] 1212 	ld	(0x01, sp), a
      00DA65 C5                    1213 	.byte 0xc5
      00DA66                       1214 00217$:
      00DA66 0F 01            [ 1] 1215 	clr	(0x01, sp)
      00DA68                       1216 00218$:
      00DA68 A3 01 00         [ 2] 1217 	cpw	x, #0x0100
      00DA6B 26 05            [ 1] 1218 	jrne	00220$
      00DA6D A6 01            [ 1] 1219 	ld	a, #0x01
      00DA6F 6B 02            [ 1] 1220 	ld	(0x02, sp), a
      00DA71 C5                    1221 	.byte 0xc5
      00DA72                       1222 00220$:
      00DA72 0F 02            [ 1] 1223 	clr	(0x02, sp)
      00DA74                       1224 00221$:
      00DA74 A3 02 77         [ 2] 1225 	cpw	x, #0x0277
      00DA77 27 2B            [ 1] 1226 	jreq	00122$
      00DA79 A3 02 66         [ 2] 1227 	cpw	x, #0x0266
      00DA7C 27 26            [ 1] 1228 	jreq	00122$
      00DA7E A3 02 55         [ 2] 1229 	cpw	x, #0x0255
      00DA81 27 21            [ 1] 1230 	jreq	00122$
      00DA83 A3 02 44         [ 2] 1231 	cpw	x, #0x0244
      00DA86 27 1C            [ 1] 1232 	jreq	00122$
      00DA88 A3 02 35         [ 2] 1233 	cpw	x, #0x0235
      00DA8B 27 17            [ 1] 1234 	jreq	00122$
      00DA8D 0D 01            [ 1] 1235 	tnz	(0x01, sp)
      00DA8F 26 13            [ 1] 1236 	jrne	00122$
      00DA91 0D 02            [ 1] 1237 	tnz	(0x02, sp)
      00DA93 26 0F            [ 1] 1238 	jrne	00122$
      00DA95 4B AC            [ 1] 1239 	push	#0xac
      00DA97 4B 02            [ 1] 1240 	push	#0x02
      00DA99 5F               [ 1] 1241 	clrw	x
      00DA9A 89               [ 2] 1242 	pushw	x
      00DA9B 4B EB            [ 1] 1243 	push	#<(___str_0+0)
      00DA9D 4B 86            [ 1] 1244 	push	#((___str_0+0) >> 8)
      00DA9F CD 00 00         [ 4] 1245 	call	_assert_failed
      00DAA2 5B 06            [ 2] 1246 	addw	sp, #6
      00DAA4                       1247 00122$:
                                   1248 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      00DAA4 7B 08            [ 1] 1249 	ld	a, (0x08, sp)
      00DAA6 97               [ 1] 1250 	ld	xl, a
      00DAA7 A4 0F            [ 1] 1251 	and	a, #0x0f
      00DAA9 88               [ 1] 1252 	push	a
      00DAAA A6 01            [ 1] 1253 	ld	a, #0x01
      00DAAC 6B 04            [ 1] 1254 	ld	(0x04, sp), a
      00DAAE 84               [ 1] 1255 	pop	a
      00DAAF 4D               [ 1] 1256 	tnz	a
      00DAB0 27 05            [ 1] 1257 	jreq	00240$
      00DAB2                       1258 00239$:
      00DAB2 08 03            [ 1] 1259 	sll	(0x03, sp)
      00DAB4 4A               [ 1] 1260 	dec	a
      00DAB5 26 FB            [ 1] 1261 	jrne	00239$
      00DAB7                       1262 00240$:
                                   1263 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
      00DAB7 9F               [ 1] 1264 	ld	a, xl
      00DAB8 4E               [ 1] 1265 	swap	a
      00DAB9 A4 0F            [ 1] 1266 	and	a, #0x0f
                                   1267 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      00DABB 88               [ 1] 1268 	push	a
      00DABC A6 01            [ 1] 1269 	ld	a, #0x01
      00DABE 6B 05            [ 1] 1270 	ld	(0x05, sp), a
      00DAC0 84               [ 1] 1271 	pop	a
      00DAC1 4D               [ 1] 1272 	tnz	a
      00DAC2 27 05            [ 1] 1273 	jreq	00242$
      00DAC4                       1274 00241$:
      00DAC4 08 04            [ 1] 1275 	sll	(0x04, sp)
      00DAC6 4A               [ 1] 1276 	dec	a
      00DAC7 26 FB            [ 1] 1277 	jrne	00241$
      00DAC9                       1278 00242$:
                                   1279 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
      00DAC9 7B 02            [ 1] 1280 	ld	a, (0x02, sp)
      00DACB 27 18            [ 1] 1281 	jreq	00117$
                                   1282 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
      00DACD C6 52 34         [ 1] 1283 	ld	a, 0x5234
      00DAD0 14 04            [ 1] 1284 	and	a, (0x04, sp)
      00DAD2 97               [ 1] 1285 	ld	xl, a
                                   1286 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00DAD3 C6 52 30         [ 1] 1287 	ld	a, 0x5230
      00DAD6 14 03            [ 1] 1288 	and	a, (0x03, sp)
      00DAD8 27 08            [ 1] 1289 	jreq	00102$
      00DADA 9F               [ 1] 1290 	ld	a, xl
      00DADB 4D               [ 1] 1291 	tnz	a
      00DADC 27 04            [ 1] 1292 	jreq	00102$
                                   1293 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 704: pendingbitstatus = SET;
      00DADE A6 01            [ 1] 1294 	ld	a, #0x01
      00DAE0 20 34            [ 2] 1295 	jra	00118$
      00DAE2                       1296 00102$:
                                   1297 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 709: pendingbitstatus = RESET;
      00DAE2 4F               [ 1] 1298 	clr	a
      00DAE3 20 31            [ 2] 1299 	jra	00118$
      00DAE5                       1300 00117$:
                                   1301 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
      00DAE5 7B 01            [ 1] 1302 	ld	a, (0x01, sp)
      00DAE7 27 18            [ 1] 1303 	jreq	00114$
                                   1304 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
      00DAE9 C6 52 37         [ 1] 1305 	ld	a, 0x5237
      00DAEC 14 04            [ 1] 1306 	and	a, (0x04, sp)
      00DAEE 97               [ 1] 1307 	ld	xl, a
                                   1308 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      00DAEF C6 52 37         [ 1] 1309 	ld	a, 0x5237
      00DAF2 14 03            [ 1] 1310 	and	a, (0x03, sp)
      00DAF4 27 08            [ 1] 1311 	jreq	00106$
      00DAF6 9F               [ 1] 1312 	ld	a, xl
      00DAF7 4D               [ 1] 1313 	tnz	a
      00DAF8 27 04            [ 1] 1314 	jreq	00106$
                                   1315 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 721: pendingbitstatus = SET;
      00DAFA A6 01            [ 1] 1316 	ld	a, #0x01
      00DAFC 20 18            [ 2] 1317 	jra	00118$
      00DAFE                       1318 00106$:
                                   1319 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 726: pendingbitstatus = RESET;
      00DAFE 4F               [ 1] 1320 	clr	a
      00DAFF 20 15            [ 2] 1321 	jra	00118$
      00DB01                       1322 00114$:
                                   1323 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
      00DB01 C6 52 35         [ 1] 1324 	ld	a, 0x5235
      00DB04 14 04            [ 1] 1325 	and	a, (0x04, sp)
      00DB06 97               [ 1] 1326 	ld	xl, a
                                   1327 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00DB07 C6 52 30         [ 1] 1328 	ld	a, 0x5230
      00DB0A 14 03            [ 1] 1329 	and	a, (0x03, sp)
      00DB0C 27 07            [ 1] 1330 	jreq	00110$
      00DB0E 9F               [ 1] 1331 	ld	a, xl
      00DB0F 4D               [ 1] 1332 	tnz	a
      00DB10 27 03            [ 1] 1333 	jreq	00110$
                                   1334 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 737: pendingbitstatus = SET;
      00DB12 A6 01            [ 1] 1335 	ld	a, #0x01
                                   1336 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 742: pendingbitstatus = RESET;
      00DB14 21                    1337 	.byte 0x21
      00DB15                       1338 00110$:
      00DB15 4F               [ 1] 1339 	clr	a
      00DB16                       1340 00118$:
                                   1341 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 747: return  pendingbitstatus;
                                   1342 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 748: }
      00DB16 5B 04            [ 2] 1343 	addw	sp, #4
      00DB18 81               [ 4] 1344 	ret
                                   1345 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
                                   1346 ;	-----------------------------------------
                                   1347 ;	 function UART1_ClearITPendingBit
                                   1348 ;	-----------------------------------------
      00DB19                       1349 _UART1_ClearITPendingBit:
                                   1350 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 777: assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
      00DB19 1E 03            [ 2] 1351 	ldw	x, (0x03, sp)
      00DB1B A3 02 55         [ 2] 1352 	cpw	x, #0x0255
      00DB1E 26 03            [ 1] 1353 	jrne	00127$
      00DB20 A6 01            [ 1] 1354 	ld	a, #0x01
      00DB22 21                    1355 	.byte 0x21
      00DB23                       1356 00127$:
      00DB23 4F               [ 1] 1357 	clr	a
      00DB24                       1358 00128$:
      00DB24 4D               [ 1] 1359 	tnz	a
      00DB25 26 16            [ 1] 1360 	jrne	00107$
      00DB27 A3 03 46         [ 2] 1361 	cpw	x, #0x0346
      00DB2A 27 11            [ 1] 1362 	jreq	00107$
      00DB2C 88               [ 1] 1363 	push	a
      00DB2D 4B 09            [ 1] 1364 	push	#0x09
      00DB2F 4B 03            [ 1] 1365 	push	#0x03
      00DB31 5F               [ 1] 1366 	clrw	x
      00DB32 89               [ 2] 1367 	pushw	x
      00DB33 4B EB            [ 1] 1368 	push	#<(___str_0+0)
      00DB35 4B 86            [ 1] 1369 	push	#((___str_0+0) >> 8)
      00DB37 CD 00 00         [ 4] 1370 	call	_assert_failed
      00DB3A 5B 06            [ 2] 1371 	addw	sp, #6
      00DB3C 84               [ 1] 1372 	pop	a
      00DB3D                       1373 00107$:
                                   1374 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
      00DB3D 4D               [ 1] 1375 	tnz	a
      00DB3E 27 05            [ 1] 1376 	jreq	00102$
                                   1377 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      00DB40 35 DF 52 30      [ 1] 1378 	mov	0x5230+0, #0xdf
      00DB44 81               [ 4] 1379 	ret
      00DB45                       1380 00102$:
                                   1381 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      00DB45 72 19 52 37      [ 1] 1382 	bres	21047, #4
                                   1383 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_uart1.c: 789: }
      00DB49 81               [ 4] 1384 	ret
                                   1385 	.area CODE
                                   1386 	.area CONST
                                   1387 	.area CONST
      0086EB                       1388 ___str_0:
      0086EB 43 3A                 1389 	.ascii "C:"
      0086ED 5C                    1390 	.db 0x5c
      0086EE 55 73 65 72 73        1391 	.ascii "Users"
      0086F3 5C                    1392 	.db 0x5c
      0086F4 41 64 6D 69 6E        1393 	.ascii "Admin"
      0086F9 5C                    1394 	.db 0x5c
      0086FA 2E 70 6C 61 74 66 6F  1395 	.ascii ".platformio"
             72 6D 69 6F
      008705 5C                    1396 	.db 0x5c
      008706 70 61 63 6B 61 67 65  1397 	.ascii "packages"
             73
      00870E 5C                    1398 	.db 0x5c
      00870F 66 72 61 6D 65 77 6F  1399 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      008722 5C                    1400 	.db 0x5c
      008723 4C 69 62 72 61 72 69  1401 	.ascii "Libraries"
             65 73
      00872C 5C                    1402 	.db 0x5c
      00872D 53 54 4D 38 53 5F 53  1403 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      008743 5C                    1404 	.db 0x5c
      008744 73 72 63              1405 	.ascii "src"
      008747 5C                    1406 	.db 0x5c
      008748 73 74 6D 38 73 5F 75  1407 	.ascii "stm8s_uart1.c"
             61 72 74 31 2E 63
      008755 00                    1408 	.db 0x00
                                   1409 	.area CODE
                                   1410 	.area INITIALIZER
                                   1411 	.area CABS (ABS)
