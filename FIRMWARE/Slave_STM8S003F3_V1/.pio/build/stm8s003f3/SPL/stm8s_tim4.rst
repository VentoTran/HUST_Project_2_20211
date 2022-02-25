                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim4
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM4_DeInit
                                     13 	.globl _TIM4_TimeBaseInit
                                     14 	.globl _TIM4_Cmd
                                     15 	.globl _TIM4_ITConfig
                                     16 	.globl _TIM4_UpdateDisableConfig
                                     17 	.globl _TIM4_UpdateRequestConfig
                                     18 	.globl _TIM4_SelectOnePulseMode
                                     19 	.globl _TIM4_PrescalerConfig
                                     20 	.globl _TIM4_ARRPreloadConfig
                                     21 	.globl _TIM4_GenerateEvent
                                     22 	.globl _TIM4_SetCounter
                                     23 	.globl _TIM4_SetAutoreload
                                     24 	.globl _TIM4_GetCounter
                                     25 	.globl _TIM4_GetPrescaler
                                     26 	.globl _TIM4_GetFlagStatus
                                     27 	.globl _TIM4_ClearFlag
                                     28 	.globl _TIM4_GetITStatus
                                     29 	.globl _TIM4_ClearITPendingBit
                                     30 ;--------------------------------------------------------
                                     31 ; ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DATA
                                     34 ;--------------------------------------------------------
                                     35 ; ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area INITIALIZED
                                     38 ;--------------------------------------------------------
                                     39 ; absolute external ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DABS (ABS)
                                     42 
                                     43 ; default segment ordering for linker
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area CONST
                                     48 	.area INITIALIZER
                                     49 	.area CODE
                                     50 
                                     51 ;--------------------------------------------------------
                                     52 ; global & static initialisations
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area GSINIT
                                     56 	.area GSFINAL
                                     57 	.area GSINIT
                                     58 ;--------------------------------------------------------
                                     59 ; Home
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area HOME
                                     63 ;--------------------------------------------------------
                                     64 ; code
                                     65 ;--------------------------------------------------------
                                     66 	.area CODE
                                     67 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 49: void TIM4_DeInit(void)
                                     68 ;	-----------------------------------------
                                     69 ;	 function TIM4_DeInit
                                     70 ;	-----------------------------------------
      00D1A7                         71 _TIM4_DeInit:
                                     72 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
      00D1A7 35 00 53 40      [ 1]   73 	mov	0x5340+0, #0x00
                                     74 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
      00D1AB 35 00 53 43      [ 1]   75 	mov	0x5343+0, #0x00
                                     76 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
      00D1AF 35 00 53 46      [ 1]   77 	mov	0x5346+0, #0x00
                                     78 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
      00D1B3 35 00 53 47      [ 1]   79 	mov	0x5347+0, #0x00
                                     80 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
      00D1B7 35 FF 53 48      [ 1]   81 	mov	0x5348+0, #0xff
                                     82 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
      00D1BB 35 00 53 44      [ 1]   83 	mov	0x5344+0, #0x00
                                     84 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 57: }
      00D1BF 81               [ 4]   85 	ret
                                     86 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
                                     87 ;	-----------------------------------------
                                     88 ;	 function TIM4_TimeBaseInit
                                     89 ;	-----------------------------------------
      00D1C0                         90 _TIM4_TimeBaseInit:
                                     91 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 68: assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
      00D1C0 0D 03            [ 1]   92 	tnz	(0x03, sp)
      00D1C2 27 38            [ 1]   93 	jreq	00104$
      00D1C4 7B 03            [ 1]   94 	ld	a, (0x03, sp)
      00D1C6 4A               [ 1]   95 	dec	a
      00D1C7 27 33            [ 1]   96 	jreq	00104$
      00D1C9 7B 03            [ 1]   97 	ld	a, (0x03, sp)
      00D1CB A1 02            [ 1]   98 	cp	a, #0x02
      00D1CD 27 2D            [ 1]   99 	jreq	00104$
      00D1CF 7B 03            [ 1]  100 	ld	a, (0x03, sp)
      00D1D1 A1 03            [ 1]  101 	cp	a, #0x03
      00D1D3 27 27            [ 1]  102 	jreq	00104$
      00D1D5 7B 03            [ 1]  103 	ld	a, (0x03, sp)
      00D1D7 A1 04            [ 1]  104 	cp	a, #0x04
      00D1D9 27 21            [ 1]  105 	jreq	00104$
      00D1DB 7B 03            [ 1]  106 	ld	a, (0x03, sp)
      00D1DD A1 05            [ 1]  107 	cp	a, #0x05
      00D1DF 27 1B            [ 1]  108 	jreq	00104$
      00D1E1 7B 03            [ 1]  109 	ld	a, (0x03, sp)
      00D1E3 A1 06            [ 1]  110 	cp	a, #0x06
      00D1E5 27 15            [ 1]  111 	jreq	00104$
      00D1E7 7B 03            [ 1]  112 	ld	a, (0x03, sp)
      00D1E9 A1 07            [ 1]  113 	cp	a, #0x07
      00D1EB 27 0F            [ 1]  114 	jreq	00104$
      00D1ED 4B 44            [ 1]  115 	push	#0x44
      00D1EF 5F               [ 1]  116 	clrw	x
      00D1F0 89               [ 2]  117 	pushw	x
      00D1F1 4B 00            [ 1]  118 	push	#0x00
      00D1F3 4B 81            [ 1]  119 	push	#<(___str_0+0)
      00D1F5 4B 86            [ 1]  120 	push	#((___str_0+0) >> 8)
      00D1F7 CD 00 00         [ 4]  121 	call	_assert_failed
      00D1FA 5B 06            [ 2]  122 	addw	sp, #6
      00D1FC                        123 00104$:
                                    124 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
      00D1FC AE 53 47         [ 2]  125 	ldw	x, #0x5347
      00D1FF 7B 03            [ 1]  126 	ld	a, (0x03, sp)
      00D201 F7               [ 1]  127 	ld	(x), a
                                    128 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
      00D202 AE 53 48         [ 2]  129 	ldw	x, #0x5348
      00D205 7B 04            [ 1]  130 	ld	a, (0x04, sp)
      00D207 F7               [ 1]  131 	ld	(x), a
                                    132 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 73: }
      00D208 81               [ 4]  133 	ret
                                    134 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
                                    135 ;	-----------------------------------------
                                    136 ;	 function TIM4_Cmd
                                    137 ;	-----------------------------------------
      00D209                        138 _TIM4_Cmd:
                                    139 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 84: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D209 0D 03            [ 1]  140 	tnz	(0x03, sp)
      00D20B 27 14            [ 1]  141 	jreq	00107$
      00D20D 7B 03            [ 1]  142 	ld	a, (0x03, sp)
      00D20F 4A               [ 1]  143 	dec	a
      00D210 27 0F            [ 1]  144 	jreq	00107$
      00D212 4B 54            [ 1]  145 	push	#0x54
      00D214 5F               [ 1]  146 	clrw	x
      00D215 89               [ 2]  147 	pushw	x
      00D216 4B 00            [ 1]  148 	push	#0x00
      00D218 4B 81            [ 1]  149 	push	#<(___str_0+0)
      00D21A 4B 86            [ 1]  150 	push	#((___str_0+0) >> 8)
      00D21C CD 00 00         [ 4]  151 	call	_assert_failed
      00D21F 5B 06            [ 2]  152 	addw	sp, #6
      00D221                        153 00107$:
                                    154 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
      00D221 C6 53 40         [ 1]  155 	ld	a, 0x5340
                                    156 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 87: if (NewState != DISABLE)
      00D224 0D 03            [ 1]  157 	tnz	(0x03, sp)
      00D226 27 06            [ 1]  158 	jreq	00102$
                                    159 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
      00D228 AA 01            [ 1]  160 	or	a, #0x01
      00D22A C7 53 40         [ 1]  161 	ld	0x5340, a
      00D22D 81               [ 4]  162 	ret
      00D22E                        163 00102$:
                                    164 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
      00D22E A4 FE            [ 1]  165 	and	a, #0xfe
      00D230 C7 53 40         [ 1]  166 	ld	0x5340, a
                                    167 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 95: }
      00D233 81               [ 4]  168 	ret
                                    169 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
                                    170 ;	-----------------------------------------
                                    171 ;	 function TIM4_ITConfig
                                    172 ;	-----------------------------------------
      00D234                        173 _TIM4_ITConfig:
      00D234 88               [ 1]  174 	push	a
                                    175 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 110: assert_param(IS_TIM4_IT_OK(TIM4_IT));
      00D235 7B 04            [ 1]  176 	ld	a, (0x04, sp)
      00D237 4A               [ 1]  177 	dec	a
      00D238 27 0F            [ 1]  178 	jreq	00107$
      00D23A 4B 6E            [ 1]  179 	push	#0x6e
      00D23C 5F               [ 1]  180 	clrw	x
      00D23D 89               [ 2]  181 	pushw	x
      00D23E 4B 00            [ 1]  182 	push	#0x00
      00D240 4B 81            [ 1]  183 	push	#<(___str_0+0)
      00D242 4B 86            [ 1]  184 	push	#((___str_0+0) >> 8)
      00D244 CD 00 00         [ 4]  185 	call	_assert_failed
      00D247 5B 06            [ 2]  186 	addw	sp, #6
      00D249                        187 00107$:
                                    188 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 111: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D249 0D 05            [ 1]  189 	tnz	(0x05, sp)
      00D24B 27 14            [ 1]  190 	jreq	00109$
      00D24D 7B 05            [ 1]  191 	ld	a, (0x05, sp)
      00D24F 4A               [ 1]  192 	dec	a
      00D250 27 0F            [ 1]  193 	jreq	00109$
      00D252 4B 6F            [ 1]  194 	push	#0x6f
      00D254 5F               [ 1]  195 	clrw	x
      00D255 89               [ 2]  196 	pushw	x
      00D256 4B 00            [ 1]  197 	push	#0x00
      00D258 4B 81            [ 1]  198 	push	#<(___str_0+0)
      00D25A 4B 86            [ 1]  199 	push	#((___str_0+0) >> 8)
      00D25C CD 00 00         [ 4]  200 	call	_assert_failed
      00D25F 5B 06            [ 2]  201 	addw	sp, #6
      00D261                        202 00109$:
                                    203 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
      00D261 C6 53 43         [ 1]  204 	ld	a, 0x5343
                                    205 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 113: if (NewState != DISABLE)
      00D264 0D 05            [ 1]  206 	tnz	(0x05, sp)
      00D266 27 07            [ 1]  207 	jreq	00102$
                                    208 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
      00D268 1A 04            [ 1]  209 	or	a, (0x04, sp)
      00D26A C7 53 43         [ 1]  210 	ld	0x5343, a
      00D26D 20 0C            [ 2]  211 	jra	00104$
      00D26F                        212 00102$:
                                    213 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
      00D26F 88               [ 1]  214 	push	a
      00D270 7B 05            [ 1]  215 	ld	a, (0x05, sp)
      00D272 43               [ 1]  216 	cpl	a
      00D273 6B 02            [ 1]  217 	ld	(0x02, sp), a
      00D275 84               [ 1]  218 	pop	a
      00D276 14 01            [ 1]  219 	and	a, (0x01, sp)
      00D278 C7 53 43         [ 1]  220 	ld	0x5343, a
      00D27B                        221 00104$:
                                    222 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 123: }
      00D27B 84               [ 1]  223 	pop	a
      00D27C 81               [ 4]  224 	ret
                                    225 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
                                    226 ;	-----------------------------------------
                                    227 ;	 function TIM4_UpdateDisableConfig
                                    228 ;	-----------------------------------------
      00D27D                        229 _TIM4_UpdateDisableConfig:
                                    230 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 134: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D27D 0D 03            [ 1]  231 	tnz	(0x03, sp)
      00D27F 27 14            [ 1]  232 	jreq	00107$
      00D281 7B 03            [ 1]  233 	ld	a, (0x03, sp)
      00D283 4A               [ 1]  234 	dec	a
      00D284 27 0F            [ 1]  235 	jreq	00107$
      00D286 4B 86            [ 1]  236 	push	#0x86
      00D288 5F               [ 1]  237 	clrw	x
      00D289 89               [ 2]  238 	pushw	x
      00D28A 4B 00            [ 1]  239 	push	#0x00
      00D28C 4B 81            [ 1]  240 	push	#<(___str_0+0)
      00D28E 4B 86            [ 1]  241 	push	#((___str_0+0) >> 8)
      00D290 CD 00 00         [ 4]  242 	call	_assert_failed
      00D293 5B 06            [ 2]  243 	addw	sp, #6
      00D295                        244 00107$:
                                    245 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
      00D295 C6 53 40         [ 1]  246 	ld	a, 0x5340
                                    247 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 137: if (NewState != DISABLE)
      00D298 0D 03            [ 1]  248 	tnz	(0x03, sp)
      00D29A 27 06            [ 1]  249 	jreq	00102$
                                    250 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
      00D29C AA 02            [ 1]  251 	or	a, #0x02
      00D29E C7 53 40         [ 1]  252 	ld	0x5340, a
      00D2A1 81               [ 4]  253 	ret
      00D2A2                        254 00102$:
                                    255 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
      00D2A2 A4 FD            [ 1]  256 	and	a, #0xfd
      00D2A4 C7 53 40         [ 1]  257 	ld	0x5340, a
                                    258 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 145: }
      00D2A7 81               [ 4]  259 	ret
                                    260 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
                                    261 ;	-----------------------------------------
                                    262 ;	 function TIM4_UpdateRequestConfig
                                    263 ;	-----------------------------------------
      00D2A8                        264 _TIM4_UpdateRequestConfig:
                                    265 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 158: assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
      00D2A8 0D 03            [ 1]  266 	tnz	(0x03, sp)
      00D2AA 27 14            [ 1]  267 	jreq	00107$
      00D2AC 7B 03            [ 1]  268 	ld	a, (0x03, sp)
      00D2AE 4A               [ 1]  269 	dec	a
      00D2AF 27 0F            [ 1]  270 	jreq	00107$
      00D2B1 4B 9E            [ 1]  271 	push	#0x9e
      00D2B3 5F               [ 1]  272 	clrw	x
      00D2B4 89               [ 2]  273 	pushw	x
      00D2B5 4B 00            [ 1]  274 	push	#0x00
      00D2B7 4B 81            [ 1]  275 	push	#<(___str_0+0)
      00D2B9 4B 86            [ 1]  276 	push	#((___str_0+0) >> 8)
      00D2BB CD 00 00         [ 4]  277 	call	_assert_failed
      00D2BE 5B 06            [ 2]  278 	addw	sp, #6
      00D2C0                        279 00107$:
                                    280 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
      00D2C0 C6 53 40         [ 1]  281 	ld	a, 0x5340
                                    282 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
      00D2C3 0D 03            [ 1]  283 	tnz	(0x03, sp)
      00D2C5 27 06            [ 1]  284 	jreq	00102$
                                    285 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
      00D2C7 AA 04            [ 1]  286 	or	a, #0x04
      00D2C9 C7 53 40         [ 1]  287 	ld	0x5340, a
      00D2CC 81               [ 4]  288 	ret
      00D2CD                        289 00102$:
                                    290 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
      00D2CD A4 FB            [ 1]  291 	and	a, #0xfb
      00D2CF C7 53 40         [ 1]  292 	ld	0x5340, a
                                    293 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 169: }
      00D2D2 81               [ 4]  294 	ret
                                    295 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
                                    296 ;	-----------------------------------------
                                    297 ;	 function TIM4_SelectOnePulseMode
                                    298 ;	-----------------------------------------
      00D2D3                        299 _TIM4_SelectOnePulseMode:
                                    300 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 182: assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
      00D2D3 7B 03            [ 1]  301 	ld	a, (0x03, sp)
      00D2D5 4A               [ 1]  302 	dec	a
      00D2D6 27 13            [ 1]  303 	jreq	00107$
      00D2D8 0D 03            [ 1]  304 	tnz	(0x03, sp)
      00D2DA 27 0F            [ 1]  305 	jreq	00107$
      00D2DC 4B B6            [ 1]  306 	push	#0xb6
      00D2DE 5F               [ 1]  307 	clrw	x
      00D2DF 89               [ 2]  308 	pushw	x
      00D2E0 4B 00            [ 1]  309 	push	#0x00
      00D2E2 4B 81            [ 1]  310 	push	#<(___str_0+0)
      00D2E4 4B 86            [ 1]  311 	push	#((___str_0+0) >> 8)
      00D2E6 CD 00 00         [ 4]  312 	call	_assert_failed
      00D2E9 5B 06            [ 2]  313 	addw	sp, #6
      00D2EB                        314 00107$:
                                    315 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
      00D2EB C6 53 40         [ 1]  316 	ld	a, 0x5340
                                    317 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
      00D2EE 0D 03            [ 1]  318 	tnz	(0x03, sp)
      00D2F0 27 06            [ 1]  319 	jreq	00102$
                                    320 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
      00D2F2 AA 08            [ 1]  321 	or	a, #0x08
      00D2F4 C7 53 40         [ 1]  322 	ld	0x5340, a
      00D2F7 81               [ 4]  323 	ret
      00D2F8                        324 00102$:
                                    325 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
      00D2F8 A4 F7            [ 1]  326 	and	a, #0xf7
      00D2FA C7 53 40         [ 1]  327 	ld	0x5340, a
                                    328 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 193: }
      00D2FD 81               [ 4]  329 	ret
                                    330 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
                                    331 ;	-----------------------------------------
                                    332 ;	 function TIM4_PrescalerConfig
                                    333 ;	-----------------------------------------
      00D2FE                        334 _TIM4_PrescalerConfig:
                                    335 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 218: assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
      00D2FE 0D 04            [ 1]  336 	tnz	(0x04, sp)
      00D300 27 14            [ 1]  337 	jreq	00104$
      00D302 7B 04            [ 1]  338 	ld	a, (0x04, sp)
      00D304 4A               [ 1]  339 	dec	a
      00D305 27 0F            [ 1]  340 	jreq	00104$
      00D307 4B DA            [ 1]  341 	push	#0xda
      00D309 5F               [ 1]  342 	clrw	x
      00D30A 89               [ 2]  343 	pushw	x
      00D30B 4B 00            [ 1]  344 	push	#0x00
      00D30D 4B 81            [ 1]  345 	push	#<(___str_0+0)
      00D30F 4B 86            [ 1]  346 	push	#((___str_0+0) >> 8)
      00D311 CD 00 00         [ 4]  347 	call	_assert_failed
      00D314 5B 06            [ 2]  348 	addw	sp, #6
      00D316                        349 00104$:
                                    350 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 219: assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
      00D316 0D 03            [ 1]  351 	tnz	(0x03, sp)
      00D318 27 38            [ 1]  352 	jreq	00109$
      00D31A 7B 03            [ 1]  353 	ld	a, (0x03, sp)
      00D31C 4A               [ 1]  354 	dec	a
      00D31D 27 33            [ 1]  355 	jreq	00109$
      00D31F 7B 03            [ 1]  356 	ld	a, (0x03, sp)
      00D321 A1 02            [ 1]  357 	cp	a, #0x02
      00D323 27 2D            [ 1]  358 	jreq	00109$
      00D325 7B 03            [ 1]  359 	ld	a, (0x03, sp)
      00D327 A1 03            [ 1]  360 	cp	a, #0x03
      00D329 27 27            [ 1]  361 	jreq	00109$
      00D32B 7B 03            [ 1]  362 	ld	a, (0x03, sp)
      00D32D A1 04            [ 1]  363 	cp	a, #0x04
      00D32F 27 21            [ 1]  364 	jreq	00109$
      00D331 7B 03            [ 1]  365 	ld	a, (0x03, sp)
      00D333 A1 05            [ 1]  366 	cp	a, #0x05
      00D335 27 1B            [ 1]  367 	jreq	00109$
      00D337 7B 03            [ 1]  368 	ld	a, (0x03, sp)
      00D339 A1 06            [ 1]  369 	cp	a, #0x06
      00D33B 27 15            [ 1]  370 	jreq	00109$
      00D33D 7B 03            [ 1]  371 	ld	a, (0x03, sp)
      00D33F A1 07            [ 1]  372 	cp	a, #0x07
      00D341 27 0F            [ 1]  373 	jreq	00109$
      00D343 4B DB            [ 1]  374 	push	#0xdb
      00D345 5F               [ 1]  375 	clrw	x
      00D346 89               [ 2]  376 	pushw	x
      00D347 4B 00            [ 1]  377 	push	#0x00
      00D349 4B 81            [ 1]  378 	push	#<(___str_0+0)
      00D34B 4B 86            [ 1]  379 	push	#((___str_0+0) >> 8)
      00D34D CD 00 00         [ 4]  380 	call	_assert_failed
      00D350 5B 06            [ 2]  381 	addw	sp, #6
      00D352                        382 00109$:
                                    383 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
      00D352 AE 53 47         [ 2]  384 	ldw	x, #0x5347
      00D355 7B 03            [ 1]  385 	ld	a, (0x03, sp)
      00D357 F7               [ 1]  386 	ld	(x), a
                                    387 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
      00D358 AE 53 45         [ 2]  388 	ldw	x, #0x5345
      00D35B 7B 04            [ 1]  389 	ld	a, (0x04, sp)
      00D35D F7               [ 1]  390 	ld	(x), a
                                    391 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 226: }
      00D35E 81               [ 4]  392 	ret
                                    393 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
                                    394 ;	-----------------------------------------
                                    395 ;	 function TIM4_ARRPreloadConfig
                                    396 ;	-----------------------------------------
      00D35F                        397 _TIM4_ARRPreloadConfig:
                                    398 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 237: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00D35F 0D 03            [ 1]  399 	tnz	(0x03, sp)
      00D361 27 14            [ 1]  400 	jreq	00107$
      00D363 7B 03            [ 1]  401 	ld	a, (0x03, sp)
      00D365 4A               [ 1]  402 	dec	a
      00D366 27 0F            [ 1]  403 	jreq	00107$
      00D368 4B ED            [ 1]  404 	push	#0xed
      00D36A 5F               [ 1]  405 	clrw	x
      00D36B 89               [ 2]  406 	pushw	x
      00D36C 4B 00            [ 1]  407 	push	#0x00
      00D36E 4B 81            [ 1]  408 	push	#<(___str_0+0)
      00D370 4B 86            [ 1]  409 	push	#((___str_0+0) >> 8)
      00D372 CD 00 00         [ 4]  410 	call	_assert_failed
      00D375 5B 06            [ 2]  411 	addw	sp, #6
      00D377                        412 00107$:
                                    413 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
      00D377 C6 53 40         [ 1]  414 	ld	a, 0x5340
                                    415 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 240: if (NewState != DISABLE)
      00D37A 0D 03            [ 1]  416 	tnz	(0x03, sp)
      00D37C 27 06            [ 1]  417 	jreq	00102$
                                    418 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
      00D37E AA 80            [ 1]  419 	or	a, #0x80
      00D380 C7 53 40         [ 1]  420 	ld	0x5340, a
      00D383 81               [ 4]  421 	ret
      00D384                        422 00102$:
                                    423 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
      00D384 A4 7F            [ 1]  424 	and	a, #0x7f
      00D386 C7 53 40         [ 1]  425 	ld	0x5340, a
                                    426 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 248: }
      00D389 81               [ 4]  427 	ret
                                    428 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
                                    429 ;	-----------------------------------------
                                    430 ;	 function TIM4_GenerateEvent
                                    431 ;	-----------------------------------------
      00D38A                        432 _TIM4_GenerateEvent:
                                    433 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 260: assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
      00D38A 7B 03            [ 1]  434 	ld	a, (0x03, sp)
      00D38C 4A               [ 1]  435 	dec	a
      00D38D 27 0F            [ 1]  436 	jreq	00104$
      00D38F 4B 04            [ 1]  437 	push	#0x04
      00D391 4B 01            [ 1]  438 	push	#0x01
      00D393 5F               [ 1]  439 	clrw	x
      00D394 89               [ 2]  440 	pushw	x
      00D395 4B 81            [ 1]  441 	push	#<(___str_0+0)
      00D397 4B 86            [ 1]  442 	push	#((___str_0+0) >> 8)
      00D399 CD 00 00         [ 4]  443 	call	_assert_failed
      00D39C 5B 06            [ 2]  444 	addw	sp, #6
      00D39E                        445 00104$:
                                    446 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
      00D39E AE 53 45         [ 2]  447 	ldw	x, #0x5345
      00D3A1 7B 03            [ 1]  448 	ld	a, (0x03, sp)
      00D3A3 F7               [ 1]  449 	ld	(x), a
                                    450 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 264: }
      00D3A4 81               [ 4]  451 	ret
                                    452 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
                                    453 ;	-----------------------------------------
                                    454 ;	 function TIM4_SetCounter
                                    455 ;	-----------------------------------------
      00D3A5                        456 _TIM4_SetCounter:
                                    457 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
      00D3A5 AE 53 46         [ 2]  458 	ldw	x, #0x5346
      00D3A8 7B 03            [ 1]  459 	ld	a, (0x03, sp)
      00D3AA F7               [ 1]  460 	ld	(x), a
                                    461 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 276: }
      00D3AB 81               [ 4]  462 	ret
                                    463 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
                                    464 ;	-----------------------------------------
                                    465 ;	 function TIM4_SetAutoreload
                                    466 ;	-----------------------------------------
      00D3AC                        467 _TIM4_SetAutoreload:
                                    468 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
      00D3AC AE 53 48         [ 2]  469 	ldw	x, #0x5348
      00D3AF 7B 03            [ 1]  470 	ld	a, (0x03, sp)
      00D3B1 F7               [ 1]  471 	ld	(x), a
                                    472 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 288: }
      00D3B2 81               [ 4]  473 	ret
                                    474 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
                                    475 ;	-----------------------------------------
                                    476 ;	 function TIM4_GetCounter
                                    477 ;	-----------------------------------------
      00D3B3                        478 _TIM4_GetCounter:
                                    479 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
      00D3B3 C6 53 46         [ 1]  480 	ld	a, 0x5346
                                    481 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 299: }
      00D3B6 81               [ 4]  482 	ret
                                    483 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
                                    484 ;	-----------------------------------------
                                    485 ;	 function TIM4_GetPrescaler
                                    486 ;	-----------------------------------------
      00D3B7                        487 _TIM4_GetPrescaler:
                                    488 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
      00D3B7 C6 53 47         [ 1]  489 	ld	a, 0x5347
                                    490 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 310: }
      00D3BA 81               [ 4]  491 	ret
                                    492 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    493 ;	-----------------------------------------
                                    494 ;	 function TIM4_GetFlagStatus
                                    495 ;	-----------------------------------------
      00D3BB                        496 _TIM4_GetFlagStatus:
                                    497 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 324: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
      00D3BB 7B 03            [ 1]  498 	ld	a, (0x03, sp)
      00D3BD 4A               [ 1]  499 	dec	a
      00D3BE 27 0F            [ 1]  500 	jreq	00107$
      00D3C0 4B 44            [ 1]  501 	push	#0x44
      00D3C2 4B 01            [ 1]  502 	push	#0x01
      00D3C4 5F               [ 1]  503 	clrw	x
      00D3C5 89               [ 2]  504 	pushw	x
      00D3C6 4B 81            [ 1]  505 	push	#<(___str_0+0)
      00D3C8 4B 86            [ 1]  506 	push	#((___str_0+0) >> 8)
      00D3CA CD 00 00         [ 4]  507 	call	_assert_failed
      00D3CD 5B 06            [ 2]  508 	addw	sp, #6
      00D3CF                        509 00107$:
                                    510 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
      00D3CF C6 53 44         [ 1]  511 	ld	a, 0x5344
      00D3D2 14 03            [ 1]  512 	and	a, (0x03, sp)
      00D3D4 27 03            [ 1]  513 	jreq	00102$
                                    514 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 328: bitstatus = SET;
      00D3D6 A6 01            [ 1]  515 	ld	a, #0x01
      00D3D8 81               [ 4]  516 	ret
      00D3D9                        517 00102$:
                                    518 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 332: bitstatus = RESET;
      00D3D9 4F               [ 1]  519 	clr	a
                                    520 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
                                    521 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 335: }
      00D3DA 81               [ 4]  522 	ret
                                    523 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    524 ;	-----------------------------------------
                                    525 ;	 function TIM4_ClearFlag
                                    526 ;	-----------------------------------------
      00D3DB                        527 _TIM4_ClearFlag:
                                    528 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 347: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
      00D3DB 7B 03            [ 1]  529 	ld	a, (0x03, sp)
      00D3DD 4A               [ 1]  530 	dec	a
      00D3DE 27 0F            [ 1]  531 	jreq	00104$
      00D3E0 4B 5B            [ 1]  532 	push	#0x5b
      00D3E2 4B 01            [ 1]  533 	push	#0x01
      00D3E4 5F               [ 1]  534 	clrw	x
      00D3E5 89               [ 2]  535 	pushw	x
      00D3E6 4B 81            [ 1]  536 	push	#<(___str_0+0)
      00D3E8 4B 86            [ 1]  537 	push	#((___str_0+0) >> 8)
      00D3EA CD 00 00         [ 4]  538 	call	_assert_failed
      00D3ED 5B 06            [ 2]  539 	addw	sp, #6
      00D3EF                        540 00104$:
                                    541 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
      00D3EF 7B 03            [ 1]  542 	ld	a, (0x03, sp)
      00D3F1 43               [ 1]  543 	cpl	a
      00D3F2 C7 53 44         [ 1]  544 	ld	0x5344, a
                                    545 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 351: }
      00D3F5 81               [ 4]  546 	ret
                                    547 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
                                    548 ;	-----------------------------------------
                                    549 ;	 function TIM4_GetITStatus
                                    550 ;	-----------------------------------------
      00D3F6                        551 _TIM4_GetITStatus:
      00D3F6 88               [ 1]  552 	push	a
                                    553 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 367: assert_param(IS_TIM4_IT_OK(TIM4_IT));
      00D3F7 7B 04            [ 1]  554 	ld	a, (0x04, sp)
      00D3F9 4A               [ 1]  555 	dec	a
      00D3FA 27 0F            [ 1]  556 	jreq	00108$
      00D3FC 4B 6F            [ 1]  557 	push	#0x6f
      00D3FE 4B 01            [ 1]  558 	push	#0x01
      00D400 5F               [ 1]  559 	clrw	x
      00D401 89               [ 2]  560 	pushw	x
      00D402 4B 81            [ 1]  561 	push	#<(___str_0+0)
      00D404 4B 86            [ 1]  562 	push	#((___str_0+0) >> 8)
      00D406 CD 00 00         [ 4]  563 	call	_assert_failed
      00D409 5B 06            [ 2]  564 	addw	sp, #6
      00D40B                        565 00108$:
                                    566 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
      00D40B C6 53 44         [ 1]  567 	ld	a, 0x5344
      00D40E 14 04            [ 1]  568 	and	a, (0x04, sp)
      00D410 6B 01            [ 1]  569 	ld	(0x01, sp), a
                                    570 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
      00D412 C6 53 43         [ 1]  571 	ld	a, 0x5343
      00D415 14 04            [ 1]  572 	and	a, (0x04, sp)
                                    573 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
      00D417 0D 01            [ 1]  574 	tnz	(0x01, sp)
      00D419 27 06            [ 1]  575 	jreq	00102$
      00D41B 4D               [ 1]  576 	tnz	a
      00D41C 27 03            [ 1]  577 	jreq	00102$
                                    578 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
      00D41E A6 01            [ 1]  579 	ld	a, #0x01
                                    580 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
      00D420 21                     581 	.byte 0x21
      00D421                        582 00102$:
      00D421 4F               [ 1]  583 	clr	a
      00D422                        584 00103$:
                                    585 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
                                    586 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 382: }
      00D422 5B 01            [ 2]  587 	addw	sp, #1
      00D424 81               [ 4]  588 	ret
                                    589 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
                                    590 ;	-----------------------------------------
                                    591 ;	 function TIM4_ClearITPendingBit
                                    592 ;	-----------------------------------------
      00D425                        593 _TIM4_ClearITPendingBit:
                                    594 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 394: assert_param(IS_TIM4_IT_OK(TIM4_IT));
      00D425 7B 03            [ 1]  595 	ld	a, (0x03, sp)
      00D427 4A               [ 1]  596 	dec	a
      00D428 27 0F            [ 1]  597 	jreq	00104$
      00D42A 4B 8A            [ 1]  598 	push	#0x8a
      00D42C 4B 01            [ 1]  599 	push	#0x01
      00D42E 5F               [ 1]  600 	clrw	x
      00D42F 89               [ 2]  601 	pushw	x
      00D430 4B 81            [ 1]  602 	push	#<(___str_0+0)
      00D432 4B 86            [ 1]  603 	push	#((___str_0+0) >> 8)
      00D434 CD 00 00         [ 4]  604 	call	_assert_failed
      00D437 5B 06            [ 2]  605 	addw	sp, #6
      00D439                        606 00104$:
                                    607 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
      00D439 7B 03            [ 1]  608 	ld	a, (0x03, sp)
      00D43B 43               [ 1]  609 	cpl	a
      00D43C C7 53 44         [ 1]  610 	ld	0x5344, a
                                    611 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim4.c: 398: }
      00D43F 81               [ 4]  612 	ret
                                    613 	.area CODE
                                    614 	.area CONST
                                    615 	.area CONST
      008681                        616 ___str_0:
      008681 43 3A                  617 	.ascii "C:"
      008683 5C                     618 	.db 0x5c
      008684 55 73 65 72 73         619 	.ascii "Users"
      008689 5C                     620 	.db 0x5c
      00868A 41 64 6D 69 6E         621 	.ascii "Admin"
      00868F 5C                     622 	.db 0x5c
      008690 2E 70 6C 61 74 66 6F   623 	.ascii ".platformio"
             72 6D 69 6F
      00869B 5C                     624 	.db 0x5c
      00869C 70 61 63 6B 61 67 65   625 	.ascii "packages"
             73
      0086A4 5C                     626 	.db 0x5c
      0086A5 66 72 61 6D 65 77 6F   627 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0086B8 5C                     628 	.db 0x5c
      0086B9 4C 69 62 72 61 72 69   629 	.ascii "Libraries"
             65 73
      0086C2 5C                     630 	.db 0x5c
      0086C3 53 54 4D 38 53 5F 53   631 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0086D9 5C                     632 	.db 0x5c
      0086DA 73 72 63               633 	.ascii "src"
      0086DD 5C                     634 	.db 0x5c
      0086DE 73 74 6D 38 73 5F 74   635 	.ascii "stm8s_tim4.c"
             69 6D 34 2E 63
      0086EA 00                     636 	.db 0x00
                                    637 	.area CODE
                                    638 	.area INITIALIZER
                                    639 	.area CABS (ABS)
