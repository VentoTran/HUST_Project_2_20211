                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM2_DeInit
                                     13 	.globl _TIM2_TimeBaseInit
                                     14 	.globl _TIM2_OC1Init
                                     15 	.globl _TIM2_OC2Init
                                     16 	.globl _TIM2_OC3Init
                                     17 	.globl _TIM2_ICInit
                                     18 	.globl _TIM2_PWMIConfig
                                     19 	.globl _TIM2_Cmd
                                     20 	.globl _TIM2_ITConfig
                                     21 	.globl _TIM2_UpdateDisableConfig
                                     22 	.globl _TIM2_UpdateRequestConfig
                                     23 	.globl _TIM2_SelectOnePulseMode
                                     24 	.globl _TIM2_PrescalerConfig
                                     25 	.globl _TIM2_ForcedOC1Config
                                     26 	.globl _TIM2_ForcedOC2Config
                                     27 	.globl _TIM2_ForcedOC3Config
                                     28 	.globl _TIM2_ARRPreloadConfig
                                     29 	.globl _TIM2_OC1PreloadConfig
                                     30 	.globl _TIM2_OC2PreloadConfig
                                     31 	.globl _TIM2_OC3PreloadConfig
                                     32 	.globl _TIM2_GenerateEvent
                                     33 	.globl _TIM2_OC1PolarityConfig
                                     34 	.globl _TIM2_OC2PolarityConfig
                                     35 	.globl _TIM2_OC3PolarityConfig
                                     36 	.globl _TIM2_CCxCmd
                                     37 	.globl _TIM2_SelectOCxM
                                     38 	.globl _TIM2_SetCounter
                                     39 	.globl _TIM2_SetAutoreload
                                     40 	.globl _TIM2_SetCompare1
                                     41 	.globl _TIM2_SetCompare2
                                     42 	.globl _TIM2_SetCompare3
                                     43 	.globl _TIM2_SetIC1Prescaler
                                     44 	.globl _TIM2_SetIC2Prescaler
                                     45 	.globl _TIM2_SetIC3Prescaler
                                     46 	.globl _TIM2_GetCapture1
                                     47 	.globl _TIM2_GetCapture2
                                     48 	.globl _TIM2_GetCapture3
                                     49 	.globl _TIM2_GetCounter
                                     50 	.globl _TIM2_GetPrescaler
                                     51 	.globl _TIM2_GetFlagStatus
                                     52 	.globl _TIM2_ClearFlag
                                     53 	.globl _TIM2_GetITStatus
                                     54 	.globl _TIM2_ClearITPendingBit
                                     55 ;--------------------------------------------------------
                                     56 ; ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area DATA
                                     59 ;--------------------------------------------------------
                                     60 ; ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area INITIALIZED
                                     63 ;--------------------------------------------------------
                                     64 ; absolute external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area DABS (ABS)
                                     67 
                                     68 ; default segment ordering for linker
                                     69 	.area HOME
                                     70 	.area GSINIT
                                     71 	.area GSFINAL
                                     72 	.area CONST
                                     73 	.area INITIALIZER
                                     74 	.area CODE
                                     75 
                                     76 ;--------------------------------------------------------
                                     77 ; global & static initialisations
                                     78 ;--------------------------------------------------------
                                     79 	.area HOME
                                     80 	.area GSINIT
                                     81 	.area GSFINAL
                                     82 	.area GSINIT
                                     83 ;--------------------------------------------------------
                                     84 ; Home
                                     85 ;--------------------------------------------------------
                                     86 	.area HOME
                                     87 	.area HOME
                                     88 ;--------------------------------------------------------
                                     89 ; code
                                     90 ;--------------------------------------------------------
                                     91 	.area CODE
                                     92 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 52: void TIM2_DeInit(void)
                                     93 ;	-----------------------------------------
                                     94 ;	 function TIM2_DeInit
                                     95 ;	-----------------------------------------
      00C678                         96 _TIM2_DeInit:
                                     97 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
      00C678 35 00 53 00      [ 1]   98 	mov	0x5300+0, #0x00
                                     99 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
      00C67C 35 00 53 03      [ 1]  100 	mov	0x5303+0, #0x00
                                    101 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
      00C680 35 00 53 05      [ 1]  102 	mov	0x5305+0, #0x00
                                    103 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      00C684 35 00 53 0A      [ 1]  104 	mov	0x530a+0, #0x00
                                    105 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      00C688 35 00 53 0B      [ 1]  106 	mov	0x530b+0, #0x00
                                    107 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      00C68C 35 00 53 0A      [ 1]  108 	mov	0x530a+0, #0x00
                                    109 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      00C690 35 00 53 0B      [ 1]  110 	mov	0x530b+0, #0x00
                                    111 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
      00C694 35 00 53 07      [ 1]  112 	mov	0x5307+0, #0x00
                                    113 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
      00C698 35 00 53 08      [ 1]  114 	mov	0x5308+0, #0x00
                                    115 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
      00C69C 35 00 53 09      [ 1]  116 	mov	0x5309+0, #0x00
                                    117 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
      00C6A0 35 00 53 0C      [ 1]  118 	mov	0x530c+0, #0x00
                                    119 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
      00C6A4 35 00 53 0D      [ 1]  120 	mov	0x530d+0, #0x00
                                    121 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
      00C6A8 35 00 53 0E      [ 1]  122 	mov	0x530e+0, #0x00
                                    123 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
      00C6AC 35 FF 53 0F      [ 1]  124 	mov	0x530f+0, #0xff
                                    125 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
      00C6B0 35 FF 53 10      [ 1]  126 	mov	0x5310+0, #0xff
                                    127 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
      00C6B4 35 00 53 11      [ 1]  128 	mov	0x5311+0, #0x00
                                    129 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
      00C6B8 35 00 53 12      [ 1]  130 	mov	0x5312+0, #0x00
                                    131 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
      00C6BC 35 00 53 13      [ 1]  132 	mov	0x5313+0, #0x00
                                    133 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
      00C6C0 35 00 53 14      [ 1]  134 	mov	0x5314+0, #0x00
                                    135 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
      00C6C4 35 00 53 15      [ 1]  136 	mov	0x5315+0, #0x00
                                    137 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
      00C6C8 35 00 53 16      [ 1]  138 	mov	0x5316+0, #0x00
                                    139 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
      00C6CC 35 00 53 04      [ 1]  140 	mov	0x5304+0, #0x00
                                    141 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 81: }
      00C6D0 81               [ 4]  142 	ret
                                    143 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
                                    144 ;	-----------------------------------------
                                    145 ;	 function TIM2_TimeBaseInit
                                    146 ;	-----------------------------------------
      00C6D1                        147 _TIM2_TimeBaseInit:
                                    148 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
      00C6D1 AE 53 0E         [ 2]  149 	ldw	x, #0x530e
      00C6D4 7B 03            [ 1]  150 	ld	a, (0x03, sp)
      00C6D6 F7               [ 1]  151 	ld	(x), a
                                    152 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
      00C6D7 7B 04            [ 1]  153 	ld	a, (0x04, sp)
      00C6D9 C7 53 0F         [ 1]  154 	ld	0x530f, a
                                    155 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
      00C6DC 7B 05            [ 1]  156 	ld	a, (0x05, sp)
      00C6DE C7 53 10         [ 1]  157 	ld	0x5310, a
                                    158 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 97: }
      00C6E1 81               [ 4]  159 	ret
                                    160 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    161 ;	-----------------------------------------
                                    162 ;	 function TIM2_OC1Init
                                    163 ;	-----------------------------------------
      00C6E2                        164 _TIM2_OC1Init:
      00C6E2 89               [ 2]  165 	pushw	x
                                    166 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 114: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
      00C6E3 0D 05            [ 1]  167 	tnz	(0x05, sp)
      00C6E5 27 2D            [ 1]  168 	jreq	00104$
      00C6E7 7B 05            [ 1]  169 	ld	a, (0x05, sp)
      00C6E9 A1 10            [ 1]  170 	cp	a, #0x10
      00C6EB 27 27            [ 1]  171 	jreq	00104$
      00C6ED 7B 05            [ 1]  172 	ld	a, (0x05, sp)
      00C6EF A1 20            [ 1]  173 	cp	a, #0x20
      00C6F1 27 21            [ 1]  174 	jreq	00104$
      00C6F3 7B 05            [ 1]  175 	ld	a, (0x05, sp)
      00C6F5 A1 30            [ 1]  176 	cp	a, #0x30
      00C6F7 27 1B            [ 1]  177 	jreq	00104$
      00C6F9 7B 05            [ 1]  178 	ld	a, (0x05, sp)
      00C6FB A1 60            [ 1]  179 	cp	a, #0x60
      00C6FD 27 15            [ 1]  180 	jreq	00104$
      00C6FF 7B 05            [ 1]  181 	ld	a, (0x05, sp)
      00C701 A1 70            [ 1]  182 	cp	a, #0x70
      00C703 27 0F            [ 1]  183 	jreq	00104$
      00C705 4B 72            [ 1]  184 	push	#0x72
      00C707 5F               [ 1]  185 	clrw	x
      00C708 89               [ 2]  186 	pushw	x
      00C709 4B 00            [ 1]  187 	push	#0x00
      00C70B 4B 17            [ 1]  188 	push	#<(___str_0+0)
      00C70D 4B 86            [ 1]  189 	push	#((___str_0+0) >> 8)
      00C70F CD 00 00         [ 4]  190 	call	_assert_failed
      00C712 5B 06            [ 2]  191 	addw	sp, #6
      00C714                        192 00104$:
                                    193 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 115: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
      00C714 0D 06            [ 1]  194 	tnz	(0x06, sp)
      00C716 27 15            [ 1]  195 	jreq	00121$
      00C718 7B 06            [ 1]  196 	ld	a, (0x06, sp)
      00C71A A1 11            [ 1]  197 	cp	a, #0x11
      00C71C 27 0F            [ 1]  198 	jreq	00121$
      00C71E 4B 73            [ 1]  199 	push	#0x73
      00C720 5F               [ 1]  200 	clrw	x
      00C721 89               [ 2]  201 	pushw	x
      00C722 4B 00            [ 1]  202 	push	#0x00
      00C724 4B 17            [ 1]  203 	push	#<(___str_0+0)
      00C726 4B 86            [ 1]  204 	push	#((___str_0+0) >> 8)
      00C728 CD 00 00         [ 4]  205 	call	_assert_failed
      00C72B 5B 06            [ 2]  206 	addw	sp, #6
      00C72D                        207 00121$:
                                    208 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 116: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00C72D 0D 09            [ 1]  209 	tnz	(0x09, sp)
      00C72F 27 15            [ 1]  210 	jreq	00126$
      00C731 7B 09            [ 1]  211 	ld	a, (0x09, sp)
      00C733 A1 22            [ 1]  212 	cp	a, #0x22
      00C735 27 0F            [ 1]  213 	jreq	00126$
      00C737 4B 74            [ 1]  214 	push	#0x74
      00C739 5F               [ 1]  215 	clrw	x
      00C73A 89               [ 2]  216 	pushw	x
      00C73B 4B 00            [ 1]  217 	push	#0x00
      00C73D 4B 17            [ 1]  218 	push	#<(___str_0+0)
      00C73F 4B 86            [ 1]  219 	push	#((___str_0+0) >> 8)
      00C741 CD 00 00         [ 4]  220 	call	_assert_failed
      00C744 5B 06            [ 2]  221 	addw	sp, #6
      00C746                        222 00126$:
                                    223 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
      00C746 C6 53 0A         [ 1]  224 	ld	a, 0x530a
      00C749 A4 FC            [ 1]  225 	and	a, #0xfc
      00C74B C7 53 0A         [ 1]  226 	ld	0x530a, a
                                    227 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
      00C74E C6 53 0A         [ 1]  228 	ld	a, 0x530a
      00C751 6B 01            [ 1]  229 	ld	(0x01, sp), a
      00C753 7B 06            [ 1]  230 	ld	a, (0x06, sp)
      00C755 A4 01            [ 1]  231 	and	a, #0x01
      00C757 6B 02            [ 1]  232 	ld	(0x02, sp), a
                                    233 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
      00C759 7B 09            [ 1]  234 	ld	a, (0x09, sp)
      00C75B A4 02            [ 1]  235 	and	a, #0x02
      00C75D 1A 02            [ 1]  236 	or	a, (0x02, sp)
      00C75F 1A 01            [ 1]  237 	or	a, (0x01, sp)
      00C761 C7 53 0A         [ 1]  238 	ld	0x530a, a
                                    239 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
      00C764 C6 53 07         [ 1]  240 	ld	a, 0x5307
      00C767 A4 8F            [ 1]  241 	and	a, #0x8f
                                    242 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
      00C769 1A 05            [ 1]  243 	or	a, (0x05, sp)
      00C76B C7 53 07         [ 1]  244 	ld	0x5307, a
                                    245 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
      00C76E 7B 07            [ 1]  246 	ld	a, (0x07, sp)
      00C770 C7 53 11         [ 1]  247 	ld	0x5311, a
                                    248 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
      00C773 7B 08            [ 1]  249 	ld	a, (0x08, sp)
      00C775 C7 53 12         [ 1]  250 	ld	0x5312, a
                                    251 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 131: }
      00C778 85               [ 2]  252 	popw	x
      00C779 81               [ 4]  253 	ret
                                    254 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    255 ;	-----------------------------------------
                                    256 ;	 function TIM2_OC2Init
                                    257 ;	-----------------------------------------
      00C77A                        258 _TIM2_OC2Init:
      00C77A 89               [ 2]  259 	pushw	x
                                    260 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 148: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
      00C77B 0D 05            [ 1]  261 	tnz	(0x05, sp)
      00C77D 27 2D            [ 1]  262 	jreq	00104$
      00C77F 7B 05            [ 1]  263 	ld	a, (0x05, sp)
      00C781 A1 10            [ 1]  264 	cp	a, #0x10
      00C783 27 27            [ 1]  265 	jreq	00104$
      00C785 7B 05            [ 1]  266 	ld	a, (0x05, sp)
      00C787 A1 20            [ 1]  267 	cp	a, #0x20
      00C789 27 21            [ 1]  268 	jreq	00104$
      00C78B 7B 05            [ 1]  269 	ld	a, (0x05, sp)
      00C78D A1 30            [ 1]  270 	cp	a, #0x30
      00C78F 27 1B            [ 1]  271 	jreq	00104$
      00C791 7B 05            [ 1]  272 	ld	a, (0x05, sp)
      00C793 A1 60            [ 1]  273 	cp	a, #0x60
      00C795 27 15            [ 1]  274 	jreq	00104$
      00C797 7B 05            [ 1]  275 	ld	a, (0x05, sp)
      00C799 A1 70            [ 1]  276 	cp	a, #0x70
      00C79B 27 0F            [ 1]  277 	jreq	00104$
      00C79D 4B 94            [ 1]  278 	push	#0x94
      00C79F 5F               [ 1]  279 	clrw	x
      00C7A0 89               [ 2]  280 	pushw	x
      00C7A1 4B 00            [ 1]  281 	push	#0x00
      00C7A3 4B 17            [ 1]  282 	push	#<(___str_0+0)
      00C7A5 4B 86            [ 1]  283 	push	#((___str_0+0) >> 8)
      00C7A7 CD 00 00         [ 4]  284 	call	_assert_failed
      00C7AA 5B 06            [ 2]  285 	addw	sp, #6
      00C7AC                        286 00104$:
                                    287 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 149: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
      00C7AC 0D 06            [ 1]  288 	tnz	(0x06, sp)
      00C7AE 27 15            [ 1]  289 	jreq	00121$
      00C7B0 7B 06            [ 1]  290 	ld	a, (0x06, sp)
      00C7B2 A1 11            [ 1]  291 	cp	a, #0x11
      00C7B4 27 0F            [ 1]  292 	jreq	00121$
      00C7B6 4B 95            [ 1]  293 	push	#0x95
      00C7B8 5F               [ 1]  294 	clrw	x
      00C7B9 89               [ 2]  295 	pushw	x
      00C7BA 4B 00            [ 1]  296 	push	#0x00
      00C7BC 4B 17            [ 1]  297 	push	#<(___str_0+0)
      00C7BE 4B 86            [ 1]  298 	push	#((___str_0+0) >> 8)
      00C7C0 CD 00 00         [ 4]  299 	call	_assert_failed
      00C7C3 5B 06            [ 2]  300 	addw	sp, #6
      00C7C5                        301 00121$:
                                    302 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 150: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00C7C5 0D 09            [ 1]  303 	tnz	(0x09, sp)
      00C7C7 27 15            [ 1]  304 	jreq	00126$
      00C7C9 7B 09            [ 1]  305 	ld	a, (0x09, sp)
      00C7CB A1 22            [ 1]  306 	cp	a, #0x22
      00C7CD 27 0F            [ 1]  307 	jreq	00126$
      00C7CF 4B 96            [ 1]  308 	push	#0x96
      00C7D1 5F               [ 1]  309 	clrw	x
      00C7D2 89               [ 2]  310 	pushw	x
      00C7D3 4B 00            [ 1]  311 	push	#0x00
      00C7D5 4B 17            [ 1]  312 	push	#<(___str_0+0)
      00C7D7 4B 86            [ 1]  313 	push	#((___str_0+0) >> 8)
      00C7D9 CD 00 00         [ 4]  314 	call	_assert_failed
      00C7DC 5B 06            [ 2]  315 	addw	sp, #6
      00C7DE                        316 00126$:
                                    317 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
      00C7DE C6 53 0A         [ 1]  318 	ld	a, 0x530a
      00C7E1 A4 CF            [ 1]  319 	and	a, #0xcf
      00C7E3 C7 53 0A         [ 1]  320 	ld	0x530a, a
                                    321 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
      00C7E6 C6 53 0A         [ 1]  322 	ld	a, 0x530a
      00C7E9 6B 01            [ 1]  323 	ld	(0x01, sp), a
      00C7EB 7B 06            [ 1]  324 	ld	a, (0x06, sp)
      00C7ED A4 10            [ 1]  325 	and	a, #0x10
      00C7EF 6B 02            [ 1]  326 	ld	(0x02, sp), a
                                    327 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
      00C7F1 7B 09            [ 1]  328 	ld	a, (0x09, sp)
      00C7F3 A4 20            [ 1]  329 	and	a, #0x20
      00C7F5 1A 02            [ 1]  330 	or	a, (0x02, sp)
      00C7F7 1A 01            [ 1]  331 	or	a, (0x01, sp)
      00C7F9 C7 53 0A         [ 1]  332 	ld	0x530a, a
                                    333 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
      00C7FC C6 53 08         [ 1]  334 	ld	a, 0x5308
      00C7FF A4 8F            [ 1]  335 	and	a, #0x8f
                                    336 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
      00C801 1A 05            [ 1]  337 	or	a, (0x05, sp)
      00C803 C7 53 08         [ 1]  338 	ld	0x5308, a
                                    339 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
      00C806 7B 07            [ 1]  340 	ld	a, (0x07, sp)
      00C808 C7 53 13         [ 1]  341 	ld	0x5313, a
                                    342 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
      00C80B 7B 08            [ 1]  343 	ld	a, (0x08, sp)
      00C80D C7 53 14         [ 1]  344 	ld	0x5314, a
                                    345 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 168: }
      00C810 85               [ 2]  346 	popw	x
      00C811 81               [ 4]  347 	ret
                                    348 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    349 ;	-----------------------------------------
                                    350 ;	 function TIM2_OC3Init
                                    351 ;	-----------------------------------------
      00C812                        352 _TIM2_OC3Init:
      00C812 89               [ 2]  353 	pushw	x
                                    354 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 185: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
      00C813 0D 05            [ 1]  355 	tnz	(0x05, sp)
      00C815 27 2D            [ 1]  356 	jreq	00104$
      00C817 7B 05            [ 1]  357 	ld	a, (0x05, sp)
      00C819 A1 10            [ 1]  358 	cp	a, #0x10
      00C81B 27 27            [ 1]  359 	jreq	00104$
      00C81D 7B 05            [ 1]  360 	ld	a, (0x05, sp)
      00C81F A1 20            [ 1]  361 	cp	a, #0x20
      00C821 27 21            [ 1]  362 	jreq	00104$
      00C823 7B 05            [ 1]  363 	ld	a, (0x05, sp)
      00C825 A1 30            [ 1]  364 	cp	a, #0x30
      00C827 27 1B            [ 1]  365 	jreq	00104$
      00C829 7B 05            [ 1]  366 	ld	a, (0x05, sp)
      00C82B A1 60            [ 1]  367 	cp	a, #0x60
      00C82D 27 15            [ 1]  368 	jreq	00104$
      00C82F 7B 05            [ 1]  369 	ld	a, (0x05, sp)
      00C831 A1 70            [ 1]  370 	cp	a, #0x70
      00C833 27 0F            [ 1]  371 	jreq	00104$
      00C835 4B B9            [ 1]  372 	push	#0xb9
      00C837 5F               [ 1]  373 	clrw	x
      00C838 89               [ 2]  374 	pushw	x
      00C839 4B 00            [ 1]  375 	push	#0x00
      00C83B 4B 17            [ 1]  376 	push	#<(___str_0+0)
      00C83D 4B 86            [ 1]  377 	push	#((___str_0+0) >> 8)
      00C83F CD 00 00         [ 4]  378 	call	_assert_failed
      00C842 5B 06            [ 2]  379 	addw	sp, #6
      00C844                        380 00104$:
                                    381 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 186: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
      00C844 0D 06            [ 1]  382 	tnz	(0x06, sp)
      00C846 27 15            [ 1]  383 	jreq	00121$
      00C848 7B 06            [ 1]  384 	ld	a, (0x06, sp)
      00C84A A1 11            [ 1]  385 	cp	a, #0x11
      00C84C 27 0F            [ 1]  386 	jreq	00121$
      00C84E 4B BA            [ 1]  387 	push	#0xba
      00C850 5F               [ 1]  388 	clrw	x
      00C851 89               [ 2]  389 	pushw	x
      00C852 4B 00            [ 1]  390 	push	#0x00
      00C854 4B 17            [ 1]  391 	push	#<(___str_0+0)
      00C856 4B 86            [ 1]  392 	push	#((___str_0+0) >> 8)
      00C858 CD 00 00         [ 4]  393 	call	_assert_failed
      00C85B 5B 06            [ 2]  394 	addw	sp, #6
      00C85D                        395 00121$:
                                    396 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 187: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00C85D 0D 09            [ 1]  397 	tnz	(0x09, sp)
      00C85F 27 15            [ 1]  398 	jreq	00126$
      00C861 7B 09            [ 1]  399 	ld	a, (0x09, sp)
      00C863 A1 22            [ 1]  400 	cp	a, #0x22
      00C865 27 0F            [ 1]  401 	jreq	00126$
      00C867 4B BB            [ 1]  402 	push	#0xbb
      00C869 5F               [ 1]  403 	clrw	x
      00C86A 89               [ 2]  404 	pushw	x
      00C86B 4B 00            [ 1]  405 	push	#0x00
      00C86D 4B 17            [ 1]  406 	push	#<(___str_0+0)
      00C86F 4B 86            [ 1]  407 	push	#((___str_0+0) >> 8)
      00C871 CD 00 00         [ 4]  408 	call	_assert_failed
      00C874 5B 06            [ 2]  409 	addw	sp, #6
      00C876                        410 00126$:
                                    411 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
      00C876 C6 53 0B         [ 1]  412 	ld	a, 0x530b
      00C879 A4 FC            [ 1]  413 	and	a, #0xfc
      00C87B C7 53 0B         [ 1]  414 	ld	0x530b, a
                                    415 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
      00C87E C6 53 0B         [ 1]  416 	ld	a, 0x530b
      00C881 6B 01            [ 1]  417 	ld	(0x01, sp), a
      00C883 7B 06            [ 1]  418 	ld	a, (0x06, sp)
      00C885 A4 01            [ 1]  419 	and	a, #0x01
      00C887 6B 02            [ 1]  420 	ld	(0x02, sp), a
                                    421 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
      00C889 7B 09            [ 1]  422 	ld	a, (0x09, sp)
      00C88B A4 02            [ 1]  423 	and	a, #0x02
      00C88D 1A 02            [ 1]  424 	or	a, (0x02, sp)
      00C88F 1A 01            [ 1]  425 	or	a, (0x01, sp)
      00C891 C7 53 0B         [ 1]  426 	ld	0x530b, a
                                    427 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
      00C894 C6 53 09         [ 1]  428 	ld	a, 0x5309
      00C897 A4 8F            [ 1]  429 	and	a, #0x8f
                                    430 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
      00C899 1A 05            [ 1]  431 	or	a, (0x05, sp)
      00C89B C7 53 09         [ 1]  432 	ld	0x5309, a
                                    433 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
      00C89E 7B 07            [ 1]  434 	ld	a, (0x07, sp)
      00C8A0 C7 53 15         [ 1]  435 	ld	0x5315, a
                                    436 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
      00C8A3 7B 08            [ 1]  437 	ld	a, (0x08, sp)
      00C8A5 C7 53 16         [ 1]  438 	ld	0x5316, a
                                    439 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 201: }
      00C8A8 85               [ 2]  440 	popw	x
      00C8A9 81               [ 4]  441 	ret
                                    442 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
                                    443 ;	-----------------------------------------
                                    444 ;	 function TIM2_ICInit
                                    445 ;	-----------------------------------------
      00C8AA                        446 _TIM2_ICInit:
      00C8AA 88               [ 1]  447 	push	a
                                    448 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 219: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
      00C8AB 7B 04            [ 1]  449 	ld	a, (0x04, sp)
      00C8AD 4A               [ 1]  450 	dec	a
      00C8AE 26 05            [ 1]  451 	jrne	00219$
      00C8B0 A6 01            [ 1]  452 	ld	a, #0x01
      00C8B2 6B 01            [ 1]  453 	ld	(0x01, sp), a
      00C8B4 C5                     454 	.byte 0xc5
      00C8B5                        455 00219$:
      00C8B5 0F 01            [ 1]  456 	clr	(0x01, sp)
      00C8B7                        457 00220$:
      00C8B7 0D 04            [ 1]  458 	tnz	(0x04, sp)
      00C8B9 27 19            [ 1]  459 	jreq	00110$
      00C8BB 0D 01            [ 1]  460 	tnz	(0x01, sp)
      00C8BD 26 15            [ 1]  461 	jrne	00110$
      00C8BF 7B 04            [ 1]  462 	ld	a, (0x04, sp)
      00C8C1 A1 02            [ 1]  463 	cp	a, #0x02
      00C8C3 27 0F            [ 1]  464 	jreq	00110$
      00C8C5 4B DB            [ 1]  465 	push	#0xdb
      00C8C7 5F               [ 1]  466 	clrw	x
      00C8C8 89               [ 2]  467 	pushw	x
      00C8C9 4B 00            [ 1]  468 	push	#0x00
      00C8CB 4B 17            [ 1]  469 	push	#<(___str_0+0)
      00C8CD 4B 86            [ 1]  470 	push	#((___str_0+0) >> 8)
      00C8CF CD 00 00         [ 4]  471 	call	_assert_failed
      00C8D2 5B 06            [ 2]  472 	addw	sp, #6
      00C8D4                        473 00110$:
                                    474 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 220: assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
      00C8D4 0D 05            [ 1]  475 	tnz	(0x05, sp)
      00C8D6 27 15            [ 1]  476 	jreq	00118$
      00C8D8 7B 05            [ 1]  477 	ld	a, (0x05, sp)
      00C8DA A1 44            [ 1]  478 	cp	a, #0x44
      00C8DC 27 0F            [ 1]  479 	jreq	00118$
      00C8DE 4B DC            [ 1]  480 	push	#0xdc
      00C8E0 5F               [ 1]  481 	clrw	x
      00C8E1 89               [ 2]  482 	pushw	x
      00C8E2 4B 00            [ 1]  483 	push	#0x00
      00C8E4 4B 17            [ 1]  484 	push	#<(___str_0+0)
      00C8E6 4B 86            [ 1]  485 	push	#((___str_0+0) >> 8)
      00C8E8 CD 00 00         [ 4]  486 	call	_assert_failed
      00C8EB 5B 06            [ 2]  487 	addw	sp, #6
      00C8ED                        488 00118$:
                                    489 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 221: assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
      00C8ED 7B 06            [ 1]  490 	ld	a, (0x06, sp)
      00C8EF 4A               [ 1]  491 	dec	a
      00C8F0 27 1B            [ 1]  492 	jreq	00123$
      00C8F2 7B 06            [ 1]  493 	ld	a, (0x06, sp)
      00C8F4 A1 02            [ 1]  494 	cp	a, #0x02
      00C8F6 27 15            [ 1]  495 	jreq	00123$
      00C8F8 7B 06            [ 1]  496 	ld	a, (0x06, sp)
      00C8FA A1 03            [ 1]  497 	cp	a, #0x03
      00C8FC 27 0F            [ 1]  498 	jreq	00123$
      00C8FE 4B DD            [ 1]  499 	push	#0xdd
      00C900 5F               [ 1]  500 	clrw	x
      00C901 89               [ 2]  501 	pushw	x
      00C902 4B 00            [ 1]  502 	push	#0x00
      00C904 4B 17            [ 1]  503 	push	#<(___str_0+0)
      00C906 4B 86            [ 1]  504 	push	#((___str_0+0) >> 8)
      00C908 CD 00 00         [ 4]  505 	call	_assert_failed
      00C90B 5B 06            [ 2]  506 	addw	sp, #6
      00C90D                        507 00123$:
                                    508 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 222: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
      00C90D 0D 07            [ 1]  509 	tnz	(0x07, sp)
      00C90F 27 21            [ 1]  510 	jreq	00131$
      00C911 7B 07            [ 1]  511 	ld	a, (0x07, sp)
      00C913 A1 04            [ 1]  512 	cp	a, #0x04
      00C915 27 1B            [ 1]  513 	jreq	00131$
      00C917 7B 07            [ 1]  514 	ld	a, (0x07, sp)
      00C919 A1 08            [ 1]  515 	cp	a, #0x08
      00C91B 27 15            [ 1]  516 	jreq	00131$
      00C91D 7B 07            [ 1]  517 	ld	a, (0x07, sp)
      00C91F A1 0C            [ 1]  518 	cp	a, #0x0c
      00C921 27 0F            [ 1]  519 	jreq	00131$
      00C923 4B DE            [ 1]  520 	push	#0xde
      00C925 5F               [ 1]  521 	clrw	x
      00C926 89               [ 2]  522 	pushw	x
      00C927 4B 00            [ 1]  523 	push	#0x00
      00C929 4B 17            [ 1]  524 	push	#<(___str_0+0)
      00C92B 4B 86            [ 1]  525 	push	#((___str_0+0) >> 8)
      00C92D CD 00 00         [ 4]  526 	call	_assert_failed
      00C930 5B 06            [ 2]  527 	addw	sp, #6
      00C932                        528 00131$:
                                    529 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 223: assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
      00C932 7B 08            [ 1]  530 	ld	a, (0x08, sp)
      00C934 A1 0F            [ 1]  531 	cp	a, #0x0f
      00C936 23 0F            [ 2]  532 	jrule	00142$
      00C938 4B DF            [ 1]  533 	push	#0xdf
      00C93A 5F               [ 1]  534 	clrw	x
      00C93B 89               [ 2]  535 	pushw	x
      00C93C 4B 00            [ 1]  536 	push	#0x00
      00C93E 4B 17            [ 1]  537 	push	#<(___str_0+0)
      00C940 4B 86            [ 1]  538 	push	#((___str_0+0) >> 8)
      00C942 CD 00 00         [ 4]  539 	call	_assert_failed
      00C945 5B 06            [ 2]  540 	addw	sp, #6
      00C947                        541 00142$:
                                    542 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
      00C947 0D 04            [ 1]  543 	tnz	(0x04, sp)
      00C949 26 17            [ 1]  544 	jrne	00105$
                                    545 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
      00C94B 7B 08            [ 1]  546 	ld	a, (0x08, sp)
      00C94D 88               [ 1]  547 	push	a
      00C94E 7B 07            [ 1]  548 	ld	a, (0x07, sp)
      00C950 88               [ 1]  549 	push	a
      00C951 7B 07            [ 1]  550 	ld	a, (0x07, sp)
      00C953 88               [ 1]  551 	push	a
      00C954 CD D1 14         [ 4]  552 	call	_TI1_Config
      00C957 5B 03            [ 2]  553 	addw	sp, #3
                                    554 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00C959 7B 07            [ 1]  555 	ld	a, (0x07, sp)
      00C95B 88               [ 1]  556 	push	a
      00C95C CD CF 3B         [ 4]  557 	call	_TIM2_SetIC1Prescaler
      00C95F 84               [ 1]  558 	pop	a
      00C960 20 30            [ 2]  559 	jra	00107$
      00C962                        560 00105$:
                                    561 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00C962 7B 01            [ 1]  562 	ld	a, (0x01, sp)
      00C964 27 17            [ 1]  563 	jreq	00102$
                                    564 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
      00C966 7B 08            [ 1]  565 	ld	a, (0x08, sp)
      00C968 88               [ 1]  566 	push	a
      00C969 7B 07            [ 1]  567 	ld	a, (0x07, sp)
      00C96B 88               [ 1]  568 	push	a
      00C96C 7B 07            [ 1]  569 	ld	a, (0x07, sp)
      00C96E 88               [ 1]  570 	push	a
      00C96F CD D1 45         [ 4]  571 	call	_TI2_Config
      00C972 5B 03            [ 2]  572 	addw	sp, #3
                                    573 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00C974 7B 07            [ 1]  574 	ld	a, (0x07, sp)
      00C976 88               [ 1]  575 	push	a
      00C977 CD CF 6B         [ 4]  576 	call	_TIM2_SetIC2Prescaler
      00C97A 84               [ 1]  577 	pop	a
      00C97B 20 15            [ 2]  578 	jra	00107$
      00C97D                        579 00102$:
                                    580 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
      00C97D 7B 08            [ 1]  581 	ld	a, (0x08, sp)
      00C97F 88               [ 1]  582 	push	a
      00C980 7B 07            [ 1]  583 	ld	a, (0x07, sp)
      00C982 88               [ 1]  584 	push	a
      00C983 7B 07            [ 1]  585 	ld	a, (0x07, sp)
      00C985 88               [ 1]  586 	push	a
      00C986 CD D1 76         [ 4]  587 	call	_TI3_Config
      00C989 5B 03            [ 2]  588 	addw	sp, #3
                                    589 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
      00C98B 7B 07            [ 1]  590 	ld	a, (0x07, sp)
      00C98D 88               [ 1]  591 	push	a
      00C98E CD CF 9B         [ 4]  592 	call	_TIM2_SetIC3Prescaler
      00C991 84               [ 1]  593 	pop	a
      00C992                        594 00107$:
                                    595 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 255: }
      00C992 84               [ 1]  596 	pop	a
      00C993 81               [ 4]  597 	ret
                                    598 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
                                    599 ;	-----------------------------------------
                                    600 ;	 function TIM2_PWMIConfig
                                    601 ;	-----------------------------------------
      00C994                        602 _TIM2_PWMIConfig:
      00C994 89               [ 2]  603 	pushw	x
                                    604 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 276: assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
      00C995 0D 05            [ 1]  605 	tnz	(0x05, sp)
      00C997 27 14            [ 1]  606 	jreq	00113$
      00C999 7B 05            [ 1]  607 	ld	a, (0x05, sp)
      00C99B 4A               [ 1]  608 	dec	a
      00C99C 27 0F            [ 1]  609 	jreq	00113$
      00C99E 4B 14            [ 1]  610 	push	#0x14
      00C9A0 4B 01            [ 1]  611 	push	#0x01
      00C9A2 5F               [ 1]  612 	clrw	x
      00C9A3 89               [ 2]  613 	pushw	x
      00C9A4 4B 17            [ 1]  614 	push	#<(___str_0+0)
      00C9A6 4B 86            [ 1]  615 	push	#((___str_0+0) >> 8)
      00C9A8 CD 00 00         [ 4]  616 	call	_assert_failed
      00C9AB 5B 06            [ 2]  617 	addw	sp, #6
      00C9AD                        618 00113$:
                                    619 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 277: assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
      00C9AD 7B 06            [ 1]  620 	ld	a, (0x06, sp)
      00C9AF A0 44            [ 1]  621 	sub	a, #0x44
      00C9B1 26 04            [ 1]  622 	jrne	00216$
      00C9B3 4C               [ 1]  623 	inc	a
      00C9B4 6B 01            [ 1]  624 	ld	(0x01, sp), a
      00C9B6 C5                     625 	.byte 0xc5
      00C9B7                        626 00216$:
      00C9B7 0F 01            [ 1]  627 	clr	(0x01, sp)
      00C9B9                        628 00217$:
      00C9B9 0D 06            [ 1]  629 	tnz	(0x06, sp)
      00C9BB 27 13            [ 1]  630 	jreq	00118$
      00C9BD 0D 01            [ 1]  631 	tnz	(0x01, sp)
      00C9BF 26 0F            [ 1]  632 	jrne	00118$
      00C9C1 4B 15            [ 1]  633 	push	#0x15
      00C9C3 4B 01            [ 1]  634 	push	#0x01
      00C9C5 5F               [ 1]  635 	clrw	x
      00C9C6 89               [ 2]  636 	pushw	x
      00C9C7 4B 17            [ 1]  637 	push	#<(___str_0+0)
      00C9C9 4B 86            [ 1]  638 	push	#((___str_0+0) >> 8)
      00C9CB CD 00 00         [ 4]  639 	call	_assert_failed
      00C9CE 5B 06            [ 2]  640 	addw	sp, #6
      00C9D0                        641 00118$:
                                    642 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 278: assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
      00C9D0 7B 07            [ 1]  643 	ld	a, (0x07, sp)
      00C9D2 4A               [ 1]  644 	dec	a
      00C9D3 26 05            [ 1]  645 	jrne	00221$
      00C9D5 A6 01            [ 1]  646 	ld	a, #0x01
      00C9D7 6B 02            [ 1]  647 	ld	(0x02, sp), a
      00C9D9 C5                     648 	.byte 0xc5
      00C9DA                        649 00221$:
      00C9DA 0F 02            [ 1]  650 	clr	(0x02, sp)
      00C9DC                        651 00222$:
      00C9DC 0D 02            [ 1]  652 	tnz	(0x02, sp)
      00C9DE 26 1B            [ 1]  653 	jrne	00123$
      00C9E0 7B 07            [ 1]  654 	ld	a, (0x07, sp)
      00C9E2 A1 02            [ 1]  655 	cp	a, #0x02
      00C9E4 27 15            [ 1]  656 	jreq	00123$
      00C9E6 7B 07            [ 1]  657 	ld	a, (0x07, sp)
      00C9E8 A1 03            [ 1]  658 	cp	a, #0x03
      00C9EA 27 0F            [ 1]  659 	jreq	00123$
      00C9EC 4B 16            [ 1]  660 	push	#0x16
      00C9EE 4B 01            [ 1]  661 	push	#0x01
      00C9F0 5F               [ 1]  662 	clrw	x
      00C9F1 89               [ 2]  663 	pushw	x
      00C9F2 4B 17            [ 1]  664 	push	#<(___str_0+0)
      00C9F4 4B 86            [ 1]  665 	push	#((___str_0+0) >> 8)
      00C9F6 CD 00 00         [ 4]  666 	call	_assert_failed
      00C9F9 5B 06            [ 2]  667 	addw	sp, #6
      00C9FB                        668 00123$:
                                    669 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 279: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
      00C9FB 0D 08            [ 1]  670 	tnz	(0x08, sp)
      00C9FD 27 21            [ 1]  671 	jreq	00131$
      00C9FF 7B 08            [ 1]  672 	ld	a, (0x08, sp)
      00CA01 A1 04            [ 1]  673 	cp	a, #0x04
      00CA03 27 1B            [ 1]  674 	jreq	00131$
      00CA05 7B 08            [ 1]  675 	ld	a, (0x08, sp)
      00CA07 A1 08            [ 1]  676 	cp	a, #0x08
      00CA09 27 15            [ 1]  677 	jreq	00131$
      00CA0B 7B 08            [ 1]  678 	ld	a, (0x08, sp)
      00CA0D A1 0C            [ 1]  679 	cp	a, #0x0c
      00CA0F 27 0F            [ 1]  680 	jreq	00131$
      00CA11 4B 17            [ 1]  681 	push	#0x17
      00CA13 4B 01            [ 1]  682 	push	#0x01
      00CA15 5F               [ 1]  683 	clrw	x
      00CA16 89               [ 2]  684 	pushw	x
      00CA17 4B 17            [ 1]  685 	push	#<(___str_0+0)
      00CA19 4B 86            [ 1]  686 	push	#((___str_0+0) >> 8)
      00CA1B CD 00 00         [ 4]  687 	call	_assert_failed
      00CA1E 5B 06            [ 2]  688 	addw	sp, #6
      00CA20                        689 00131$:
                                    690 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
      00CA20 0D 01            [ 1]  691 	tnz	(0x01, sp)
      00CA22 26 05            [ 1]  692 	jrne	00102$
                                    693 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
      00CA24 A6 44            [ 1]  694 	ld	a, #0x44
      00CA26 6B 01            [ 1]  695 	ld	(0x01, sp), a
                                    696 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
      00CA28 C5                     697 	.byte 0xc5
      00CA29                        698 00102$:
      00CA29 0F 01            [ 1]  699 	clr	(0x01, sp)
      00CA2B                        700 00103$:
                                    701 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
      00CA2B 7B 02            [ 1]  702 	ld	a, (0x02, sp)
      00CA2D 27 06            [ 1]  703 	jreq	00105$
                                    704 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
      00CA2F A6 02            [ 1]  705 	ld	a, #0x02
      00CA31 6B 02            [ 1]  706 	ld	(0x02, sp), a
      00CA33 20 04            [ 2]  707 	jra	00106$
      00CA35                        708 00105$:
                                    709 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
      00CA35 A6 01            [ 1]  710 	ld	a, #0x01
      00CA37 6B 02            [ 1]  711 	ld	(0x02, sp), a
      00CA39                        712 00106$:
                                    713 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
      00CA39 0D 05            [ 1]  714 	tnz	(0x05, sp)
      00CA3B 26 2C            [ 1]  715 	jrne	00108$
                                    716 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      00CA3D 7B 09            [ 1]  717 	ld	a, (0x09, sp)
      00CA3F 88               [ 1]  718 	push	a
      00CA40 7B 08            [ 1]  719 	ld	a, (0x08, sp)
      00CA42 88               [ 1]  720 	push	a
      00CA43 7B 08            [ 1]  721 	ld	a, (0x08, sp)
      00CA45 88               [ 1]  722 	push	a
      00CA46 CD D1 14         [ 4]  723 	call	_TI1_Config
      00CA49 5B 03            [ 2]  724 	addw	sp, #3
                                    725 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00CA4B 7B 08            [ 1]  726 	ld	a, (0x08, sp)
      00CA4D 88               [ 1]  727 	push	a
      00CA4E CD CF 3B         [ 4]  728 	call	_TIM2_SetIC1Prescaler
      00CA51 84               [ 1]  729 	pop	a
                                    730 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
      00CA52 7B 09            [ 1]  731 	ld	a, (0x09, sp)
      00CA54 88               [ 1]  732 	push	a
      00CA55 7B 03            [ 1]  733 	ld	a, (0x03, sp)
      00CA57 88               [ 1]  734 	push	a
      00CA58 7B 03            [ 1]  735 	ld	a, (0x03, sp)
      00CA5A 88               [ 1]  736 	push	a
      00CA5B CD D1 45         [ 4]  737 	call	_TI2_Config
      00CA5E 5B 03            [ 2]  738 	addw	sp, #3
                                    739 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00CA60 7B 08            [ 1]  740 	ld	a, (0x08, sp)
      00CA62 88               [ 1]  741 	push	a
      00CA63 CD CF 6B         [ 4]  742 	call	_TIM2_SetIC2Prescaler
      00CA66 84               [ 1]  743 	pop	a
      00CA67 20 2A            [ 2]  744 	jra	00110$
      00CA69                        745 00108$:
                                    746 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      00CA69 7B 09            [ 1]  747 	ld	a, (0x09, sp)
      00CA6B 88               [ 1]  748 	push	a
      00CA6C 7B 08            [ 1]  749 	ld	a, (0x08, sp)
      00CA6E 88               [ 1]  750 	push	a
      00CA6F 7B 08            [ 1]  751 	ld	a, (0x08, sp)
      00CA71 88               [ 1]  752 	push	a
      00CA72 CD D1 45         [ 4]  753 	call	_TI2_Config
      00CA75 5B 03            [ 2]  754 	addw	sp, #3
                                    755 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00CA77 7B 08            [ 1]  756 	ld	a, (0x08, sp)
      00CA79 88               [ 1]  757 	push	a
      00CA7A CD CF 6B         [ 4]  758 	call	_TIM2_SetIC2Prescaler
      00CA7D 84               [ 1]  759 	pop	a
                                    760 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
      00CA7E 7B 09            [ 1]  761 	ld	a, (0x09, sp)
      00CA80 88               [ 1]  762 	push	a
      00CA81 7B 03            [ 1]  763 	ld	a, (0x03, sp)
      00CA83 88               [ 1]  764 	push	a
      00CA84 7B 03            [ 1]  765 	ld	a, (0x03, sp)
      00CA86 88               [ 1]  766 	push	a
      00CA87 CD D1 14         [ 4]  767 	call	_TI1_Config
      00CA8A 5B 03            [ 2]  768 	addw	sp, #3
                                    769 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00CA8C 7B 08            [ 1]  770 	ld	a, (0x08, sp)
      00CA8E 88               [ 1]  771 	push	a
      00CA8F CD CF 3B         [ 4]  772 	call	_TIM2_SetIC1Prescaler
      00CA92 84               [ 1]  773 	pop	a
      00CA93                        774 00110$:
                                    775 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 331: }
      00CA93 85               [ 2]  776 	popw	x
      00CA94 81               [ 4]  777 	ret
                                    778 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
                                    779 ;	-----------------------------------------
                                    780 ;	 function TIM2_Cmd
                                    781 ;	-----------------------------------------
      00CA95                        782 _TIM2_Cmd:
                                    783 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 342: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00CA95 0D 03            [ 1]  784 	tnz	(0x03, sp)
      00CA97 27 14            [ 1]  785 	jreq	00107$
      00CA99 7B 03            [ 1]  786 	ld	a, (0x03, sp)
      00CA9B 4A               [ 1]  787 	dec	a
      00CA9C 27 0F            [ 1]  788 	jreq	00107$
      00CA9E 4B 56            [ 1]  789 	push	#0x56
      00CAA0 4B 01            [ 1]  790 	push	#0x01
      00CAA2 5F               [ 1]  791 	clrw	x
      00CAA3 89               [ 2]  792 	pushw	x
      00CAA4 4B 17            [ 1]  793 	push	#<(___str_0+0)
      00CAA6 4B 86            [ 1]  794 	push	#((___str_0+0) >> 8)
      00CAA8 CD 00 00         [ 4]  795 	call	_assert_failed
      00CAAB 5B 06            [ 2]  796 	addw	sp, #6
      00CAAD                        797 00107$:
                                    798 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
      00CAAD C6 53 00         [ 1]  799 	ld	a, 0x5300
                                    800 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 345: if (NewState != DISABLE)
      00CAB0 0D 03            [ 1]  801 	tnz	(0x03, sp)
      00CAB2 27 06            [ 1]  802 	jreq	00102$
                                    803 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
      00CAB4 AA 01            [ 1]  804 	or	a, #0x01
      00CAB6 C7 53 00         [ 1]  805 	ld	0x5300, a
      00CAB9 81               [ 4]  806 	ret
      00CABA                        807 00102$:
                                    808 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
      00CABA A4 FE            [ 1]  809 	and	a, #0xfe
      00CABC C7 53 00         [ 1]  810 	ld	0x5300, a
                                    811 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 353: }
      00CABF 81               [ 4]  812 	ret
                                    813 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
                                    814 ;	-----------------------------------------
                                    815 ;	 function TIM2_ITConfig
                                    816 ;	-----------------------------------------
      00CAC0                        817 _TIM2_ITConfig:
      00CAC0 88               [ 1]  818 	push	a
                                    819 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 371: assert_param(IS_TIM2_IT_OK(TIM2_IT));
      00CAC1 0D 04            [ 1]  820 	tnz	(0x04, sp)
      00CAC3 27 06            [ 1]  821 	jreq	00106$
      00CAC5 7B 04            [ 1]  822 	ld	a, (0x04, sp)
      00CAC7 A1 0F            [ 1]  823 	cp	a, #0x0f
      00CAC9 23 0F            [ 2]  824 	jrule	00107$
      00CACB                        825 00106$:
      00CACB 4B 73            [ 1]  826 	push	#0x73
      00CACD 4B 01            [ 1]  827 	push	#0x01
      00CACF 5F               [ 1]  828 	clrw	x
      00CAD0 89               [ 2]  829 	pushw	x
      00CAD1 4B 17            [ 1]  830 	push	#<(___str_0+0)
      00CAD3 4B 86            [ 1]  831 	push	#((___str_0+0) >> 8)
      00CAD5 CD 00 00         [ 4]  832 	call	_assert_failed
      00CAD8 5B 06            [ 2]  833 	addw	sp, #6
      00CADA                        834 00107$:
                                    835 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 372: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00CADA 0D 05            [ 1]  836 	tnz	(0x05, sp)
      00CADC 27 14            [ 1]  837 	jreq	00112$
      00CADE 7B 05            [ 1]  838 	ld	a, (0x05, sp)
      00CAE0 4A               [ 1]  839 	dec	a
      00CAE1 27 0F            [ 1]  840 	jreq	00112$
      00CAE3 4B 74            [ 1]  841 	push	#0x74
      00CAE5 4B 01            [ 1]  842 	push	#0x01
      00CAE7 5F               [ 1]  843 	clrw	x
      00CAE8 89               [ 2]  844 	pushw	x
      00CAE9 4B 17            [ 1]  845 	push	#<(___str_0+0)
      00CAEB 4B 86            [ 1]  846 	push	#((___str_0+0) >> 8)
      00CAED CD 00 00         [ 4]  847 	call	_assert_failed
      00CAF0 5B 06            [ 2]  848 	addw	sp, #6
      00CAF2                        849 00112$:
                                    850 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
      00CAF2 C6 53 03         [ 1]  851 	ld	a, 0x5303
                                    852 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 374: if (NewState != DISABLE)
      00CAF5 0D 05            [ 1]  853 	tnz	(0x05, sp)
      00CAF7 27 07            [ 1]  854 	jreq	00102$
                                    855 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
      00CAF9 1A 04            [ 1]  856 	or	a, (0x04, sp)
      00CAFB C7 53 03         [ 1]  857 	ld	0x5303, a
      00CAFE 20 0C            [ 2]  858 	jra	00104$
      00CB00                        859 00102$:
                                    860 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
      00CB00 88               [ 1]  861 	push	a
      00CB01 7B 05            [ 1]  862 	ld	a, (0x05, sp)
      00CB03 43               [ 1]  863 	cpl	a
      00CB04 6B 02            [ 1]  864 	ld	(0x02, sp), a
      00CB06 84               [ 1]  865 	pop	a
      00CB07 14 01            [ 1]  866 	and	a, (0x01, sp)
      00CB09 C7 53 03         [ 1]  867 	ld	0x5303, a
      00CB0C                        868 00104$:
                                    869 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 384: }
      00CB0C 84               [ 1]  870 	pop	a
      00CB0D 81               [ 4]  871 	ret
                                    872 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
                                    873 ;	-----------------------------------------
                                    874 ;	 function TIM2_UpdateDisableConfig
                                    875 ;	-----------------------------------------
      00CB0E                        876 _TIM2_UpdateDisableConfig:
                                    877 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 395: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00CB0E 0D 03            [ 1]  878 	tnz	(0x03, sp)
      00CB10 27 14            [ 1]  879 	jreq	00107$
      00CB12 7B 03            [ 1]  880 	ld	a, (0x03, sp)
      00CB14 4A               [ 1]  881 	dec	a
      00CB15 27 0F            [ 1]  882 	jreq	00107$
      00CB17 4B 8B            [ 1]  883 	push	#0x8b
      00CB19 4B 01            [ 1]  884 	push	#0x01
      00CB1B 5F               [ 1]  885 	clrw	x
      00CB1C 89               [ 2]  886 	pushw	x
      00CB1D 4B 17            [ 1]  887 	push	#<(___str_0+0)
      00CB1F 4B 86            [ 1]  888 	push	#((___str_0+0) >> 8)
      00CB21 CD 00 00         [ 4]  889 	call	_assert_failed
      00CB24 5B 06            [ 2]  890 	addw	sp, #6
      00CB26                        891 00107$:
                                    892 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
      00CB26 C6 53 00         [ 1]  893 	ld	a, 0x5300
                                    894 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 398: if (NewState != DISABLE)
      00CB29 0D 03            [ 1]  895 	tnz	(0x03, sp)
      00CB2B 27 06            [ 1]  896 	jreq	00102$
                                    897 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
      00CB2D AA 02            [ 1]  898 	or	a, #0x02
      00CB2F C7 53 00         [ 1]  899 	ld	0x5300, a
      00CB32 81               [ 4]  900 	ret
      00CB33                        901 00102$:
                                    902 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
      00CB33 A4 FD            [ 1]  903 	and	a, #0xfd
      00CB35 C7 53 00         [ 1]  904 	ld	0x5300, a
                                    905 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 406: }
      00CB38 81               [ 4]  906 	ret
                                    907 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
                                    908 ;	-----------------------------------------
                                    909 ;	 function TIM2_UpdateRequestConfig
                                    910 ;	-----------------------------------------
      00CB39                        911 _TIM2_UpdateRequestConfig:
                                    912 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 419: assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
      00CB39 0D 03            [ 1]  913 	tnz	(0x03, sp)
      00CB3B 27 14            [ 1]  914 	jreq	00107$
      00CB3D 7B 03            [ 1]  915 	ld	a, (0x03, sp)
      00CB3F 4A               [ 1]  916 	dec	a
      00CB40 27 0F            [ 1]  917 	jreq	00107$
      00CB42 4B A3            [ 1]  918 	push	#0xa3
      00CB44 4B 01            [ 1]  919 	push	#0x01
      00CB46 5F               [ 1]  920 	clrw	x
      00CB47 89               [ 2]  921 	pushw	x
      00CB48 4B 17            [ 1]  922 	push	#<(___str_0+0)
      00CB4A 4B 86            [ 1]  923 	push	#((___str_0+0) >> 8)
      00CB4C CD 00 00         [ 4]  924 	call	_assert_failed
      00CB4F 5B 06            [ 2]  925 	addw	sp, #6
      00CB51                        926 00107$:
                                    927 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
      00CB51 C6 53 00         [ 1]  928 	ld	a, 0x5300
                                    929 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
      00CB54 0D 03            [ 1]  930 	tnz	(0x03, sp)
      00CB56 27 06            [ 1]  931 	jreq	00102$
                                    932 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
      00CB58 AA 04            [ 1]  933 	or	a, #0x04
      00CB5A C7 53 00         [ 1]  934 	ld	0x5300, a
      00CB5D 81               [ 4]  935 	ret
      00CB5E                        936 00102$:
                                    937 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
      00CB5E A4 FB            [ 1]  938 	and	a, #0xfb
      00CB60 C7 53 00         [ 1]  939 	ld	0x5300, a
                                    940 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 430: }
      00CB63 81               [ 4]  941 	ret
                                    942 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
                                    943 ;	-----------------------------------------
                                    944 ;	 function TIM2_SelectOnePulseMode
                                    945 ;	-----------------------------------------
      00CB64                        946 _TIM2_SelectOnePulseMode:
                                    947 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 443: assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
      00CB64 7B 03            [ 1]  948 	ld	a, (0x03, sp)
      00CB66 4A               [ 1]  949 	dec	a
      00CB67 27 13            [ 1]  950 	jreq	00107$
      00CB69 0D 03            [ 1]  951 	tnz	(0x03, sp)
      00CB6B 27 0F            [ 1]  952 	jreq	00107$
      00CB6D 4B BB            [ 1]  953 	push	#0xbb
      00CB6F 4B 01            [ 1]  954 	push	#0x01
      00CB71 5F               [ 1]  955 	clrw	x
      00CB72 89               [ 2]  956 	pushw	x
      00CB73 4B 17            [ 1]  957 	push	#<(___str_0+0)
      00CB75 4B 86            [ 1]  958 	push	#((___str_0+0) >> 8)
      00CB77 CD 00 00         [ 4]  959 	call	_assert_failed
      00CB7A 5B 06            [ 2]  960 	addw	sp, #6
      00CB7C                        961 00107$:
                                    962 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
      00CB7C C6 53 00         [ 1]  963 	ld	a, 0x5300
                                    964 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
      00CB7F 0D 03            [ 1]  965 	tnz	(0x03, sp)
      00CB81 27 06            [ 1]  966 	jreq	00102$
                                    967 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
      00CB83 AA 08            [ 1]  968 	or	a, #0x08
      00CB85 C7 53 00         [ 1]  969 	ld	0x5300, a
      00CB88 81               [ 4]  970 	ret
      00CB89                        971 00102$:
                                    972 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
      00CB89 A4 F7            [ 1]  973 	and	a, #0xf7
      00CB8B C7 53 00         [ 1]  974 	ld	0x5300, a
                                    975 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 454: }
      00CB8E 81               [ 4]  976 	ret
                                    977 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
                                    978 ;	-----------------------------------------
                                    979 ;	 function TIM2_PrescalerConfig
                                    980 ;	-----------------------------------------
      00CB8F                        981 _TIM2_PrescalerConfig:
                                    982 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 488: assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
      00CB8F 0D 04            [ 1]  983 	tnz	(0x04, sp)
      00CB91 27 14            [ 1]  984 	jreq	00104$
      00CB93 7B 04            [ 1]  985 	ld	a, (0x04, sp)
      00CB95 4A               [ 1]  986 	dec	a
      00CB96 27 0F            [ 1]  987 	jreq	00104$
      00CB98 4B E8            [ 1]  988 	push	#0xe8
      00CB9A 4B 01            [ 1]  989 	push	#0x01
      00CB9C 5F               [ 1]  990 	clrw	x
      00CB9D 89               [ 2]  991 	pushw	x
      00CB9E 4B 17            [ 1]  992 	push	#<(___str_0+0)
      00CBA0 4B 86            [ 1]  993 	push	#((___str_0+0) >> 8)
      00CBA2 CD 00 00         [ 4]  994 	call	_assert_failed
      00CBA5 5B 06            [ 2]  995 	addw	sp, #6
      00CBA7                        996 00104$:
                                    997 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 489: assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
      00CBA7 0D 03            [ 1]  998 	tnz	(0x03, sp)
      00CBA9 27 68            [ 1]  999 	jreq	00109$
      00CBAB 7B 03            [ 1] 1000 	ld	a, (0x03, sp)
      00CBAD 4A               [ 1] 1001 	dec	a
      00CBAE 27 63            [ 1] 1002 	jreq	00109$
      00CBB0 7B 03            [ 1] 1003 	ld	a, (0x03, sp)
      00CBB2 A1 02            [ 1] 1004 	cp	a, #0x02
      00CBB4 27 5D            [ 1] 1005 	jreq	00109$
      00CBB6 7B 03            [ 1] 1006 	ld	a, (0x03, sp)
      00CBB8 A1 03            [ 1] 1007 	cp	a, #0x03
      00CBBA 27 57            [ 1] 1008 	jreq	00109$
      00CBBC 7B 03            [ 1] 1009 	ld	a, (0x03, sp)
      00CBBE A1 04            [ 1] 1010 	cp	a, #0x04
      00CBC0 27 51            [ 1] 1011 	jreq	00109$
      00CBC2 7B 03            [ 1] 1012 	ld	a, (0x03, sp)
      00CBC4 A1 05            [ 1] 1013 	cp	a, #0x05
      00CBC6 27 4B            [ 1] 1014 	jreq	00109$
      00CBC8 7B 03            [ 1] 1015 	ld	a, (0x03, sp)
      00CBCA A1 06            [ 1] 1016 	cp	a, #0x06
      00CBCC 27 45            [ 1] 1017 	jreq	00109$
      00CBCE 7B 03            [ 1] 1018 	ld	a, (0x03, sp)
      00CBD0 A1 07            [ 1] 1019 	cp	a, #0x07
      00CBD2 27 3F            [ 1] 1020 	jreq	00109$
      00CBD4 7B 03            [ 1] 1021 	ld	a, (0x03, sp)
      00CBD6 A1 08            [ 1] 1022 	cp	a, #0x08
      00CBD8 27 39            [ 1] 1023 	jreq	00109$
      00CBDA 7B 03            [ 1] 1024 	ld	a, (0x03, sp)
      00CBDC A1 09            [ 1] 1025 	cp	a, #0x09
      00CBDE 27 33            [ 1] 1026 	jreq	00109$
      00CBE0 7B 03            [ 1] 1027 	ld	a, (0x03, sp)
      00CBE2 A1 0A            [ 1] 1028 	cp	a, #0x0a
      00CBE4 27 2D            [ 1] 1029 	jreq	00109$
      00CBE6 7B 03            [ 1] 1030 	ld	a, (0x03, sp)
      00CBE8 A1 0B            [ 1] 1031 	cp	a, #0x0b
      00CBEA 27 27            [ 1] 1032 	jreq	00109$
      00CBEC 7B 03            [ 1] 1033 	ld	a, (0x03, sp)
      00CBEE A1 0C            [ 1] 1034 	cp	a, #0x0c
      00CBF0 27 21            [ 1] 1035 	jreq	00109$
      00CBF2 7B 03            [ 1] 1036 	ld	a, (0x03, sp)
      00CBF4 A1 0D            [ 1] 1037 	cp	a, #0x0d
      00CBF6 27 1B            [ 1] 1038 	jreq	00109$
      00CBF8 7B 03            [ 1] 1039 	ld	a, (0x03, sp)
      00CBFA A1 0E            [ 1] 1040 	cp	a, #0x0e
      00CBFC 27 15            [ 1] 1041 	jreq	00109$
      00CBFE 7B 03            [ 1] 1042 	ld	a, (0x03, sp)
      00CC00 A1 0F            [ 1] 1043 	cp	a, #0x0f
      00CC02 27 0F            [ 1] 1044 	jreq	00109$
      00CC04 4B E9            [ 1] 1045 	push	#0xe9
      00CC06 4B 01            [ 1] 1046 	push	#0x01
      00CC08 5F               [ 1] 1047 	clrw	x
      00CC09 89               [ 2] 1048 	pushw	x
      00CC0A 4B 17            [ 1] 1049 	push	#<(___str_0+0)
      00CC0C 4B 86            [ 1] 1050 	push	#((___str_0+0) >> 8)
      00CC0E CD 00 00         [ 4] 1051 	call	_assert_failed
      00CC11 5B 06            [ 2] 1052 	addw	sp, #6
      00CC13                       1053 00109$:
                                   1054 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
      00CC13 AE 53 0E         [ 2] 1055 	ldw	x, #0x530e
      00CC16 7B 03            [ 1] 1056 	ld	a, (0x03, sp)
      00CC18 F7               [ 1] 1057 	ld	(x), a
                                   1058 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
      00CC19 AE 53 06         [ 2] 1059 	ldw	x, #0x5306
      00CC1C 7B 04            [ 1] 1060 	ld	a, (0x04, sp)
      00CC1E F7               [ 1] 1061 	ld	(x), a
                                   1062 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 496: }
      00CC1F 81               [ 4] 1063 	ret
                                   1064 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1065 ;	-----------------------------------------
                                   1066 ;	 function TIM2_ForcedOC1Config
                                   1067 ;	-----------------------------------------
      00CC20                       1068 _TIM2_ForcedOC1Config:
                                   1069 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 510: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
      00CC20 7B 03            [ 1] 1070 	ld	a, (0x03, sp)
      00CC22 A1 50            [ 1] 1071 	cp	a, #0x50
      00CC24 27 15            [ 1] 1072 	jreq	00104$
      00CC26 7B 03            [ 1] 1073 	ld	a, (0x03, sp)
      00CC28 A1 40            [ 1] 1074 	cp	a, #0x40
      00CC2A 27 0F            [ 1] 1075 	jreq	00104$
      00CC2C 4B FE            [ 1] 1076 	push	#0xfe
      00CC2E 4B 01            [ 1] 1077 	push	#0x01
      00CC30 5F               [ 1] 1078 	clrw	x
      00CC31 89               [ 2] 1079 	pushw	x
      00CC32 4B 17            [ 1] 1080 	push	#<(___str_0+0)
      00CC34 4B 86            [ 1] 1081 	push	#((___str_0+0) >> 8)
      00CC36 CD 00 00         [ 4] 1082 	call	_assert_failed
      00CC39 5B 06            [ 2] 1083 	addw	sp, #6
      00CC3B                       1084 00104$:
                                   1085 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
      00CC3B C6 53 07         [ 1] 1086 	ld	a, 0x5307
      00CC3E A4 8F            [ 1] 1087 	and	a, #0x8f
                                   1088 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
      00CC40 1A 03            [ 1] 1089 	or	a, (0x03, sp)
      00CC42 C7 53 07         [ 1] 1090 	ld	0x5307, a
                                   1091 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 515: }
      00CC45 81               [ 4] 1092 	ret
                                   1093 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function TIM2_ForcedOC2Config
                                   1096 ;	-----------------------------------------
      00CC46                       1097 _TIM2_ForcedOC2Config:
                                   1098 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 529: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
      00CC46 7B 03            [ 1] 1099 	ld	a, (0x03, sp)
      00CC48 A1 50            [ 1] 1100 	cp	a, #0x50
      00CC4A 27 15            [ 1] 1101 	jreq	00104$
      00CC4C 7B 03            [ 1] 1102 	ld	a, (0x03, sp)
      00CC4E A1 40            [ 1] 1103 	cp	a, #0x40
      00CC50 27 0F            [ 1] 1104 	jreq	00104$
      00CC52 4B 11            [ 1] 1105 	push	#0x11
      00CC54 4B 02            [ 1] 1106 	push	#0x02
      00CC56 5F               [ 1] 1107 	clrw	x
      00CC57 89               [ 2] 1108 	pushw	x
      00CC58 4B 17            [ 1] 1109 	push	#<(___str_0+0)
      00CC5A 4B 86            [ 1] 1110 	push	#((___str_0+0) >> 8)
      00CC5C CD 00 00         [ 4] 1111 	call	_assert_failed
      00CC5F 5B 06            [ 2] 1112 	addw	sp, #6
      00CC61                       1113 00104$:
                                   1114 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
      00CC61 C6 53 08         [ 1] 1115 	ld	a, 0x5308
      00CC64 A4 8F            [ 1] 1116 	and	a, #0x8f
                                   1117 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
      00CC66 1A 03            [ 1] 1118 	or	a, (0x03, sp)
      00CC68 C7 53 08         [ 1] 1119 	ld	0x5308, a
                                   1120 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 534: }
      00CC6B 81               [ 4] 1121 	ret
                                   1122 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function TIM2_ForcedOC3Config
                                   1125 ;	-----------------------------------------
      00CC6C                       1126 _TIM2_ForcedOC3Config:
                                   1127 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 548: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
      00CC6C 7B 03            [ 1] 1128 	ld	a, (0x03, sp)
      00CC6E A1 50            [ 1] 1129 	cp	a, #0x50
      00CC70 27 15            [ 1] 1130 	jreq	00104$
      00CC72 7B 03            [ 1] 1131 	ld	a, (0x03, sp)
      00CC74 A1 40            [ 1] 1132 	cp	a, #0x40
      00CC76 27 0F            [ 1] 1133 	jreq	00104$
      00CC78 4B 24            [ 1] 1134 	push	#0x24
      00CC7A 4B 02            [ 1] 1135 	push	#0x02
      00CC7C 5F               [ 1] 1136 	clrw	x
      00CC7D 89               [ 2] 1137 	pushw	x
      00CC7E 4B 17            [ 1] 1138 	push	#<(___str_0+0)
      00CC80 4B 86            [ 1] 1139 	push	#((___str_0+0) >> 8)
      00CC82 CD 00 00         [ 4] 1140 	call	_assert_failed
      00CC85 5B 06            [ 2] 1141 	addw	sp, #6
      00CC87                       1142 00104$:
                                   1143 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      00CC87 C6 53 09         [ 1] 1144 	ld	a, 0x5309
      00CC8A A4 8F            [ 1] 1145 	and	a, #0x8f
                                   1146 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
      00CC8C 1A 03            [ 1] 1147 	or	a, (0x03, sp)
      00CC8E C7 53 09         [ 1] 1148 	ld	0x5309, a
                                   1149 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 553: }
      00CC91 81               [ 4] 1150 	ret
                                   1151 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
                                   1152 ;	-----------------------------------------
                                   1153 ;	 function TIM2_ARRPreloadConfig
                                   1154 ;	-----------------------------------------
      00CC92                       1155 _TIM2_ARRPreloadConfig:
                                   1156 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 564: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00CC92 0D 03            [ 1] 1157 	tnz	(0x03, sp)
      00CC94 27 14            [ 1] 1158 	jreq	00107$
      00CC96 7B 03            [ 1] 1159 	ld	a, (0x03, sp)
      00CC98 4A               [ 1] 1160 	dec	a
      00CC99 27 0F            [ 1] 1161 	jreq	00107$
      00CC9B 4B 34            [ 1] 1162 	push	#0x34
      00CC9D 4B 02            [ 1] 1163 	push	#0x02
      00CC9F 5F               [ 1] 1164 	clrw	x
      00CCA0 89               [ 2] 1165 	pushw	x
      00CCA1 4B 17            [ 1] 1166 	push	#<(___str_0+0)
      00CCA3 4B 86            [ 1] 1167 	push	#((___str_0+0) >> 8)
      00CCA5 CD 00 00         [ 4] 1168 	call	_assert_failed
      00CCA8 5B 06            [ 2] 1169 	addw	sp, #6
      00CCAA                       1170 00107$:
                                   1171 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
      00CCAA C6 53 00         [ 1] 1172 	ld	a, 0x5300
                                   1173 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 567: if (NewState != DISABLE)
      00CCAD 0D 03            [ 1] 1174 	tnz	(0x03, sp)
      00CCAF 27 06            [ 1] 1175 	jreq	00102$
                                   1176 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
      00CCB1 AA 80            [ 1] 1177 	or	a, #0x80
      00CCB3 C7 53 00         [ 1] 1178 	ld	0x5300, a
      00CCB6 81               [ 4] 1179 	ret
      00CCB7                       1180 00102$:
                                   1181 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
      00CCB7 A4 7F            [ 1] 1182 	and	a, #0x7f
      00CCB9 C7 53 00         [ 1] 1183 	ld	0x5300, a
                                   1184 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 575: }
      00CCBC 81               [ 4] 1185 	ret
                                   1186 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function TIM2_OC1PreloadConfig
                                   1189 ;	-----------------------------------------
      00CCBD                       1190 _TIM2_OC1PreloadConfig:
                                   1191 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 586: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00CCBD 0D 03            [ 1] 1192 	tnz	(0x03, sp)
      00CCBF 27 14            [ 1] 1193 	jreq	00107$
      00CCC1 7B 03            [ 1] 1194 	ld	a, (0x03, sp)
      00CCC3 4A               [ 1] 1195 	dec	a
      00CCC4 27 0F            [ 1] 1196 	jreq	00107$
      00CCC6 4B 4A            [ 1] 1197 	push	#0x4a
      00CCC8 4B 02            [ 1] 1198 	push	#0x02
      00CCCA 5F               [ 1] 1199 	clrw	x
      00CCCB 89               [ 2] 1200 	pushw	x
      00CCCC 4B 17            [ 1] 1201 	push	#<(___str_0+0)
      00CCCE 4B 86            [ 1] 1202 	push	#((___str_0+0) >> 8)
      00CCD0 CD 00 00         [ 4] 1203 	call	_assert_failed
      00CCD3 5B 06            [ 2] 1204 	addw	sp, #6
      00CCD5                       1205 00107$:
                                   1206 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
      00CCD5 C6 53 07         [ 1] 1207 	ld	a, 0x5307
                                   1208 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 589: if (NewState != DISABLE)
      00CCD8 0D 03            [ 1] 1209 	tnz	(0x03, sp)
      00CCDA 27 06            [ 1] 1210 	jreq	00102$
                                   1211 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
      00CCDC AA 08            [ 1] 1212 	or	a, #0x08
      00CCDE C7 53 07         [ 1] 1213 	ld	0x5307, a
      00CCE1 81               [ 4] 1214 	ret
      00CCE2                       1215 00102$:
                                   1216 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00CCE2 A4 F7            [ 1] 1217 	and	a, #0xf7
      00CCE4 C7 53 07         [ 1] 1218 	ld	0x5307, a
                                   1219 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 597: }
      00CCE7 81               [ 4] 1220 	ret
                                   1221 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
                                   1222 ;	-----------------------------------------
                                   1223 ;	 function TIM2_OC2PreloadConfig
                                   1224 ;	-----------------------------------------
      00CCE8                       1225 _TIM2_OC2PreloadConfig:
                                   1226 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 608: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00CCE8 0D 03            [ 1] 1227 	tnz	(0x03, sp)
      00CCEA 27 14            [ 1] 1228 	jreq	00107$
      00CCEC 7B 03            [ 1] 1229 	ld	a, (0x03, sp)
      00CCEE 4A               [ 1] 1230 	dec	a
      00CCEF 27 0F            [ 1] 1231 	jreq	00107$
      00CCF1 4B 60            [ 1] 1232 	push	#0x60
      00CCF3 4B 02            [ 1] 1233 	push	#0x02
      00CCF5 5F               [ 1] 1234 	clrw	x
      00CCF6 89               [ 2] 1235 	pushw	x
      00CCF7 4B 17            [ 1] 1236 	push	#<(___str_0+0)
      00CCF9 4B 86            [ 1] 1237 	push	#((___str_0+0) >> 8)
      00CCFB CD 00 00         [ 4] 1238 	call	_assert_failed
      00CCFE 5B 06            [ 2] 1239 	addw	sp, #6
      00CD00                       1240 00107$:
                                   1241 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
      00CD00 C6 53 08         [ 1] 1242 	ld	a, 0x5308
                                   1243 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 611: if (NewState != DISABLE)
      00CD03 0D 03            [ 1] 1244 	tnz	(0x03, sp)
      00CD05 27 06            [ 1] 1245 	jreq	00102$
                                   1246 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
      00CD07 AA 08            [ 1] 1247 	or	a, #0x08
      00CD09 C7 53 08         [ 1] 1248 	ld	0x5308, a
      00CD0C 81               [ 4] 1249 	ret
      00CD0D                       1250 00102$:
                                   1251 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00CD0D A4 F7            [ 1] 1252 	and	a, #0xf7
      00CD0F C7 53 08         [ 1] 1253 	ld	0x5308, a
                                   1254 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 619: }
      00CD12 81               [ 4] 1255 	ret
                                   1256 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
                                   1257 ;	-----------------------------------------
                                   1258 ;	 function TIM2_OC3PreloadConfig
                                   1259 ;	-----------------------------------------
      00CD13                       1260 _TIM2_OC3PreloadConfig:
                                   1261 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 630: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00CD13 0D 03            [ 1] 1262 	tnz	(0x03, sp)
      00CD15 27 14            [ 1] 1263 	jreq	00107$
      00CD17 7B 03            [ 1] 1264 	ld	a, (0x03, sp)
      00CD19 4A               [ 1] 1265 	dec	a
      00CD1A 27 0F            [ 1] 1266 	jreq	00107$
      00CD1C 4B 76            [ 1] 1267 	push	#0x76
      00CD1E 4B 02            [ 1] 1268 	push	#0x02
      00CD20 5F               [ 1] 1269 	clrw	x
      00CD21 89               [ 2] 1270 	pushw	x
      00CD22 4B 17            [ 1] 1271 	push	#<(___str_0+0)
      00CD24 4B 86            [ 1] 1272 	push	#((___str_0+0) >> 8)
      00CD26 CD 00 00         [ 4] 1273 	call	_assert_failed
      00CD29 5B 06            [ 2] 1274 	addw	sp, #6
      00CD2B                       1275 00107$:
                                   1276 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
      00CD2B C6 53 09         [ 1] 1277 	ld	a, 0x5309
                                   1278 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 633: if (NewState != DISABLE)
      00CD2E 0D 03            [ 1] 1279 	tnz	(0x03, sp)
      00CD30 27 06            [ 1] 1280 	jreq	00102$
                                   1281 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
      00CD32 AA 08            [ 1] 1282 	or	a, #0x08
      00CD34 C7 53 09         [ 1] 1283 	ld	0x5309, a
      00CD37 81               [ 4] 1284 	ret
      00CD38                       1285 00102$:
                                   1286 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00CD38 A4 F7            [ 1] 1287 	and	a, #0xf7
      00CD3A C7 53 09         [ 1] 1288 	ld	0x5309, a
                                   1289 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 641: }
      00CD3D 81               [ 4] 1290 	ret
                                   1291 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
                                   1292 ;	-----------------------------------------
                                   1293 ;	 function TIM2_GenerateEvent
                                   1294 ;	-----------------------------------------
      00CD3E                       1295 _TIM2_GenerateEvent:
                                   1296 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 656: assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
      00CD3E 0D 03            [ 1] 1297 	tnz	(0x03, sp)
      00CD40 26 0F            [ 1] 1298 	jrne	00104$
      00CD42 4B 90            [ 1] 1299 	push	#0x90
      00CD44 4B 02            [ 1] 1300 	push	#0x02
      00CD46 5F               [ 1] 1301 	clrw	x
      00CD47 89               [ 2] 1302 	pushw	x
      00CD48 4B 17            [ 1] 1303 	push	#<(___str_0+0)
      00CD4A 4B 86            [ 1] 1304 	push	#((___str_0+0) >> 8)
      00CD4C CD 00 00         [ 4] 1305 	call	_assert_failed
      00CD4F 5B 06            [ 2] 1306 	addw	sp, #6
      00CD51                       1307 00104$:
                                   1308 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
      00CD51 AE 53 06         [ 2] 1309 	ldw	x, #0x5306
      00CD54 7B 03            [ 1] 1310 	ld	a, (0x03, sp)
      00CD56 F7               [ 1] 1311 	ld	(x), a
                                   1312 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 660: }
      00CD57 81               [ 4] 1313 	ret
                                   1314 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function TIM2_OC1PolarityConfig
                                   1317 ;	-----------------------------------------
      00CD58                       1318 _TIM2_OC1PolarityConfig:
                                   1319 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 673: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00CD58 0D 03            [ 1] 1320 	tnz	(0x03, sp)
      00CD5A 27 15            [ 1] 1321 	jreq	00107$
      00CD5C 7B 03            [ 1] 1322 	ld	a, (0x03, sp)
      00CD5E A1 22            [ 1] 1323 	cp	a, #0x22
      00CD60 27 0F            [ 1] 1324 	jreq	00107$
      00CD62 4B A1            [ 1] 1325 	push	#0xa1
      00CD64 4B 02            [ 1] 1326 	push	#0x02
      00CD66 5F               [ 1] 1327 	clrw	x
      00CD67 89               [ 2] 1328 	pushw	x
      00CD68 4B 17            [ 1] 1329 	push	#<(___str_0+0)
      00CD6A 4B 86            [ 1] 1330 	push	#((___str_0+0) >> 8)
      00CD6C CD 00 00         [ 4] 1331 	call	_assert_failed
      00CD6F 5B 06            [ 2] 1332 	addw	sp, #6
      00CD71                       1333 00107$:
                                   1334 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
      00CD71 C6 53 0A         [ 1] 1335 	ld	a, 0x530a
                                   1336 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00CD74 0D 03            [ 1] 1337 	tnz	(0x03, sp)
      00CD76 27 06            [ 1] 1338 	jreq	00102$
                                   1339 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
      00CD78 AA 02            [ 1] 1340 	or	a, #0x02
      00CD7A C7 53 0A         [ 1] 1341 	ld	0x530a, a
      00CD7D 81               [ 4] 1342 	ret
      00CD7E                       1343 00102$:
                                   1344 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      00CD7E A4 FD            [ 1] 1345 	and	a, #0xfd
      00CD80 C7 53 0A         [ 1] 1346 	ld	0x530a, a
                                   1347 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 684: }
      00CD83 81               [ 4] 1348 	ret
                                   1349 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1350 ;	-----------------------------------------
                                   1351 ;	 function TIM2_OC2PolarityConfig
                                   1352 ;	-----------------------------------------
      00CD84                       1353 _TIM2_OC2PolarityConfig:
                                   1354 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 697: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00CD84 0D 03            [ 1] 1355 	tnz	(0x03, sp)
      00CD86 27 15            [ 1] 1356 	jreq	00107$
      00CD88 7B 03            [ 1] 1357 	ld	a, (0x03, sp)
      00CD8A A1 22            [ 1] 1358 	cp	a, #0x22
      00CD8C 27 0F            [ 1] 1359 	jreq	00107$
      00CD8E 4B B9            [ 1] 1360 	push	#0xb9
      00CD90 4B 02            [ 1] 1361 	push	#0x02
      00CD92 5F               [ 1] 1362 	clrw	x
      00CD93 89               [ 2] 1363 	pushw	x
      00CD94 4B 17            [ 1] 1364 	push	#<(___str_0+0)
      00CD96 4B 86            [ 1] 1365 	push	#((___str_0+0) >> 8)
      00CD98 CD 00 00         [ 4] 1366 	call	_assert_failed
      00CD9B 5B 06            [ 2] 1367 	addw	sp, #6
      00CD9D                       1368 00107$:
                                   1369 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00CD9D C6 53 0A         [ 1] 1370 	ld	a, 0x530a
                                   1371 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00CDA0 0D 03            [ 1] 1372 	tnz	(0x03, sp)
      00CDA2 27 06            [ 1] 1373 	jreq	00102$
                                   1374 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00CDA4 AA 20            [ 1] 1375 	or	a, #0x20
      00CDA6 C7 53 0A         [ 1] 1376 	ld	0x530a, a
      00CDA9 81               [ 4] 1377 	ret
      00CDAA                       1378 00102$:
                                   1379 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      00CDAA A4 DF            [ 1] 1380 	and	a, #0xdf
      00CDAC C7 53 0A         [ 1] 1381 	ld	0x530a, a
                                   1382 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 708: }
      00CDAF 81               [ 4] 1383 	ret
                                   1384 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1385 ;	-----------------------------------------
                                   1386 ;	 function TIM2_OC3PolarityConfig
                                   1387 ;	-----------------------------------------
      00CDB0                       1388 _TIM2_OC3PolarityConfig:
                                   1389 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 721: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00CDB0 0D 03            [ 1] 1390 	tnz	(0x03, sp)
      00CDB2 27 15            [ 1] 1391 	jreq	00107$
      00CDB4 7B 03            [ 1] 1392 	ld	a, (0x03, sp)
      00CDB6 A1 22            [ 1] 1393 	cp	a, #0x22
      00CDB8 27 0F            [ 1] 1394 	jreq	00107$
      00CDBA 4B D1            [ 1] 1395 	push	#0xd1
      00CDBC 4B 02            [ 1] 1396 	push	#0x02
      00CDBE 5F               [ 1] 1397 	clrw	x
      00CDBF 89               [ 2] 1398 	pushw	x
      00CDC0 4B 17            [ 1] 1399 	push	#<(___str_0+0)
      00CDC2 4B 86            [ 1] 1400 	push	#((___str_0+0) >> 8)
      00CDC4 CD 00 00         [ 4] 1401 	call	_assert_failed
      00CDC7 5B 06            [ 2] 1402 	addw	sp, #6
      00CDC9                       1403 00107$:
                                   1404 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
      00CDC9 C6 53 0B         [ 1] 1405 	ld	a, 0x530b
                                   1406 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00CDCC 0D 03            [ 1] 1407 	tnz	(0x03, sp)
      00CDCE 27 06            [ 1] 1408 	jreq	00102$
                                   1409 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
      00CDD0 AA 02            [ 1] 1410 	or	a, #0x02
      00CDD2 C7 53 0B         [ 1] 1411 	ld	0x530b, a
      00CDD5 81               [ 4] 1412 	ret
      00CDD6                       1413 00102$:
                                   1414 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      00CDD6 A4 FD            [ 1] 1415 	and	a, #0xfd
      00CDD8 C7 53 0B         [ 1] 1416 	ld	0x530b, a
                                   1417 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 732: }
      00CDDB 81               [ 4] 1418 	ret
                                   1419 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
                                   1420 ;	-----------------------------------------
                                   1421 ;	 function TIM2_CCxCmd
                                   1422 ;	-----------------------------------------
      00CDDC                       1423 _TIM2_CCxCmd:
      00CDDC 88               [ 1] 1424 	push	a
                                   1425 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 748: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
      00CDDD 7B 04            [ 1] 1426 	ld	a, (0x04, sp)
      00CDDF 4A               [ 1] 1427 	dec	a
      00CDE0 26 05            [ 1] 1428 	jrne	00182$
      00CDE2 A6 01            [ 1] 1429 	ld	a, #0x01
      00CDE4 6B 01            [ 1] 1430 	ld	(0x01, sp), a
      00CDE6 C5                    1431 	.byte 0xc5
      00CDE7                       1432 00182$:
      00CDE7 0F 01            [ 1] 1433 	clr	(0x01, sp)
      00CDE9                       1434 00183$:
      00CDE9 0D 04            [ 1] 1435 	tnz	(0x04, sp)
      00CDEB 27 19            [ 1] 1436 	jreq	00119$
      00CDED 0D 01            [ 1] 1437 	tnz	(0x01, sp)
      00CDEF 26 15            [ 1] 1438 	jrne	00119$
      00CDF1 7B 04            [ 1] 1439 	ld	a, (0x04, sp)
      00CDF3 A1 02            [ 1] 1440 	cp	a, #0x02
      00CDF5 27 0F            [ 1] 1441 	jreq	00119$
      00CDF7 4B EC            [ 1] 1442 	push	#0xec
      00CDF9 4B 02            [ 1] 1443 	push	#0x02
      00CDFB 5F               [ 1] 1444 	clrw	x
      00CDFC 89               [ 2] 1445 	pushw	x
      00CDFD 4B 17            [ 1] 1446 	push	#<(___str_0+0)
      00CDFF 4B 86            [ 1] 1447 	push	#((___str_0+0) >> 8)
      00CE01 CD 00 00         [ 4] 1448 	call	_assert_failed
      00CE04 5B 06            [ 2] 1449 	addw	sp, #6
      00CE06                       1450 00119$:
                                   1451 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 749: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00CE06 0D 05            [ 1] 1452 	tnz	(0x05, sp)
      00CE08 27 14            [ 1] 1453 	jreq	00127$
      00CE0A 7B 05            [ 1] 1454 	ld	a, (0x05, sp)
      00CE0C 4A               [ 1] 1455 	dec	a
      00CE0D 27 0F            [ 1] 1456 	jreq	00127$
      00CE0F 4B ED            [ 1] 1457 	push	#0xed
      00CE11 4B 02            [ 1] 1458 	push	#0x02
      00CE13 5F               [ 1] 1459 	clrw	x
      00CE14 89               [ 2] 1460 	pushw	x
      00CE15 4B 17            [ 1] 1461 	push	#<(___str_0+0)
      00CE17 4B 86            [ 1] 1462 	push	#((___str_0+0) >> 8)
      00CE19 CD 00 00         [ 4] 1463 	call	_assert_failed
      00CE1C 5B 06            [ 2] 1464 	addw	sp, #6
      00CE1E                       1465 00127$:
                                   1466 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
      00CE1E 0D 04            [ 1] 1467 	tnz	(0x04, sp)
      00CE20 26 15            [ 1] 1468 	jrne	00114$
                                   1469 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00CE22 C6 53 0A         [ 1] 1470 	ld	a, 0x530a
                                   1471 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 754: if (NewState != DISABLE)
      00CE25 0D 05            [ 1] 1472 	tnz	(0x05, sp)
      00CE27 27 07            [ 1] 1473 	jreq	00102$
                                   1474 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00CE29 AA 01            [ 1] 1475 	or	a, #0x01
      00CE2B C7 53 0A         [ 1] 1476 	ld	0x530a, a
      00CE2E 20 33            [ 2] 1477 	jra	00116$
      00CE30                       1478 00102$:
                                   1479 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00CE30 A4 FE            [ 1] 1480 	and	a, #0xfe
      00CE32 C7 53 0A         [ 1] 1481 	ld	0x530a, a
      00CE35 20 2C            [ 2] 1482 	jra	00116$
      00CE37                       1483 00114$:
                                   1484 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00CE37 7B 01            [ 1] 1485 	ld	a, (0x01, sp)
      00CE39 27 15            [ 1] 1486 	jreq	00111$
                                   1487 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00CE3B C6 53 0A         [ 1] 1488 	ld	a, 0x530a
                                   1489 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 767: if (NewState != DISABLE)
      00CE3E 0D 05            [ 1] 1490 	tnz	(0x05, sp)
      00CE40 27 07            [ 1] 1491 	jreq	00105$
                                   1492 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
      00CE42 AA 10            [ 1] 1493 	or	a, #0x10
      00CE44 C7 53 0A         [ 1] 1494 	ld	0x530a, a
      00CE47 20 1A            [ 2] 1495 	jra	00116$
      00CE49                       1496 00105$:
                                   1497 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00CE49 A4 EF            [ 1] 1498 	and	a, #0xef
      00CE4B C7 53 0A         [ 1] 1499 	ld	0x530a, a
      00CE4E 20 13            [ 2] 1500 	jra	00116$
      00CE50                       1501 00111$:
                                   1502 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
      00CE50 C6 53 0B         [ 1] 1503 	ld	a, 0x530b
                                   1504 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 779: if (NewState != DISABLE)
      00CE53 0D 05            [ 1] 1505 	tnz	(0x05, sp)
      00CE55 27 07            [ 1] 1506 	jreq	00108$
                                   1507 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
      00CE57 AA 01            [ 1] 1508 	or	a, #0x01
      00CE59 C7 53 0B         [ 1] 1509 	ld	0x530b, a
      00CE5C 20 05            [ 2] 1510 	jra	00116$
      00CE5E                       1511 00108$:
                                   1512 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      00CE5E A4 FE            [ 1] 1513 	and	a, #0xfe
      00CE60 C7 53 0B         [ 1] 1514 	ld	0x530b, a
      00CE63                       1515 00116$:
                                   1516 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 788: }
      00CE63 84               [ 1] 1517 	pop	a
      00CE64 81               [ 4] 1518 	ret
                                   1519 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
                                   1520 ;	-----------------------------------------
                                   1521 ;	 function TIM2_SelectOCxM
                                   1522 ;	-----------------------------------------
      00CE65                       1523 _TIM2_SelectOCxM:
      00CE65 88               [ 1] 1524 	push	a
                                   1525 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 813: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
      00CE66 7B 04            [ 1] 1526 	ld	a, (0x04, sp)
      00CE68 4A               [ 1] 1527 	dec	a
      00CE69 26 05            [ 1] 1528 	jrne	00206$
      00CE6B A6 01            [ 1] 1529 	ld	a, #0x01
      00CE6D 6B 01            [ 1] 1530 	ld	(0x01, sp), a
      00CE6F C5                    1531 	.byte 0xc5
      00CE70                       1532 00206$:
      00CE70 0F 01            [ 1] 1533 	clr	(0x01, sp)
      00CE72                       1534 00207$:
      00CE72 0D 04            [ 1] 1535 	tnz	(0x04, sp)
      00CE74 27 19            [ 1] 1536 	jreq	00110$
      00CE76 0D 01            [ 1] 1537 	tnz	(0x01, sp)
      00CE78 26 15            [ 1] 1538 	jrne	00110$
      00CE7A 7B 04            [ 1] 1539 	ld	a, (0x04, sp)
      00CE7C A1 02            [ 1] 1540 	cp	a, #0x02
      00CE7E 27 0F            [ 1] 1541 	jreq	00110$
      00CE80 4B 2D            [ 1] 1542 	push	#0x2d
      00CE82 4B 03            [ 1] 1543 	push	#0x03
      00CE84 5F               [ 1] 1544 	clrw	x
      00CE85 89               [ 2] 1545 	pushw	x
      00CE86 4B 17            [ 1] 1546 	push	#<(___str_0+0)
      00CE88 4B 86            [ 1] 1547 	push	#((___str_0+0) >> 8)
      00CE8A CD 00 00         [ 4] 1548 	call	_assert_failed
      00CE8D 5B 06            [ 2] 1549 	addw	sp, #6
      00CE8F                       1550 00110$:
                                   1551 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 814: assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
      00CE8F 0D 05            [ 1] 1552 	tnz	(0x05, sp)
      00CE91 27 39            [ 1] 1553 	jreq	00118$
      00CE93 7B 05            [ 1] 1554 	ld	a, (0x05, sp)
      00CE95 A1 10            [ 1] 1555 	cp	a, #0x10
      00CE97 27 33            [ 1] 1556 	jreq	00118$
      00CE99 7B 05            [ 1] 1557 	ld	a, (0x05, sp)
      00CE9B A1 20            [ 1] 1558 	cp	a, #0x20
      00CE9D 27 2D            [ 1] 1559 	jreq	00118$
      00CE9F 7B 05            [ 1] 1560 	ld	a, (0x05, sp)
      00CEA1 A1 30            [ 1] 1561 	cp	a, #0x30
      00CEA3 27 27            [ 1] 1562 	jreq	00118$
      00CEA5 7B 05            [ 1] 1563 	ld	a, (0x05, sp)
      00CEA7 A1 60            [ 1] 1564 	cp	a, #0x60
      00CEA9 27 21            [ 1] 1565 	jreq	00118$
      00CEAB 7B 05            [ 1] 1566 	ld	a, (0x05, sp)
      00CEAD A1 70            [ 1] 1567 	cp	a, #0x70
      00CEAF 27 1B            [ 1] 1568 	jreq	00118$
      00CEB1 7B 05            [ 1] 1569 	ld	a, (0x05, sp)
      00CEB3 A1 50            [ 1] 1570 	cp	a, #0x50
      00CEB5 27 15            [ 1] 1571 	jreq	00118$
      00CEB7 7B 05            [ 1] 1572 	ld	a, (0x05, sp)
      00CEB9 A1 40            [ 1] 1573 	cp	a, #0x40
      00CEBB 27 0F            [ 1] 1574 	jreq	00118$
      00CEBD 4B 2E            [ 1] 1575 	push	#0x2e
      00CEBF 4B 03            [ 1] 1576 	push	#0x03
      00CEC1 5F               [ 1] 1577 	clrw	x
      00CEC2 89               [ 2] 1578 	pushw	x
      00CEC3 4B 17            [ 1] 1579 	push	#<(___str_0+0)
      00CEC5 4B 86            [ 1] 1580 	push	#((___str_0+0) >> 8)
      00CEC7 CD 00 00         [ 4] 1581 	call	_assert_failed
      00CECA 5B 06            [ 2] 1582 	addw	sp, #6
      00CECC                       1583 00118$:
                                   1584 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
      00CECC 0D 04            [ 1] 1585 	tnz	(0x04, sp)
      00CECE 26 10            [ 1] 1586 	jrne	00105$
                                   1587 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00CED0 72 11 53 0A      [ 1] 1588 	bres	21258, #0
                                   1589 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
      00CED4 C6 53 07         [ 1] 1590 	ld	a, 0x5307
      00CED7 A4 8F            [ 1] 1591 	and	a, #0x8f
                                   1592 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
      00CED9 1A 05            [ 1] 1593 	or	a, (0x05, sp)
      00CEDB C7 53 07         [ 1] 1594 	ld	0x5307, a
      00CEDE 20 22            [ 2] 1595 	jra	00107$
      00CEE0                       1596 00105$:
                                   1597 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00CEE0 7B 01            [ 1] 1598 	ld	a, (0x01, sp)
      00CEE2 27 10            [ 1] 1599 	jreq	00102$
                                   1600 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00CEE4 72 19 53 0A      [ 1] 1601 	bres	21258, #4
                                   1602 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
      00CEE8 C6 53 08         [ 1] 1603 	ld	a, 0x5308
      00CEEB A4 8F            [ 1] 1604 	and	a, #0x8f
                                   1605 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
      00CEED 1A 05            [ 1] 1606 	or	a, (0x05, sp)
      00CEEF C7 53 08         [ 1] 1607 	ld	0x5308, a
      00CEF2 20 0E            [ 2] 1608 	jra	00107$
      00CEF4                       1609 00102$:
                                   1610 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      00CEF4 72 11 53 0B      [ 1] 1611 	bres	21259, #0
                                   1612 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      00CEF8 C6 53 09         [ 1] 1613 	ld	a, 0x5309
      00CEFB A4 8F            [ 1] 1614 	and	a, #0x8f
                                   1615 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
      00CEFD 1A 05            [ 1] 1616 	or	a, (0x05, sp)
      00CEFF C7 53 09         [ 1] 1617 	ld	0x5309, a
      00CF02                       1618 00107$:
                                   1619 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 843: }
      00CF02 84               [ 1] 1620 	pop	a
      00CF03 81               [ 4] 1621 	ret
                                   1622 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
                                   1623 ;	-----------------------------------------
                                   1624 ;	 function TIM2_SetCounter
                                   1625 ;	-----------------------------------------
      00CF04                       1626 _TIM2_SetCounter:
                                   1627 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
      00CF04 7B 03            [ 1] 1628 	ld	a, (0x03, sp)
      00CF06 C7 53 0C         [ 1] 1629 	ld	0x530c, a
                                   1630 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
      00CF09 7B 04            [ 1] 1631 	ld	a, (0x04, sp)
      00CF0B C7 53 0D         [ 1] 1632 	ld	0x530d, a
                                   1633 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 856: }
      00CF0E 81               [ 4] 1634 	ret
                                   1635 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
                                   1636 ;	-----------------------------------------
                                   1637 ;	 function TIM2_SetAutoreload
                                   1638 ;	-----------------------------------------
      00CF0F                       1639 _TIM2_SetAutoreload:
                                   1640 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
      00CF0F 7B 03            [ 1] 1641 	ld	a, (0x03, sp)
      00CF11 C7 53 0F         [ 1] 1642 	ld	0x530f, a
                                   1643 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
      00CF14 7B 04            [ 1] 1644 	ld	a, (0x04, sp)
      00CF16 C7 53 10         [ 1] 1645 	ld	0x5310, a
                                   1646 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 869: }
      00CF19 81               [ 4] 1647 	ret
                                   1648 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
                                   1649 ;	-----------------------------------------
                                   1650 ;	 function TIM2_SetCompare1
                                   1651 ;	-----------------------------------------
      00CF1A                       1652 _TIM2_SetCompare1:
                                   1653 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
      00CF1A 7B 03            [ 1] 1654 	ld	a, (0x03, sp)
      00CF1C C7 53 11         [ 1] 1655 	ld	0x5311, a
                                   1656 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
      00CF1F 7B 04            [ 1] 1657 	ld	a, (0x04, sp)
      00CF21 C7 53 12         [ 1] 1658 	ld	0x5312, a
                                   1659 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 882: }
      00CF24 81               [ 4] 1660 	ret
                                   1661 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
                                   1662 ;	-----------------------------------------
                                   1663 ;	 function TIM2_SetCompare2
                                   1664 ;	-----------------------------------------
      00CF25                       1665 _TIM2_SetCompare2:
                                   1666 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
      00CF25 7B 03            [ 1] 1667 	ld	a, (0x03, sp)
      00CF27 C7 53 13         [ 1] 1668 	ld	0x5313, a
                                   1669 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
      00CF2A 7B 04            [ 1] 1670 	ld	a, (0x04, sp)
      00CF2C C7 53 14         [ 1] 1671 	ld	0x5314, a
                                   1672 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 895: }
      00CF2F 81               [ 4] 1673 	ret
                                   1674 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
                                   1675 ;	-----------------------------------------
                                   1676 ;	 function TIM2_SetCompare3
                                   1677 ;	-----------------------------------------
      00CF30                       1678 _TIM2_SetCompare3:
                                   1679 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
      00CF30 7B 03            [ 1] 1680 	ld	a, (0x03, sp)
      00CF32 C7 53 15         [ 1] 1681 	ld	0x5315, a
                                   1682 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
      00CF35 7B 04            [ 1] 1683 	ld	a, (0x04, sp)
      00CF37 C7 53 16         [ 1] 1684 	ld	0x5316, a
                                   1685 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 908: }
      00CF3A 81               [ 4] 1686 	ret
                                   1687 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
                                   1688 ;	-----------------------------------------
                                   1689 ;	 function TIM2_SetIC1Prescaler
                                   1690 ;	-----------------------------------------
      00CF3B                       1691 _TIM2_SetIC1Prescaler:
                                   1692 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 923: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
      00CF3B 0D 03            [ 1] 1693 	tnz	(0x03, sp)
      00CF3D 27 21            [ 1] 1694 	jreq	00104$
      00CF3F 7B 03            [ 1] 1695 	ld	a, (0x03, sp)
      00CF41 A1 04            [ 1] 1696 	cp	a, #0x04
      00CF43 27 1B            [ 1] 1697 	jreq	00104$
      00CF45 7B 03            [ 1] 1698 	ld	a, (0x03, sp)
      00CF47 A1 08            [ 1] 1699 	cp	a, #0x08
      00CF49 27 15            [ 1] 1700 	jreq	00104$
      00CF4B 7B 03            [ 1] 1701 	ld	a, (0x03, sp)
      00CF4D A1 0C            [ 1] 1702 	cp	a, #0x0c
      00CF4F 27 0F            [ 1] 1703 	jreq	00104$
      00CF51 4B 9B            [ 1] 1704 	push	#0x9b
      00CF53 4B 03            [ 1] 1705 	push	#0x03
      00CF55 5F               [ 1] 1706 	clrw	x
      00CF56 89               [ 2] 1707 	pushw	x
      00CF57 4B 17            [ 1] 1708 	push	#<(___str_0+0)
      00CF59 4B 86            [ 1] 1709 	push	#((___str_0+0) >> 8)
      00CF5B CD 00 00         [ 4] 1710 	call	_assert_failed
      00CF5E 5B 06            [ 2] 1711 	addw	sp, #6
      00CF60                       1712 00104$:
                                   1713 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00CF60 C6 53 07         [ 1] 1714 	ld	a, 0x5307
      00CF63 A4 F3            [ 1] 1715 	and	a, #0xf3
                                   1716 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
      00CF65 1A 03            [ 1] 1717 	or	a, (0x03, sp)
      00CF67 C7 53 07         [ 1] 1718 	ld	0x5307, a
                                   1719 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 928: }
      00CF6A 81               [ 4] 1720 	ret
                                   1721 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
                                   1722 ;	-----------------------------------------
                                   1723 ;	 function TIM2_SetIC2Prescaler
                                   1724 ;	-----------------------------------------
      00CF6B                       1725 _TIM2_SetIC2Prescaler:
                                   1726 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 943: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
      00CF6B 0D 03            [ 1] 1727 	tnz	(0x03, sp)
      00CF6D 27 21            [ 1] 1728 	jreq	00104$
      00CF6F 7B 03            [ 1] 1729 	ld	a, (0x03, sp)
      00CF71 A1 04            [ 1] 1730 	cp	a, #0x04
      00CF73 27 1B            [ 1] 1731 	jreq	00104$
      00CF75 7B 03            [ 1] 1732 	ld	a, (0x03, sp)
      00CF77 A1 08            [ 1] 1733 	cp	a, #0x08
      00CF79 27 15            [ 1] 1734 	jreq	00104$
      00CF7B 7B 03            [ 1] 1735 	ld	a, (0x03, sp)
      00CF7D A1 0C            [ 1] 1736 	cp	a, #0x0c
      00CF7F 27 0F            [ 1] 1737 	jreq	00104$
      00CF81 4B AF            [ 1] 1738 	push	#0xaf
      00CF83 4B 03            [ 1] 1739 	push	#0x03
      00CF85 5F               [ 1] 1740 	clrw	x
      00CF86 89               [ 2] 1741 	pushw	x
      00CF87 4B 17            [ 1] 1742 	push	#<(___str_0+0)
      00CF89 4B 86            [ 1] 1743 	push	#((___str_0+0) >> 8)
      00CF8B CD 00 00         [ 4] 1744 	call	_assert_failed
      00CF8E 5B 06            [ 2] 1745 	addw	sp, #6
      00CF90                       1746 00104$:
                                   1747 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00CF90 C6 53 08         [ 1] 1748 	ld	a, 0x5308
      00CF93 A4 F3            [ 1] 1749 	and	a, #0xf3
                                   1750 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
      00CF95 1A 03            [ 1] 1751 	or	a, (0x03, sp)
      00CF97 C7 53 08         [ 1] 1752 	ld	0x5308, a
                                   1753 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 948: }
      00CF9A 81               [ 4] 1754 	ret
                                   1755 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
                                   1756 ;	-----------------------------------------
                                   1757 ;	 function TIM2_SetIC3Prescaler
                                   1758 ;	-----------------------------------------
      00CF9B                       1759 _TIM2_SetIC3Prescaler:
                                   1760 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 964: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
      00CF9B 0D 03            [ 1] 1761 	tnz	(0x03, sp)
      00CF9D 27 21            [ 1] 1762 	jreq	00104$
      00CF9F 7B 03            [ 1] 1763 	ld	a, (0x03, sp)
      00CFA1 A1 04            [ 1] 1764 	cp	a, #0x04
      00CFA3 27 1B            [ 1] 1765 	jreq	00104$
      00CFA5 7B 03            [ 1] 1766 	ld	a, (0x03, sp)
      00CFA7 A1 08            [ 1] 1767 	cp	a, #0x08
      00CFA9 27 15            [ 1] 1768 	jreq	00104$
      00CFAB 7B 03            [ 1] 1769 	ld	a, (0x03, sp)
      00CFAD A1 0C            [ 1] 1770 	cp	a, #0x0c
      00CFAF 27 0F            [ 1] 1771 	jreq	00104$
      00CFB1 4B C4            [ 1] 1772 	push	#0xc4
      00CFB3 4B 03            [ 1] 1773 	push	#0x03
      00CFB5 5F               [ 1] 1774 	clrw	x
      00CFB6 89               [ 2] 1775 	pushw	x
      00CFB7 4B 17            [ 1] 1776 	push	#<(___str_0+0)
      00CFB9 4B 86            [ 1] 1777 	push	#((___str_0+0) >> 8)
      00CFBB CD 00 00         [ 4] 1778 	call	_assert_failed
      00CFBE 5B 06            [ 2] 1779 	addw	sp, #6
      00CFC0                       1780 00104$:
                                   1781 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00CFC0 C6 53 09         [ 1] 1782 	ld	a, 0x5309
      00CFC3 A4 F3            [ 1] 1783 	and	a, #0xf3
                                   1784 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
      00CFC5 1A 03            [ 1] 1785 	or	a, (0x03, sp)
      00CFC7 C7 53 09         [ 1] 1786 	ld	0x5309, a
                                   1787 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 968: }
      00CFCA 81               [ 4] 1788 	ret
                                   1789 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
                                   1790 ;	-----------------------------------------
                                   1791 ;	 function TIM2_GetCapture1
                                   1792 ;	-----------------------------------------
      00CFCB                       1793 _TIM2_GetCapture1:
      00CFCB 89               [ 2] 1794 	pushw	x
                                   1795 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
      00CFCC C6 53 11         [ 1] 1796 	ld	a, 0x5311
      00CFCF 95               [ 1] 1797 	ld	xh, a
                                   1798 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
      00CFD0 C6 53 12         [ 1] 1799 	ld	a, 0x5312
                                   1800 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
      00CFD3 97               [ 1] 1801 	ld	xl, a
      00CFD4 4F               [ 1] 1802 	clr	a
                                   1803 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00CFD5 0F 02            [ 1] 1804 	clr	(0x02, sp)
      00CFD7 89               [ 2] 1805 	pushw	x
      00CFD8 1A 01            [ 1] 1806 	or	a, (1, sp)
      00CFDA 85               [ 2] 1807 	popw	x
      00CFDB 01               [ 1] 1808 	rrwa	x
      00CFDC 1A 02            [ 1] 1809 	or	a, (0x02, sp)
      00CFDE 97               [ 1] 1810 	ld	xl, a
                                   1811 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
                                   1812 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 988: }
      00CFDF 5B 02            [ 2] 1813 	addw	sp, #2
      00CFE1 81               [ 4] 1814 	ret
                                   1815 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
                                   1816 ;	-----------------------------------------
                                   1817 ;	 function TIM2_GetCapture2
                                   1818 ;	-----------------------------------------
      00CFE2                       1819 _TIM2_GetCapture2:
      00CFE2 89               [ 2] 1820 	pushw	x
                                   1821 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
      00CFE3 C6 53 13         [ 1] 1822 	ld	a, 0x5313
      00CFE6 95               [ 1] 1823 	ld	xh, a
                                   1824 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
      00CFE7 C6 53 14         [ 1] 1825 	ld	a, 0x5314
                                   1826 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
      00CFEA 97               [ 1] 1827 	ld	xl, a
      00CFEB 4F               [ 1] 1828 	clr	a
                                   1829 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00CFEC 0F 02            [ 1] 1830 	clr	(0x02, sp)
      00CFEE 89               [ 2] 1831 	pushw	x
      00CFEF 1A 01            [ 1] 1832 	or	a, (1, sp)
      00CFF1 85               [ 2] 1833 	popw	x
      00CFF2 01               [ 1] 1834 	rrwa	x
      00CFF3 1A 02            [ 1] 1835 	or	a, (0x02, sp)
      00CFF5 97               [ 1] 1836 	ld	xl, a
                                   1837 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
                                   1838 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1008: }
      00CFF6 5B 02            [ 2] 1839 	addw	sp, #2
      00CFF8 81               [ 4] 1840 	ret
                                   1841 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
                                   1842 ;	-----------------------------------------
                                   1843 ;	 function TIM2_GetCapture3
                                   1844 ;	-----------------------------------------
      00CFF9                       1845 _TIM2_GetCapture3:
      00CFF9 89               [ 2] 1846 	pushw	x
                                   1847 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
      00CFFA C6 53 15         [ 1] 1848 	ld	a, 0x5315
      00CFFD 95               [ 1] 1849 	ld	xh, a
                                   1850 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
      00CFFE C6 53 16         [ 1] 1851 	ld	a, 0x5316
                                   1852 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
      00D001 97               [ 1] 1853 	ld	xl, a
      00D002 4F               [ 1] 1854 	clr	a
                                   1855 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      00D003 0F 02            [ 1] 1856 	clr	(0x02, sp)
      00D005 89               [ 2] 1857 	pushw	x
      00D006 1A 01            [ 1] 1858 	or	a, (1, sp)
      00D008 85               [ 2] 1859 	popw	x
      00D009 01               [ 1] 1860 	rrwa	x
      00D00A 1A 02            [ 1] 1861 	or	a, (0x02, sp)
      00D00C 97               [ 1] 1862 	ld	xl, a
                                   1863 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
                                   1864 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1028: }
      00D00D 5B 02            [ 2] 1865 	addw	sp, #2
      00D00F 81               [ 4] 1866 	ret
                                   1867 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
                                   1868 ;	-----------------------------------------
                                   1869 ;	 function TIM2_GetCounter
                                   1870 ;	-----------------------------------------
      00D010                       1871 _TIM2_GetCounter:
      00D010 52 04            [ 2] 1872 	sub	sp, #4
                                   1873 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
      00D012 C6 53 0C         [ 1] 1874 	ld	a, 0x530c
      00D015 5F               [ 1] 1875 	clrw	x
      00D016 95               [ 1] 1876 	ld	xh, a
      00D017 4F               [ 1] 1877 	clr	a
      00D018 6B 02            [ 1] 1878 	ld	(0x02, sp), a
                                   1879 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
      00D01A C6 53 0D         [ 1] 1880 	ld	a, 0x530d
      00D01D 0F 03            [ 1] 1881 	clr	(0x03, sp)
      00D01F 1A 02            [ 1] 1882 	or	a, (0x02, sp)
      00D021 02               [ 1] 1883 	rlwa	x
      00D022 1A 03            [ 1] 1884 	or	a, (0x03, sp)
      00D024 95               [ 1] 1885 	ld	xh, a
                                   1886 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1042: }
      00D025 5B 04            [ 2] 1887 	addw	sp, #4
      00D027 81               [ 4] 1888 	ret
                                   1889 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
                                   1890 ;	-----------------------------------------
                                   1891 ;	 function TIM2_GetPrescaler
                                   1892 ;	-----------------------------------------
      00D028                       1893 _TIM2_GetPrescaler:
                                   1894 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
      00D028 C6 53 0E         [ 1] 1895 	ld	a, 0x530e
                                   1896 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1053: }
      00D02B 81               [ 4] 1897 	ret
                                   1898 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1899 ;	-----------------------------------------
                                   1900 ;	 function TIM2_GetFlagStatus
                                   1901 ;	-----------------------------------------
      00D02C                       1902 _TIM2_GetFlagStatus:
      00D02C 88               [ 1] 1903 	push	a
                                   1904 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1074: assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
      00D02D 1E 04            [ 2] 1905 	ldw	x, (0x04, sp)
      00D02F A3 00 01         [ 2] 1906 	cpw	x, #0x0001
      00D032 27 31            [ 1] 1907 	jreq	00107$
      00D034 A3 00 02         [ 2] 1908 	cpw	x, #0x0002
      00D037 27 2C            [ 1] 1909 	jreq	00107$
      00D039 A3 00 04         [ 2] 1910 	cpw	x, #0x0004
      00D03C 27 27            [ 1] 1911 	jreq	00107$
      00D03E A3 00 08         [ 2] 1912 	cpw	x, #0x0008
      00D041 27 22            [ 1] 1913 	jreq	00107$
      00D043 A3 02 00         [ 2] 1914 	cpw	x, #0x0200
      00D046 27 1D            [ 1] 1915 	jreq	00107$
      00D048 A3 04 00         [ 2] 1916 	cpw	x, #0x0400
      00D04B 27 18            [ 1] 1917 	jreq	00107$
      00D04D A3 08 00         [ 2] 1918 	cpw	x, #0x0800
      00D050 27 13            [ 1] 1919 	jreq	00107$
      00D052 89               [ 2] 1920 	pushw	x
      00D053 4B 32            [ 1] 1921 	push	#0x32
      00D055 4B 04            [ 1] 1922 	push	#0x04
      00D057 4B 00            [ 1] 1923 	push	#0x00
      00D059 4B 00            [ 1] 1924 	push	#0x00
      00D05B 4B 17            [ 1] 1925 	push	#<(___str_0+0)
      00D05D 4B 86            [ 1] 1926 	push	#((___str_0+0) >> 8)
      00D05F CD 00 00         [ 4] 1927 	call	_assert_failed
      00D062 5B 06            [ 2] 1928 	addw	sp, #6
      00D064 85               [ 2] 1929 	popw	x
      00D065                       1930 00107$:
                                   1931 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
      00D065 C6 53 04         [ 1] 1932 	ld	a, 0x5304
      00D068 6B 01            [ 1] 1933 	ld	(0x01, sp), a
      00D06A 7B 05            [ 1] 1934 	ld	a, (0x05, sp)
      00D06C 14 01            [ 1] 1935 	and	a, (0x01, sp)
      00D06E 6B 01            [ 1] 1936 	ld	(0x01, sp), a
                                   1937 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
                                   1938 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
      00D070 C6 53 05         [ 1] 1939 	ld	a, 0x5305
      00D073 89               [ 2] 1940 	pushw	x
      00D074 14 01            [ 1] 1941 	and	a, (1, sp)
      00D076 85               [ 2] 1942 	popw	x
      00D077 1A 01            [ 1] 1943 	or	a, (0x01, sp)
      00D079 27 03            [ 1] 1944 	jreq	00102$
                                   1945 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1081: bitstatus = SET;
      00D07B A6 01            [ 1] 1946 	ld	a, #0x01
                                   1947 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1085: bitstatus = RESET;
      00D07D 21                    1948 	.byte 0x21
      00D07E                       1949 00102$:
      00D07E 4F               [ 1] 1950 	clr	a
      00D07F                       1951 00103$:
                                   1952 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
                                   1953 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1088: }
      00D07F 5B 01            [ 2] 1954 	addw	sp, #1
      00D081 81               [ 4] 1955 	ret
                                   1956 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1957 ;	-----------------------------------------
                                   1958 ;	 function TIM2_ClearFlag
                                   1959 ;	-----------------------------------------
      00D082                       1960 _TIM2_ClearFlag:
      00D082 89               [ 2] 1961 	pushw	x
                                   1962 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1106: assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
      00D083 16 05            [ 2] 1963 	ldw	y, (0x05, sp)
      00D085 17 01            [ 2] 1964 	ldw	(0x01, sp), y
      00D087 7B 02            [ 1] 1965 	ld	a, (0x02, sp)
      00D089 A4 F0            [ 1] 1966 	and	a, #0xf0
      00D08B 97               [ 1] 1967 	ld	xl, a
      00D08C 7B 01            [ 1] 1968 	ld	a, (0x01, sp)
      00D08E A4 F1            [ 1] 1969 	and	a, #0xf1
      00D090 95               [ 1] 1970 	ld	xh, a
      00D091 5D               [ 2] 1971 	tnzw	x
      00D092 26 04            [ 1] 1972 	jrne	00103$
      00D094 1E 01            [ 2] 1973 	ldw	x, (0x01, sp)
      00D096 26 0F            [ 1] 1974 	jrne	00104$
      00D098                       1975 00103$:
      00D098 4B 52            [ 1] 1976 	push	#0x52
      00D09A 4B 04            [ 1] 1977 	push	#0x04
      00D09C 5F               [ 1] 1978 	clrw	x
      00D09D 89               [ 2] 1979 	pushw	x
      00D09E 4B 17            [ 1] 1980 	push	#<(___str_0+0)
      00D0A0 4B 86            [ 1] 1981 	push	#((___str_0+0) >> 8)
      00D0A2 CD 00 00         [ 4] 1982 	call	_assert_failed
      00D0A5 5B 06            [ 2] 1983 	addw	sp, #6
      00D0A7                       1984 00104$:
                                   1985 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
      00D0A7 7B 02            [ 1] 1986 	ld	a, (0x02, sp)
      00D0A9 43               [ 1] 1987 	cpl	a
      00D0AA C7 53 04         [ 1] 1988 	ld	0x5304, a
                                   1989 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1110: TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
      00D0AD 35 FF 53 05      [ 1] 1990 	mov	0x5305+0, #0xff
                                   1991 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1111: }
      00D0B1 85               [ 2] 1992 	popw	x
      00D0B2 81               [ 4] 1993 	ret
                                   1994 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1123: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
                                   1995 ;	-----------------------------------------
                                   1996 ;	 function TIM2_GetITStatus
                                   1997 ;	-----------------------------------------
      00D0B3                       1998 _TIM2_GetITStatus:
      00D0B3 88               [ 1] 1999 	push	a
                                   2000 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1129: assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
      00D0B4 7B 04            [ 1] 2001 	ld	a, (0x04, sp)
      00D0B6 4A               [ 1] 2002 	dec	a
      00D0B7 27 21            [ 1] 2003 	jreq	00108$
      00D0B9 7B 04            [ 1] 2004 	ld	a, (0x04, sp)
      00D0BB A1 02            [ 1] 2005 	cp	a, #0x02
      00D0BD 27 1B            [ 1] 2006 	jreq	00108$
      00D0BF 7B 04            [ 1] 2007 	ld	a, (0x04, sp)
      00D0C1 A1 04            [ 1] 2008 	cp	a, #0x04
      00D0C3 27 15            [ 1] 2009 	jreq	00108$
      00D0C5 7B 04            [ 1] 2010 	ld	a, (0x04, sp)
      00D0C7 A1 08            [ 1] 2011 	cp	a, #0x08
      00D0C9 27 0F            [ 1] 2012 	jreq	00108$
      00D0CB 4B 69            [ 1] 2013 	push	#0x69
      00D0CD 4B 04            [ 1] 2014 	push	#0x04
      00D0CF 5F               [ 1] 2015 	clrw	x
      00D0D0 89               [ 2] 2016 	pushw	x
      00D0D1 4B 17            [ 1] 2017 	push	#<(___str_0+0)
      00D0D3 4B 86            [ 1] 2018 	push	#((___str_0+0) >> 8)
      00D0D5 CD 00 00         [ 4] 2019 	call	_assert_failed
      00D0D8 5B 06            [ 2] 2020 	addw	sp, #6
      00D0DA                       2021 00108$:
                                   2022 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1131: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
      00D0DA C6 53 04         [ 1] 2023 	ld	a, 0x5304
      00D0DD 14 04            [ 1] 2024 	and	a, (0x04, sp)
      00D0DF 6B 01            [ 1] 2025 	ld	(0x01, sp), a
                                   2026 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1133: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
      00D0E1 C6 53 03         [ 1] 2027 	ld	a, 0x5303
      00D0E4 14 04            [ 1] 2028 	and	a, (0x04, sp)
                                   2029 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1135: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
      00D0E6 0D 01            [ 1] 2030 	tnz	(0x01, sp)
      00D0E8 27 06            [ 1] 2031 	jreq	00102$
      00D0EA 4D               [ 1] 2032 	tnz	a
      00D0EB 27 03            [ 1] 2033 	jreq	00102$
                                   2034 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1137: bitstatus = SET;
      00D0ED A6 01            [ 1] 2035 	ld	a, #0x01
                                   2036 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1141: bitstatus = RESET;
      00D0EF 21                    2037 	.byte 0x21
      00D0F0                       2038 00102$:
      00D0F0 4F               [ 1] 2039 	clr	a
      00D0F1                       2040 00103$:
                                   2041 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1143: return (ITStatus)(bitstatus);
                                   2042 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1144: }
      00D0F1 5B 01            [ 2] 2043 	addw	sp, #1
      00D0F3 81               [ 4] 2044 	ret
                                   2045 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1156: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
                                   2046 ;	-----------------------------------------
                                   2047 ;	 function TIM2_ClearITPendingBit
                                   2048 ;	-----------------------------------------
      00D0F4                       2049 _TIM2_ClearITPendingBit:
                                   2050 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1159: assert_param(IS_TIM2_IT_OK(TIM2_IT));
      00D0F4 0D 03            [ 1] 2051 	tnz	(0x03, sp)
      00D0F6 27 06            [ 1] 2052 	jreq	00103$
      00D0F8 7B 03            [ 1] 2053 	ld	a, (0x03, sp)
      00D0FA A1 0F            [ 1] 2054 	cp	a, #0x0f
      00D0FC 23 0F            [ 2] 2055 	jrule	00104$
      00D0FE                       2056 00103$:
      00D0FE 4B 87            [ 1] 2057 	push	#0x87
      00D100 4B 04            [ 1] 2058 	push	#0x04
      00D102 5F               [ 1] 2059 	clrw	x
      00D103 89               [ 2] 2060 	pushw	x
      00D104 4B 17            [ 1] 2061 	push	#<(___str_0+0)
      00D106 4B 86            [ 1] 2062 	push	#((___str_0+0) >> 8)
      00D108 CD 00 00         [ 4] 2063 	call	_assert_failed
      00D10B 5B 06            [ 2] 2064 	addw	sp, #6
      00D10D                       2065 00104$:
                                   2066 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1162: TIM2->SR1 = (uint8_t)(~TIM2_IT);
      00D10D 7B 03            [ 1] 2067 	ld	a, (0x03, sp)
      00D10F 43               [ 1] 2068 	cpl	a
      00D110 C7 53 04         [ 1] 2069 	ld	0x5304, a
                                   2070 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1163: }
      00D113 81               [ 4] 2071 	ret
                                   2072 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1181: static void TI1_Config(uint8_t TIM2_ICPolarity,
                                   2073 ;	-----------------------------------------
                                   2074 ;	 function TI1_Config
                                   2075 ;	-----------------------------------------
      00D114                       2076 _TI1_Config:
      00D114 88               [ 1] 2077 	push	a
                                   2078 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00D115 72 11 53 0A      [ 1] 2079 	bres	21258, #0
                                   2080 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1189: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
      00D119 C6 53 07         [ 1] 2081 	ld	a, 0x5307
      00D11C A4 0C            [ 1] 2082 	and	a, #0x0c
      00D11E 6B 01            [ 1] 2083 	ld	(0x01, sp), a
                                   2084 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1190: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00D120 7B 06            [ 1] 2085 	ld	a, (0x06, sp)
      00D122 4E               [ 1] 2086 	swap	a
      00D123 A4 F0            [ 1] 2087 	and	a, #0xf0
      00D125 1A 05            [ 1] 2088 	or	a, (0x05, sp)
      00D127 1A 01            [ 1] 2089 	or	a, (0x01, sp)
      00D129 C7 53 07         [ 1] 2090 	ld	0x5307, a
                                   2091 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00D12C C6 53 0A         [ 1] 2092 	ld	a, 0x530a
                                   2093 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1193: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00D12F 0D 04            [ 1] 2094 	tnz	(0x04, sp)
      00D131 27 07            [ 1] 2095 	jreq	00102$
                                   2096 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1195: TIM2->CCER1 |= TIM2_CCER1_CC1P;
      00D133 AA 02            [ 1] 2097 	or	a, #0x02
      00D135 C7 53 0A         [ 1] 2098 	ld	0x530a, a
      00D138 20 05            [ 2] 2099 	jra	00103$
      00D13A                       2100 00102$:
                                   2101 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1199: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      00D13A A4 FD            [ 1] 2102 	and	a, #0xfd
      00D13C C7 53 0A         [ 1] 2103 	ld	0x530a, a
      00D13F                       2104 00103$:
                                   2105 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1202: TIM2->CCER1 |= TIM2_CCER1_CC1E;
      00D13F 72 10 53 0A      [ 1] 2106 	bset	21258, #0
                                   2107 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1203: }
      00D143 84               [ 1] 2108 	pop	a
      00D144 81               [ 4] 2109 	ret
                                   2110 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1221: static void TI2_Config(uint8_t TIM2_ICPolarity,
                                   2111 ;	-----------------------------------------
                                   2112 ;	 function TI2_Config
                                   2113 ;	-----------------------------------------
      00D145                       2114 _TI2_Config:
      00D145 88               [ 1] 2115 	push	a
                                   2116 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00D146 72 19 53 0A      [ 1] 2117 	bres	21258, #4
                                   2118 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1229: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
      00D14A C6 53 08         [ 1] 2119 	ld	a, 0x5308
      00D14D A4 0C            [ 1] 2120 	and	a, #0x0c
      00D14F 6B 01            [ 1] 2121 	ld	(0x01, sp), a
                                   2122 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1230: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00D151 7B 06            [ 1] 2123 	ld	a, (0x06, sp)
      00D153 4E               [ 1] 2124 	swap	a
      00D154 A4 F0            [ 1] 2125 	and	a, #0xf0
      00D156 1A 05            [ 1] 2126 	or	a, (0x05, sp)
      00D158 1A 01            [ 1] 2127 	or	a, (0x01, sp)
      00D15A C7 53 08         [ 1] 2128 	ld	0x5308, a
                                   2129 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00D15D C6 53 0A         [ 1] 2130 	ld	a, 0x530a
                                   2131 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1234: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00D160 0D 04            [ 1] 2132 	tnz	(0x04, sp)
      00D162 27 07            [ 1] 2133 	jreq	00102$
                                   2134 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1236: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00D164 AA 20            [ 1] 2135 	or	a, #0x20
      00D166 C7 53 0A         [ 1] 2136 	ld	0x530a, a
      00D169 20 05            [ 2] 2137 	jra	00103$
      00D16B                       2138 00102$:
                                   2139 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1240: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      00D16B A4 DF            [ 1] 2140 	and	a, #0xdf
      00D16D C7 53 0A         [ 1] 2141 	ld	0x530a, a
      00D170                       2142 00103$:
                                   2143 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1244: TIM2->CCER1 |= TIM2_CCER1_CC2E;
      00D170 72 18 53 0A      [ 1] 2144 	bset	21258, #4
                                   2145 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1245: }
      00D174 84               [ 1] 2146 	pop	a
      00D175 81               [ 4] 2147 	ret
                                   2148 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1261: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
                                   2149 ;	-----------------------------------------
                                   2150 ;	 function TI3_Config
                                   2151 ;	-----------------------------------------
      00D176                       2152 _TI3_Config:
      00D176 88               [ 1] 2153 	push	a
                                   2154 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
      00D177 72 11 53 0B      [ 1] 2155 	bres	21259, #0
                                   2156 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1268: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
      00D17B C6 53 09         [ 1] 2157 	ld	a, 0x5309
      00D17E A4 0C            [ 1] 2158 	and	a, #0x0c
      00D180 6B 01            [ 1] 2159 	ld	(0x01, sp), a
                                   2160 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1269: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00D182 7B 06            [ 1] 2161 	ld	a, (0x06, sp)
      00D184 4E               [ 1] 2162 	swap	a
      00D185 A4 F0            [ 1] 2163 	and	a, #0xf0
      00D187 1A 05            [ 1] 2164 	or	a, (0x05, sp)
      00D189 1A 01            [ 1] 2165 	or	a, (0x01, sp)
      00D18B C7 53 09         [ 1] 2166 	ld	0x5309, a
                                   2167 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
      00D18E C6 53 0B         [ 1] 2168 	ld	a, 0x530b
                                   2169 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1273: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00D191 0D 04            [ 1] 2170 	tnz	(0x04, sp)
      00D193 27 07            [ 1] 2171 	jreq	00102$
                                   2172 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1275: TIM2->CCER2 |= TIM2_CCER2_CC3P;
      00D195 AA 02            [ 1] 2173 	or	a, #0x02
      00D197 C7 53 0B         [ 1] 2174 	ld	0x530b, a
      00D19A 20 05            [ 2] 2175 	jra	00103$
      00D19C                       2176 00102$:
                                   2177 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1279: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      00D19C A4 FD            [ 1] 2178 	and	a, #0xfd
      00D19E C7 53 0B         [ 1] 2179 	ld	0x530b, a
      00D1A1                       2180 00103$:
                                   2181 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1282: TIM2->CCER2 |= TIM2_CCER2_CC3E;
      00D1A1 72 10 53 0B      [ 1] 2182 	bset	21259, #0
                                   2183 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim2.c: 1283: }
      00D1A5 84               [ 1] 2184 	pop	a
      00D1A6 81               [ 4] 2185 	ret
                                   2186 	.area CODE
                                   2187 	.area CONST
                                   2188 	.area CONST
      008617                       2189 ___str_0:
      008617 43 3A                 2190 	.ascii "C:"
      008619 5C                    2191 	.db 0x5c
      00861A 55 73 65 72 73        2192 	.ascii "Users"
      00861F 5C                    2193 	.db 0x5c
      008620 41 64 6D 69 6E        2194 	.ascii "Admin"
      008625 5C                    2195 	.db 0x5c
      008626 2E 70 6C 61 74 66 6F  2196 	.ascii ".platformio"
             72 6D 69 6F
      008631 5C                    2197 	.db 0x5c
      008632 70 61 63 6B 61 67 65  2198 	.ascii "packages"
             73
      00863A 5C                    2199 	.db 0x5c
      00863B 66 72 61 6D 65 77 6F  2200 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00864E 5C                    2201 	.db 0x5c
      00864F 4C 69 62 72 61 72 69  2202 	.ascii "Libraries"
             65 73
      008658 5C                    2203 	.db 0x5c
      008659 53 54 4D 38 53 5F 53  2204 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      00866F 5C                    2205 	.db 0x5c
      008670 73 72 63              2206 	.ascii "src"
      008673 5C                    2207 	.db 0x5c
      008674 73 74 6D 38 73 5F 74  2208 	.ascii "stm8s_tim2.c"
             69 6D 32 2E 63
      008680 00                    2209 	.db 0x00
                                   2210 	.area CODE
                                   2211 	.area INITIALIZER
                                   2212 	.area CABS (ABS)
