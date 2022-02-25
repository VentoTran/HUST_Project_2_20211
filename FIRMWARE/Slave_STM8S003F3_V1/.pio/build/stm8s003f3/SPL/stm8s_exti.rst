                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_exti
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _EXTI_DeInit
                                     13 	.globl _EXTI_SetExtIntSensitivity
                                     14 	.globl _EXTI_SetTLISensitivity
                                     15 	.globl _EXTI_GetExtIntSensitivity
                                     16 	.globl _EXTI_GetTLISensitivity
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
                                     25 ;--------------------------------------------------------
                                     26 ; absolute external ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DABS (ABS)
                                     29 
                                     30 ; default segment ordering for linker
                                     31 	.area HOME
                                     32 	.area GSINIT
                                     33 	.area GSFINAL
                                     34 	.area CONST
                                     35 	.area INITIALIZER
                                     36 	.area CODE
                                     37 
                                     38 ;--------------------------------------------------------
                                     39 ; global & static initialisations
                                     40 ;--------------------------------------------------------
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area GSINIT
                                     45 ;--------------------------------------------------------
                                     46 ; Home
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
                                     49 	.area HOME
                                     50 ;--------------------------------------------------------
                                     51 ; code
                                     52 ;--------------------------------------------------------
                                     53 	.area CODE
                                     54 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 53: void EXTI_DeInit(void)
                                     55 ;	-----------------------------------------
                                     56 ;	 function EXTI_DeInit
                                     57 ;	-----------------------------------------
      009B62                         58 _EXTI_DeInit:
                                     59 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 55: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
      009B62 35 00 50 A0      [ 1]   60 	mov	0x50a0+0, #0x00
                                     61 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 56: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
      009B66 35 00 50 A1      [ 1]   62 	mov	0x50a1+0, #0x00
                                     63 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 57: }
      009B6A 81               [ 4]   64 	ret
                                     65 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 70: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
                                     66 ;	-----------------------------------------
                                     67 ;	 function EXTI_SetExtIntSensitivity
                                     68 ;	-----------------------------------------
      009B6B                         69 _EXTI_SetExtIntSensitivity:
      009B6B 88               [ 1]   70 	push	a
                                     71 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 73: assert_param(IS_EXTI_PORT_OK(Port));
      009B6C 0D 04            [ 1]   72 	tnz	(0x04, sp)
      009B6E 27 26            [ 1]   73 	jreq	00111$
      009B70 7B 04            [ 1]   74 	ld	a, (0x04, sp)
      009B72 4A               [ 1]   75 	dec	a
      009B73 27 21            [ 1]   76 	jreq	00111$
      009B75 7B 04            [ 1]   77 	ld	a, (0x04, sp)
      009B77 A1 02            [ 1]   78 	cp	a, #0x02
      009B79 27 1B            [ 1]   79 	jreq	00111$
      009B7B 7B 04            [ 1]   80 	ld	a, (0x04, sp)
      009B7D A1 03            [ 1]   81 	cp	a, #0x03
      009B7F 27 15            [ 1]   82 	jreq	00111$
      009B81 7B 04            [ 1]   83 	ld	a, (0x04, sp)
      009B83 A1 04            [ 1]   84 	cp	a, #0x04
      009B85 27 0F            [ 1]   85 	jreq	00111$
      009B87 4B 49            [ 1]   86 	push	#0x49
      009B89 5F               [ 1]   87 	clrw	x
      009B8A 89               [ 2]   88 	pushw	x
      009B8B 4B 00            [ 1]   89 	push	#0x00
      009B8D 4B 60            [ 1]   90 	push	#<(___str_0+0)
      009B8F 4B 82            [ 1]   91 	push	#((___str_0+0) >> 8)
      009B91 CD 00 00         [ 4]   92 	call	_assert_failed
      009B94 5B 06            [ 2]   93 	addw	sp, #6
      009B96                         94 00111$:
                                     95 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 74: assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
      009B96 0D 05            [ 1]   96 	tnz	(0x05, sp)
      009B98 27 20            [ 1]   97 	jreq	00125$
      009B9A 7B 05            [ 1]   98 	ld	a, (0x05, sp)
      009B9C 4A               [ 1]   99 	dec	a
      009B9D 27 1B            [ 1]  100 	jreq	00125$
      009B9F 7B 05            [ 1]  101 	ld	a, (0x05, sp)
      009BA1 A1 02            [ 1]  102 	cp	a, #0x02
      009BA3 27 15            [ 1]  103 	jreq	00125$
      009BA5 7B 05            [ 1]  104 	ld	a, (0x05, sp)
      009BA7 A1 03            [ 1]  105 	cp	a, #0x03
      009BA9 27 0F            [ 1]  106 	jreq	00125$
      009BAB 4B 4A            [ 1]  107 	push	#0x4a
      009BAD 5F               [ 1]  108 	clrw	x
      009BAE 89               [ 2]  109 	pushw	x
      009BAF 4B 00            [ 1]  110 	push	#0x00
      009BB1 4B 60            [ 1]  111 	push	#<(___str_0+0)
      009BB3 4B 82            [ 1]  112 	push	#((___str_0+0) >> 8)
      009BB5 CD 00 00         [ 4]  113 	call	_assert_failed
      009BB8 5B 06            [ 2]  114 	addw	sp, #6
      009BBA                        115 00125$:
                                    116 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 77: switch (Port)
      009BBA 7B 04            [ 1]  117 	ld	a, (0x04, sp)
      009BBC A1 04            [ 1]  118 	cp	a, #0x04
      009BBE 23 03            [ 2]  119 	jrule	00208$
      009BC0 CC 9C 47         [ 2]  120 	jp	00108$
      009BC3                        121 00208$:
                                    122 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      009BC3 7B 05            [ 1]  123 	ld	a, (0x05, sp)
      009BC5 90 97            [ 1]  124 	ld	yl, a
                                    125 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 77: switch (Port)
      009BC7 5F               [ 1]  126 	clrw	x
      009BC8 7B 04            [ 1]  127 	ld	a, (0x04, sp)
      009BCA 97               [ 1]  128 	ld	xl, a
      009BCB 58               [ 2]  129 	sllw	x
      009BCC DE 9B D0         [ 2]  130 	ldw	x, (#00209$, x)
      009BCF FC               [ 2]  131 	jp	(x)
      009BD0                        132 00209$:
      009BD0 9B DA                  133 	.dw	#00101$
      009BD2 9B EC                  134 	.dw	#00102$
      009BD4 9C 03                  135 	.dw	#00103$
      009BD6 9C 1C                  136 	.dw	#00104$
      009BD8 9C 37                  137 	.dw	#00105$
                                    138 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 79: case EXTI_PORT_GPIOA:
      009BDA                        139 00101$:
                                    140 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 80: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
      009BDA C6 50 A0         [ 1]  141 	ld	a, 0x50a0
      009BDD A4 FC            [ 1]  142 	and	a, #0xfc
      009BDF C7 50 A0         [ 1]  143 	ld	0x50a0, a
                                    144 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 81: EXTI->CR1 |= (uint8_t)(SensitivityValue);
      009BE2 C6 50 A0         [ 1]  145 	ld	a, 0x50a0
      009BE5 1A 05            [ 1]  146 	or	a, (0x05, sp)
      009BE7 C7 50 A0         [ 1]  147 	ld	0x50a0, a
                                    148 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 82: break;
      009BEA 20 5B            [ 2]  149 	jra	00108$
                                    150 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 83: case EXTI_PORT_GPIOB:
      009BEC                        151 00102$:
                                    152 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 84: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
      009BEC C6 50 A0         [ 1]  153 	ld	a, 0x50a0
      009BEF A4 F3            [ 1]  154 	and	a, #0xf3
      009BF1 C7 50 A0         [ 1]  155 	ld	0x50a0, a
                                    156 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      009BF4 C6 50 A0         [ 1]  157 	ld	a, 0x50a0
      009BF7 93               [ 1]  158 	ldw	x, y
      009BF8 58               [ 2]  159 	sllw	x
      009BF9 58               [ 2]  160 	sllw	x
      009BFA 89               [ 2]  161 	pushw	x
      009BFB 1A 02            [ 1]  162 	or	a, (2, sp)
      009BFD 85               [ 2]  163 	popw	x
      009BFE C7 50 A0         [ 1]  164 	ld	0x50a0, a
                                    165 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 86: break;
      009C01 20 44            [ 2]  166 	jra	00108$
                                    167 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 87: case EXTI_PORT_GPIOC:
      009C03                        168 00103$:
                                    169 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 88: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
      009C03 C6 50 A0         [ 1]  170 	ld	a, 0x50a0
      009C06 A4 CF            [ 1]  171 	and	a, #0xcf
      009C08 C7 50 A0         [ 1]  172 	ld	0x50a0, a
                                    173 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 89: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
      009C0B C6 50 A0         [ 1]  174 	ld	a, 0x50a0
      009C0E 6B 01            [ 1]  175 	ld	(0x01, sp), a
      009C10 90 9F            [ 1]  176 	ld	a, yl
      009C12 4E               [ 1]  177 	swap	a
      009C13 A4 F0            [ 1]  178 	and	a, #0xf0
      009C15 1A 01            [ 1]  179 	or	a, (0x01, sp)
      009C17 C7 50 A0         [ 1]  180 	ld	0x50a0, a
                                    181 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 90: break;
      009C1A 20 2B            [ 2]  182 	jra	00108$
                                    183 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 91: case EXTI_PORT_GPIOD:
      009C1C                        184 00104$:
                                    185 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 92: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
      009C1C C6 50 A0         [ 1]  186 	ld	a, 0x50a0
      009C1F A4 3F            [ 1]  187 	and	a, #0x3f
      009C21 C7 50 A0         [ 1]  188 	ld	0x50a0, a
                                    189 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 93: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
      009C24 C6 50 A0         [ 1]  190 	ld	a, 0x50a0
      009C27 6B 01            [ 1]  191 	ld	(0x01, sp), a
      009C29 90 9F            [ 1]  192 	ld	a, yl
      009C2B 4E               [ 1]  193 	swap	a
      009C2C A4 F0            [ 1]  194 	and	a, #0xf0
      009C2E 48               [ 1]  195 	sll	a
      009C2F 48               [ 1]  196 	sll	a
      009C30 1A 01            [ 1]  197 	or	a, (0x01, sp)
      009C32 C7 50 A0         [ 1]  198 	ld	0x50a0, a
                                    199 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 94: break;
      009C35 20 10            [ 2]  200 	jra	00108$
                                    201 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 95: case EXTI_PORT_GPIOE:
      009C37                        202 00105$:
                                    203 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 96: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
      009C37 C6 50 A1         [ 1]  204 	ld	a, 0x50a1
      009C3A A4 FC            [ 1]  205 	and	a, #0xfc
      009C3C C7 50 A1         [ 1]  206 	ld	0x50a1, a
                                    207 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 97: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      009C3F C6 50 A1         [ 1]  208 	ld	a, 0x50a1
      009C42 1A 05            [ 1]  209 	or	a, (0x05, sp)
      009C44 C7 50 A1         [ 1]  210 	ld	0x50a1, a
                                    211 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 101: }
      009C47                        212 00108$:
                                    213 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 102: }
      009C47 84               [ 1]  214 	pop	a
      009C48 81               [ 4]  215 	ret
                                    216 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 111: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
                                    217 ;	-----------------------------------------
                                    218 ;	 function EXTI_SetTLISensitivity
                                    219 ;	-----------------------------------------
      009C49                        220 _EXTI_SetTLISensitivity:
                                    221 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 114: assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
      009C49 0D 03            [ 1]  222 	tnz	(0x03, sp)
      009C4B 27 15            [ 1]  223 	jreq	00104$
      009C4D 7B 03            [ 1]  224 	ld	a, (0x03, sp)
      009C4F A1 04            [ 1]  225 	cp	a, #0x04
      009C51 27 0F            [ 1]  226 	jreq	00104$
      009C53 4B 72            [ 1]  227 	push	#0x72
      009C55 5F               [ 1]  228 	clrw	x
      009C56 89               [ 2]  229 	pushw	x
      009C57 4B 00            [ 1]  230 	push	#0x00
      009C59 4B 60            [ 1]  231 	push	#<(___str_0+0)
      009C5B 4B 82            [ 1]  232 	push	#((___str_0+0) >> 8)
      009C5D CD 00 00         [ 4]  233 	call	_assert_failed
      009C60 5B 06            [ 2]  234 	addw	sp, #6
      009C62                        235 00104$:
                                    236 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 117: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
      009C62 C6 50 A1         [ 1]  237 	ld	a, 0x50a1
      009C65 A4 FB            [ 1]  238 	and	a, #0xfb
      009C67 C7 50 A1         [ 1]  239 	ld	0x50a1, a
                                    240 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 118: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      009C6A C6 50 A1         [ 1]  241 	ld	a, 0x50a1
      009C6D 1A 03            [ 1]  242 	or	a, (0x03, sp)
      009C6F C7 50 A1         [ 1]  243 	ld	0x50a1, a
                                    244 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 119: }
      009C72 81               [ 4]  245 	ret
                                    246 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 126: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
                                    247 ;	-----------------------------------------
                                    248 ;	 function EXTI_GetExtIntSensitivity
                                    249 ;	-----------------------------------------
      009C73                        250 _EXTI_GetExtIntSensitivity:
                                    251 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 128: uint8_t value = 0;
      009C73 4F               [ 1]  252 	clr	a
                                    253 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 131: assert_param(IS_EXTI_PORT_OK(Port));
      009C74 0D 03            [ 1]  254 	tnz	(0x03, sp)
      009C76 27 30            [ 1]  255 	jreq	00111$
      009C78 88               [ 1]  256 	push	a
      009C79 7B 04            [ 1]  257 	ld	a, (0x04, sp)
      009C7B 4A               [ 1]  258 	dec	a
      009C7C 84               [ 1]  259 	pop	a
      009C7D 27 29            [ 1]  260 	jreq	00111$
      009C7F 88               [ 1]  261 	push	a
      009C80 7B 04            [ 1]  262 	ld	a, (0x04, sp)
      009C82 A1 02            [ 1]  263 	cp	a, #0x02
      009C84 84               [ 1]  264 	pop	a
      009C85 27 21            [ 1]  265 	jreq	00111$
      009C87 88               [ 1]  266 	push	a
      009C88 7B 04            [ 1]  267 	ld	a, (0x04, sp)
      009C8A A1 03            [ 1]  268 	cp	a, #0x03
      009C8C 84               [ 1]  269 	pop	a
      009C8D 27 19            [ 1]  270 	jreq	00111$
      009C8F 88               [ 1]  271 	push	a
      009C90 7B 04            [ 1]  272 	ld	a, (0x04, sp)
      009C92 A1 04            [ 1]  273 	cp	a, #0x04
      009C94 84               [ 1]  274 	pop	a
      009C95 27 11            [ 1]  275 	jreq	00111$
      009C97 88               [ 1]  276 	push	a
      009C98 4B 83            [ 1]  277 	push	#0x83
      009C9A 5F               [ 1]  278 	clrw	x
      009C9B 89               [ 2]  279 	pushw	x
      009C9C 4B 00            [ 1]  280 	push	#0x00
      009C9E 4B 60            [ 1]  281 	push	#<(___str_0+0)
      009CA0 4B 82            [ 1]  282 	push	#((___str_0+0) >> 8)
      009CA2 CD 00 00         [ 4]  283 	call	_assert_failed
      009CA5 5B 06            [ 2]  284 	addw	sp, #6
      009CA7 84               [ 1]  285 	pop	a
      009CA8                        286 00111$:
                                    287 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 133: switch (Port)
      009CA8 88               [ 1]  288 	push	a
      009CA9 7B 04            [ 1]  289 	ld	a, (0x04, sp)
      009CAB A1 04            [ 1]  290 	cp	a, #0x04
      009CAD 84               [ 1]  291 	pop	a
      009CAE 23 01            [ 2]  292 	jrule	00167$
      009CB0 81               [ 4]  293 	ret
      009CB1                        294 00167$:
      009CB1 5F               [ 1]  295 	clrw	x
      009CB2 7B 03            [ 1]  296 	ld	a, (0x03, sp)
      009CB4 97               [ 1]  297 	ld	xl, a
      009CB5 58               [ 2]  298 	sllw	x
      009CB6 DE 9C BA         [ 2]  299 	ldw	x, (#00168$, x)
      009CB9 FC               [ 2]  300 	jp	(x)
      009CBA                        301 00168$:
      009CBA 9C C4                  302 	.dw	#00101$
      009CBC 9C CA                  303 	.dw	#00102$
      009CBE 9C D2                  304 	.dw	#00103$
      009CC0 9C DB                  305 	.dw	#00104$
      009CC2 9C E6                  306 	.dw	#00105$
                                    307 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 135: case EXTI_PORT_GPIOA:
      009CC4                        308 00101$:
                                    309 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 136: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
      009CC4 C6 50 A0         [ 1]  310 	ld	a, 0x50a0
      009CC7 A4 03            [ 1]  311 	and	a, #0x03
                                    312 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 137: break;
      009CC9 81               [ 4]  313 	ret
                                    314 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 138: case EXTI_PORT_GPIOB:
      009CCA                        315 00102$:
                                    316 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 139: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
      009CCA C6 50 A0         [ 1]  317 	ld	a, 0x50a0
      009CCD A4 0C            [ 1]  318 	and	a, #0x0c
      009CCF 44               [ 1]  319 	srl	a
      009CD0 44               [ 1]  320 	srl	a
                                    321 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 140: break;
      009CD1 81               [ 4]  322 	ret
                                    323 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 141: case EXTI_PORT_GPIOC:
      009CD2                        324 00103$:
                                    325 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 142: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
      009CD2 C6 50 A0         [ 1]  326 	ld	a, 0x50a0
      009CD5 A4 30            [ 1]  327 	and	a, #0x30
      009CD7 4E               [ 1]  328 	swap	a
      009CD8 A4 0F            [ 1]  329 	and	a, #0x0f
                                    330 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 143: break;
      009CDA 81               [ 4]  331 	ret
                                    332 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 144: case EXTI_PORT_GPIOD:
      009CDB                        333 00104$:
                                    334 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 145: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
      009CDB C6 50 A0         [ 1]  335 	ld	a, 0x50a0
      009CDE A4 C0            [ 1]  336 	and	a, #0xc0
      009CE0 4E               [ 1]  337 	swap	a
      009CE1 A4 0F            [ 1]  338 	and	a, #0x0f
      009CE3 44               [ 1]  339 	srl	a
      009CE4 44               [ 1]  340 	srl	a
                                    341 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 146: break;
      009CE5 81               [ 4]  342 	ret
                                    343 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 147: case EXTI_PORT_GPIOE:
      009CE6                        344 00105$:
                                    345 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 148: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
      009CE6 C6 50 A1         [ 1]  346 	ld	a, 0x50a1
      009CE9 A4 03            [ 1]  347 	and	a, #0x03
                                    348 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 152: }
                                    349 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 154: return((EXTI_Sensitivity_TypeDef)value);
                                    350 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 155: }
      009CEB 81               [ 4]  351 	ret
                                    352 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 162: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
                                    353 ;	-----------------------------------------
                                    354 ;	 function EXTI_GetTLISensitivity
                                    355 ;	-----------------------------------------
      009CEC                        356 _EXTI_GetTLISensitivity:
                                    357 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 167: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
      009CEC C6 50 A1         [ 1]  358 	ld	a, 0x50a1
      009CEF A4 04            [ 1]  359 	and	a, #0x04
                                    360 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 169: return((EXTI_TLISensitivity_TypeDef)value);
                                    361 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_exti.c: 170: }
      009CF1 81               [ 4]  362 	ret
                                    363 	.area CODE
                                    364 	.area CONST
                                    365 	.area CONST
      008260                        366 ___str_0:
      008260 43 3A                  367 	.ascii "C:"
      008262 5C                     368 	.db 0x5c
      008263 55 73 65 72 73         369 	.ascii "Users"
      008268 5C                     370 	.db 0x5c
      008269 41 64 6D 69 6E         371 	.ascii "Admin"
      00826E 5C                     372 	.db 0x5c
      00826F 2E 70 6C 61 74 66 6F   373 	.ascii ".platformio"
             72 6D 69 6F
      00827A 5C                     374 	.db 0x5c
      00827B 70 61 63 6B 61 67 65   375 	.ascii "packages"
             73
      008283 5C                     376 	.db 0x5c
      008284 66 72 61 6D 65 77 6F   377 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      008297 5C                     378 	.db 0x5c
      008298 4C 69 62 72 61 72 69   379 	.ascii "Libraries"
             65 73
      0082A1 5C                     380 	.db 0x5c
      0082A2 53 54 4D 38 53 5F 53   381 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0082B8 5C                     382 	.db 0x5c
      0082B9 73 72 63               383 	.ascii "src"
      0082BC 5C                     384 	.db 0x5c
      0082BD 73 74 6D 38 73 5F 65   385 	.ascii "stm8s_exti.c"
             78 74 69 2E 63
      0082C9 00                     386 	.db 0x00
                                    387 	.area CODE
                                    388 	.area INITIALIZER
                                    389 	.area CABS (ABS)
