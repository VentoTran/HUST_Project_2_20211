                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _GPIO_DeInit
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_Write
                                     15 	.globl _GPIO_WriteHigh
                                     16 	.globl _GPIO_WriteLow
                                     17 	.globl _GPIO_WriteReverse
                                     18 	.globl _GPIO_ReadOutputData
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_ReadInputPin
                                     21 	.globl _GPIO_ExternalPullUpConfig
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DATA
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area INITIALIZED
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 
                                     35 ; default segment ordering for linker
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area CONST
                                     40 	.area INITIALIZER
                                     41 	.area CODE
                                     42 
                                     43 ;--------------------------------------------------------
                                     44 ; global & static initialisations
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area GSINIT
                                     50 ;--------------------------------------------------------
                                     51 ; Home
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area HOME
                                     55 ;--------------------------------------------------------
                                     56 ; code
                                     57 ;--------------------------------------------------------
                                     58 	.area CODE
                                     59 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     60 ;	-----------------------------------------
                                     61 ;	 function GPIO_DeInit
                                     62 ;	-----------------------------------------
      00A223                         63 _GPIO_DeInit:
                                     64 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      00A223 16 03            [ 2]   65 	ldw	y, (0x03, sp)
      00A225 90 7F            [ 1]   66 	clr	(y)
                                     67 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      00A227 93               [ 1]   68 	ldw	x, y
      00A228 5C               [ 1]   69 	incw	x
      00A229 5C               [ 1]   70 	incw	x
      00A22A 7F               [ 1]   71 	clr	(x)
                                     72 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      00A22B 93               [ 1]   73 	ldw	x, y
      00A22C 6F 03            [ 1]   74 	clr	(0x0003, x)
                                     75 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      00A22E 93               [ 1]   76 	ldw	x, y
      00A22F 6F 04            [ 1]   77 	clr	(0x0004, x)
                                     78 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 59: }
      00A231 81               [ 4]   79 	ret
                                     80 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     81 ;	-----------------------------------------
                                     82 ;	 function GPIO_Init
                                     83 ;	-----------------------------------------
      00A232                         84 _GPIO_Init:
      00A232 52 05            [ 2]   85 	sub	sp, #5
                                     86 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      00A234 0D 0B            [ 1]   87 	tnz	(0x0b, sp)
      00A236 27 51            [ 1]   88 	jreq	00116$
      00A238 7B 0B            [ 1]   89 	ld	a, (0x0b, sp)
      00A23A A1 40            [ 1]   90 	cp	a, #0x40
      00A23C 27 4B            [ 1]   91 	jreq	00116$
      00A23E 7B 0B            [ 1]   92 	ld	a, (0x0b, sp)
      00A240 A1 20            [ 1]   93 	cp	a, #0x20
      00A242 27 45            [ 1]   94 	jreq	00116$
      00A244 7B 0B            [ 1]   95 	ld	a, (0x0b, sp)
      00A246 A1 60            [ 1]   96 	cp	a, #0x60
      00A248 27 3F            [ 1]   97 	jreq	00116$
      00A24A 7B 0B            [ 1]   98 	ld	a, (0x0b, sp)
      00A24C A1 A0            [ 1]   99 	cp	a, #0xa0
      00A24E 27 39            [ 1]  100 	jreq	00116$
      00A250 7B 0B            [ 1]  101 	ld	a, (0x0b, sp)
      00A252 A1 E0            [ 1]  102 	cp	a, #0xe0
      00A254 27 33            [ 1]  103 	jreq	00116$
      00A256 7B 0B            [ 1]  104 	ld	a, (0x0b, sp)
      00A258 A1 80            [ 1]  105 	cp	a, #0x80
      00A25A 27 2D            [ 1]  106 	jreq	00116$
      00A25C 7B 0B            [ 1]  107 	ld	a, (0x0b, sp)
      00A25E A1 C0            [ 1]  108 	cp	a, #0xc0
      00A260 27 27            [ 1]  109 	jreq	00116$
      00A262 7B 0B            [ 1]  110 	ld	a, (0x0b, sp)
      00A264 A1 B0            [ 1]  111 	cp	a, #0xb0
      00A266 27 21            [ 1]  112 	jreq	00116$
      00A268 7B 0B            [ 1]  113 	ld	a, (0x0b, sp)
      00A26A A1 F0            [ 1]  114 	cp	a, #0xf0
      00A26C 27 1B            [ 1]  115 	jreq	00116$
      00A26E 7B 0B            [ 1]  116 	ld	a, (0x0b, sp)
      00A270 A1 90            [ 1]  117 	cp	a, #0x90
      00A272 27 15            [ 1]  118 	jreq	00116$
      00A274 7B 0B            [ 1]  119 	ld	a, (0x0b, sp)
      00A276 A1 D0            [ 1]  120 	cp	a, #0xd0
      00A278 27 0F            [ 1]  121 	jreq	00116$
      00A27A 4B 4D            [ 1]  122 	push	#0x4d
      00A27C 5F               [ 1]  123 	clrw	x
      00A27D 89               [ 2]  124 	pushw	x
      00A27E 4B 00            [ 1]  125 	push	#0x00
      00A280 4B 35            [ 1]  126 	push	#<(___str_0+0)
      00A282 4B 83            [ 1]  127 	push	#((___str_0+0) >> 8)
      00A284 CD 00 00         [ 4]  128 	call	_assert_failed
      00A287 5B 06            [ 2]  129 	addw	sp, #6
      00A289                        130 00116$:
                                    131 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      00A289 0D 0A            [ 1]  132 	tnz	(0x0a, sp)
      00A28B 26 0F            [ 1]  133 	jrne	00151$
      00A28D 4B 4E            [ 1]  134 	push	#0x4e
      00A28F 5F               [ 1]  135 	clrw	x
      00A290 89               [ 2]  136 	pushw	x
      00A291 4B 00            [ 1]  137 	push	#0x00
      00A293 4B 35            [ 1]  138 	push	#<(___str_0+0)
      00A295 4B 83            [ 1]  139 	push	#((___str_0+0) >> 8)
      00A297 CD 00 00         [ 4]  140 	call	_assert_failed
      00A29A 5B 06            [ 2]  141 	addw	sp, #6
      00A29C                        142 00151$:
                                    143 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00A29C 16 08            [ 2]  144 	ldw	y, (0x08, sp)
      00A29E 93               [ 1]  145 	ldw	x, y
      00A29F 1C 00 04         [ 2]  146 	addw	x, #0x0004
      00A2A2 1F 01            [ 2]  147 	ldw	(0x01, sp), x
      00A2A4 F6               [ 1]  148 	ld	a, (x)
      00A2A5 88               [ 1]  149 	push	a
      00A2A6 7B 0B            [ 1]  150 	ld	a, (0x0b, sp)
      00A2A8 43               [ 1]  151 	cpl	a
      00A2A9 6B 04            [ 1]  152 	ld	(0x04, sp), a
      00A2AB 84               [ 1]  153 	pop	a
      00A2AC 14 03            [ 1]  154 	and	a, (0x03, sp)
      00A2AE 1E 01            [ 2]  155 	ldw	x, (0x01, sp)
      00A2B0 F7               [ 1]  156 	ld	(x), a
                                    157 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00A2B1 93               [ 1]  158 	ldw	x, y
      00A2B2 5C               [ 1]  159 	incw	x
      00A2B3 5C               [ 1]  160 	incw	x
      00A2B4 1F 04            [ 2]  161 	ldw	(0x04, sp), x
                                    162 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      00A2B6 0D 0B            [ 1]  163 	tnz	(0x0b, sp)
      00A2B8 2A 1E            [ 1]  164 	jrpl	00105$
                                    165 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00A2BA 90 F6            [ 1]  166 	ld	a, (y)
                                    167 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      00A2BC 88               [ 1]  168 	push	a
      00A2BD 7B 0C            [ 1]  169 	ld	a, (0x0c, sp)
      00A2BF A5 10            [ 1]  170 	bcp	a, #0x10
      00A2C1 84               [ 1]  171 	pop	a
      00A2C2 27 06            [ 1]  172 	jreq	00102$
                                    173 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00A2C4 1A 0A            [ 1]  174 	or	a, (0x0a, sp)
      00A2C6 90 F7            [ 1]  175 	ld	(y), a
      00A2C8 20 04            [ 2]  176 	jra	00103$
      00A2CA                        177 00102$:
                                    178 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      00A2CA 14 03            [ 1]  179 	and	a, (0x03, sp)
      00A2CC 90 F7            [ 1]  180 	ld	(y), a
      00A2CE                        181 00103$:
                                    182 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00A2CE 1E 04            [ 2]  183 	ldw	x, (0x04, sp)
      00A2D0 F6               [ 1]  184 	ld	a, (x)
      00A2D1 1A 0A            [ 1]  185 	or	a, (0x0a, sp)
      00A2D3 1E 04            [ 2]  186 	ldw	x, (0x04, sp)
      00A2D5 F7               [ 1]  187 	ld	(x), a
      00A2D6 20 08            [ 2]  188 	jra	00106$
      00A2D8                        189 00105$:
                                    190 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      00A2D8 1E 04            [ 2]  191 	ldw	x, (0x04, sp)
      00A2DA F6               [ 1]  192 	ld	a, (x)
      00A2DB 14 03            [ 1]  193 	and	a, (0x03, sp)
      00A2DD 1E 04            [ 2]  194 	ldw	x, (0x04, sp)
      00A2DF F7               [ 1]  195 	ld	(x), a
      00A2E0                        196 00106$:
                                    197 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00A2E0 93               [ 1]  198 	ldw	x, y
      00A2E1 1C 00 03         [ 2]  199 	addw	x, #0x0003
      00A2E4 F6               [ 1]  200 	ld	a, (x)
                                    201 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      00A2E5 88               [ 1]  202 	push	a
      00A2E6 7B 0C            [ 1]  203 	ld	a, (0x0c, sp)
      00A2E8 A5 40            [ 1]  204 	bcp	a, #0x40
      00A2EA 84               [ 1]  205 	pop	a
      00A2EB 27 05            [ 1]  206 	jreq	00108$
                                    207 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00A2ED 1A 0A            [ 1]  208 	or	a, (0x0a, sp)
      00A2EF F7               [ 1]  209 	ld	(x), a
      00A2F0 20 03            [ 2]  210 	jra	00109$
      00A2F2                        211 00108$:
                                    212 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00A2F2 14 03            [ 1]  213 	and	a, (0x03, sp)
      00A2F4 F7               [ 1]  214 	ld	(x), a
      00A2F5                        215 00109$:
                                    216 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00A2F5 1E 01            [ 2]  217 	ldw	x, (0x01, sp)
      00A2F7 F6               [ 1]  218 	ld	a, (x)
                                    219 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      00A2F8 88               [ 1]  220 	push	a
      00A2F9 7B 0C            [ 1]  221 	ld	a, (0x0c, sp)
      00A2FB A5 20            [ 1]  222 	bcp	a, #0x20
      00A2FD 84               [ 1]  223 	pop	a
      00A2FE 27 07            [ 1]  224 	jreq	00111$
                                    225 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00A300 1A 0A            [ 1]  226 	or	a, (0x0a, sp)
      00A302 1E 01            [ 2]  227 	ldw	x, (0x01, sp)
      00A304 F7               [ 1]  228 	ld	(x), a
      00A305 20 05            [ 2]  229 	jra	00113$
      00A307                        230 00111$:
                                    231 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00A307 14 03            [ 1]  232 	and	a, (0x03, sp)
      00A309 1E 01            [ 2]  233 	ldw	x, (0x01, sp)
      00A30B F7               [ 1]  234 	ld	(x), a
      00A30C                        235 00113$:
                                    236 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 131: }
      00A30C 5B 05            [ 2]  237 	addw	sp, #5
      00A30E 81               [ 4]  238 	ret
                                    239 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    240 ;	-----------------------------------------
                                    241 ;	 function GPIO_Write
                                    242 ;	-----------------------------------------
      00A30F                        243 _GPIO_Write:
                                    244 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      00A30F 1E 03            [ 2]  245 	ldw	x, (0x03, sp)
      00A311 7B 05            [ 1]  246 	ld	a, (0x05, sp)
      00A313 F7               [ 1]  247 	ld	(x), a
                                    248 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 144: }
      00A314 81               [ 4]  249 	ret
                                    250 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    251 ;	-----------------------------------------
                                    252 ;	 function GPIO_WriteHigh
                                    253 ;	-----------------------------------------
      00A315                        254 _GPIO_WriteHigh:
                                    255 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      00A315 1E 03            [ 2]  256 	ldw	x, (0x03, sp)
      00A317 F6               [ 1]  257 	ld	a, (x)
      00A318 1A 05            [ 1]  258 	or	a, (0x05, sp)
      00A31A F7               [ 1]  259 	ld	(x), a
                                    260 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 157: }
      00A31B 81               [ 4]  261 	ret
                                    262 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    263 ;	-----------------------------------------
                                    264 ;	 function GPIO_WriteLow
                                    265 ;	-----------------------------------------
      00A31C                        266 _GPIO_WriteLow:
      00A31C 88               [ 1]  267 	push	a
                                    268 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      00A31D 1E 04            [ 2]  269 	ldw	x, (0x04, sp)
      00A31F F6               [ 1]  270 	ld	a, (x)
      00A320 6B 01            [ 1]  271 	ld	(0x01, sp), a
      00A322 7B 06            [ 1]  272 	ld	a, (0x06, sp)
      00A324 43               [ 1]  273 	cpl	a
      00A325 14 01            [ 1]  274 	and	a, (0x01, sp)
      00A327 F7               [ 1]  275 	ld	(x), a
                                    276 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 170: }
      00A328 84               [ 1]  277 	pop	a
      00A329 81               [ 4]  278 	ret
                                    279 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    280 ;	-----------------------------------------
                                    281 ;	 function GPIO_WriteReverse
                                    282 ;	-----------------------------------------
      00A32A                        283 _GPIO_WriteReverse:
                                    284 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      00A32A 1E 03            [ 2]  285 	ldw	x, (0x03, sp)
      00A32C F6               [ 1]  286 	ld	a, (x)
      00A32D 18 05            [ 1]  287 	xor	a, (0x05, sp)
      00A32F F7               [ 1]  288 	ld	(x), a
                                    289 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 183: }
      00A330 81               [ 4]  290 	ret
                                    291 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    292 ;	-----------------------------------------
                                    293 ;	 function GPIO_ReadOutputData
                                    294 ;	-----------------------------------------
      00A331                        295 _GPIO_ReadOutputData:
                                    296 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      00A331 1E 03            [ 2]  297 	ldw	x, (0x03, sp)
      00A333 F6               [ 1]  298 	ld	a, (x)
                                    299 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 194: }
      00A334 81               [ 4]  300 	ret
                                    301 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    302 ;	-----------------------------------------
                                    303 ;	 function GPIO_ReadInputData
                                    304 ;	-----------------------------------------
      00A335                        305 _GPIO_ReadInputData:
                                    306 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      00A335 1E 03            [ 2]  307 	ldw	x, (0x03, sp)
      00A337 E6 01            [ 1]  308 	ld	a, (0x1, x)
                                    309 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 205: }
      00A339 81               [ 4]  310 	ret
                                    311 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    312 ;	-----------------------------------------
                                    313 ;	 function GPIO_ReadInputPin
                                    314 ;	-----------------------------------------
      00A33A                        315 _GPIO_ReadInputPin:
                                    316 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      00A33A 1E 03            [ 2]  317 	ldw	x, (0x03, sp)
      00A33C E6 01            [ 1]  318 	ld	a, (0x1, x)
      00A33E 14 05            [ 1]  319 	and	a, (0x05, sp)
                                    320 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 216: }
      00A340 81               [ 4]  321 	ret
                                    322 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    323 ;	-----------------------------------------
                                    324 ;	 function GPIO_ExternalPullUpConfig
                                    325 ;	-----------------------------------------
      00A341                        326 _GPIO_ExternalPullUpConfig:
      00A341 88               [ 1]  327 	push	a
                                    328 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      00A342 0D 06            [ 1]  329 	tnz	(0x06, sp)
      00A344 26 0F            [ 1]  330 	jrne	00107$
      00A346 4B E4            [ 1]  331 	push	#0xe4
      00A348 5F               [ 1]  332 	clrw	x
      00A349 89               [ 2]  333 	pushw	x
      00A34A 4B 00            [ 1]  334 	push	#0x00
      00A34C 4B 35            [ 1]  335 	push	#<(___str_0+0)
      00A34E 4B 83            [ 1]  336 	push	#((___str_0+0) >> 8)
      00A350 CD 00 00         [ 4]  337 	call	_assert_failed
      00A353 5B 06            [ 2]  338 	addw	sp, #6
      00A355                        339 00107$:
                                    340 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A355 0D 07            [ 1]  341 	tnz	(0x07, sp)
      00A357 27 14            [ 1]  342 	jreq	00109$
      00A359 7B 07            [ 1]  343 	ld	a, (0x07, sp)
      00A35B 4A               [ 1]  344 	dec	a
      00A35C 27 0F            [ 1]  345 	jreq	00109$
      00A35E 4B E5            [ 1]  346 	push	#0xe5
      00A360 5F               [ 1]  347 	clrw	x
      00A361 89               [ 2]  348 	pushw	x
      00A362 4B 00            [ 1]  349 	push	#0x00
      00A364 4B 35            [ 1]  350 	push	#<(___str_0+0)
      00A366 4B 83            [ 1]  351 	push	#((___str_0+0) >> 8)
      00A368 CD 00 00         [ 4]  352 	call	_assert_failed
      00A36B 5B 06            [ 2]  353 	addw	sp, #6
      00A36D                        354 00109$:
                                    355 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00A36D 1E 04            [ 2]  356 	ldw	x, (0x04, sp)
      00A36F 1C 00 03         [ 2]  357 	addw	x, #0x0003
      00A372 F6               [ 1]  358 	ld	a, (x)
                                    359 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      00A373 0D 07            [ 1]  360 	tnz	(0x07, sp)
      00A375 27 05            [ 1]  361 	jreq	00102$
                                    362 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00A377 1A 06            [ 1]  363 	or	a, (0x06, sp)
      00A379 F7               [ 1]  364 	ld	(x), a
      00A37A 20 0A            [ 2]  365 	jra	00104$
      00A37C                        366 00102$:
                                    367 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00A37C 88               [ 1]  368 	push	a
      00A37D 7B 07            [ 1]  369 	ld	a, (0x07, sp)
      00A37F 43               [ 1]  370 	cpl	a
      00A380 6B 02            [ 1]  371 	ld	(0x02, sp), a
      00A382 84               [ 1]  372 	pop	a
      00A383 14 01            [ 1]  373 	and	a, (0x01, sp)
      00A385 F7               [ 1]  374 	ld	(x), a
      00A386                        375 00104$:
                                    376 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_gpio.c: 238: }
      00A386 84               [ 1]  377 	pop	a
      00A387 81               [ 4]  378 	ret
                                    379 	.area CODE
                                    380 	.area CONST
                                    381 	.area CONST
      008335                        382 ___str_0:
      008335 43 3A                  383 	.ascii "C:"
      008337 5C                     384 	.db 0x5c
      008338 55 73 65 72 73         385 	.ascii "Users"
      00833D 5C                     386 	.db 0x5c
      00833E 41 64 6D 69 6E         387 	.ascii "Admin"
      008343 5C                     388 	.db 0x5c
      008344 2E 70 6C 61 74 66 6F   389 	.ascii ".platformio"
             72 6D 69 6F
      00834F 5C                     390 	.db 0x5c
      008350 70 61 63 6B 61 67 65   391 	.ascii "packages"
             73
      008358 5C                     392 	.db 0x5c
      008359 66 72 61 6D 65 77 6F   393 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00836C 5C                     394 	.db 0x5c
      00836D 4C 69 62 72 61 72 69   395 	.ascii "Libraries"
             65 73
      008376 5C                     396 	.db 0x5c
      008377 53 54 4D 38 53 5F 53   397 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      00838D 5C                     398 	.db 0x5c
      00838E 73 72 63               399 	.ascii "src"
      008391 5C                     400 	.db 0x5c
      008392 73 74 6D 38 73 5F 67   401 	.ascii "stm8s_gpio.c"
             70 69 6F 2E 63
      00839E 00                     402 	.db 0x00
                                    403 	.area CODE
                                    404 	.area INITIALIZER
                                    405 	.area CABS (ABS)
