                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM1_DeInit
                                     13 	.globl _TIM1_TimeBaseInit
                                     14 	.globl _TIM1_OC1Init
                                     15 	.globl _TIM1_OC2Init
                                     16 	.globl _TIM1_OC3Init
                                     17 	.globl _TIM1_OC4Init
                                     18 	.globl _TIM1_BDTRConfig
                                     19 	.globl _TIM1_ICInit
                                     20 	.globl _TIM1_PWMIConfig
                                     21 	.globl _TIM1_Cmd
                                     22 	.globl _TIM1_CtrlPWMOutputs
                                     23 	.globl _TIM1_ITConfig
                                     24 	.globl _TIM1_InternalClockConfig
                                     25 	.globl _TIM1_ETRClockMode1Config
                                     26 	.globl _TIM1_ETRClockMode2Config
                                     27 	.globl _TIM1_ETRConfig
                                     28 	.globl _TIM1_TIxExternalClockConfig
                                     29 	.globl _TIM1_SelectInputTrigger
                                     30 	.globl _TIM1_UpdateDisableConfig
                                     31 	.globl _TIM1_UpdateRequestConfig
                                     32 	.globl _TIM1_SelectHallSensor
                                     33 	.globl _TIM1_SelectOnePulseMode
                                     34 	.globl _TIM1_SelectOutputTrigger
                                     35 	.globl _TIM1_SelectSlaveMode
                                     36 	.globl _TIM1_SelectMasterSlaveMode
                                     37 	.globl _TIM1_EncoderInterfaceConfig
                                     38 	.globl _TIM1_PrescalerConfig
                                     39 	.globl _TIM1_CounterModeConfig
                                     40 	.globl _TIM1_ForcedOC1Config
                                     41 	.globl _TIM1_ForcedOC2Config
                                     42 	.globl _TIM1_ForcedOC3Config
                                     43 	.globl _TIM1_ForcedOC4Config
                                     44 	.globl _TIM1_ARRPreloadConfig
                                     45 	.globl _TIM1_SelectCOM
                                     46 	.globl _TIM1_CCPreloadControl
                                     47 	.globl _TIM1_OC1PreloadConfig
                                     48 	.globl _TIM1_OC2PreloadConfig
                                     49 	.globl _TIM1_OC3PreloadConfig
                                     50 	.globl _TIM1_OC4PreloadConfig
                                     51 	.globl _TIM1_OC1FastConfig
                                     52 	.globl _TIM1_OC2FastConfig
                                     53 	.globl _TIM1_OC3FastConfig
                                     54 	.globl _TIM1_OC4FastConfig
                                     55 	.globl _TIM1_GenerateEvent
                                     56 	.globl _TIM1_OC1PolarityConfig
                                     57 	.globl _TIM1_OC1NPolarityConfig
                                     58 	.globl _TIM1_OC2PolarityConfig
                                     59 	.globl _TIM1_OC2NPolarityConfig
                                     60 	.globl _TIM1_OC3PolarityConfig
                                     61 	.globl _TIM1_OC3NPolarityConfig
                                     62 	.globl _TIM1_OC4PolarityConfig
                                     63 	.globl _TIM1_CCxCmd
                                     64 	.globl _TIM1_CCxNCmd
                                     65 	.globl _TIM1_SelectOCxM
                                     66 	.globl _TIM1_SetCounter
                                     67 	.globl _TIM1_SetAutoreload
                                     68 	.globl _TIM1_SetCompare1
                                     69 	.globl _TIM1_SetCompare2
                                     70 	.globl _TIM1_SetCompare3
                                     71 	.globl _TIM1_SetCompare4
                                     72 	.globl _TIM1_SetIC1Prescaler
                                     73 	.globl _TIM1_SetIC2Prescaler
                                     74 	.globl _TIM1_SetIC3Prescaler
                                     75 	.globl _TIM1_SetIC4Prescaler
                                     76 	.globl _TIM1_GetCapture1
                                     77 	.globl _TIM1_GetCapture2
                                     78 	.globl _TIM1_GetCapture3
                                     79 	.globl _TIM1_GetCapture4
                                     80 	.globl _TIM1_GetCounter
                                     81 	.globl _TIM1_GetPrescaler
                                     82 	.globl _TIM1_GetFlagStatus
                                     83 	.globl _TIM1_ClearFlag
                                     84 	.globl _TIM1_GetITStatus
                                     85 	.globl _TIM1_ClearITPendingBit
                                     86 ;--------------------------------------------------------
                                     87 ; ram data
                                     88 ;--------------------------------------------------------
                                     89 	.area DATA
                                     90 ;--------------------------------------------------------
                                     91 ; ram data
                                     92 ;--------------------------------------------------------
                                     93 	.area INITIALIZED
                                     94 ;--------------------------------------------------------
                                     95 ; absolute external ram data
                                     96 ;--------------------------------------------------------
                                     97 	.area DABS (ABS)
                                     98 
                                     99 ; default segment ordering for linker
                                    100 	.area HOME
                                    101 	.area GSINIT
                                    102 	.area GSFINAL
                                    103 	.area CONST
                                    104 	.area INITIALIZER
                                    105 	.area CODE
                                    106 
                                    107 ;--------------------------------------------------------
                                    108 ; global & static initialisations
                                    109 ;--------------------------------------------------------
                                    110 	.area HOME
                                    111 	.area GSINIT
                                    112 	.area GSFINAL
                                    113 	.area GSINIT
                                    114 ;--------------------------------------------------------
                                    115 ; Home
                                    116 ;--------------------------------------------------------
                                    117 	.area HOME
                                    118 	.area HOME
                                    119 ;--------------------------------------------------------
                                    120 ; code
                                    121 ;--------------------------------------------------------
                                    122 	.area CODE
                                    123 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 58: void TIM1_DeInit(void)
                                    124 ;	-----------------------------------------
                                    125 ;	 function TIM1_DeInit
                                    126 ;	-----------------------------------------
      00B0E6                        127 _TIM1_DeInit:
                                    128 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 60: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
      00B0E6 35 00 52 50      [ 1]  129 	mov	0x5250+0, #0x00
                                    130 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 61: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
      00B0EA 35 00 52 51      [ 1]  131 	mov	0x5251+0, #0x00
                                    132 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 62: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      00B0EE 35 00 52 52      [ 1]  133 	mov	0x5252+0, #0x00
                                    134 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 63: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
      00B0F2 35 00 52 53      [ 1]  135 	mov	0x5253+0, #0x00
                                    136 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 64: TIM1->IER  = TIM1_IER_RESET_VALUE;
      00B0F6 35 00 52 54      [ 1]  137 	mov	0x5254+0, #0x00
                                    138 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 65: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
      00B0FA 35 00 52 56      [ 1]  139 	mov	0x5256+0, #0x00
                                    140 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 67: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      00B0FE 35 00 52 5C      [ 1]  141 	mov	0x525c+0, #0x00
                                    142 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 68: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      00B102 35 00 52 5D      [ 1]  143 	mov	0x525d+0, #0x00
                                    144 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 70: TIM1->CCMR1 = 0x01;
      00B106 35 01 52 58      [ 1]  145 	mov	0x5258+0, #0x01
                                    146 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 71: TIM1->CCMR2 = 0x01;
      00B10A 35 01 52 59      [ 1]  147 	mov	0x5259+0, #0x01
                                    148 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 72: TIM1->CCMR3 = 0x01;
      00B10E 35 01 52 5A      [ 1]  149 	mov	0x525a+0, #0x01
                                    150 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 73: TIM1->CCMR4 = 0x01;
      00B112 35 01 52 5B      [ 1]  151 	mov	0x525b+0, #0x01
                                    152 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 75: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      00B116 35 00 52 5C      [ 1]  153 	mov	0x525c+0, #0x00
                                    154 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 76: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      00B11A 35 00 52 5D      [ 1]  155 	mov	0x525d+0, #0x00
                                    156 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 77: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      00B11E 35 00 52 58      [ 1]  157 	mov	0x5258+0, #0x00
                                    158 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 78: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      00B122 35 00 52 59      [ 1]  159 	mov	0x5259+0, #0x00
                                    160 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 79: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      00B126 35 00 52 5A      [ 1]  161 	mov	0x525a+0, #0x00
                                    162 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 80: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      00B12A 35 00 52 5B      [ 1]  163 	mov	0x525b+0, #0x00
                                    164 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 81: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      00B12E 35 00 52 5E      [ 1]  165 	mov	0x525e+0, #0x00
                                    166 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 82: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      00B132 35 00 52 5F      [ 1]  167 	mov	0x525f+0, #0x00
                                    168 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 83: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      00B136 35 00 52 60      [ 1]  169 	mov	0x5260+0, #0x00
                                    170 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 84: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      00B13A 35 00 52 61      [ 1]  171 	mov	0x5261+0, #0x00
                                    172 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 85: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
      00B13E 35 FF 52 62      [ 1]  173 	mov	0x5262+0, #0xff
                                    174 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 86: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
      00B142 35 FF 52 63      [ 1]  175 	mov	0x5263+0, #0xff
                                    176 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 87: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      00B146 35 00 52 65      [ 1]  177 	mov	0x5265+0, #0x00
                                    178 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 88: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      00B14A 35 00 52 66      [ 1]  179 	mov	0x5266+0, #0x00
                                    180 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 89: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      00B14E 35 00 52 67      [ 1]  181 	mov	0x5267+0, #0x00
                                    182 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 90: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      00B152 35 00 52 68      [ 1]  183 	mov	0x5268+0, #0x00
                                    184 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 91: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      00B156 35 00 52 69      [ 1]  185 	mov	0x5269+0, #0x00
                                    186 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 92: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      00B15A 35 00 52 6A      [ 1]  187 	mov	0x526a+0, #0x00
                                    188 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 93: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      00B15E 35 00 52 6B      [ 1]  189 	mov	0x526b+0, #0x00
                                    190 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 94: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      00B162 35 00 52 6C      [ 1]  191 	mov	0x526c+0, #0x00
                                    192 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 95: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
      00B166 35 00 52 6F      [ 1]  193 	mov	0x526f+0, #0x00
                                    194 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 96: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
      00B16A 35 01 52 57      [ 1]  195 	mov	0x5257+0, #0x01
                                    196 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 97: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
      00B16E 35 00 52 6E      [ 1]  197 	mov	0x526e+0, #0x00
                                    198 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 98: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
      00B172 35 00 52 6D      [ 1]  199 	mov	0x526d+0, #0x00
                                    200 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 99: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
      00B176 35 00 52 64      [ 1]  201 	mov	0x5264+0, #0x00
                                    202 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 100: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
      00B17A 35 00 52 55      [ 1]  203 	mov	0x5255+0, #0x00
                                    204 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 101: }
      00B17E 81               [ 4]  205 	ret
                                    206 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 111: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    207 ;	-----------------------------------------
                                    208 ;	 function TIM1_TimeBaseInit
                                    209 ;	-----------------------------------------
      00B17F                        210 _TIM1_TimeBaseInit:
                                    211 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 117: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      00B17F 0D 05            [ 1]  212 	tnz	(0x05, sp)
      00B181 27 27            [ 1]  213 	jreq	00104$
      00B183 7B 05            [ 1]  214 	ld	a, (0x05, sp)
      00B185 A1 10            [ 1]  215 	cp	a, #0x10
      00B187 27 21            [ 1]  216 	jreq	00104$
      00B189 7B 05            [ 1]  217 	ld	a, (0x05, sp)
      00B18B A1 20            [ 1]  218 	cp	a, #0x20
      00B18D 27 1B            [ 1]  219 	jreq	00104$
      00B18F 7B 05            [ 1]  220 	ld	a, (0x05, sp)
      00B191 A1 40            [ 1]  221 	cp	a, #0x40
      00B193 27 15            [ 1]  222 	jreq	00104$
      00B195 7B 05            [ 1]  223 	ld	a, (0x05, sp)
      00B197 A1 60            [ 1]  224 	cp	a, #0x60
      00B199 27 0F            [ 1]  225 	jreq	00104$
      00B19B 4B 75            [ 1]  226 	push	#0x75
      00B19D 5F               [ 1]  227 	clrw	x
      00B19E 89               [ 2]  228 	pushw	x
      00B19F 4B 00            [ 1]  229 	push	#0x00
      00B1A1 4B AD            [ 1]  230 	push	#<(___str_0+0)
      00B1A3 4B 85            [ 1]  231 	push	#((___str_0+0) >> 8)
      00B1A5 CD 00 00         [ 4]  232 	call	_assert_failed
      00B1A8 5B 06            [ 2]  233 	addw	sp, #6
      00B1AA                        234 00104$:
                                    235 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 120: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      00B1AA 7B 06            [ 1]  236 	ld	a, (0x06, sp)
      00B1AC C7 52 62         [ 1]  237 	ld	0x5262, a
                                    238 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 121: TIM1->ARRL = (uint8_t)(TIM1_Period);
      00B1AF 7B 07            [ 1]  239 	ld	a, (0x07, sp)
      00B1B1 C7 52 63         [ 1]  240 	ld	0x5263, a
                                    241 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 124: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      00B1B4 7B 03            [ 1]  242 	ld	a, (0x03, sp)
      00B1B6 5F               [ 1]  243 	clrw	x
      00B1B7 C7 52 60         [ 1]  244 	ld	0x5260, a
                                    245 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 125: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      00B1BA 7B 04            [ 1]  246 	ld	a, (0x04, sp)
      00B1BC C7 52 61         [ 1]  247 	ld	0x5261, a
                                    248 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 128: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
      00B1BF C6 52 50         [ 1]  249 	ld	a, 0x5250
      00B1C2 A4 8F            [ 1]  250 	and	a, #0x8f
                                    251 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 129: | (uint8_t)(TIM1_CounterMode));
      00B1C4 1A 05            [ 1]  252 	or	a, (0x05, sp)
      00B1C6 C7 52 50         [ 1]  253 	ld	0x5250, a
                                    254 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 132: TIM1->RCR = TIM1_RepetitionCounter;
      00B1C9 AE 52 64         [ 2]  255 	ldw	x, #0x5264
      00B1CC 7B 08            [ 1]  256 	ld	a, (0x08, sp)
      00B1CE F7               [ 1]  257 	ld	(x), a
                                    258 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 133: }
      00B1CF 81               [ 4]  259 	ret
                                    260 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 154: void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    261 ;	-----------------------------------------
                                    262 ;	 function TIM1_OC1Init
                                    263 ;	-----------------------------------------
      00B1D0                        264 _TIM1_OC1Init:
      00B1D0 52 03            [ 2]  265 	sub	sp, #3
                                    266 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 164: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      00B1D2 0D 06            [ 1]  267 	tnz	(0x06, sp)
      00B1D4 27 2D            [ 1]  268 	jreq	00104$
      00B1D6 7B 06            [ 1]  269 	ld	a, (0x06, sp)
      00B1D8 A1 10            [ 1]  270 	cp	a, #0x10
      00B1DA 27 27            [ 1]  271 	jreq	00104$
      00B1DC 7B 06            [ 1]  272 	ld	a, (0x06, sp)
      00B1DE A1 20            [ 1]  273 	cp	a, #0x20
      00B1E0 27 21            [ 1]  274 	jreq	00104$
      00B1E2 7B 06            [ 1]  275 	ld	a, (0x06, sp)
      00B1E4 A1 30            [ 1]  276 	cp	a, #0x30
      00B1E6 27 1B            [ 1]  277 	jreq	00104$
      00B1E8 7B 06            [ 1]  278 	ld	a, (0x06, sp)
      00B1EA A1 60            [ 1]  279 	cp	a, #0x60
      00B1EC 27 15            [ 1]  280 	jreq	00104$
      00B1EE 7B 06            [ 1]  281 	ld	a, (0x06, sp)
      00B1F0 A1 70            [ 1]  282 	cp	a, #0x70
      00B1F2 27 0F            [ 1]  283 	jreq	00104$
      00B1F4 4B A4            [ 1]  284 	push	#0xa4
      00B1F6 5F               [ 1]  285 	clrw	x
      00B1F7 89               [ 2]  286 	pushw	x
      00B1F8 4B 00            [ 1]  287 	push	#0x00
      00B1FA 4B AD            [ 1]  288 	push	#<(___str_0+0)
      00B1FC 4B 85            [ 1]  289 	push	#((___str_0+0) >> 8)
      00B1FE CD 00 00         [ 4]  290 	call	_assert_failed
      00B201 5B 06            [ 2]  291 	addw	sp, #6
      00B203                        292 00104$:
                                    293 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 165: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      00B203 0D 07            [ 1]  294 	tnz	(0x07, sp)
      00B205 27 15            [ 1]  295 	jreq	00121$
      00B207 7B 07            [ 1]  296 	ld	a, (0x07, sp)
      00B209 A1 11            [ 1]  297 	cp	a, #0x11
      00B20B 27 0F            [ 1]  298 	jreq	00121$
      00B20D 4B A5            [ 1]  299 	push	#0xa5
      00B20F 5F               [ 1]  300 	clrw	x
      00B210 89               [ 2]  301 	pushw	x
      00B211 4B 00            [ 1]  302 	push	#0x00
      00B213 4B AD            [ 1]  303 	push	#<(___str_0+0)
      00B215 4B 85            [ 1]  304 	push	#((___str_0+0) >> 8)
      00B217 CD 00 00         [ 4]  305 	call	_assert_failed
      00B21A 5B 06            [ 2]  306 	addw	sp, #6
      00B21C                        307 00121$:
                                    308 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 166: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
      00B21C 0D 08            [ 1]  309 	tnz	(0x08, sp)
      00B21E 27 15            [ 1]  310 	jreq	00126$
      00B220 7B 08            [ 1]  311 	ld	a, (0x08, sp)
      00B222 A1 44            [ 1]  312 	cp	a, #0x44
      00B224 27 0F            [ 1]  313 	jreq	00126$
      00B226 4B A6            [ 1]  314 	push	#0xa6
      00B228 5F               [ 1]  315 	clrw	x
      00B229 89               [ 2]  316 	pushw	x
      00B22A 4B 00            [ 1]  317 	push	#0x00
      00B22C 4B AD            [ 1]  318 	push	#<(___str_0+0)
      00B22E 4B 85            [ 1]  319 	push	#((___str_0+0) >> 8)
      00B230 CD 00 00         [ 4]  320 	call	_assert_failed
      00B233 5B 06            [ 2]  321 	addw	sp, #6
      00B235                        322 00126$:
                                    323 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 167: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00B235 0D 0B            [ 1]  324 	tnz	(0x0b, sp)
      00B237 27 15            [ 1]  325 	jreq	00131$
      00B239 7B 0B            [ 1]  326 	ld	a, (0x0b, sp)
      00B23B A1 22            [ 1]  327 	cp	a, #0x22
      00B23D 27 0F            [ 1]  328 	jreq	00131$
      00B23F 4B A7            [ 1]  329 	push	#0xa7
      00B241 5F               [ 1]  330 	clrw	x
      00B242 89               [ 2]  331 	pushw	x
      00B243 4B 00            [ 1]  332 	push	#0x00
      00B245 4B AD            [ 1]  333 	push	#<(___str_0+0)
      00B247 4B 85            [ 1]  334 	push	#((___str_0+0) >> 8)
      00B249 CD 00 00         [ 4]  335 	call	_assert_failed
      00B24C 5B 06            [ 2]  336 	addw	sp, #6
      00B24E                        337 00131$:
                                    338 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 168: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00B24E 0D 0C            [ 1]  339 	tnz	(0x0c, sp)
      00B250 27 15            [ 1]  340 	jreq	00136$
      00B252 7B 0C            [ 1]  341 	ld	a, (0x0c, sp)
      00B254 A1 88            [ 1]  342 	cp	a, #0x88
      00B256 27 0F            [ 1]  343 	jreq	00136$
      00B258 4B A8            [ 1]  344 	push	#0xa8
      00B25A 5F               [ 1]  345 	clrw	x
      00B25B 89               [ 2]  346 	pushw	x
      00B25C 4B 00            [ 1]  347 	push	#0x00
      00B25E 4B AD            [ 1]  348 	push	#<(___str_0+0)
      00B260 4B 85            [ 1]  349 	push	#((___str_0+0) >> 8)
      00B262 CD 00 00         [ 4]  350 	call	_assert_failed
      00B265 5B 06            [ 2]  351 	addw	sp, #6
      00B267                        352 00136$:
                                    353 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 169: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      00B267 7B 0D            [ 1]  354 	ld	a, (0x0d, sp)
      00B269 A1 55            [ 1]  355 	cp	a, #0x55
      00B26B 27 13            [ 1]  356 	jreq	00141$
      00B26D 0D 0D            [ 1]  357 	tnz	(0x0d, sp)
      00B26F 27 0F            [ 1]  358 	jreq	00141$
      00B271 4B A9            [ 1]  359 	push	#0xa9
      00B273 5F               [ 1]  360 	clrw	x
      00B274 89               [ 2]  361 	pushw	x
      00B275 4B 00            [ 1]  362 	push	#0x00
      00B277 4B AD            [ 1]  363 	push	#<(___str_0+0)
      00B279 4B 85            [ 1]  364 	push	#((___str_0+0) >> 8)
      00B27B CD 00 00         [ 4]  365 	call	_assert_failed
      00B27E 5B 06            [ 2]  366 	addw	sp, #6
      00B280                        367 00141$:
                                    368 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 170: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
      00B280 7B 0E            [ 1]  369 	ld	a, (0x0e, sp)
      00B282 A1 2A            [ 1]  370 	cp	a, #0x2a
      00B284 27 13            [ 1]  371 	jreq	00146$
      00B286 0D 0E            [ 1]  372 	tnz	(0x0e, sp)
      00B288 27 0F            [ 1]  373 	jreq	00146$
      00B28A 4B AA            [ 1]  374 	push	#0xaa
      00B28C 5F               [ 1]  375 	clrw	x
      00B28D 89               [ 2]  376 	pushw	x
      00B28E 4B 00            [ 1]  377 	push	#0x00
      00B290 4B AD            [ 1]  378 	push	#<(___str_0+0)
      00B292 4B 85            [ 1]  379 	push	#((___str_0+0) >> 8)
      00B294 CD 00 00         [ 4]  380 	call	_assert_failed
      00B297 5B 06            [ 2]  381 	addw	sp, #6
      00B299                        382 00146$:
                                    383 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 174: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
      00B299 C6 52 5C         [ 1]  384 	ld	a, 0x525c
      00B29C A4 F0            [ 1]  385 	and	a, #0xf0
      00B29E C7 52 5C         [ 1]  386 	ld	0x525c, a
                                    387 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 178: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
      00B2A1 C6 52 5C         [ 1]  388 	ld	a, 0x525c
      00B2A4 6B 01            [ 1]  389 	ld	(0x01, sp), a
      00B2A6 7B 07            [ 1]  390 	ld	a, (0x07, sp)
      00B2A8 A4 01            [ 1]  391 	and	a, #0x01
      00B2AA 6B 03            [ 1]  392 	ld	(0x03, sp), a
                                    393 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 179: | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
      00B2AC 7B 08            [ 1]  394 	ld	a, (0x08, sp)
      00B2AE A4 04            [ 1]  395 	and	a, #0x04
      00B2B0 1A 03            [ 1]  396 	or	a, (0x03, sp)
      00B2B2 6B 02            [ 1]  397 	ld	(0x02, sp), a
                                    398 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 180: | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
      00B2B4 7B 0B            [ 1]  399 	ld	a, (0x0b, sp)
      00B2B6 A4 02            [ 1]  400 	and	a, #0x02
      00B2B8 6B 03            [ 1]  401 	ld	(0x03, sp), a
                                    402 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 181: | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
      00B2BA 7B 0C            [ 1]  403 	ld	a, (0x0c, sp)
      00B2BC A4 08            [ 1]  404 	and	a, #0x08
      00B2BE 1A 03            [ 1]  405 	or	a, (0x03, sp)
      00B2C0 1A 02            [ 1]  406 	or	a, (0x02, sp)
      00B2C2 1A 01            [ 1]  407 	or	a, (0x01, sp)
      00B2C4 C7 52 5C         [ 1]  408 	ld	0x525c, a
                                    409 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 184: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      00B2C7 C6 52 58         [ 1]  410 	ld	a, 0x5258
      00B2CA A4 8F            [ 1]  411 	and	a, #0x8f
                                    412 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 185: (uint8_t)TIM1_OCMode);
      00B2CC 1A 06            [ 1]  413 	or	a, (0x06, sp)
      00B2CE C7 52 58         [ 1]  414 	ld	0x5258, a
                                    415 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 188: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
      00B2D1 C6 52 6F         [ 1]  416 	ld	a, 0x526f
      00B2D4 A4 FC            [ 1]  417 	and	a, #0xfc
      00B2D6 C7 52 6F         [ 1]  418 	ld	0x526f, a
                                    419 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 190: TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
      00B2D9 C6 52 6F         [ 1]  420 	ld	a, 0x526f
      00B2DC 6B 02            [ 1]  421 	ld	(0x02, sp), a
      00B2DE 7B 0D            [ 1]  422 	ld	a, (0x0d, sp)
      00B2E0 A4 01            [ 1]  423 	and	a, #0x01
      00B2E2 6B 03            [ 1]  424 	ld	(0x03, sp), a
                                    425 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 191: (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
      00B2E4 7B 0E            [ 1]  426 	ld	a, (0x0e, sp)
      00B2E6 A4 02            [ 1]  427 	and	a, #0x02
      00B2E8 1A 03            [ 1]  428 	or	a, (0x03, sp)
      00B2EA 1A 02            [ 1]  429 	or	a, (0x02, sp)
      00B2EC C7 52 6F         [ 1]  430 	ld	0x526f, a
                                    431 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 194: TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
      00B2EF 7B 09            [ 1]  432 	ld	a, (0x09, sp)
      00B2F1 C7 52 65         [ 1]  433 	ld	0x5265, a
                                    434 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 195: TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
      00B2F4 7B 0A            [ 1]  435 	ld	a, (0x0a, sp)
      00B2F6 C7 52 66         [ 1]  436 	ld	0x5266, a
                                    437 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 196: }
      00B2F9 5B 03            [ 2]  438 	addw	sp, #3
      00B2FB 81               [ 4]  439 	ret
                                    440 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 217: void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    441 ;	-----------------------------------------
                                    442 ;	 function TIM1_OC2Init
                                    443 ;	-----------------------------------------
      00B2FC                        444 _TIM1_OC2Init:
      00B2FC 52 03            [ 2]  445 	sub	sp, #3
                                    446 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 227: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      00B2FE 0D 06            [ 1]  447 	tnz	(0x06, sp)
      00B300 27 2D            [ 1]  448 	jreq	00104$
      00B302 7B 06            [ 1]  449 	ld	a, (0x06, sp)
      00B304 A1 10            [ 1]  450 	cp	a, #0x10
      00B306 27 27            [ 1]  451 	jreq	00104$
      00B308 7B 06            [ 1]  452 	ld	a, (0x06, sp)
      00B30A A1 20            [ 1]  453 	cp	a, #0x20
      00B30C 27 21            [ 1]  454 	jreq	00104$
      00B30E 7B 06            [ 1]  455 	ld	a, (0x06, sp)
      00B310 A1 30            [ 1]  456 	cp	a, #0x30
      00B312 27 1B            [ 1]  457 	jreq	00104$
      00B314 7B 06            [ 1]  458 	ld	a, (0x06, sp)
      00B316 A1 60            [ 1]  459 	cp	a, #0x60
      00B318 27 15            [ 1]  460 	jreq	00104$
      00B31A 7B 06            [ 1]  461 	ld	a, (0x06, sp)
      00B31C A1 70            [ 1]  462 	cp	a, #0x70
      00B31E 27 0F            [ 1]  463 	jreq	00104$
      00B320 4B E3            [ 1]  464 	push	#0xe3
      00B322 5F               [ 1]  465 	clrw	x
      00B323 89               [ 2]  466 	pushw	x
      00B324 4B 00            [ 1]  467 	push	#0x00
      00B326 4B AD            [ 1]  468 	push	#<(___str_0+0)
      00B328 4B 85            [ 1]  469 	push	#((___str_0+0) >> 8)
      00B32A CD 00 00         [ 4]  470 	call	_assert_failed
      00B32D 5B 06            [ 2]  471 	addw	sp, #6
      00B32F                        472 00104$:
                                    473 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 228: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      00B32F 0D 07            [ 1]  474 	tnz	(0x07, sp)
      00B331 27 15            [ 1]  475 	jreq	00121$
      00B333 7B 07            [ 1]  476 	ld	a, (0x07, sp)
      00B335 A1 11            [ 1]  477 	cp	a, #0x11
      00B337 27 0F            [ 1]  478 	jreq	00121$
      00B339 4B E4            [ 1]  479 	push	#0xe4
      00B33B 5F               [ 1]  480 	clrw	x
      00B33C 89               [ 2]  481 	pushw	x
      00B33D 4B 00            [ 1]  482 	push	#0x00
      00B33F 4B AD            [ 1]  483 	push	#<(___str_0+0)
      00B341 4B 85            [ 1]  484 	push	#((___str_0+0) >> 8)
      00B343 CD 00 00         [ 4]  485 	call	_assert_failed
      00B346 5B 06            [ 2]  486 	addw	sp, #6
      00B348                        487 00121$:
                                    488 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 229: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
      00B348 0D 08            [ 1]  489 	tnz	(0x08, sp)
      00B34A 27 15            [ 1]  490 	jreq	00126$
      00B34C 7B 08            [ 1]  491 	ld	a, (0x08, sp)
      00B34E A1 44            [ 1]  492 	cp	a, #0x44
      00B350 27 0F            [ 1]  493 	jreq	00126$
      00B352 4B E5            [ 1]  494 	push	#0xe5
      00B354 5F               [ 1]  495 	clrw	x
      00B355 89               [ 2]  496 	pushw	x
      00B356 4B 00            [ 1]  497 	push	#0x00
      00B358 4B AD            [ 1]  498 	push	#<(___str_0+0)
      00B35A 4B 85            [ 1]  499 	push	#((___str_0+0) >> 8)
      00B35C CD 00 00         [ 4]  500 	call	_assert_failed
      00B35F 5B 06            [ 2]  501 	addw	sp, #6
      00B361                        502 00126$:
                                    503 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 230: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00B361 0D 0B            [ 1]  504 	tnz	(0x0b, sp)
      00B363 27 15            [ 1]  505 	jreq	00131$
      00B365 7B 0B            [ 1]  506 	ld	a, (0x0b, sp)
      00B367 A1 22            [ 1]  507 	cp	a, #0x22
      00B369 27 0F            [ 1]  508 	jreq	00131$
      00B36B 4B E6            [ 1]  509 	push	#0xe6
      00B36D 5F               [ 1]  510 	clrw	x
      00B36E 89               [ 2]  511 	pushw	x
      00B36F 4B 00            [ 1]  512 	push	#0x00
      00B371 4B AD            [ 1]  513 	push	#<(___str_0+0)
      00B373 4B 85            [ 1]  514 	push	#((___str_0+0) >> 8)
      00B375 CD 00 00         [ 4]  515 	call	_assert_failed
      00B378 5B 06            [ 2]  516 	addw	sp, #6
      00B37A                        517 00131$:
                                    518 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 231: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00B37A 0D 0C            [ 1]  519 	tnz	(0x0c, sp)
      00B37C 27 15            [ 1]  520 	jreq	00136$
      00B37E 7B 0C            [ 1]  521 	ld	a, (0x0c, sp)
      00B380 A1 88            [ 1]  522 	cp	a, #0x88
      00B382 27 0F            [ 1]  523 	jreq	00136$
      00B384 4B E7            [ 1]  524 	push	#0xe7
      00B386 5F               [ 1]  525 	clrw	x
      00B387 89               [ 2]  526 	pushw	x
      00B388 4B 00            [ 1]  527 	push	#0x00
      00B38A 4B AD            [ 1]  528 	push	#<(___str_0+0)
      00B38C 4B 85            [ 1]  529 	push	#((___str_0+0) >> 8)
      00B38E CD 00 00         [ 4]  530 	call	_assert_failed
      00B391 5B 06            [ 2]  531 	addw	sp, #6
      00B393                        532 00136$:
                                    533 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 232: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      00B393 7B 0D            [ 1]  534 	ld	a, (0x0d, sp)
      00B395 A1 55            [ 1]  535 	cp	a, #0x55
      00B397 27 13            [ 1]  536 	jreq	00141$
      00B399 0D 0D            [ 1]  537 	tnz	(0x0d, sp)
      00B39B 27 0F            [ 1]  538 	jreq	00141$
      00B39D 4B E8            [ 1]  539 	push	#0xe8
      00B39F 5F               [ 1]  540 	clrw	x
      00B3A0 89               [ 2]  541 	pushw	x
      00B3A1 4B 00            [ 1]  542 	push	#0x00
      00B3A3 4B AD            [ 1]  543 	push	#<(___str_0+0)
      00B3A5 4B 85            [ 1]  544 	push	#((___str_0+0) >> 8)
      00B3A7 CD 00 00         [ 4]  545 	call	_assert_failed
      00B3AA 5B 06            [ 2]  546 	addw	sp, #6
      00B3AC                        547 00141$:
                                    548 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 233: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
      00B3AC 7B 0E            [ 1]  549 	ld	a, (0x0e, sp)
      00B3AE A1 2A            [ 1]  550 	cp	a, #0x2a
      00B3B0 27 13            [ 1]  551 	jreq	00146$
      00B3B2 0D 0E            [ 1]  552 	tnz	(0x0e, sp)
      00B3B4 27 0F            [ 1]  553 	jreq	00146$
      00B3B6 4B E9            [ 1]  554 	push	#0xe9
      00B3B8 5F               [ 1]  555 	clrw	x
      00B3B9 89               [ 2]  556 	pushw	x
      00B3BA 4B 00            [ 1]  557 	push	#0x00
      00B3BC 4B AD            [ 1]  558 	push	#<(___str_0+0)
      00B3BE 4B 85            [ 1]  559 	push	#((___str_0+0) >> 8)
      00B3C0 CD 00 00         [ 4]  560 	call	_assert_failed
      00B3C3 5B 06            [ 2]  561 	addw	sp, #6
      00B3C5                        562 00146$:
                                    563 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 237: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
      00B3C5 C6 52 5C         [ 1]  564 	ld	a, 0x525c
      00B3C8 A4 0F            [ 1]  565 	and	a, #0x0f
      00B3CA C7 52 5C         [ 1]  566 	ld	0x525c, a
                                    567 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 242: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
      00B3CD C6 52 5C         [ 1]  568 	ld	a, 0x525c
      00B3D0 6B 01            [ 1]  569 	ld	(0x01, sp), a
      00B3D2 7B 07            [ 1]  570 	ld	a, (0x07, sp)
      00B3D4 A4 10            [ 1]  571 	and	a, #0x10
      00B3D6 6B 03            [ 1]  572 	ld	(0x03, sp), a
                                    573 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 243: (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
      00B3D8 7B 08            [ 1]  574 	ld	a, (0x08, sp)
      00B3DA A4 40            [ 1]  575 	and	a, #0x40
      00B3DC 1A 03            [ 1]  576 	or	a, (0x03, sp)
      00B3DE 6B 02            [ 1]  577 	ld	(0x02, sp), a
                                    578 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 244: (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
      00B3E0 7B 0B            [ 1]  579 	ld	a, (0x0b, sp)
      00B3E2 A4 20            [ 1]  580 	and	a, #0x20
      00B3E4 6B 03            [ 1]  581 	ld	(0x03, sp), a
                                    582 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 245: (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
      00B3E6 7B 0C            [ 1]  583 	ld	a, (0x0c, sp)
      00B3E8 A4 80            [ 1]  584 	and	a, #0x80
      00B3EA 1A 03            [ 1]  585 	or	a, (0x03, sp)
      00B3EC 1A 02            [ 1]  586 	or	a, (0x02, sp)
      00B3EE 1A 01            [ 1]  587 	or	a, (0x01, sp)
      00B3F0 C7 52 5C         [ 1]  588 	ld	0x525c, a
                                    589 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 248: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      00B3F3 C6 52 59         [ 1]  590 	ld	a, 0x5259
      00B3F6 A4 8F            [ 1]  591 	and	a, #0x8f
                                    592 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 249: (uint8_t)TIM1_OCMode);
      00B3F8 1A 06            [ 1]  593 	or	a, (0x06, sp)
      00B3FA C7 52 59         [ 1]  594 	ld	0x5259, a
                                    595 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 252: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
      00B3FD C6 52 6F         [ 1]  596 	ld	a, 0x526f
      00B400 A4 F3            [ 1]  597 	and	a, #0xf3
      00B402 C7 52 6F         [ 1]  598 	ld	0x526f, a
                                    599 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 254: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
      00B405 C6 52 6F         [ 1]  600 	ld	a, 0x526f
      00B408 6B 02            [ 1]  601 	ld	(0x02, sp), a
      00B40A 7B 0D            [ 1]  602 	ld	a, (0x0d, sp)
      00B40C A4 04            [ 1]  603 	and	a, #0x04
      00B40E 6B 03            [ 1]  604 	ld	(0x03, sp), a
                                    605 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 255: (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
      00B410 7B 0E            [ 1]  606 	ld	a, (0x0e, sp)
      00B412 A4 08            [ 1]  607 	and	a, #0x08
      00B414 1A 03            [ 1]  608 	or	a, (0x03, sp)
      00B416 1A 02            [ 1]  609 	or	a, (0x02, sp)
      00B418 C7 52 6F         [ 1]  610 	ld	0x526f, a
                                    611 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 258: TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
      00B41B 7B 09            [ 1]  612 	ld	a, (0x09, sp)
      00B41D C7 52 67         [ 1]  613 	ld	0x5267, a
                                    614 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 259: TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
      00B420 7B 0A            [ 1]  615 	ld	a, (0x0a, sp)
      00B422 C7 52 68         [ 1]  616 	ld	0x5268, a
                                    617 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 260: }
      00B425 5B 03            [ 2]  618 	addw	sp, #3
      00B427 81               [ 4]  619 	ret
                                    620 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 281: void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    621 ;	-----------------------------------------
                                    622 ;	 function TIM1_OC3Init
                                    623 ;	-----------------------------------------
      00B428                        624 _TIM1_OC3Init:
      00B428 52 03            [ 2]  625 	sub	sp, #3
                                    626 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 291: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      00B42A 0D 06            [ 1]  627 	tnz	(0x06, sp)
      00B42C 27 2D            [ 1]  628 	jreq	00104$
      00B42E 7B 06            [ 1]  629 	ld	a, (0x06, sp)
      00B430 A1 10            [ 1]  630 	cp	a, #0x10
      00B432 27 27            [ 1]  631 	jreq	00104$
      00B434 7B 06            [ 1]  632 	ld	a, (0x06, sp)
      00B436 A1 20            [ 1]  633 	cp	a, #0x20
      00B438 27 21            [ 1]  634 	jreq	00104$
      00B43A 7B 06            [ 1]  635 	ld	a, (0x06, sp)
      00B43C A1 30            [ 1]  636 	cp	a, #0x30
      00B43E 27 1B            [ 1]  637 	jreq	00104$
      00B440 7B 06            [ 1]  638 	ld	a, (0x06, sp)
      00B442 A1 60            [ 1]  639 	cp	a, #0x60
      00B444 27 15            [ 1]  640 	jreq	00104$
      00B446 7B 06            [ 1]  641 	ld	a, (0x06, sp)
      00B448 A1 70            [ 1]  642 	cp	a, #0x70
      00B44A 27 0F            [ 1]  643 	jreq	00104$
      00B44C 4B 23            [ 1]  644 	push	#0x23
      00B44E 4B 01            [ 1]  645 	push	#0x01
      00B450 5F               [ 1]  646 	clrw	x
      00B451 89               [ 2]  647 	pushw	x
      00B452 4B AD            [ 1]  648 	push	#<(___str_0+0)
      00B454 4B 85            [ 1]  649 	push	#((___str_0+0) >> 8)
      00B456 CD 00 00         [ 4]  650 	call	_assert_failed
      00B459 5B 06            [ 2]  651 	addw	sp, #6
      00B45B                        652 00104$:
                                    653 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 292: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      00B45B 0D 07            [ 1]  654 	tnz	(0x07, sp)
      00B45D 27 15            [ 1]  655 	jreq	00121$
      00B45F 7B 07            [ 1]  656 	ld	a, (0x07, sp)
      00B461 A1 11            [ 1]  657 	cp	a, #0x11
      00B463 27 0F            [ 1]  658 	jreq	00121$
      00B465 4B 24            [ 1]  659 	push	#0x24
      00B467 4B 01            [ 1]  660 	push	#0x01
      00B469 5F               [ 1]  661 	clrw	x
      00B46A 89               [ 2]  662 	pushw	x
      00B46B 4B AD            [ 1]  663 	push	#<(___str_0+0)
      00B46D 4B 85            [ 1]  664 	push	#((___str_0+0) >> 8)
      00B46F CD 00 00         [ 4]  665 	call	_assert_failed
      00B472 5B 06            [ 2]  666 	addw	sp, #6
      00B474                        667 00121$:
                                    668 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 293: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
      00B474 0D 08            [ 1]  669 	tnz	(0x08, sp)
      00B476 27 15            [ 1]  670 	jreq	00126$
      00B478 7B 08            [ 1]  671 	ld	a, (0x08, sp)
      00B47A A1 44            [ 1]  672 	cp	a, #0x44
      00B47C 27 0F            [ 1]  673 	jreq	00126$
      00B47E 4B 25            [ 1]  674 	push	#0x25
      00B480 4B 01            [ 1]  675 	push	#0x01
      00B482 5F               [ 1]  676 	clrw	x
      00B483 89               [ 2]  677 	pushw	x
      00B484 4B AD            [ 1]  678 	push	#<(___str_0+0)
      00B486 4B 85            [ 1]  679 	push	#((___str_0+0) >> 8)
      00B488 CD 00 00         [ 4]  680 	call	_assert_failed
      00B48B 5B 06            [ 2]  681 	addw	sp, #6
      00B48D                        682 00126$:
                                    683 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 294: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00B48D 0D 0B            [ 1]  684 	tnz	(0x0b, sp)
      00B48F 27 15            [ 1]  685 	jreq	00131$
      00B491 7B 0B            [ 1]  686 	ld	a, (0x0b, sp)
      00B493 A1 22            [ 1]  687 	cp	a, #0x22
      00B495 27 0F            [ 1]  688 	jreq	00131$
      00B497 4B 26            [ 1]  689 	push	#0x26
      00B499 4B 01            [ 1]  690 	push	#0x01
      00B49B 5F               [ 1]  691 	clrw	x
      00B49C 89               [ 2]  692 	pushw	x
      00B49D 4B AD            [ 1]  693 	push	#<(___str_0+0)
      00B49F 4B 85            [ 1]  694 	push	#((___str_0+0) >> 8)
      00B4A1 CD 00 00         [ 4]  695 	call	_assert_failed
      00B4A4 5B 06            [ 2]  696 	addw	sp, #6
      00B4A6                        697 00131$:
                                    698 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 295: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00B4A6 0D 0C            [ 1]  699 	tnz	(0x0c, sp)
      00B4A8 27 15            [ 1]  700 	jreq	00136$
      00B4AA 7B 0C            [ 1]  701 	ld	a, (0x0c, sp)
      00B4AC A1 88            [ 1]  702 	cp	a, #0x88
      00B4AE 27 0F            [ 1]  703 	jreq	00136$
      00B4B0 4B 27            [ 1]  704 	push	#0x27
      00B4B2 4B 01            [ 1]  705 	push	#0x01
      00B4B4 5F               [ 1]  706 	clrw	x
      00B4B5 89               [ 2]  707 	pushw	x
      00B4B6 4B AD            [ 1]  708 	push	#<(___str_0+0)
      00B4B8 4B 85            [ 1]  709 	push	#((___str_0+0) >> 8)
      00B4BA CD 00 00         [ 4]  710 	call	_assert_failed
      00B4BD 5B 06            [ 2]  711 	addw	sp, #6
      00B4BF                        712 00136$:
                                    713 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 296: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      00B4BF 7B 0D            [ 1]  714 	ld	a, (0x0d, sp)
      00B4C1 A1 55            [ 1]  715 	cp	a, #0x55
      00B4C3 27 13            [ 1]  716 	jreq	00141$
      00B4C5 0D 0D            [ 1]  717 	tnz	(0x0d, sp)
      00B4C7 27 0F            [ 1]  718 	jreq	00141$
      00B4C9 4B 28            [ 1]  719 	push	#0x28
      00B4CB 4B 01            [ 1]  720 	push	#0x01
      00B4CD 5F               [ 1]  721 	clrw	x
      00B4CE 89               [ 2]  722 	pushw	x
      00B4CF 4B AD            [ 1]  723 	push	#<(___str_0+0)
      00B4D1 4B 85            [ 1]  724 	push	#((___str_0+0) >> 8)
      00B4D3 CD 00 00         [ 4]  725 	call	_assert_failed
      00B4D6 5B 06            [ 2]  726 	addw	sp, #6
      00B4D8                        727 00141$:
                                    728 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 297: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
      00B4D8 7B 0E            [ 1]  729 	ld	a, (0x0e, sp)
      00B4DA A1 2A            [ 1]  730 	cp	a, #0x2a
      00B4DC 27 13            [ 1]  731 	jreq	00146$
      00B4DE 0D 0E            [ 1]  732 	tnz	(0x0e, sp)
      00B4E0 27 0F            [ 1]  733 	jreq	00146$
      00B4E2 4B 29            [ 1]  734 	push	#0x29
      00B4E4 4B 01            [ 1]  735 	push	#0x01
      00B4E6 5F               [ 1]  736 	clrw	x
      00B4E7 89               [ 2]  737 	pushw	x
      00B4E8 4B AD            [ 1]  738 	push	#<(___str_0+0)
      00B4EA 4B 85            [ 1]  739 	push	#((___str_0+0) >> 8)
      00B4EC CD 00 00         [ 4]  740 	call	_assert_failed
      00B4EF 5B 06            [ 2]  741 	addw	sp, #6
      00B4F1                        742 00146$:
                                    743 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 301: TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
      00B4F1 C6 52 5D         [ 1]  744 	ld	a, 0x525d
      00B4F4 A4 F0            [ 1]  745 	and	a, #0xf0
      00B4F6 C7 52 5D         [ 1]  746 	ld	0x525d, a
                                    747 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 305: TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
      00B4F9 C6 52 5D         [ 1]  748 	ld	a, 0x525d
      00B4FC 6B 01            [ 1]  749 	ld	(0x01, sp), a
      00B4FE 7B 07            [ 1]  750 	ld	a, (0x07, sp)
      00B500 A4 01            [ 1]  751 	and	a, #0x01
      00B502 6B 03            [ 1]  752 	ld	(0x03, sp), a
                                    753 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 306: (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
      00B504 7B 08            [ 1]  754 	ld	a, (0x08, sp)
      00B506 A4 04            [ 1]  755 	and	a, #0x04
      00B508 1A 03            [ 1]  756 	or	a, (0x03, sp)
      00B50A 6B 02            [ 1]  757 	ld	(0x02, sp), a
                                    758 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 307: (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
      00B50C 7B 0B            [ 1]  759 	ld	a, (0x0b, sp)
      00B50E A4 02            [ 1]  760 	and	a, #0x02
      00B510 6B 03            [ 1]  761 	ld	(0x03, sp), a
                                    762 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 308: (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
      00B512 7B 0C            [ 1]  763 	ld	a, (0x0c, sp)
      00B514 A4 08            [ 1]  764 	and	a, #0x08
      00B516 1A 03            [ 1]  765 	or	a, (0x03, sp)
      00B518 1A 02            [ 1]  766 	or	a, (0x02, sp)
      00B51A 1A 01            [ 1]  767 	or	a, (0x01, sp)
      00B51C C7 52 5D         [ 1]  768 	ld	0x525d, a
                                    769 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 311: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      00B51F C6 52 5A         [ 1]  770 	ld	a, 0x525a
      00B522 A4 8F            [ 1]  771 	and	a, #0x8f
                                    772 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 312: (uint8_t)TIM1_OCMode);
      00B524 1A 06            [ 1]  773 	or	a, (0x06, sp)
      00B526 C7 52 5A         [ 1]  774 	ld	0x525a, a
                                    775 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 315: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
      00B529 C6 52 6F         [ 1]  776 	ld	a, 0x526f
      00B52C A4 CF            [ 1]  777 	and	a, #0xcf
      00B52E C7 52 6F         [ 1]  778 	ld	0x526f, a
                                    779 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 317: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
      00B531 C6 52 6F         [ 1]  780 	ld	a, 0x526f
      00B534 6B 02            [ 1]  781 	ld	(0x02, sp), a
      00B536 7B 0D            [ 1]  782 	ld	a, (0x0d, sp)
      00B538 A4 10            [ 1]  783 	and	a, #0x10
      00B53A 6B 03            [ 1]  784 	ld	(0x03, sp), a
                                    785 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 318: (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
      00B53C 7B 0E            [ 1]  786 	ld	a, (0x0e, sp)
      00B53E A4 20            [ 1]  787 	and	a, #0x20
      00B540 1A 03            [ 1]  788 	or	a, (0x03, sp)
      00B542 1A 02            [ 1]  789 	or	a, (0x02, sp)
      00B544 C7 52 6F         [ 1]  790 	ld	0x526f, a
                                    791 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 321: TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
      00B547 7B 09            [ 1]  792 	ld	a, (0x09, sp)
      00B549 C7 52 69         [ 1]  793 	ld	0x5269, a
                                    794 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 322: TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
      00B54C 7B 0A            [ 1]  795 	ld	a, (0x0a, sp)
      00B54E C7 52 6A         [ 1]  796 	ld	0x526a, a
                                    797 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 323: }
      00B551 5B 03            [ 2]  798 	addw	sp, #3
      00B553 81               [ 4]  799 	ret
                                    800 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 338: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    801 ;	-----------------------------------------
                                    802 ;	 function TIM1_OC4Init
                                    803 ;	-----------------------------------------
      00B554                        804 _TIM1_OC4Init:
      00B554 89               [ 2]  805 	pushw	x
                                    806 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 345: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      00B555 0D 05            [ 1]  807 	tnz	(0x05, sp)
      00B557 27 2D            [ 1]  808 	jreq	00107$
      00B559 7B 05            [ 1]  809 	ld	a, (0x05, sp)
      00B55B A1 10            [ 1]  810 	cp	a, #0x10
      00B55D 27 27            [ 1]  811 	jreq	00107$
      00B55F 7B 05            [ 1]  812 	ld	a, (0x05, sp)
      00B561 A1 20            [ 1]  813 	cp	a, #0x20
      00B563 27 21            [ 1]  814 	jreq	00107$
      00B565 7B 05            [ 1]  815 	ld	a, (0x05, sp)
      00B567 A1 30            [ 1]  816 	cp	a, #0x30
      00B569 27 1B            [ 1]  817 	jreq	00107$
      00B56B 7B 05            [ 1]  818 	ld	a, (0x05, sp)
      00B56D A1 60            [ 1]  819 	cp	a, #0x60
      00B56F 27 15            [ 1]  820 	jreq	00107$
      00B571 7B 05            [ 1]  821 	ld	a, (0x05, sp)
      00B573 A1 70            [ 1]  822 	cp	a, #0x70
      00B575 27 0F            [ 1]  823 	jreq	00107$
      00B577 4B 59            [ 1]  824 	push	#0x59
      00B579 4B 01            [ 1]  825 	push	#0x01
      00B57B 5F               [ 1]  826 	clrw	x
      00B57C 89               [ 2]  827 	pushw	x
      00B57D 4B AD            [ 1]  828 	push	#<(___str_0+0)
      00B57F 4B 85            [ 1]  829 	push	#((___str_0+0) >> 8)
      00B581 CD 00 00         [ 4]  830 	call	_assert_failed
      00B584 5B 06            [ 2]  831 	addw	sp, #6
      00B586                        832 00107$:
                                    833 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 346: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      00B586 0D 06            [ 1]  834 	tnz	(0x06, sp)
      00B588 27 15            [ 1]  835 	jreq	00124$
      00B58A 7B 06            [ 1]  836 	ld	a, (0x06, sp)
      00B58C A1 11            [ 1]  837 	cp	a, #0x11
      00B58E 27 0F            [ 1]  838 	jreq	00124$
      00B590 4B 5A            [ 1]  839 	push	#0x5a
      00B592 4B 01            [ 1]  840 	push	#0x01
      00B594 5F               [ 1]  841 	clrw	x
      00B595 89               [ 2]  842 	pushw	x
      00B596 4B AD            [ 1]  843 	push	#<(___str_0+0)
      00B598 4B 85            [ 1]  844 	push	#((___str_0+0) >> 8)
      00B59A CD 00 00         [ 4]  845 	call	_assert_failed
      00B59D 5B 06            [ 2]  846 	addw	sp, #6
      00B59F                        847 00124$:
                                    848 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 347: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00B59F 0D 09            [ 1]  849 	tnz	(0x09, sp)
      00B5A1 27 15            [ 1]  850 	jreq	00129$
      00B5A3 7B 09            [ 1]  851 	ld	a, (0x09, sp)
      00B5A5 A1 22            [ 1]  852 	cp	a, #0x22
      00B5A7 27 0F            [ 1]  853 	jreq	00129$
      00B5A9 4B 5B            [ 1]  854 	push	#0x5b
      00B5AB 4B 01            [ 1]  855 	push	#0x01
      00B5AD 5F               [ 1]  856 	clrw	x
      00B5AE 89               [ 2]  857 	pushw	x
      00B5AF 4B AD            [ 1]  858 	push	#<(___str_0+0)
      00B5B1 4B 85            [ 1]  859 	push	#((___str_0+0) >> 8)
      00B5B3 CD 00 00         [ 4]  860 	call	_assert_failed
      00B5B6 5B 06            [ 2]  861 	addw	sp, #6
      00B5B8                        862 00129$:
                                    863 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 348: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      00B5B8 7B 0A            [ 1]  864 	ld	a, (0x0a, sp)
      00B5BA A1 55            [ 1]  865 	cp	a, #0x55
      00B5BC 27 13            [ 1]  866 	jreq	00134$
      00B5BE 0D 0A            [ 1]  867 	tnz	(0x0a, sp)
      00B5C0 27 0F            [ 1]  868 	jreq	00134$
      00B5C2 4B 5C            [ 1]  869 	push	#0x5c
      00B5C4 4B 01            [ 1]  870 	push	#0x01
      00B5C6 5F               [ 1]  871 	clrw	x
      00B5C7 89               [ 2]  872 	pushw	x
      00B5C8 4B AD            [ 1]  873 	push	#<(___str_0+0)
      00B5CA 4B 85            [ 1]  874 	push	#((___str_0+0) >> 8)
      00B5CC CD 00 00         [ 4]  875 	call	_assert_failed
      00B5CF 5B 06            [ 2]  876 	addw	sp, #6
      00B5D1                        877 00134$:
                                    878 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 351: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
      00B5D1 C6 52 5D         [ 1]  879 	ld	a, 0x525d
      00B5D4 A4 CF            [ 1]  880 	and	a, #0xcf
      00B5D6 C7 52 5D         [ 1]  881 	ld	0x525d, a
                                    882 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 353: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
      00B5D9 C6 52 5D         [ 1]  883 	ld	a, 0x525d
      00B5DC 6B 01            [ 1]  884 	ld	(0x01, sp), a
      00B5DE 7B 06            [ 1]  885 	ld	a, (0x06, sp)
      00B5E0 A4 10            [ 1]  886 	and	a, #0x10
      00B5E2 6B 02            [ 1]  887 	ld	(0x02, sp), a
                                    888 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 354: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
      00B5E4 7B 09            [ 1]  889 	ld	a, (0x09, sp)
      00B5E6 A4 20            [ 1]  890 	and	a, #0x20
      00B5E8 1A 02            [ 1]  891 	or	a, (0x02, sp)
      00B5EA 1A 01            [ 1]  892 	or	a, (0x01, sp)
      00B5EC C7 52 5D         [ 1]  893 	ld	0x525d, a
                                    894 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 357: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      00B5EF C6 52 5B         [ 1]  895 	ld	a, 0x525b
      00B5F2 A4 8F            [ 1]  896 	and	a, #0x8f
      00B5F4 1A 05            [ 1]  897 	or	a, (0x05, sp)
      00B5F6 C7 52 5B         [ 1]  898 	ld	0x525b, a
                                    899 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      00B5F9 C6 52 6F         [ 1]  900 	ld	a, 0x526f
                                    901 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 361: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
      00B5FC 0D 0A            [ 1]  902 	tnz	(0x0a, sp)
      00B5FE 27 07            [ 1]  903 	jreq	00102$
                                    904 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      00B600 AA DF            [ 1]  905 	or	a, #0xdf
      00B602 C7 52 6F         [ 1]  906 	ld	0x526f, a
      00B605 20 05            [ 2]  907 	jra	00103$
      00B607                        908 00102$:
                                    909 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 367: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
      00B607 A4 BF            [ 1]  910 	and	a, #0xbf
      00B609 C7 52 6F         [ 1]  911 	ld	0x526f, a
      00B60C                        912 00103$:
                                    913 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 371: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
      00B60C 7B 07            [ 1]  914 	ld	a, (0x07, sp)
      00B60E C7 52 6B         [ 1]  915 	ld	0x526b, a
                                    916 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 372: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
      00B611 7B 08            [ 1]  917 	ld	a, (0x08, sp)
      00B613 C7 52 6C         [ 1]  918 	ld	0x526c, a
                                    919 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 373: }
      00B616 85               [ 2]  920 	popw	x
      00B617 81               [ 4]  921 	ret
                                    922 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 388: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
                                    923 ;	-----------------------------------------
                                    924 ;	 function TIM1_BDTRConfig
                                    925 ;	-----------------------------------------
      00B618                        926 _TIM1_BDTRConfig:
      00B618 88               [ 1]  927 	push	a
                                    928 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 396: assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
      00B619 7B 04            [ 1]  929 	ld	a, (0x04, sp)
      00B61B A1 04            [ 1]  930 	cp	a, #0x04
      00B61D 27 13            [ 1]  931 	jreq	00104$
      00B61F 0D 04            [ 1]  932 	tnz	(0x04, sp)
      00B621 27 0F            [ 1]  933 	jreq	00104$
      00B623 4B 8C            [ 1]  934 	push	#0x8c
      00B625 4B 01            [ 1]  935 	push	#0x01
      00B627 5F               [ 1]  936 	clrw	x
      00B628 89               [ 2]  937 	pushw	x
      00B629 4B AD            [ 1]  938 	push	#<(___str_0+0)
      00B62B 4B 85            [ 1]  939 	push	#((___str_0+0) >> 8)
      00B62D CD 00 00         [ 4]  940 	call	_assert_failed
      00B630 5B 06            [ 2]  941 	addw	sp, #6
      00B632                        942 00104$:
                                    943 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 397: assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
      00B632 0D 05            [ 1]  944 	tnz	(0x05, sp)
      00B634 27 20            [ 1]  945 	jreq	00109$
      00B636 7B 05            [ 1]  946 	ld	a, (0x05, sp)
      00B638 4A               [ 1]  947 	dec	a
      00B639 27 1B            [ 1]  948 	jreq	00109$
      00B63B 7B 05            [ 1]  949 	ld	a, (0x05, sp)
      00B63D A1 02            [ 1]  950 	cp	a, #0x02
      00B63F 27 15            [ 1]  951 	jreq	00109$
      00B641 7B 05            [ 1]  952 	ld	a, (0x05, sp)
      00B643 A1 03            [ 1]  953 	cp	a, #0x03
      00B645 27 0F            [ 1]  954 	jreq	00109$
      00B647 4B 8D            [ 1]  955 	push	#0x8d
      00B649 4B 01            [ 1]  956 	push	#0x01
      00B64B 5F               [ 1]  957 	clrw	x
      00B64C 89               [ 2]  958 	pushw	x
      00B64D 4B AD            [ 1]  959 	push	#<(___str_0+0)
      00B64F 4B 85            [ 1]  960 	push	#((___str_0+0) >> 8)
      00B651 CD 00 00         [ 4]  961 	call	_assert_failed
      00B654 5B 06            [ 2]  962 	addw	sp, #6
      00B656                        963 00109$:
                                    964 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 398: assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
      00B656 7B 07            [ 1]  965 	ld	a, (0x07, sp)
      00B658 A1 10            [ 1]  966 	cp	a, #0x10
      00B65A 27 13            [ 1]  967 	jreq	00120$
      00B65C 0D 07            [ 1]  968 	tnz	(0x07, sp)
      00B65E 27 0F            [ 1]  969 	jreq	00120$
      00B660 4B 8E            [ 1]  970 	push	#0x8e
      00B662 4B 01            [ 1]  971 	push	#0x01
      00B664 5F               [ 1]  972 	clrw	x
      00B665 89               [ 2]  973 	pushw	x
      00B666 4B AD            [ 1]  974 	push	#<(___str_0+0)
      00B668 4B 85            [ 1]  975 	push	#((___str_0+0) >> 8)
      00B66A CD 00 00         [ 4]  976 	call	_assert_failed
      00B66D 5B 06            [ 2]  977 	addw	sp, #6
      00B66F                        978 00120$:
                                    979 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 399: assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
      00B66F 0D 08            [ 1]  980 	tnz	(0x08, sp)
      00B671 27 15            [ 1]  981 	jreq	00125$
      00B673 7B 08            [ 1]  982 	ld	a, (0x08, sp)
      00B675 A1 20            [ 1]  983 	cp	a, #0x20
      00B677 27 0F            [ 1]  984 	jreq	00125$
      00B679 4B 8F            [ 1]  985 	push	#0x8f
      00B67B 4B 01            [ 1]  986 	push	#0x01
      00B67D 5F               [ 1]  987 	clrw	x
      00B67E 89               [ 2]  988 	pushw	x
      00B67F 4B AD            [ 1]  989 	push	#<(___str_0+0)
      00B681 4B 85            [ 1]  990 	push	#((___str_0+0) >> 8)
      00B683 CD 00 00         [ 4]  991 	call	_assert_failed
      00B686 5B 06            [ 2]  992 	addw	sp, #6
      00B688                        993 00125$:
                                    994 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 400: assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
      00B688 7B 09            [ 1]  995 	ld	a, (0x09, sp)
      00B68A A1 40            [ 1]  996 	cp	a, #0x40
      00B68C 27 13            [ 1]  997 	jreq	00130$
      00B68E 0D 09            [ 1]  998 	tnz	(0x09, sp)
      00B690 27 0F            [ 1]  999 	jreq	00130$
      00B692 4B 90            [ 1] 1000 	push	#0x90
      00B694 4B 01            [ 1] 1001 	push	#0x01
      00B696 5F               [ 1] 1002 	clrw	x
      00B697 89               [ 2] 1003 	pushw	x
      00B698 4B AD            [ 1] 1004 	push	#<(___str_0+0)
      00B69A 4B 85            [ 1] 1005 	push	#((___str_0+0) >> 8)
      00B69C CD 00 00         [ 4] 1006 	call	_assert_failed
      00B69F 5B 06            [ 2] 1007 	addw	sp, #6
      00B6A1                       1008 00130$:
                                   1009 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 402: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
      00B6A1 AE 52 6E         [ 2] 1010 	ldw	x, #0x526e
      00B6A4 7B 06            [ 1] 1011 	ld	a, (0x06, sp)
      00B6A6 F7               [ 1] 1012 	ld	(x), a
                                   1013 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 406: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
      00B6A7 7B 04            [ 1] 1014 	ld	a, (0x04, sp)
      00B6A9 1A 05            [ 1] 1015 	or	a, (0x05, sp)
      00B6AB 6B 01            [ 1] 1016 	ld	(0x01, sp), a
                                   1017 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 407: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
      00B6AD 7B 07            [ 1] 1018 	ld	a, (0x07, sp)
      00B6AF 1A 08            [ 1] 1019 	or	a, (0x08, sp)
                                   1020 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 408: (uint8_t)TIM1_AutomaticOutput));
      00B6B1 1A 09            [ 1] 1021 	or	a, (0x09, sp)
      00B6B3 1A 01            [ 1] 1022 	or	a, (0x01, sp)
      00B6B5 C7 52 6D         [ 1] 1023 	ld	0x526d, a
                                   1024 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 409: }
      00B6B8 84               [ 1] 1025 	pop	a
      00B6B9 81               [ 4] 1026 	ret
                                   1027 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 423: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function TIM1_ICInit
                                   1030 ;	-----------------------------------------
      00B6BA                       1031 _TIM1_ICInit:
      00B6BA 89               [ 2] 1032 	pushw	x
                                   1033 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 430: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      00B6BB 7B 05            [ 1] 1034 	ld	a, (0x05, sp)
      00B6BD 4A               [ 1] 1035 	dec	a
      00B6BE 26 05            [ 1] 1036 	jrne	00235$
      00B6C0 A6 01            [ 1] 1037 	ld	a, #0x01
      00B6C2 6B 01            [ 1] 1038 	ld	(0x01, sp), a
      00B6C4 C5                    1039 	.byte 0xc5
      00B6C5                       1040 00235$:
      00B6C5 0F 01            [ 1] 1041 	clr	(0x01, sp)
      00B6C7                       1042 00236$:
      00B6C7 7B 05            [ 1] 1043 	ld	a, (0x05, sp)
      00B6C9 A0 02            [ 1] 1044 	sub	a, #0x02
      00B6CB 26 04            [ 1] 1045 	jrne	00238$
      00B6CD 4C               [ 1] 1046 	inc	a
      00B6CE 6B 02            [ 1] 1047 	ld	(0x02, sp), a
      00B6D0 C5                    1048 	.byte 0xc5
      00B6D1                       1049 00238$:
      00B6D1 0F 02            [ 1] 1050 	clr	(0x02, sp)
      00B6D3                       1051 00239$:
      00B6D3 0D 05            [ 1] 1052 	tnz	(0x05, sp)
      00B6D5 27 1D            [ 1] 1053 	jreq	00113$
      00B6D7 0D 01            [ 1] 1054 	tnz	(0x01, sp)
      00B6D9 26 19            [ 1] 1055 	jrne	00113$
      00B6DB 0D 02            [ 1] 1056 	tnz	(0x02, sp)
      00B6DD 26 15            [ 1] 1057 	jrne	00113$
      00B6DF 7B 05            [ 1] 1058 	ld	a, (0x05, sp)
      00B6E1 A1 03            [ 1] 1059 	cp	a, #0x03
      00B6E3 27 0F            [ 1] 1060 	jreq	00113$
      00B6E5 4B AE            [ 1] 1061 	push	#0xae
      00B6E7 4B 01            [ 1] 1062 	push	#0x01
      00B6E9 5F               [ 1] 1063 	clrw	x
      00B6EA 89               [ 2] 1064 	pushw	x
      00B6EB 4B AD            [ 1] 1065 	push	#<(___str_0+0)
      00B6ED 4B 85            [ 1] 1066 	push	#((___str_0+0) >> 8)
      00B6EF CD 00 00         [ 4] 1067 	call	_assert_failed
      00B6F2 5B 06            [ 2] 1068 	addw	sp, #6
      00B6F4                       1069 00113$:
                                   1070 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 431: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      00B6F4 0D 06            [ 1] 1071 	tnz	(0x06, sp)
      00B6F6 27 14            [ 1] 1072 	jreq	00124$
      00B6F8 7B 06            [ 1] 1073 	ld	a, (0x06, sp)
      00B6FA 4A               [ 1] 1074 	dec	a
      00B6FB 27 0F            [ 1] 1075 	jreq	00124$
      00B6FD 4B AF            [ 1] 1076 	push	#0xaf
      00B6FF 4B 01            [ 1] 1077 	push	#0x01
      00B701 5F               [ 1] 1078 	clrw	x
      00B702 89               [ 2] 1079 	pushw	x
      00B703 4B AD            [ 1] 1080 	push	#<(___str_0+0)
      00B705 4B 85            [ 1] 1081 	push	#((___str_0+0) >> 8)
      00B707 CD 00 00         [ 4] 1082 	call	_assert_failed
      00B70A 5B 06            [ 2] 1083 	addw	sp, #6
      00B70C                       1084 00124$:
                                   1085 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 432: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      00B70C 7B 07            [ 1] 1086 	ld	a, (0x07, sp)
      00B70E 4A               [ 1] 1087 	dec	a
      00B70F 27 1B            [ 1] 1088 	jreq	00129$
      00B711 7B 07            [ 1] 1089 	ld	a, (0x07, sp)
      00B713 A1 02            [ 1] 1090 	cp	a, #0x02
      00B715 27 15            [ 1] 1091 	jreq	00129$
      00B717 7B 07            [ 1] 1092 	ld	a, (0x07, sp)
      00B719 A1 03            [ 1] 1093 	cp	a, #0x03
      00B71B 27 0F            [ 1] 1094 	jreq	00129$
      00B71D 4B B0            [ 1] 1095 	push	#0xb0
      00B71F 4B 01            [ 1] 1096 	push	#0x01
      00B721 5F               [ 1] 1097 	clrw	x
      00B722 89               [ 2] 1098 	pushw	x
      00B723 4B AD            [ 1] 1099 	push	#<(___str_0+0)
      00B725 4B 85            [ 1] 1100 	push	#((___str_0+0) >> 8)
      00B727 CD 00 00         [ 4] 1101 	call	_assert_failed
      00B72A 5B 06            [ 2] 1102 	addw	sp, #6
      00B72C                       1103 00129$:
                                   1104 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 433: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      00B72C 0D 08            [ 1] 1105 	tnz	(0x08, sp)
      00B72E 27 21            [ 1] 1106 	jreq	00137$
      00B730 7B 08            [ 1] 1107 	ld	a, (0x08, sp)
      00B732 A1 04            [ 1] 1108 	cp	a, #0x04
      00B734 27 1B            [ 1] 1109 	jreq	00137$
      00B736 7B 08            [ 1] 1110 	ld	a, (0x08, sp)
      00B738 A1 08            [ 1] 1111 	cp	a, #0x08
      00B73A 27 15            [ 1] 1112 	jreq	00137$
      00B73C 7B 08            [ 1] 1113 	ld	a, (0x08, sp)
      00B73E A1 0C            [ 1] 1114 	cp	a, #0x0c
      00B740 27 0F            [ 1] 1115 	jreq	00137$
      00B742 4B B1            [ 1] 1116 	push	#0xb1
      00B744 4B 01            [ 1] 1117 	push	#0x01
      00B746 5F               [ 1] 1118 	clrw	x
      00B747 89               [ 2] 1119 	pushw	x
      00B748 4B AD            [ 1] 1120 	push	#<(___str_0+0)
      00B74A 4B 85            [ 1] 1121 	push	#((___str_0+0) >> 8)
      00B74C CD 00 00         [ 4] 1122 	call	_assert_failed
      00B74F 5B 06            [ 2] 1123 	addw	sp, #6
      00B751                       1124 00137$:
                                   1125 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 434: assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
      00B751 7B 09            [ 1] 1126 	ld	a, (0x09, sp)
      00B753 A1 0F            [ 1] 1127 	cp	a, #0x0f
      00B755 23 0F            [ 2] 1128 	jrule	00148$
      00B757 4B B2            [ 1] 1129 	push	#0xb2
      00B759 4B 01            [ 1] 1130 	push	#0x01
      00B75B 5F               [ 1] 1131 	clrw	x
      00B75C 89               [ 2] 1132 	pushw	x
      00B75D 4B AD            [ 1] 1133 	push	#<(___str_0+0)
      00B75F 4B 85            [ 1] 1134 	push	#((___str_0+0) >> 8)
      00B761 CD 00 00         [ 4] 1135 	call	_assert_failed
      00B764 5B 06            [ 2] 1136 	addw	sp, #6
      00B766                       1137 00148$:
                                   1138 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 436: if (TIM1_Channel == TIM1_CHANNEL_1)
      00B766 0D 05            [ 1] 1139 	tnz	(0x05, sp)
      00B768 26 17            [ 1] 1140 	jrne	00108$
                                   1141 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 439: TI1_Config((uint8_t)TIM1_ICPolarity,
      00B76A 7B 09            [ 1] 1142 	ld	a, (0x09, sp)
      00B76C 88               [ 1] 1143 	push	a
      00B76D 7B 08            [ 1] 1144 	ld	a, (0x08, sp)
      00B76F 88               [ 1] 1145 	push	a
      00B770 7B 08            [ 1] 1146 	ld	a, (0x08, sp)
      00B772 88               [ 1] 1147 	push	a
      00B773 CD C5 B0         [ 4] 1148 	call	_TI1_Config
      00B776 5B 03            [ 2] 1149 	addw	sp, #3
                                   1150 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 443: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      00B778 7B 08            [ 1] 1151 	ld	a, (0x08, sp)
      00B77A 88               [ 1] 1152 	push	a
      00B77B CD C3 54         [ 4] 1153 	call	_TIM1_SetIC1Prescaler
      00B77E 84               [ 1] 1154 	pop	a
      00B77F 20 4B            [ 2] 1155 	jra	00110$
      00B781                       1156 00108$:
                                   1157 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 445: else if (TIM1_Channel == TIM1_CHANNEL_2)
      00B781 7B 01            [ 1] 1158 	ld	a, (0x01, sp)
      00B783 27 17            [ 1] 1159 	jreq	00105$
                                   1160 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 448: TI2_Config((uint8_t)TIM1_ICPolarity,
      00B785 7B 09            [ 1] 1161 	ld	a, (0x09, sp)
      00B787 88               [ 1] 1162 	push	a
      00B788 7B 08            [ 1] 1163 	ld	a, (0x08, sp)
      00B78A 88               [ 1] 1164 	push	a
      00B78B 7B 08            [ 1] 1165 	ld	a, (0x08, sp)
      00B78D 88               [ 1] 1166 	push	a
      00B78E CD C5 E1         [ 4] 1167 	call	_TI2_Config
      00B791 5B 03            [ 2] 1168 	addw	sp, #3
                                   1169 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 452: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      00B793 7B 08            [ 1] 1170 	ld	a, (0x08, sp)
      00B795 88               [ 1] 1171 	push	a
      00B796 CD C3 84         [ 4] 1172 	call	_TIM1_SetIC2Prescaler
      00B799 84               [ 1] 1173 	pop	a
      00B79A 20 30            [ 2] 1174 	jra	00110$
      00B79C                       1175 00105$:
                                   1176 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 454: else if (TIM1_Channel == TIM1_CHANNEL_3)
      00B79C 7B 02            [ 1] 1177 	ld	a, (0x02, sp)
      00B79E 27 17            [ 1] 1178 	jreq	00102$
                                   1179 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 457: TI3_Config((uint8_t)TIM1_ICPolarity,
      00B7A0 7B 09            [ 1] 1180 	ld	a, (0x09, sp)
      00B7A2 88               [ 1] 1181 	push	a
      00B7A3 7B 08            [ 1] 1182 	ld	a, (0x08, sp)
      00B7A5 88               [ 1] 1183 	push	a
      00B7A6 7B 08            [ 1] 1184 	ld	a, (0x08, sp)
      00B7A8 88               [ 1] 1185 	push	a
      00B7A9 CD C6 12         [ 4] 1186 	call	_TI3_Config
      00B7AC 5B 03            [ 2] 1187 	addw	sp, #3
                                   1188 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 461: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      00B7AE 7B 08            [ 1] 1189 	ld	a, (0x08, sp)
      00B7B0 88               [ 1] 1190 	push	a
      00B7B1 CD C3 B4         [ 4] 1191 	call	_TIM1_SetIC3Prescaler
      00B7B4 84               [ 1] 1192 	pop	a
      00B7B5 20 15            [ 2] 1193 	jra	00110$
      00B7B7                       1194 00102$:
                                   1195 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 466: TI4_Config((uint8_t)TIM1_ICPolarity,
      00B7B7 7B 09            [ 1] 1196 	ld	a, (0x09, sp)
      00B7B9 88               [ 1] 1197 	push	a
      00B7BA 7B 08            [ 1] 1198 	ld	a, (0x08, sp)
      00B7BC 88               [ 1] 1199 	push	a
      00B7BD 7B 08            [ 1] 1200 	ld	a, (0x08, sp)
      00B7BF 88               [ 1] 1201 	push	a
      00B7C0 CD C6 47         [ 4] 1202 	call	_TI4_Config
      00B7C3 5B 03            [ 2] 1203 	addw	sp, #3
                                   1204 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 470: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      00B7C5 7B 08            [ 1] 1205 	ld	a, (0x08, sp)
      00B7C7 88               [ 1] 1206 	push	a
      00B7C8 CD C3 E4         [ 4] 1207 	call	_TIM1_SetIC4Prescaler
      00B7CB 84               [ 1] 1208 	pop	a
      00B7CC                       1209 00110$:
                                   1210 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 472: }
      00B7CC 85               [ 2] 1211 	popw	x
      00B7CD 81               [ 4] 1212 	ret
                                   1213 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 488: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function TIM1_PWMIConfig
                                   1216 ;	-----------------------------------------
      00B7CE                       1217 _TIM1_PWMIConfig:
      00B7CE 89               [ 2] 1218 	pushw	x
                                   1219 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 498: assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
      00B7CF 0D 05            [ 1] 1220 	tnz	(0x05, sp)
      00B7D1 27 14            [ 1] 1221 	jreq	00113$
      00B7D3 7B 05            [ 1] 1222 	ld	a, (0x05, sp)
      00B7D5 4A               [ 1] 1223 	dec	a
      00B7D6 27 0F            [ 1] 1224 	jreq	00113$
      00B7D8 4B F2            [ 1] 1225 	push	#0xf2
      00B7DA 4B 01            [ 1] 1226 	push	#0x01
      00B7DC 5F               [ 1] 1227 	clrw	x
      00B7DD 89               [ 2] 1228 	pushw	x
      00B7DE 4B AD            [ 1] 1229 	push	#<(___str_0+0)
      00B7E0 4B 85            [ 1] 1230 	push	#((___str_0+0) >> 8)
      00B7E2 CD 00 00         [ 4] 1231 	call	_assert_failed
      00B7E5 5B 06            [ 2] 1232 	addw	sp, #6
      00B7E7                       1233 00113$:
                                   1234 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 499: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      00B7E7 7B 06            [ 1] 1235 	ld	a, (0x06, sp)
      00B7E9 4A               [ 1] 1236 	dec	a
      00B7EA 26 05            [ 1] 1237 	jrne	00216$
      00B7EC A6 01            [ 1] 1238 	ld	a, #0x01
      00B7EE 6B 01            [ 1] 1239 	ld	(0x01, sp), a
      00B7F0 C5                    1240 	.byte 0xc5
      00B7F1                       1241 00216$:
      00B7F1 0F 01            [ 1] 1242 	clr	(0x01, sp)
      00B7F3                       1243 00217$:
      00B7F3 0D 06            [ 1] 1244 	tnz	(0x06, sp)
      00B7F5 27 13            [ 1] 1245 	jreq	00118$
      00B7F7 0D 01            [ 1] 1246 	tnz	(0x01, sp)
      00B7F9 26 0F            [ 1] 1247 	jrne	00118$
      00B7FB 4B F3            [ 1] 1248 	push	#0xf3
      00B7FD 4B 01            [ 1] 1249 	push	#0x01
      00B7FF 5F               [ 1] 1250 	clrw	x
      00B800 89               [ 2] 1251 	pushw	x
      00B801 4B AD            [ 1] 1252 	push	#<(___str_0+0)
      00B803 4B 85            [ 1] 1253 	push	#((___str_0+0) >> 8)
      00B805 CD 00 00         [ 4] 1254 	call	_assert_failed
      00B808 5B 06            [ 2] 1255 	addw	sp, #6
      00B80A                       1256 00118$:
                                   1257 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 500: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      00B80A 7B 07            [ 1] 1258 	ld	a, (0x07, sp)
      00B80C 4A               [ 1] 1259 	dec	a
      00B80D 26 05            [ 1] 1260 	jrne	00221$
      00B80F A6 01            [ 1] 1261 	ld	a, #0x01
      00B811 6B 02            [ 1] 1262 	ld	(0x02, sp), a
      00B813 C5                    1263 	.byte 0xc5
      00B814                       1264 00221$:
      00B814 0F 02            [ 1] 1265 	clr	(0x02, sp)
      00B816                       1266 00222$:
      00B816 0D 02            [ 1] 1267 	tnz	(0x02, sp)
      00B818 26 1B            [ 1] 1268 	jrne	00123$
      00B81A 7B 07            [ 1] 1269 	ld	a, (0x07, sp)
      00B81C A1 02            [ 1] 1270 	cp	a, #0x02
      00B81E 27 15            [ 1] 1271 	jreq	00123$
      00B820 7B 07            [ 1] 1272 	ld	a, (0x07, sp)
      00B822 A1 03            [ 1] 1273 	cp	a, #0x03
      00B824 27 0F            [ 1] 1274 	jreq	00123$
      00B826 4B F4            [ 1] 1275 	push	#0xf4
      00B828 4B 01            [ 1] 1276 	push	#0x01
      00B82A 5F               [ 1] 1277 	clrw	x
      00B82B 89               [ 2] 1278 	pushw	x
      00B82C 4B AD            [ 1] 1279 	push	#<(___str_0+0)
      00B82E 4B 85            [ 1] 1280 	push	#((___str_0+0) >> 8)
      00B830 CD 00 00         [ 4] 1281 	call	_assert_failed
      00B833 5B 06            [ 2] 1282 	addw	sp, #6
      00B835                       1283 00123$:
                                   1284 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 501: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      00B835 0D 08            [ 1] 1285 	tnz	(0x08, sp)
      00B837 27 21            [ 1] 1286 	jreq	00131$
      00B839 7B 08            [ 1] 1287 	ld	a, (0x08, sp)
      00B83B A1 04            [ 1] 1288 	cp	a, #0x04
      00B83D 27 1B            [ 1] 1289 	jreq	00131$
      00B83F 7B 08            [ 1] 1290 	ld	a, (0x08, sp)
      00B841 A1 08            [ 1] 1291 	cp	a, #0x08
      00B843 27 15            [ 1] 1292 	jreq	00131$
      00B845 7B 08            [ 1] 1293 	ld	a, (0x08, sp)
      00B847 A1 0C            [ 1] 1294 	cp	a, #0x0c
      00B849 27 0F            [ 1] 1295 	jreq	00131$
      00B84B 4B F5            [ 1] 1296 	push	#0xf5
      00B84D 4B 01            [ 1] 1297 	push	#0x01
      00B84F 5F               [ 1] 1298 	clrw	x
      00B850 89               [ 2] 1299 	pushw	x
      00B851 4B AD            [ 1] 1300 	push	#<(___str_0+0)
      00B853 4B 85            [ 1] 1301 	push	#((___str_0+0) >> 8)
      00B855 CD 00 00         [ 4] 1302 	call	_assert_failed
      00B858 5B 06            [ 2] 1303 	addw	sp, #6
      00B85A                       1304 00131$:
                                   1305 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 504: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
      00B85A 0D 01            [ 1] 1306 	tnz	(0x01, sp)
      00B85C 26 05            [ 1] 1307 	jrne	00102$
                                   1308 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 506: icpolarity = TIM1_ICPOLARITY_FALLING;
      00B85E A6 01            [ 1] 1309 	ld	a, #0x01
      00B860 6B 01            [ 1] 1310 	ld	(0x01, sp), a
                                   1311 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 510: icpolarity = TIM1_ICPOLARITY_RISING;
      00B862 C5                    1312 	.byte 0xc5
      00B863                       1313 00102$:
      00B863 0F 01            [ 1] 1314 	clr	(0x01, sp)
      00B865                       1315 00103$:
                                   1316 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 514: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
      00B865 7B 02            [ 1] 1317 	ld	a, (0x02, sp)
      00B867 27 06            [ 1] 1318 	jreq	00105$
                                   1319 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 516: icselection = TIM1_ICSELECTION_INDIRECTTI;
      00B869 A6 02            [ 1] 1320 	ld	a, #0x02
      00B86B 6B 02            [ 1] 1321 	ld	(0x02, sp), a
      00B86D 20 04            [ 2] 1322 	jra	00106$
      00B86F                       1323 00105$:
                                   1324 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 520: icselection = TIM1_ICSELECTION_DIRECTTI;
      00B86F A6 01            [ 1] 1325 	ld	a, #0x01
      00B871 6B 02            [ 1] 1326 	ld	(0x02, sp), a
      00B873                       1327 00106$:
                                   1328 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 523: if (TIM1_Channel == TIM1_CHANNEL_1)
      00B873 0D 05            [ 1] 1329 	tnz	(0x05, sp)
      00B875 26 2C            [ 1] 1330 	jrne	00108$
                                   1331 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 526: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      00B877 7B 09            [ 1] 1332 	ld	a, (0x09, sp)
      00B879 88               [ 1] 1333 	push	a
      00B87A 7B 08            [ 1] 1334 	ld	a, (0x08, sp)
      00B87C 88               [ 1] 1335 	push	a
      00B87D 7B 08            [ 1] 1336 	ld	a, (0x08, sp)
      00B87F 88               [ 1] 1337 	push	a
      00B880 CD C5 B0         [ 4] 1338 	call	_TI1_Config
      00B883 5B 03            [ 2] 1339 	addw	sp, #3
                                   1340 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 530: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      00B885 7B 08            [ 1] 1341 	ld	a, (0x08, sp)
      00B887 88               [ 1] 1342 	push	a
      00B888 CD C3 54         [ 4] 1343 	call	_TIM1_SetIC1Prescaler
      00B88B 84               [ 1] 1344 	pop	a
                                   1345 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 533: TI2_Config(icpolarity, icselection, TIM1_ICFilter);
      00B88C 7B 09            [ 1] 1346 	ld	a, (0x09, sp)
      00B88E 88               [ 1] 1347 	push	a
      00B88F 7B 03            [ 1] 1348 	ld	a, (0x03, sp)
      00B891 88               [ 1] 1349 	push	a
      00B892 7B 03            [ 1] 1350 	ld	a, (0x03, sp)
      00B894 88               [ 1] 1351 	push	a
      00B895 CD C5 E1         [ 4] 1352 	call	_TI2_Config
      00B898 5B 03            [ 2] 1353 	addw	sp, #3
                                   1354 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 536: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      00B89A 7B 08            [ 1] 1355 	ld	a, (0x08, sp)
      00B89C 88               [ 1] 1356 	push	a
      00B89D CD C3 84         [ 4] 1357 	call	_TIM1_SetIC2Prescaler
      00B8A0 84               [ 1] 1358 	pop	a
      00B8A1 20 2A            [ 2] 1359 	jra	00110$
      00B8A3                       1360 00108$:
                                   1361 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 541: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      00B8A3 7B 09            [ 1] 1362 	ld	a, (0x09, sp)
      00B8A5 88               [ 1] 1363 	push	a
      00B8A6 7B 08            [ 1] 1364 	ld	a, (0x08, sp)
      00B8A8 88               [ 1] 1365 	push	a
      00B8A9 7B 08            [ 1] 1366 	ld	a, (0x08, sp)
      00B8AB 88               [ 1] 1367 	push	a
      00B8AC CD C5 E1         [ 4] 1368 	call	_TI2_Config
      00B8AF 5B 03            [ 2] 1369 	addw	sp, #3
                                   1370 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 545: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      00B8B1 7B 08            [ 1] 1371 	ld	a, (0x08, sp)
      00B8B3 88               [ 1] 1372 	push	a
      00B8B4 CD C3 84         [ 4] 1373 	call	_TIM1_SetIC2Prescaler
      00B8B7 84               [ 1] 1374 	pop	a
                                   1375 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 548: TI1_Config(icpolarity, icselection, TIM1_ICFilter);
      00B8B8 7B 09            [ 1] 1376 	ld	a, (0x09, sp)
      00B8BA 88               [ 1] 1377 	push	a
      00B8BB 7B 03            [ 1] 1378 	ld	a, (0x03, sp)
      00B8BD 88               [ 1] 1379 	push	a
      00B8BE 7B 03            [ 1] 1380 	ld	a, (0x03, sp)
      00B8C0 88               [ 1] 1381 	push	a
      00B8C1 CD C5 B0         [ 4] 1382 	call	_TI1_Config
      00B8C4 5B 03            [ 2] 1383 	addw	sp, #3
                                   1384 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 551: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      00B8C6 7B 08            [ 1] 1385 	ld	a, (0x08, sp)
      00B8C8 88               [ 1] 1386 	push	a
      00B8C9 CD C3 54         [ 4] 1387 	call	_TIM1_SetIC1Prescaler
      00B8CC 84               [ 1] 1388 	pop	a
      00B8CD                       1389 00110$:
                                   1390 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 553: }
      00B8CD 85               [ 2] 1391 	popw	x
      00B8CE 81               [ 4] 1392 	ret
                                   1393 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 561: void TIM1_Cmd(FunctionalState NewState)
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function TIM1_Cmd
                                   1396 ;	-----------------------------------------
      00B8CF                       1397 _TIM1_Cmd:
                                   1398 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 564: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B8CF 0D 03            [ 1] 1399 	tnz	(0x03, sp)
      00B8D1 27 14            [ 1] 1400 	jreq	00107$
      00B8D3 7B 03            [ 1] 1401 	ld	a, (0x03, sp)
      00B8D5 4A               [ 1] 1402 	dec	a
      00B8D6 27 0F            [ 1] 1403 	jreq	00107$
      00B8D8 4B 34            [ 1] 1404 	push	#0x34
      00B8DA 4B 02            [ 1] 1405 	push	#0x02
      00B8DC 5F               [ 1] 1406 	clrw	x
      00B8DD 89               [ 2] 1407 	pushw	x
      00B8DE 4B AD            [ 1] 1408 	push	#<(___str_0+0)
      00B8E0 4B 85            [ 1] 1409 	push	#((___str_0+0) >> 8)
      00B8E2 CD 00 00         [ 4] 1410 	call	_assert_failed
      00B8E5 5B 06            [ 2] 1411 	addw	sp, #6
      00B8E7                       1412 00107$:
                                   1413 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      00B8E7 C6 52 50         [ 1] 1414 	ld	a, 0x5250
                                   1415 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 567: if (NewState != DISABLE)
      00B8EA 0D 03            [ 1] 1416 	tnz	(0x03, sp)
      00B8EC 27 06            [ 1] 1417 	jreq	00102$
                                   1418 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      00B8EE AA 01            [ 1] 1419 	or	a, #0x01
      00B8F0 C7 52 50         [ 1] 1420 	ld	0x5250, a
      00B8F3 81               [ 4] 1421 	ret
      00B8F4                       1422 00102$:
                                   1423 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 573: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      00B8F4 A4 FE            [ 1] 1424 	and	a, #0xfe
      00B8F6 C7 52 50         [ 1] 1425 	ld	0x5250, a
                                   1426 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 575: }
      00B8F9 81               [ 4] 1427 	ret
                                   1428 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 583: void TIM1_CtrlPWMOutputs(FunctionalState NewState)
                                   1429 ;	-----------------------------------------
                                   1430 ;	 function TIM1_CtrlPWMOutputs
                                   1431 ;	-----------------------------------------
      00B8FA                       1432 _TIM1_CtrlPWMOutputs:
                                   1433 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 586: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B8FA 0D 03            [ 1] 1434 	tnz	(0x03, sp)
      00B8FC 27 14            [ 1] 1435 	jreq	00107$
      00B8FE 7B 03            [ 1] 1436 	ld	a, (0x03, sp)
      00B900 4A               [ 1] 1437 	dec	a
      00B901 27 0F            [ 1] 1438 	jreq	00107$
      00B903 4B 4A            [ 1] 1439 	push	#0x4a
      00B905 4B 02            [ 1] 1440 	push	#0x02
      00B907 5F               [ 1] 1441 	clrw	x
      00B908 89               [ 2] 1442 	pushw	x
      00B909 4B AD            [ 1] 1443 	push	#<(___str_0+0)
      00B90B 4B 85            [ 1] 1444 	push	#((___str_0+0) >> 8)
      00B90D CD 00 00         [ 4] 1445 	call	_assert_failed
      00B910 5B 06            [ 2] 1446 	addw	sp, #6
      00B912                       1447 00107$:
                                   1448 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      00B912 C6 52 6D         [ 1] 1449 	ld	a, 0x526d
                                   1450 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 590: if (NewState != DISABLE)
      00B915 0D 03            [ 1] 1451 	tnz	(0x03, sp)
      00B917 27 06            [ 1] 1452 	jreq	00102$
                                   1453 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      00B919 AA 80            [ 1] 1454 	or	a, #0x80
      00B91B C7 52 6D         [ 1] 1455 	ld	0x526d, a
      00B91E 81               [ 4] 1456 	ret
      00B91F                       1457 00102$:
                                   1458 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 596: TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
      00B91F A4 7F            [ 1] 1459 	and	a, #0x7f
      00B921 C7 52 6D         [ 1] 1460 	ld	0x526d, a
                                   1461 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 598: }
      00B924 81               [ 4] 1462 	ret
                                   1463 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 617: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function TIM1_ITConfig
                                   1466 ;	-----------------------------------------
      00B925                       1467 _TIM1_ITConfig:
      00B925 88               [ 1] 1468 	push	a
                                   1469 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 620: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      00B926 0D 04            [ 1] 1470 	tnz	(0x04, sp)
      00B928 26 0F            [ 1] 1471 	jrne	00107$
      00B92A 4B 6C            [ 1] 1472 	push	#0x6c
      00B92C 4B 02            [ 1] 1473 	push	#0x02
      00B92E 5F               [ 1] 1474 	clrw	x
      00B92F 89               [ 2] 1475 	pushw	x
      00B930 4B AD            [ 1] 1476 	push	#<(___str_0+0)
      00B932 4B 85            [ 1] 1477 	push	#((___str_0+0) >> 8)
      00B934 CD 00 00         [ 4] 1478 	call	_assert_failed
      00B937 5B 06            [ 2] 1479 	addw	sp, #6
      00B939                       1480 00107$:
                                   1481 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 621: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B939 0D 05            [ 1] 1482 	tnz	(0x05, sp)
      00B93B 27 14            [ 1] 1483 	jreq	00109$
      00B93D 7B 05            [ 1] 1484 	ld	a, (0x05, sp)
      00B93F 4A               [ 1] 1485 	dec	a
      00B940 27 0F            [ 1] 1486 	jreq	00109$
      00B942 4B 6D            [ 1] 1487 	push	#0x6d
      00B944 4B 02            [ 1] 1488 	push	#0x02
      00B946 5F               [ 1] 1489 	clrw	x
      00B947 89               [ 2] 1490 	pushw	x
      00B948 4B AD            [ 1] 1491 	push	#<(___str_0+0)
      00B94A 4B 85            [ 1] 1492 	push	#((___str_0+0) >> 8)
      00B94C CD 00 00         [ 4] 1493 	call	_assert_failed
      00B94F 5B 06            [ 2] 1494 	addw	sp, #6
      00B951                       1495 00109$:
                                   1496 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      00B951 C6 52 54         [ 1] 1497 	ld	a, 0x5254
                                   1498 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 623: if (NewState != DISABLE)
      00B954 0D 05            [ 1] 1499 	tnz	(0x05, sp)
      00B956 27 07            [ 1] 1500 	jreq	00102$
                                   1501 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      00B958 1A 04            [ 1] 1502 	or	a, (0x04, sp)
      00B95A C7 52 54         [ 1] 1503 	ld	0x5254, a
      00B95D 20 0C            [ 2] 1504 	jra	00104$
      00B95F                       1505 00102$:
                                   1506 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 631: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      00B95F 88               [ 1] 1507 	push	a
      00B960 7B 05            [ 1] 1508 	ld	a, (0x05, sp)
      00B962 43               [ 1] 1509 	cpl	a
      00B963 6B 02            [ 1] 1510 	ld	(0x02, sp), a
      00B965 84               [ 1] 1511 	pop	a
      00B966 14 01            [ 1] 1512 	and	a, (0x01, sp)
      00B968 C7 52 54         [ 1] 1513 	ld	0x5254, a
      00B96B                       1514 00104$:
                                   1515 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 633: }
      00B96B 84               [ 1] 1516 	pop	a
      00B96C 81               [ 4] 1517 	ret
                                   1518 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 640: void TIM1_InternalClockConfig(void)
                                   1519 ;	-----------------------------------------
                                   1520 ;	 function TIM1_InternalClockConfig
                                   1521 ;	-----------------------------------------
      00B96D                       1522 _TIM1_InternalClockConfig:
                                   1523 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 643: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
      00B96D C6 52 52         [ 1] 1524 	ld	a, 0x5252
      00B970 A4 F8            [ 1] 1525 	and	a, #0xf8
      00B972 C7 52 52         [ 1] 1526 	ld	0x5252, a
                                   1527 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 644: }
      00B975 81               [ 4] 1528 	ret
                                   1529 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 662: void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1530 ;	-----------------------------------------
                                   1531 ;	 function TIM1_ETRClockMode1Config
                                   1532 ;	-----------------------------------------
      00B976                       1533 _TIM1_ETRClockMode1Config:
                                   1534 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 667: assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
      00B976 0D 03            [ 1] 1535 	tnz	(0x03, sp)
      00B978 27 21            [ 1] 1536 	jreq	00104$
      00B97A 7B 03            [ 1] 1537 	ld	a, (0x03, sp)
      00B97C A1 10            [ 1] 1538 	cp	a, #0x10
      00B97E 27 1B            [ 1] 1539 	jreq	00104$
      00B980 7B 03            [ 1] 1540 	ld	a, (0x03, sp)
      00B982 A1 20            [ 1] 1541 	cp	a, #0x20
      00B984 27 15            [ 1] 1542 	jreq	00104$
      00B986 7B 03            [ 1] 1543 	ld	a, (0x03, sp)
      00B988 A1 30            [ 1] 1544 	cp	a, #0x30
      00B98A 27 0F            [ 1] 1545 	jreq	00104$
      00B98C 4B 9B            [ 1] 1546 	push	#0x9b
      00B98E 4B 02            [ 1] 1547 	push	#0x02
      00B990 5F               [ 1] 1548 	clrw	x
      00B991 89               [ 2] 1549 	pushw	x
      00B992 4B AD            [ 1] 1550 	push	#<(___str_0+0)
      00B994 4B 85            [ 1] 1551 	push	#((___str_0+0) >> 8)
      00B996 CD 00 00         [ 4] 1552 	call	_assert_failed
      00B999 5B 06            [ 2] 1553 	addw	sp, #6
      00B99B                       1554 00104$:
                                   1555 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 668: assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
      00B99B 7B 04            [ 1] 1556 	ld	a, (0x04, sp)
      00B99D A1 80            [ 1] 1557 	cp	a, #0x80
      00B99F 27 13            [ 1] 1558 	jreq	00115$
      00B9A1 0D 04            [ 1] 1559 	tnz	(0x04, sp)
      00B9A3 27 0F            [ 1] 1560 	jreq	00115$
      00B9A5 4B 9C            [ 1] 1561 	push	#0x9c
      00B9A7 4B 02            [ 1] 1562 	push	#0x02
      00B9A9 5F               [ 1] 1563 	clrw	x
      00B9AA 89               [ 2] 1564 	pushw	x
      00B9AB 4B AD            [ 1] 1565 	push	#<(___str_0+0)
      00B9AD 4B 85            [ 1] 1566 	push	#((___str_0+0) >> 8)
      00B9AF CD 00 00         [ 4] 1567 	call	_assert_failed
      00B9B2 5B 06            [ 2] 1568 	addw	sp, #6
      00B9B4                       1569 00115$:
                                   1570 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 671: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      00B9B4 7B 05            [ 1] 1571 	ld	a, (0x05, sp)
      00B9B6 88               [ 1] 1572 	push	a
      00B9B7 7B 05            [ 1] 1573 	ld	a, (0x05, sp)
      00B9B9 88               [ 1] 1574 	push	a
      00B9BA 7B 05            [ 1] 1575 	ld	a, (0x05, sp)
      00B9BC 88               [ 1] 1576 	push	a
      00B9BD CD BA 1E         [ 4] 1577 	call	_TIM1_ETRConfig
      00B9C0 5B 03            [ 2] 1578 	addw	sp, #3
                                   1579 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 674: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
      00B9C2 C6 52 52         [ 1] 1580 	ld	a, 0x5252
      00B9C5 A4 88            [ 1] 1581 	and	a, #0x88
      00B9C7 AA 77            [ 1] 1582 	or	a, #0x77
      00B9C9 C7 52 52         [ 1] 1583 	ld	0x5252, a
                                   1584 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 676: }
      00B9CC 81               [ 4] 1585 	ret
                                   1586 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 694: void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1587 ;	-----------------------------------------
                                   1588 ;	 function TIM1_ETRClockMode2Config
                                   1589 ;	-----------------------------------------
      00B9CD                       1590 _TIM1_ETRClockMode2Config:
                                   1591 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 699: assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
      00B9CD 0D 03            [ 1] 1592 	tnz	(0x03, sp)
      00B9CF 27 21            [ 1] 1593 	jreq	00104$
      00B9D1 7B 03            [ 1] 1594 	ld	a, (0x03, sp)
      00B9D3 A1 10            [ 1] 1595 	cp	a, #0x10
      00B9D5 27 1B            [ 1] 1596 	jreq	00104$
      00B9D7 7B 03            [ 1] 1597 	ld	a, (0x03, sp)
      00B9D9 A1 20            [ 1] 1598 	cp	a, #0x20
      00B9DB 27 15            [ 1] 1599 	jreq	00104$
      00B9DD 7B 03            [ 1] 1600 	ld	a, (0x03, sp)
      00B9DF A1 30            [ 1] 1601 	cp	a, #0x30
      00B9E1 27 0F            [ 1] 1602 	jreq	00104$
      00B9E3 4B BB            [ 1] 1603 	push	#0xbb
      00B9E5 4B 02            [ 1] 1604 	push	#0x02
      00B9E7 5F               [ 1] 1605 	clrw	x
      00B9E8 89               [ 2] 1606 	pushw	x
      00B9E9 4B AD            [ 1] 1607 	push	#<(___str_0+0)
      00B9EB 4B 85            [ 1] 1608 	push	#((___str_0+0) >> 8)
      00B9ED CD 00 00         [ 4] 1609 	call	_assert_failed
      00B9F0 5B 06            [ 2] 1610 	addw	sp, #6
      00B9F2                       1611 00104$:
                                   1612 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 700: assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
      00B9F2 7B 04            [ 1] 1613 	ld	a, (0x04, sp)
      00B9F4 A1 80            [ 1] 1614 	cp	a, #0x80
      00B9F6 27 13            [ 1] 1615 	jreq	00115$
      00B9F8 0D 04            [ 1] 1616 	tnz	(0x04, sp)
      00B9FA 27 0F            [ 1] 1617 	jreq	00115$
      00B9FC 4B BC            [ 1] 1618 	push	#0xbc
      00B9FE 4B 02            [ 1] 1619 	push	#0x02
      00BA00 5F               [ 1] 1620 	clrw	x
      00BA01 89               [ 2] 1621 	pushw	x
      00BA02 4B AD            [ 1] 1622 	push	#<(___str_0+0)
      00BA04 4B 85            [ 1] 1623 	push	#((___str_0+0) >> 8)
      00BA06 CD 00 00         [ 4] 1624 	call	_assert_failed
      00BA09 5B 06            [ 2] 1625 	addw	sp, #6
      00BA0B                       1626 00115$:
                                   1627 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 703: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      00BA0B 7B 05            [ 1] 1628 	ld	a, (0x05, sp)
      00BA0D 88               [ 1] 1629 	push	a
      00BA0E 7B 05            [ 1] 1630 	ld	a, (0x05, sp)
      00BA10 88               [ 1] 1631 	push	a
      00BA11 7B 05            [ 1] 1632 	ld	a, (0x05, sp)
      00BA13 88               [ 1] 1633 	push	a
      00BA14 CD BA 1E         [ 4] 1634 	call	_TIM1_ETRConfig
      00BA17 5B 03            [ 2] 1635 	addw	sp, #3
                                   1636 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 706: TIM1->ETR |= TIM1_ETR_ECE;
      00BA19 72 1C 52 53      [ 1] 1637 	bset	21075, #6
                                   1638 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 707: }
      00BA1D 81               [ 4] 1639 	ret
                                   1640 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 725: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1641 ;	-----------------------------------------
                                   1642 ;	 function TIM1_ETRConfig
                                   1643 ;	-----------------------------------------
      00BA1E                       1644 _TIM1_ETRConfig:
      00BA1E 88               [ 1] 1645 	push	a
                                   1646 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 730: assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
      00BA1F 7B 06            [ 1] 1647 	ld	a, (0x06, sp)
      00BA21 A1 0F            [ 1] 1648 	cp	a, #0x0f
      00BA23 23 0F            [ 2] 1649 	jrule	00104$
      00BA25 4B DA            [ 1] 1650 	push	#0xda
      00BA27 4B 02            [ 1] 1651 	push	#0x02
      00BA29 5F               [ 1] 1652 	clrw	x
      00BA2A 89               [ 2] 1653 	pushw	x
      00BA2B 4B AD            [ 1] 1654 	push	#<(___str_0+0)
      00BA2D 4B 85            [ 1] 1655 	push	#((___str_0+0) >> 8)
      00BA2F CD 00 00         [ 4] 1656 	call	_assert_failed
      00BA32 5B 06            [ 2] 1657 	addw	sp, #6
      00BA34                       1658 00104$:
                                   1659 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 732: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
      00BA34 C6 52 53         [ 1] 1660 	ld	a, 0x5253
      00BA37 6B 01            [ 1] 1661 	ld	(0x01, sp), a
      00BA39 7B 04            [ 1] 1662 	ld	a, (0x04, sp)
      00BA3B 1A 05            [ 1] 1663 	or	a, (0x05, sp)
                                   1664 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 733: (uint8_t)ExtTRGFilter );
      00BA3D 1A 06            [ 1] 1665 	or	a, (0x06, sp)
      00BA3F 1A 01            [ 1] 1666 	or	a, (0x01, sp)
      00BA41 C7 52 53         [ 1] 1667 	ld	0x5253, a
                                   1668 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 734: }
      00BA44 84               [ 1] 1669 	pop	a
      00BA45 81               [ 4] 1670 	ret
                                   1671 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 751: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
                                   1672 ;	-----------------------------------------
                                   1673 ;	 function TIM1_TIxExternalClockConfig
                                   1674 ;	-----------------------------------------
      00BA46                       1675 _TIM1_TIxExternalClockConfig:
      00BA46 88               [ 1] 1676 	push	a
                                   1677 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 756: assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
      00BA47 7B 04            [ 1] 1678 	ld	a, (0x04, sp)
      00BA49 A0 60            [ 1] 1679 	sub	a, #0x60
      00BA4B 26 04            [ 1] 1680 	jrne	00157$
      00BA4D 4C               [ 1] 1681 	inc	a
      00BA4E 6B 01            [ 1] 1682 	ld	(0x01, sp), a
      00BA50 C5                    1683 	.byte 0xc5
      00BA51                       1684 00157$:
      00BA51 0F 01            [ 1] 1685 	clr	(0x01, sp)
      00BA53                       1686 00158$:
      00BA53 7B 04            [ 1] 1687 	ld	a, (0x04, sp)
      00BA55 A1 40            [ 1] 1688 	cp	a, #0x40
      00BA57 27 19            [ 1] 1689 	jreq	00107$
      00BA59 0D 01            [ 1] 1690 	tnz	(0x01, sp)
      00BA5B 26 15            [ 1] 1691 	jrne	00107$
      00BA5D 7B 04            [ 1] 1692 	ld	a, (0x04, sp)
      00BA5F A1 50            [ 1] 1693 	cp	a, #0x50
      00BA61 27 0F            [ 1] 1694 	jreq	00107$
      00BA63 4B F4            [ 1] 1695 	push	#0xf4
      00BA65 4B 02            [ 1] 1696 	push	#0x02
      00BA67 5F               [ 1] 1697 	clrw	x
      00BA68 89               [ 2] 1698 	pushw	x
      00BA69 4B AD            [ 1] 1699 	push	#<(___str_0+0)
      00BA6B 4B 85            [ 1] 1700 	push	#((___str_0+0) >> 8)
      00BA6D CD 00 00         [ 4] 1701 	call	_assert_failed
      00BA70 5B 06            [ 2] 1702 	addw	sp, #6
      00BA72                       1703 00107$:
                                   1704 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 757: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      00BA72 0D 05            [ 1] 1705 	tnz	(0x05, sp)
      00BA74 27 14            [ 1] 1706 	jreq	00115$
      00BA76 7B 05            [ 1] 1707 	ld	a, (0x05, sp)
      00BA78 4A               [ 1] 1708 	dec	a
      00BA79 27 0F            [ 1] 1709 	jreq	00115$
      00BA7B 4B F5            [ 1] 1710 	push	#0xf5
      00BA7D 4B 02            [ 1] 1711 	push	#0x02
      00BA7F 5F               [ 1] 1712 	clrw	x
      00BA80 89               [ 2] 1713 	pushw	x
      00BA81 4B AD            [ 1] 1714 	push	#<(___str_0+0)
      00BA83 4B 85            [ 1] 1715 	push	#((___str_0+0) >> 8)
      00BA85 CD 00 00         [ 4] 1716 	call	_assert_failed
      00BA88 5B 06            [ 2] 1717 	addw	sp, #6
      00BA8A                       1718 00115$:
                                   1719 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 758: assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
      00BA8A 7B 06            [ 1] 1720 	ld	a, (0x06, sp)
      00BA8C A1 0F            [ 1] 1721 	cp	a, #0x0f
      00BA8E 23 0F            [ 2] 1722 	jrule	00120$
      00BA90 4B F6            [ 1] 1723 	push	#0xf6
      00BA92 4B 02            [ 1] 1724 	push	#0x02
      00BA94 5F               [ 1] 1725 	clrw	x
      00BA95 89               [ 2] 1726 	pushw	x
      00BA96 4B AD            [ 1] 1727 	push	#<(___str_0+0)
      00BA98 4B 85            [ 1] 1728 	push	#((___str_0+0) >> 8)
      00BA9A CD 00 00         [ 4] 1729 	call	_assert_failed
      00BA9D 5B 06            [ 2] 1730 	addw	sp, #6
      00BA9F                       1731 00120$:
                                   1732 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 761: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
      00BA9F 7B 01            [ 1] 1733 	ld	a, (0x01, sp)
      00BAA1 27 0F            [ 1] 1734 	jreq	00102$
                                   1735 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 763: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      00BAA3 7B 06            [ 1] 1736 	ld	a, (0x06, sp)
      00BAA5 88               [ 1] 1737 	push	a
      00BAA6 4B 01            [ 1] 1738 	push	#0x01
      00BAA8 7B 07            [ 1] 1739 	ld	a, (0x07, sp)
      00BAAA 88               [ 1] 1740 	push	a
      00BAAB CD C5 E1         [ 4] 1741 	call	_TI2_Config
      00BAAE 5B 03            [ 2] 1742 	addw	sp, #3
      00BAB0 20 0D            [ 2] 1743 	jra	00103$
      00BAB2                       1744 00102$:
                                   1745 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 767: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      00BAB2 7B 06            [ 1] 1746 	ld	a, (0x06, sp)
      00BAB4 88               [ 1] 1747 	push	a
      00BAB5 4B 01            [ 1] 1748 	push	#0x01
      00BAB7 7B 07            [ 1] 1749 	ld	a, (0x07, sp)
      00BAB9 88               [ 1] 1750 	push	a
      00BABA CD C5 B0         [ 4] 1751 	call	_TI1_Config
      00BABD 5B 03            [ 2] 1752 	addw	sp, #3
      00BABF                       1753 00103$:
                                   1754 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 771: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
      00BABF 7B 04            [ 1] 1755 	ld	a, (0x04, sp)
      00BAC1 88               [ 1] 1756 	push	a
      00BAC2 CD BA D0         [ 4] 1757 	call	_TIM1_SelectInputTrigger
      00BAC5 84               [ 1] 1758 	pop	a
                                   1759 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 774: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
      00BAC6 C6 52 52         [ 1] 1760 	ld	a, 0x5252
      00BAC9 AA 07            [ 1] 1761 	or	a, #0x07
      00BACB C7 52 52         [ 1] 1762 	ld	0x5252, a
                                   1763 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 775: }
      00BACE 84               [ 1] 1764 	pop	a
      00BACF 81               [ 4] 1765 	ret
                                   1766 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 787: void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
                                   1767 ;	-----------------------------------------
                                   1768 ;	 function TIM1_SelectInputTrigger
                                   1769 ;	-----------------------------------------
      00BAD0                       1770 _TIM1_SelectInputTrigger:
                                   1771 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 790: assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
      00BAD0 7B 03            [ 1] 1772 	ld	a, (0x03, sp)
      00BAD2 A1 40            [ 1] 1773 	cp	a, #0x40
      00BAD4 27 2B            [ 1] 1774 	jreq	00104$
      00BAD6 7B 03            [ 1] 1775 	ld	a, (0x03, sp)
      00BAD8 A1 50            [ 1] 1776 	cp	a, #0x50
      00BADA 27 25            [ 1] 1777 	jreq	00104$
      00BADC 7B 03            [ 1] 1778 	ld	a, (0x03, sp)
      00BADE A1 60            [ 1] 1779 	cp	a, #0x60
      00BAE0 27 1F            [ 1] 1780 	jreq	00104$
      00BAE2 7B 03            [ 1] 1781 	ld	a, (0x03, sp)
      00BAE4 A1 70            [ 1] 1782 	cp	a, #0x70
      00BAE6 27 19            [ 1] 1783 	jreq	00104$
      00BAE8 7B 03            [ 1] 1784 	ld	a, (0x03, sp)
      00BAEA A1 30            [ 1] 1785 	cp	a, #0x30
      00BAEC 27 13            [ 1] 1786 	jreq	00104$
      00BAEE 0D 03            [ 1] 1787 	tnz	(0x03, sp)
      00BAF0 27 0F            [ 1] 1788 	jreq	00104$
      00BAF2 4B 16            [ 1] 1789 	push	#0x16
      00BAF4 4B 03            [ 1] 1790 	push	#0x03
      00BAF6 5F               [ 1] 1791 	clrw	x
      00BAF7 89               [ 2] 1792 	pushw	x
      00BAF8 4B AD            [ 1] 1793 	push	#<(___str_0+0)
      00BAFA 4B 85            [ 1] 1794 	push	#((___str_0+0) >> 8)
      00BAFC CD 00 00         [ 4] 1795 	call	_assert_failed
      00BAFF 5B 06            [ 2] 1796 	addw	sp, #6
      00BB01                       1797 00104$:
                                   1798 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 793: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
      00BB01 C6 52 52         [ 1] 1799 	ld	a, 0x5252
      00BB04 A4 8F            [ 1] 1800 	and	a, #0x8f
      00BB06 1A 03            [ 1] 1801 	or	a, (0x03, sp)
      00BB08 C7 52 52         [ 1] 1802 	ld	0x5252, a
                                   1803 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 794: }
      00BB0B 81               [ 4] 1804 	ret
                                   1805 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 803: void TIM1_UpdateDisableConfig(FunctionalState NewState)
                                   1806 ;	-----------------------------------------
                                   1807 ;	 function TIM1_UpdateDisableConfig
                                   1808 ;	-----------------------------------------
      00BB0C                       1809 _TIM1_UpdateDisableConfig:
                                   1810 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 806: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BB0C 0D 03            [ 1] 1811 	tnz	(0x03, sp)
      00BB0E 27 14            [ 1] 1812 	jreq	00107$
      00BB10 7B 03            [ 1] 1813 	ld	a, (0x03, sp)
      00BB12 4A               [ 1] 1814 	dec	a
      00BB13 27 0F            [ 1] 1815 	jreq	00107$
      00BB15 4B 26            [ 1] 1816 	push	#0x26
      00BB17 4B 03            [ 1] 1817 	push	#0x03
      00BB19 5F               [ 1] 1818 	clrw	x
      00BB1A 89               [ 2] 1819 	pushw	x
      00BB1B 4B AD            [ 1] 1820 	push	#<(___str_0+0)
      00BB1D 4B 85            [ 1] 1821 	push	#((___str_0+0) >> 8)
      00BB1F CD 00 00         [ 4] 1822 	call	_assert_failed
      00BB22 5B 06            [ 2] 1823 	addw	sp, #6
      00BB24                       1824 00107$:
                                   1825 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      00BB24 C6 52 50         [ 1] 1826 	ld	a, 0x5250
                                   1827 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 809: if (NewState != DISABLE)
      00BB27 0D 03            [ 1] 1828 	tnz	(0x03, sp)
      00BB29 27 06            [ 1] 1829 	jreq	00102$
                                   1830 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      00BB2B AA 02            [ 1] 1831 	or	a, #0x02
      00BB2D C7 52 50         [ 1] 1832 	ld	0x5250, a
      00BB30 81               [ 4] 1833 	ret
      00BB31                       1834 00102$:
                                   1835 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 815: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
      00BB31 A4 FD            [ 1] 1836 	and	a, #0xfd
      00BB33 C7 52 50         [ 1] 1837 	ld	0x5250, a
                                   1838 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 817: }
      00BB36 81               [ 4] 1839 	ret
                                   1840 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 827: void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
                                   1841 ;	-----------------------------------------
                                   1842 ;	 function TIM1_UpdateRequestConfig
                                   1843 ;	-----------------------------------------
      00BB37                       1844 _TIM1_UpdateRequestConfig:
                                   1845 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 830: assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
      00BB37 0D 03            [ 1] 1846 	tnz	(0x03, sp)
      00BB39 27 14            [ 1] 1847 	jreq	00107$
      00BB3B 7B 03            [ 1] 1848 	ld	a, (0x03, sp)
      00BB3D 4A               [ 1] 1849 	dec	a
      00BB3E 27 0F            [ 1] 1850 	jreq	00107$
      00BB40 4B 3E            [ 1] 1851 	push	#0x3e
      00BB42 4B 03            [ 1] 1852 	push	#0x03
      00BB44 5F               [ 1] 1853 	clrw	x
      00BB45 89               [ 2] 1854 	pushw	x
      00BB46 4B AD            [ 1] 1855 	push	#<(___str_0+0)
      00BB48 4B 85            [ 1] 1856 	push	#((___str_0+0) >> 8)
      00BB4A CD 00 00         [ 4] 1857 	call	_assert_failed
      00BB4D 5B 06            [ 2] 1858 	addw	sp, #6
      00BB4F                       1859 00107$:
                                   1860 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      00BB4F C6 52 50         [ 1] 1861 	ld	a, 0x5250
                                   1862 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 833: if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
      00BB52 0D 03            [ 1] 1863 	tnz	(0x03, sp)
      00BB54 27 06            [ 1] 1864 	jreq	00102$
                                   1865 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      00BB56 AA 04            [ 1] 1866 	or	a, #0x04
      00BB58 C7 52 50         [ 1] 1867 	ld	0x5250, a
      00BB5B 81               [ 4] 1868 	ret
      00BB5C                       1869 00102$:
                                   1870 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 839: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
      00BB5C A4 FB            [ 1] 1871 	and	a, #0xfb
      00BB5E C7 52 50         [ 1] 1872 	ld	0x5250, a
                                   1873 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 841: }
      00BB61 81               [ 4] 1874 	ret
                                   1875 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 849: void TIM1_SelectHallSensor(FunctionalState NewState)
                                   1876 ;	-----------------------------------------
                                   1877 ;	 function TIM1_SelectHallSensor
                                   1878 ;	-----------------------------------------
      00BB62                       1879 _TIM1_SelectHallSensor:
                                   1880 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 852: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BB62 0D 03            [ 1] 1881 	tnz	(0x03, sp)
      00BB64 27 14            [ 1] 1882 	jreq	00107$
      00BB66 7B 03            [ 1] 1883 	ld	a, (0x03, sp)
      00BB68 4A               [ 1] 1884 	dec	a
      00BB69 27 0F            [ 1] 1885 	jreq	00107$
      00BB6B 4B 54            [ 1] 1886 	push	#0x54
      00BB6D 4B 03            [ 1] 1887 	push	#0x03
      00BB6F 5F               [ 1] 1888 	clrw	x
      00BB70 89               [ 2] 1889 	pushw	x
      00BB71 4B AD            [ 1] 1890 	push	#<(___str_0+0)
      00BB73 4B 85            [ 1] 1891 	push	#((___str_0+0) >> 8)
      00BB75 CD 00 00         [ 4] 1892 	call	_assert_failed
      00BB78 5B 06            [ 2] 1893 	addw	sp, #6
      00BB7A                       1894 00107$:
                                   1895 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      00BB7A C6 52 51         [ 1] 1896 	ld	a, 0x5251
                                   1897 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 855: if (NewState != DISABLE)
      00BB7D 0D 03            [ 1] 1898 	tnz	(0x03, sp)
      00BB7F 27 06            [ 1] 1899 	jreq	00102$
                                   1900 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      00BB81 AA 80            [ 1] 1901 	or	a, #0x80
      00BB83 C7 52 51         [ 1] 1902 	ld	0x5251, a
      00BB86 81               [ 4] 1903 	ret
      00BB87                       1904 00102$:
                                   1905 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 861: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
      00BB87 A4 7F            [ 1] 1906 	and	a, #0x7f
      00BB89 C7 52 51         [ 1] 1907 	ld	0x5251, a
                                   1908 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 863: }
      00BB8C 81               [ 4] 1909 	ret
                                   1910 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 873: void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
                                   1911 ;	-----------------------------------------
                                   1912 ;	 function TIM1_SelectOnePulseMode
                                   1913 ;	-----------------------------------------
      00BB8D                       1914 _TIM1_SelectOnePulseMode:
                                   1915 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 876: assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
      00BB8D 7B 03            [ 1] 1916 	ld	a, (0x03, sp)
      00BB8F 4A               [ 1] 1917 	dec	a
      00BB90 27 13            [ 1] 1918 	jreq	00107$
      00BB92 0D 03            [ 1] 1919 	tnz	(0x03, sp)
      00BB94 27 0F            [ 1] 1920 	jreq	00107$
      00BB96 4B 6C            [ 1] 1921 	push	#0x6c
      00BB98 4B 03            [ 1] 1922 	push	#0x03
      00BB9A 5F               [ 1] 1923 	clrw	x
      00BB9B 89               [ 2] 1924 	pushw	x
      00BB9C 4B AD            [ 1] 1925 	push	#<(___str_0+0)
      00BB9E 4B 85            [ 1] 1926 	push	#((___str_0+0) >> 8)
      00BBA0 CD 00 00         [ 4] 1927 	call	_assert_failed
      00BBA3 5B 06            [ 2] 1928 	addw	sp, #6
      00BBA5                       1929 00107$:
                                   1930 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      00BBA5 C6 52 50         [ 1] 1931 	ld	a, 0x5250
                                   1932 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 879: if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
      00BBA8 0D 03            [ 1] 1933 	tnz	(0x03, sp)
      00BBAA 27 06            [ 1] 1934 	jreq	00102$
                                   1935 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      00BBAC AA 08            [ 1] 1936 	or	a, #0x08
      00BBAE C7 52 50         [ 1] 1937 	ld	0x5250, a
      00BBB1 81               [ 4] 1938 	ret
      00BBB2                       1939 00102$:
                                   1940 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 885: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
      00BBB2 A4 F7            [ 1] 1941 	and	a, #0xf7
      00BBB4 C7 52 50         [ 1] 1942 	ld	0x5250, a
                                   1943 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 888: }
      00BBB7 81               [ 4] 1944 	ret
                                   1945 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 903: void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
                                   1946 ;	-----------------------------------------
                                   1947 ;	 function TIM1_SelectOutputTrigger
                                   1948 ;	-----------------------------------------
      00BBB8                       1949 _TIM1_SelectOutputTrigger:
                                   1950 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 906: assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
      00BBB8 0D 03            [ 1] 1951 	tnz	(0x03, sp)
      00BBBA 27 33            [ 1] 1952 	jreq	00104$
      00BBBC 7B 03            [ 1] 1953 	ld	a, (0x03, sp)
      00BBBE A1 10            [ 1] 1954 	cp	a, #0x10
      00BBC0 27 2D            [ 1] 1955 	jreq	00104$
      00BBC2 7B 03            [ 1] 1956 	ld	a, (0x03, sp)
      00BBC4 A1 20            [ 1] 1957 	cp	a, #0x20
      00BBC6 27 27            [ 1] 1958 	jreq	00104$
      00BBC8 7B 03            [ 1] 1959 	ld	a, (0x03, sp)
      00BBCA A1 30            [ 1] 1960 	cp	a, #0x30
      00BBCC 27 21            [ 1] 1961 	jreq	00104$
      00BBCE 7B 03            [ 1] 1962 	ld	a, (0x03, sp)
      00BBD0 A1 40            [ 1] 1963 	cp	a, #0x40
      00BBD2 27 1B            [ 1] 1964 	jreq	00104$
      00BBD4 7B 03            [ 1] 1965 	ld	a, (0x03, sp)
      00BBD6 A1 50            [ 1] 1966 	cp	a, #0x50
      00BBD8 27 15            [ 1] 1967 	jreq	00104$
      00BBDA 7B 03            [ 1] 1968 	ld	a, (0x03, sp)
      00BBDC A1 60            [ 1] 1969 	cp	a, #0x60
      00BBDE 27 0F            [ 1] 1970 	jreq	00104$
      00BBE0 4B 8A            [ 1] 1971 	push	#0x8a
      00BBE2 4B 03            [ 1] 1972 	push	#0x03
      00BBE4 5F               [ 1] 1973 	clrw	x
      00BBE5 89               [ 2] 1974 	pushw	x
      00BBE6 4B AD            [ 1] 1975 	push	#<(___str_0+0)
      00BBE8 4B 85            [ 1] 1976 	push	#((___str_0+0) >> 8)
      00BBEA CD 00 00         [ 4] 1977 	call	_assert_failed
      00BBED 5B 06            [ 2] 1978 	addw	sp, #6
      00BBEF                       1979 00104$:
                                   1980 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 909: TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
      00BBEF C6 52 51         [ 1] 1981 	ld	a, 0x5251
      00BBF2 A4 8F            [ 1] 1982 	and	a, #0x8f
                                   1983 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 910: (uint8_t) TIM1_TRGOSource);
      00BBF4 1A 03            [ 1] 1984 	or	a, (0x03, sp)
      00BBF6 C7 52 51         [ 1] 1985 	ld	0x5251, a
                                   1986 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 911: }
      00BBF9 81               [ 4] 1987 	ret
                                   1988 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 923: void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
                                   1989 ;	-----------------------------------------
                                   1990 ;	 function TIM1_SelectSlaveMode
                                   1991 ;	-----------------------------------------
      00BBFA                       1992 _TIM1_SelectSlaveMode:
                                   1993 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 926: assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
      00BBFA 7B 03            [ 1] 1994 	ld	a, (0x03, sp)
      00BBFC A1 04            [ 1] 1995 	cp	a, #0x04
      00BBFE 27 21            [ 1] 1996 	jreq	00104$
      00BC00 7B 03            [ 1] 1997 	ld	a, (0x03, sp)
      00BC02 A1 05            [ 1] 1998 	cp	a, #0x05
      00BC04 27 1B            [ 1] 1999 	jreq	00104$
      00BC06 7B 03            [ 1] 2000 	ld	a, (0x03, sp)
      00BC08 A1 06            [ 1] 2001 	cp	a, #0x06
      00BC0A 27 15            [ 1] 2002 	jreq	00104$
      00BC0C 7B 03            [ 1] 2003 	ld	a, (0x03, sp)
      00BC0E A1 07            [ 1] 2004 	cp	a, #0x07
      00BC10 27 0F            [ 1] 2005 	jreq	00104$
      00BC12 4B 9E            [ 1] 2006 	push	#0x9e
      00BC14 4B 03            [ 1] 2007 	push	#0x03
      00BC16 5F               [ 1] 2008 	clrw	x
      00BC17 89               [ 2] 2009 	pushw	x
      00BC18 4B AD            [ 1] 2010 	push	#<(___str_0+0)
      00BC1A 4B 85            [ 1] 2011 	push	#((___str_0+0) >> 8)
      00BC1C CD 00 00         [ 4] 2012 	call	_assert_failed
      00BC1F 5B 06            [ 2] 2013 	addw	sp, #6
      00BC21                       2014 00104$:
                                   2015 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 929: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
      00BC21 C6 52 52         [ 1] 2016 	ld	a, 0x5252
      00BC24 A4 F8            [ 1] 2017 	and	a, #0xf8
                                   2018 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 930: (uint8_t)TIM1_SlaveMode);
      00BC26 1A 03            [ 1] 2019 	or	a, (0x03, sp)
      00BC28 C7 52 52         [ 1] 2020 	ld	0x5252, a
                                   2021 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 931: }
      00BC2B 81               [ 4] 2022 	ret
                                   2023 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 939: void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
                                   2024 ;	-----------------------------------------
                                   2025 ;	 function TIM1_SelectMasterSlaveMode
                                   2026 ;	-----------------------------------------
      00BC2C                       2027 _TIM1_SelectMasterSlaveMode:
                                   2028 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 942: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BC2C 0D 03            [ 1] 2029 	tnz	(0x03, sp)
      00BC2E 27 14            [ 1] 2030 	jreq	00107$
      00BC30 7B 03            [ 1] 2031 	ld	a, (0x03, sp)
      00BC32 4A               [ 1] 2032 	dec	a
      00BC33 27 0F            [ 1] 2033 	jreq	00107$
      00BC35 4B AE            [ 1] 2034 	push	#0xae
      00BC37 4B 03            [ 1] 2035 	push	#0x03
      00BC39 5F               [ 1] 2036 	clrw	x
      00BC3A 89               [ 2] 2037 	pushw	x
      00BC3B 4B AD            [ 1] 2038 	push	#<(___str_0+0)
      00BC3D 4B 85            [ 1] 2039 	push	#((___str_0+0) >> 8)
      00BC3F CD 00 00         [ 4] 2040 	call	_assert_failed
      00BC42 5B 06            [ 2] 2041 	addw	sp, #6
      00BC44                       2042 00107$:
                                   2043 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      00BC44 C6 52 52         [ 1] 2044 	ld	a, 0x5252
                                   2045 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 945: if (NewState != DISABLE)
      00BC47 0D 03            [ 1] 2046 	tnz	(0x03, sp)
      00BC49 27 06            [ 1] 2047 	jreq	00102$
                                   2048 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      00BC4B AA 80            [ 1] 2049 	or	a, #0x80
      00BC4D C7 52 52         [ 1] 2050 	ld	0x5252, a
      00BC50 81               [ 4] 2051 	ret
      00BC51                       2052 00102$:
                                   2053 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 951: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
      00BC51 A4 7F            [ 1] 2054 	and	a, #0x7f
      00BC53 C7 52 52         [ 1] 2055 	ld	0x5252, a
                                   2056 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 953: }
      00BC56 81               [ 4] 2057 	ret
                                   2058 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 975: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
                                   2059 ;	-----------------------------------------
                                   2060 ;	 function TIM1_EncoderInterfaceConfig
                                   2061 ;	-----------------------------------------
      00BC57                       2062 _TIM1_EncoderInterfaceConfig:
                                   2063 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 980: assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
      00BC57 7B 03            [ 1] 2064 	ld	a, (0x03, sp)
      00BC59 4A               [ 1] 2065 	dec	a
      00BC5A 27 1B            [ 1] 2066 	jreq	00110$
      00BC5C 7B 03            [ 1] 2067 	ld	a, (0x03, sp)
      00BC5E A1 02            [ 1] 2068 	cp	a, #0x02
      00BC60 27 15            [ 1] 2069 	jreq	00110$
      00BC62 7B 03            [ 1] 2070 	ld	a, (0x03, sp)
      00BC64 A1 03            [ 1] 2071 	cp	a, #0x03
      00BC66 27 0F            [ 1] 2072 	jreq	00110$
      00BC68 4B D4            [ 1] 2073 	push	#0xd4
      00BC6A 4B 03            [ 1] 2074 	push	#0x03
      00BC6C 5F               [ 1] 2075 	clrw	x
      00BC6D 89               [ 2] 2076 	pushw	x
      00BC6E 4B AD            [ 1] 2077 	push	#<(___str_0+0)
      00BC70 4B 85            [ 1] 2078 	push	#((___str_0+0) >> 8)
      00BC72 CD 00 00         [ 4] 2079 	call	_assert_failed
      00BC75 5B 06            [ 2] 2080 	addw	sp, #6
      00BC77                       2081 00110$:
                                   2082 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 981: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
      00BC77 0D 04            [ 1] 2083 	tnz	(0x04, sp)
      00BC79 27 14            [ 1] 2084 	jreq	00118$
      00BC7B 7B 04            [ 1] 2085 	ld	a, (0x04, sp)
      00BC7D 4A               [ 1] 2086 	dec	a
      00BC7E 27 0F            [ 1] 2087 	jreq	00118$
      00BC80 4B D5            [ 1] 2088 	push	#0xd5
      00BC82 4B 03            [ 1] 2089 	push	#0x03
      00BC84 5F               [ 1] 2090 	clrw	x
      00BC85 89               [ 2] 2091 	pushw	x
      00BC86 4B AD            [ 1] 2092 	push	#<(___str_0+0)
      00BC88 4B 85            [ 1] 2093 	push	#((___str_0+0) >> 8)
      00BC8A CD 00 00         [ 4] 2094 	call	_assert_failed
      00BC8D 5B 06            [ 2] 2095 	addw	sp, #6
      00BC8F                       2096 00118$:
                                   2097 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 982: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
      00BC8F 0D 05            [ 1] 2098 	tnz	(0x05, sp)
      00BC91 27 14            [ 1] 2099 	jreq	00123$
      00BC93 7B 05            [ 1] 2100 	ld	a, (0x05, sp)
      00BC95 4A               [ 1] 2101 	dec	a
      00BC96 27 0F            [ 1] 2102 	jreq	00123$
      00BC98 4B D6            [ 1] 2103 	push	#0xd6
      00BC9A 4B 03            [ 1] 2104 	push	#0x03
      00BC9C 5F               [ 1] 2105 	clrw	x
      00BC9D 89               [ 2] 2106 	pushw	x
      00BC9E 4B AD            [ 1] 2107 	push	#<(___str_0+0)
      00BCA0 4B 85            [ 1] 2108 	push	#((___str_0+0) >> 8)
      00BCA2 CD 00 00         [ 4] 2109 	call	_assert_failed
      00BCA5 5B 06            [ 2] 2110 	addw	sp, #6
      00BCA7                       2111 00123$:
                                   2112 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00BCA7 C6 52 5C         [ 1] 2113 	ld	a, 0x525c
                                   2114 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 985: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
      00BCAA 0D 04            [ 1] 2115 	tnz	(0x04, sp)
      00BCAC 27 07            [ 1] 2116 	jreq	00102$
                                   2117 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00BCAE AA 02            [ 1] 2118 	or	a, #0x02
      00BCB0 C7 52 5C         [ 1] 2119 	ld	0x525c, a
      00BCB3 20 05            [ 2] 2120 	jra	00103$
      00BCB5                       2121 00102$:
                                   2122 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 991: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      00BCB5 A4 FD            [ 1] 2123 	and	a, #0xfd
      00BCB7 C7 52 5C         [ 1] 2124 	ld	0x525c, a
      00BCBA                       2125 00103$:
                                   2126 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00BCBA C6 52 5C         [ 1] 2127 	ld	a, 0x525c
                                   2128 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 994: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
      00BCBD 0D 05            [ 1] 2129 	tnz	(0x05, sp)
      00BCBF 27 07            [ 1] 2130 	jreq	00105$
                                   2131 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 996: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00BCC1 AA 20            [ 1] 2132 	or	a, #0x20
      00BCC3 C7 52 5C         [ 1] 2133 	ld	0x525c, a
      00BCC6 20 05            [ 2] 2134 	jra	00106$
      00BCC8                       2135 00105$:
                                   2136 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1000: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      00BCC8 A4 DF            [ 1] 2137 	and	a, #0xdf
      00BCCA C7 52 5C         [ 1] 2138 	ld	0x525c, a
      00BCCD                       2139 00106$:
                                   2140 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1003: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
      00BCCD C6 52 52         [ 1] 2141 	ld	a, 0x5252
      00BCD0 A4 F0            [ 1] 2142 	and	a, #0xf0
                                   2143 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1004: | (uint8_t) TIM1_EncoderMode);
      00BCD2 1A 03            [ 1] 2144 	or	a, (0x03, sp)
      00BCD4 C7 52 52         [ 1] 2145 	ld	0x5252, a
                                   2146 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1007: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
      00BCD7 C6 52 58         [ 1] 2147 	ld	a, 0x5258
      00BCDA A4 FC            [ 1] 2148 	and	a, #0xfc
      00BCDC AA 01            [ 1] 2149 	or	a, #0x01
      00BCDE C7 52 58         [ 1] 2150 	ld	0x5258, a
                                   2151 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1009: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
      00BCE1 C6 52 59         [ 1] 2152 	ld	a, 0x5259
      00BCE4 A4 FC            [ 1] 2153 	and	a, #0xfc
      00BCE6 AA 01            [ 1] 2154 	or	a, #0x01
      00BCE8 C7 52 59         [ 1] 2155 	ld	0x5259, a
                                   2156 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1011: }
      00BCEB 81               [ 4] 2157 	ret
                                   2158 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1023: void TIM1_PrescalerConfig(uint16_t Prescaler,
                                   2159 ;	-----------------------------------------
                                   2160 ;	 function TIM1_PrescalerConfig
                                   2161 ;	-----------------------------------------
      00BCEC                       2162 _TIM1_PrescalerConfig:
                                   2163 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1027: assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
      00BCEC 0D 05            [ 1] 2164 	tnz	(0x05, sp)
      00BCEE 27 14            [ 1] 2165 	jreq	00104$
      00BCF0 7B 05            [ 1] 2166 	ld	a, (0x05, sp)
      00BCF2 4A               [ 1] 2167 	dec	a
      00BCF3 27 0F            [ 1] 2168 	jreq	00104$
      00BCF5 4B 03            [ 1] 2169 	push	#0x03
      00BCF7 4B 04            [ 1] 2170 	push	#0x04
      00BCF9 5F               [ 1] 2171 	clrw	x
      00BCFA 89               [ 2] 2172 	pushw	x
      00BCFB 4B AD            [ 1] 2173 	push	#<(___str_0+0)
      00BCFD 4B 85            [ 1] 2174 	push	#((___str_0+0) >> 8)
      00BCFF CD 00 00         [ 4] 2175 	call	_assert_failed
      00BD02 5B 06            [ 2] 2176 	addw	sp, #6
      00BD04                       2177 00104$:
                                   2178 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1030: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
      00BD04 7B 03            [ 1] 2179 	ld	a, (0x03, sp)
      00BD06 C7 52 60         [ 1] 2180 	ld	0x5260, a
                                   2181 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1031: TIM1->PSCRL = (uint8_t)(Prescaler);
      00BD09 7B 04            [ 1] 2182 	ld	a, (0x04, sp)
      00BD0B C7 52 61         [ 1] 2183 	ld	0x5261, a
                                   2184 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1034: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
      00BD0E AE 52 57         [ 2] 2185 	ldw	x, #0x5257
      00BD11 7B 05            [ 1] 2186 	ld	a, (0x05, sp)
      00BD13 F7               [ 1] 2187 	ld	(x), a
                                   2188 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1035: }
      00BD14 81               [ 4] 2189 	ret
                                   2190 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1048: void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
                                   2191 ;	-----------------------------------------
                                   2192 ;	 function TIM1_CounterModeConfig
                                   2193 ;	-----------------------------------------
      00BD15                       2194 _TIM1_CounterModeConfig:
                                   2195 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1051: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      00BD15 0D 03            [ 1] 2196 	tnz	(0x03, sp)
      00BD17 27 27            [ 1] 2197 	jreq	00104$
      00BD19 7B 03            [ 1] 2198 	ld	a, (0x03, sp)
      00BD1B A1 10            [ 1] 2199 	cp	a, #0x10
      00BD1D 27 21            [ 1] 2200 	jreq	00104$
      00BD1F 7B 03            [ 1] 2201 	ld	a, (0x03, sp)
      00BD21 A1 20            [ 1] 2202 	cp	a, #0x20
      00BD23 27 1B            [ 1] 2203 	jreq	00104$
      00BD25 7B 03            [ 1] 2204 	ld	a, (0x03, sp)
      00BD27 A1 40            [ 1] 2205 	cp	a, #0x40
      00BD29 27 15            [ 1] 2206 	jreq	00104$
      00BD2B 7B 03            [ 1] 2207 	ld	a, (0x03, sp)
      00BD2D A1 60            [ 1] 2208 	cp	a, #0x60
      00BD2F 27 0F            [ 1] 2209 	jreq	00104$
      00BD31 4B 1B            [ 1] 2210 	push	#0x1b
      00BD33 4B 04            [ 1] 2211 	push	#0x04
      00BD35 5F               [ 1] 2212 	clrw	x
      00BD36 89               [ 2] 2213 	pushw	x
      00BD37 4B AD            [ 1] 2214 	push	#<(___str_0+0)
      00BD39 4B 85            [ 1] 2215 	push	#((___str_0+0) >> 8)
      00BD3B CD 00 00         [ 4] 2216 	call	_assert_failed
      00BD3E 5B 06            [ 2] 2217 	addw	sp, #6
      00BD40                       2218 00104$:
                                   2219 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1055: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
      00BD40 C6 52 50         [ 1] 2220 	ld	a, 0x5250
      00BD43 A4 8F            [ 1] 2221 	and	a, #0x8f
                                   2222 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1056: | (uint8_t)TIM1_CounterMode);
      00BD45 1A 03            [ 1] 2223 	or	a, (0x03, sp)
      00BD47 C7 52 50         [ 1] 2224 	ld	0x5250, a
                                   2225 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1057: }
      00BD4A 81               [ 4] 2226 	ret
                                   2227 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1067: void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2228 ;	-----------------------------------------
                                   2229 ;	 function TIM1_ForcedOC1Config
                                   2230 ;	-----------------------------------------
      00BD4B                       2231 _TIM1_ForcedOC1Config:
                                   2232 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1070: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      00BD4B 7B 03            [ 1] 2233 	ld	a, (0x03, sp)
      00BD4D A1 50            [ 1] 2234 	cp	a, #0x50
      00BD4F 27 15            [ 1] 2235 	jreq	00104$
      00BD51 7B 03            [ 1] 2236 	ld	a, (0x03, sp)
      00BD53 A1 40            [ 1] 2237 	cp	a, #0x40
      00BD55 27 0F            [ 1] 2238 	jreq	00104$
      00BD57 4B 2E            [ 1] 2239 	push	#0x2e
      00BD59 4B 04            [ 1] 2240 	push	#0x04
      00BD5B 5F               [ 1] 2241 	clrw	x
      00BD5C 89               [ 2] 2242 	pushw	x
      00BD5D 4B AD            [ 1] 2243 	push	#<(___str_0+0)
      00BD5F 4B 85            [ 1] 2244 	push	#((___str_0+0) >> 8)
      00BD61 CD 00 00         [ 4] 2245 	call	_assert_failed
      00BD64 5B 06            [ 2] 2246 	addw	sp, #6
      00BD66                       2247 00104$:
                                   2248 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1073: TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
      00BD66 C6 52 58         [ 1] 2249 	ld	a, 0x5258
      00BD69 A4 8F            [ 1] 2250 	and	a, #0x8f
                                   2251 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1074: (uint8_t)TIM1_ForcedAction);
      00BD6B 1A 03            [ 1] 2252 	or	a, (0x03, sp)
      00BD6D C7 52 58         [ 1] 2253 	ld	0x5258, a
                                   2254 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1075: }
      00BD70 81               [ 4] 2255 	ret
                                   2256 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1085: void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2257 ;	-----------------------------------------
                                   2258 ;	 function TIM1_ForcedOC2Config
                                   2259 ;	-----------------------------------------
      00BD71                       2260 _TIM1_ForcedOC2Config:
                                   2261 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1088: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      00BD71 7B 03            [ 1] 2262 	ld	a, (0x03, sp)
      00BD73 A1 50            [ 1] 2263 	cp	a, #0x50
      00BD75 27 15            [ 1] 2264 	jreq	00104$
      00BD77 7B 03            [ 1] 2265 	ld	a, (0x03, sp)
      00BD79 A1 40            [ 1] 2266 	cp	a, #0x40
      00BD7B 27 0F            [ 1] 2267 	jreq	00104$
      00BD7D 4B 40            [ 1] 2268 	push	#0x40
      00BD7F 4B 04            [ 1] 2269 	push	#0x04
      00BD81 5F               [ 1] 2270 	clrw	x
      00BD82 89               [ 2] 2271 	pushw	x
      00BD83 4B AD            [ 1] 2272 	push	#<(___str_0+0)
      00BD85 4B 85            [ 1] 2273 	push	#((___str_0+0) >> 8)
      00BD87 CD 00 00         [ 4] 2274 	call	_assert_failed
      00BD8A 5B 06            [ 2] 2275 	addw	sp, #6
      00BD8C                       2276 00104$:
                                   2277 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1091: TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      00BD8C C6 52 59         [ 1] 2278 	ld	a, 0x5259
      00BD8F A4 8F            [ 1] 2279 	and	a, #0x8f
                                   2280 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1092: | (uint8_t)TIM1_ForcedAction);
      00BD91 1A 03            [ 1] 2281 	or	a, (0x03, sp)
      00BD93 C7 52 59         [ 1] 2282 	ld	0x5259, a
                                   2283 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1093: }
      00BD96 81               [ 4] 2284 	ret
                                   2285 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1104: void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2286 ;	-----------------------------------------
                                   2287 ;	 function TIM1_ForcedOC3Config
                                   2288 ;	-----------------------------------------
      00BD97                       2289 _TIM1_ForcedOC3Config:
                                   2290 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1107: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      00BD97 7B 03            [ 1] 2291 	ld	a, (0x03, sp)
      00BD99 A1 50            [ 1] 2292 	cp	a, #0x50
      00BD9B 27 15            [ 1] 2293 	jreq	00104$
      00BD9D 7B 03            [ 1] 2294 	ld	a, (0x03, sp)
      00BD9F A1 40            [ 1] 2295 	cp	a, #0x40
      00BDA1 27 0F            [ 1] 2296 	jreq	00104$
      00BDA3 4B 53            [ 1] 2297 	push	#0x53
      00BDA5 4B 04            [ 1] 2298 	push	#0x04
      00BDA7 5F               [ 1] 2299 	clrw	x
      00BDA8 89               [ 2] 2300 	pushw	x
      00BDA9 4B AD            [ 1] 2301 	push	#<(___str_0+0)
      00BDAB 4B 85            [ 1] 2302 	push	#((___str_0+0) >> 8)
      00BDAD CD 00 00         [ 4] 2303 	call	_assert_failed
      00BDB0 5B 06            [ 2] 2304 	addw	sp, #6
      00BDB2                       2305 00104$:
                                   2306 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1110: TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
      00BDB2 C6 52 5A         [ 1] 2307 	ld	a, 0x525a
      00BDB5 A4 8F            [ 1] 2308 	and	a, #0x8f
                                   2309 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1111: | (uint8_t)TIM1_ForcedAction);
      00BDB7 1A 03            [ 1] 2310 	or	a, (0x03, sp)
      00BDB9 C7 52 5A         [ 1] 2311 	ld	0x525a, a
                                   2312 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1112: }
      00BDBC 81               [ 4] 2313 	ret
                                   2314 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1123: void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2315 ;	-----------------------------------------
                                   2316 ;	 function TIM1_ForcedOC4Config
                                   2317 ;	-----------------------------------------
      00BDBD                       2318 _TIM1_ForcedOC4Config:
                                   2319 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1126: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      00BDBD 7B 03            [ 1] 2320 	ld	a, (0x03, sp)
      00BDBF A1 50            [ 1] 2321 	cp	a, #0x50
      00BDC1 27 15            [ 1] 2322 	jreq	00104$
      00BDC3 7B 03            [ 1] 2323 	ld	a, (0x03, sp)
      00BDC5 A1 40            [ 1] 2324 	cp	a, #0x40
      00BDC7 27 0F            [ 1] 2325 	jreq	00104$
      00BDC9 4B 66            [ 1] 2326 	push	#0x66
      00BDCB 4B 04            [ 1] 2327 	push	#0x04
      00BDCD 5F               [ 1] 2328 	clrw	x
      00BDCE 89               [ 2] 2329 	pushw	x
      00BDCF 4B AD            [ 1] 2330 	push	#<(___str_0+0)
      00BDD1 4B 85            [ 1] 2331 	push	#((___str_0+0) >> 8)
      00BDD3 CD 00 00         [ 4] 2332 	call	_assert_failed
      00BDD6 5B 06            [ 2] 2333 	addw	sp, #6
      00BDD8                       2334 00104$:
                                   2335 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1129: TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      00BDD8 C6 52 5B         [ 1] 2336 	ld	a, 0x525b
      00BDDB A4 8F            [ 1] 2337 	and	a, #0x8f
                                   2338 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1130: | (uint8_t)TIM1_ForcedAction);
      00BDDD 1A 03            [ 1] 2339 	or	a, (0x03, sp)
      00BDDF C7 52 5B         [ 1] 2340 	ld	0x525b, a
                                   2341 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1131: }
      00BDE2 81               [ 4] 2342 	ret
                                   2343 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1139: void TIM1_ARRPreloadConfig(FunctionalState NewState)
                                   2344 ;	-----------------------------------------
                                   2345 ;	 function TIM1_ARRPreloadConfig
                                   2346 ;	-----------------------------------------
      00BDE3                       2347 _TIM1_ARRPreloadConfig:
                                   2348 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1142: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BDE3 0D 03            [ 1] 2349 	tnz	(0x03, sp)
      00BDE5 27 14            [ 1] 2350 	jreq	00107$
      00BDE7 7B 03            [ 1] 2351 	ld	a, (0x03, sp)
      00BDE9 4A               [ 1] 2352 	dec	a
      00BDEA 27 0F            [ 1] 2353 	jreq	00107$
      00BDEC 4B 76            [ 1] 2354 	push	#0x76
      00BDEE 4B 04            [ 1] 2355 	push	#0x04
      00BDF0 5F               [ 1] 2356 	clrw	x
      00BDF1 89               [ 2] 2357 	pushw	x
      00BDF2 4B AD            [ 1] 2358 	push	#<(___str_0+0)
      00BDF4 4B 85            [ 1] 2359 	push	#((___str_0+0) >> 8)
      00BDF6 CD 00 00         [ 4] 2360 	call	_assert_failed
      00BDF9 5B 06            [ 2] 2361 	addw	sp, #6
      00BDFB                       2362 00107$:
                                   2363 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      00BDFB C6 52 50         [ 1] 2364 	ld	a, 0x5250
                                   2365 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1145: if (NewState != DISABLE)
      00BDFE 0D 03            [ 1] 2366 	tnz	(0x03, sp)
      00BE00 27 06            [ 1] 2367 	jreq	00102$
                                   2368 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      00BE02 AA 80            [ 1] 2369 	or	a, #0x80
      00BE04 C7 52 50         [ 1] 2370 	ld	0x5250, a
      00BE07 81               [ 4] 2371 	ret
      00BE08                       2372 00102$:
                                   2373 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1151: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
      00BE08 A4 7F            [ 1] 2374 	and	a, #0x7f
      00BE0A C7 52 50         [ 1] 2375 	ld	0x5250, a
                                   2376 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1153: }
      00BE0D 81               [ 4] 2377 	ret
                                   2378 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1161: void TIM1_SelectCOM(FunctionalState NewState)
                                   2379 ;	-----------------------------------------
                                   2380 ;	 function TIM1_SelectCOM
                                   2381 ;	-----------------------------------------
      00BE0E                       2382 _TIM1_SelectCOM:
                                   2383 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1164: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BE0E 0D 03            [ 1] 2384 	tnz	(0x03, sp)
      00BE10 27 14            [ 1] 2385 	jreq	00107$
      00BE12 7B 03            [ 1] 2386 	ld	a, (0x03, sp)
      00BE14 4A               [ 1] 2387 	dec	a
      00BE15 27 0F            [ 1] 2388 	jreq	00107$
      00BE17 4B 8C            [ 1] 2389 	push	#0x8c
      00BE19 4B 04            [ 1] 2390 	push	#0x04
      00BE1B 5F               [ 1] 2391 	clrw	x
      00BE1C 89               [ 2] 2392 	pushw	x
      00BE1D 4B AD            [ 1] 2393 	push	#<(___str_0+0)
      00BE1F 4B 85            [ 1] 2394 	push	#((___str_0+0) >> 8)
      00BE21 CD 00 00         [ 4] 2395 	call	_assert_failed
      00BE24 5B 06            [ 2] 2396 	addw	sp, #6
      00BE26                       2397 00107$:
                                   2398 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      00BE26 C6 52 51         [ 1] 2399 	ld	a, 0x5251
                                   2400 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1167: if (NewState != DISABLE)
      00BE29 0D 03            [ 1] 2401 	tnz	(0x03, sp)
      00BE2B 27 06            [ 1] 2402 	jreq	00102$
                                   2403 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      00BE2D AA 04            [ 1] 2404 	or	a, #0x04
      00BE2F C7 52 51         [ 1] 2405 	ld	0x5251, a
      00BE32 81               [ 4] 2406 	ret
      00BE33                       2407 00102$:
                                   2408 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1173: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
      00BE33 A4 FB            [ 1] 2409 	and	a, #0xfb
      00BE35 C7 52 51         [ 1] 2410 	ld	0x5251, a
                                   2411 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1175: }
      00BE38 81               [ 4] 2412 	ret
                                   2413 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1183: void TIM1_CCPreloadControl(FunctionalState NewState)
                                   2414 ;	-----------------------------------------
                                   2415 ;	 function TIM1_CCPreloadControl
                                   2416 ;	-----------------------------------------
      00BE39                       2417 _TIM1_CCPreloadControl:
                                   2418 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1186: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BE39 0D 03            [ 1] 2419 	tnz	(0x03, sp)
      00BE3B 27 14            [ 1] 2420 	jreq	00107$
      00BE3D 7B 03            [ 1] 2421 	ld	a, (0x03, sp)
      00BE3F 4A               [ 1] 2422 	dec	a
      00BE40 27 0F            [ 1] 2423 	jreq	00107$
      00BE42 4B A2            [ 1] 2424 	push	#0xa2
      00BE44 4B 04            [ 1] 2425 	push	#0x04
      00BE46 5F               [ 1] 2426 	clrw	x
      00BE47 89               [ 2] 2427 	pushw	x
      00BE48 4B AD            [ 1] 2428 	push	#<(___str_0+0)
      00BE4A 4B 85            [ 1] 2429 	push	#((___str_0+0) >> 8)
      00BE4C CD 00 00         [ 4] 2430 	call	_assert_failed
      00BE4F 5B 06            [ 2] 2431 	addw	sp, #6
      00BE51                       2432 00107$:
                                   2433 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      00BE51 C6 52 51         [ 1] 2434 	ld	a, 0x5251
                                   2435 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1189: if (NewState != DISABLE)
      00BE54 0D 03            [ 1] 2436 	tnz	(0x03, sp)
      00BE56 27 06            [ 1] 2437 	jreq	00102$
                                   2438 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      00BE58 AA 01            [ 1] 2439 	or	a, #0x01
      00BE5A C7 52 51         [ 1] 2440 	ld	0x5251, a
      00BE5D 81               [ 4] 2441 	ret
      00BE5E                       2442 00102$:
                                   2443 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1195: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
      00BE5E A4 FE            [ 1] 2444 	and	a, #0xfe
      00BE60 C7 52 51         [ 1] 2445 	ld	0x5251, a
                                   2446 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1197: }
      00BE63 81               [ 4] 2447 	ret
                                   2448 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1205: void TIM1_OC1PreloadConfig(FunctionalState NewState)
                                   2449 ;	-----------------------------------------
                                   2450 ;	 function TIM1_OC1PreloadConfig
                                   2451 ;	-----------------------------------------
      00BE64                       2452 _TIM1_OC1PreloadConfig:
                                   2453 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1208: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BE64 0D 03            [ 1] 2454 	tnz	(0x03, sp)
      00BE66 27 14            [ 1] 2455 	jreq	00107$
      00BE68 7B 03            [ 1] 2456 	ld	a, (0x03, sp)
      00BE6A 4A               [ 1] 2457 	dec	a
      00BE6B 27 0F            [ 1] 2458 	jreq	00107$
      00BE6D 4B B8            [ 1] 2459 	push	#0xb8
      00BE6F 4B 04            [ 1] 2460 	push	#0x04
      00BE71 5F               [ 1] 2461 	clrw	x
      00BE72 89               [ 2] 2462 	pushw	x
      00BE73 4B AD            [ 1] 2463 	push	#<(___str_0+0)
      00BE75 4B 85            [ 1] 2464 	push	#((___str_0+0) >> 8)
      00BE77 CD 00 00         [ 4] 2465 	call	_assert_failed
      00BE7A 5B 06            [ 2] 2466 	addw	sp, #6
      00BE7C                       2467 00107$:
                                   2468 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      00BE7C C6 52 58         [ 1] 2469 	ld	a, 0x5258
                                   2470 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1211: if (NewState != DISABLE)
      00BE7F 0D 03            [ 1] 2471 	tnz	(0x03, sp)
      00BE81 27 06            [ 1] 2472 	jreq	00102$
                                   2473 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      00BE83 AA 08            [ 1] 2474 	or	a, #0x08
      00BE85 C7 52 58         [ 1] 2475 	ld	0x5258, a
      00BE88 81               [ 4] 2476 	ret
      00BE89                       2477 00102$:
                                   2478 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1217: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      00BE89 A4 F7            [ 1] 2479 	and	a, #0xf7
      00BE8B C7 52 58         [ 1] 2480 	ld	0x5258, a
                                   2481 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1219: }
      00BE8E 81               [ 4] 2482 	ret
                                   2483 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1227: void TIM1_OC2PreloadConfig(FunctionalState NewState)
                                   2484 ;	-----------------------------------------
                                   2485 ;	 function TIM1_OC2PreloadConfig
                                   2486 ;	-----------------------------------------
      00BE8F                       2487 _TIM1_OC2PreloadConfig:
                                   2488 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1230: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BE8F 0D 03            [ 1] 2489 	tnz	(0x03, sp)
      00BE91 27 14            [ 1] 2490 	jreq	00107$
      00BE93 7B 03            [ 1] 2491 	ld	a, (0x03, sp)
      00BE95 4A               [ 1] 2492 	dec	a
      00BE96 27 0F            [ 1] 2493 	jreq	00107$
      00BE98 4B CE            [ 1] 2494 	push	#0xce
      00BE9A 4B 04            [ 1] 2495 	push	#0x04
      00BE9C 5F               [ 1] 2496 	clrw	x
      00BE9D 89               [ 2] 2497 	pushw	x
      00BE9E 4B AD            [ 1] 2498 	push	#<(___str_0+0)
      00BEA0 4B 85            [ 1] 2499 	push	#((___str_0+0) >> 8)
      00BEA2 CD 00 00         [ 4] 2500 	call	_assert_failed
      00BEA5 5B 06            [ 2] 2501 	addw	sp, #6
      00BEA7                       2502 00107$:
                                   2503 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      00BEA7 C6 52 59         [ 1] 2504 	ld	a, 0x5259
                                   2505 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1233: if (NewState != DISABLE)
      00BEAA 0D 03            [ 1] 2506 	tnz	(0x03, sp)
      00BEAC 27 06            [ 1] 2507 	jreq	00102$
                                   2508 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      00BEAE AA 08            [ 1] 2509 	or	a, #0x08
      00BEB0 C7 52 59         [ 1] 2510 	ld	0x5259, a
      00BEB3 81               [ 4] 2511 	ret
      00BEB4                       2512 00102$:
                                   2513 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1239: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      00BEB4 A4 F7            [ 1] 2514 	and	a, #0xf7
      00BEB6 C7 52 59         [ 1] 2515 	ld	0x5259, a
                                   2516 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1241: }
      00BEB9 81               [ 4] 2517 	ret
                                   2518 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1249: void TIM1_OC3PreloadConfig(FunctionalState NewState)
                                   2519 ;	-----------------------------------------
                                   2520 ;	 function TIM1_OC3PreloadConfig
                                   2521 ;	-----------------------------------------
      00BEBA                       2522 _TIM1_OC3PreloadConfig:
                                   2523 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1252: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BEBA 0D 03            [ 1] 2524 	tnz	(0x03, sp)
      00BEBC 27 14            [ 1] 2525 	jreq	00107$
      00BEBE 7B 03            [ 1] 2526 	ld	a, (0x03, sp)
      00BEC0 4A               [ 1] 2527 	dec	a
      00BEC1 27 0F            [ 1] 2528 	jreq	00107$
      00BEC3 4B E4            [ 1] 2529 	push	#0xe4
      00BEC5 4B 04            [ 1] 2530 	push	#0x04
      00BEC7 5F               [ 1] 2531 	clrw	x
      00BEC8 89               [ 2] 2532 	pushw	x
      00BEC9 4B AD            [ 1] 2533 	push	#<(___str_0+0)
      00BECB 4B 85            [ 1] 2534 	push	#((___str_0+0) >> 8)
      00BECD CD 00 00         [ 4] 2535 	call	_assert_failed
      00BED0 5B 06            [ 2] 2536 	addw	sp, #6
      00BED2                       2537 00107$:
                                   2538 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      00BED2 C6 52 5A         [ 1] 2539 	ld	a, 0x525a
                                   2540 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1255: if (NewState != DISABLE)
      00BED5 0D 03            [ 1] 2541 	tnz	(0x03, sp)
      00BED7 27 06            [ 1] 2542 	jreq	00102$
                                   2543 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      00BED9 AA 08            [ 1] 2544 	or	a, #0x08
      00BEDB C7 52 5A         [ 1] 2545 	ld	0x525a, a
      00BEDE 81               [ 4] 2546 	ret
      00BEDF                       2547 00102$:
                                   2548 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1261: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      00BEDF A4 F7            [ 1] 2549 	and	a, #0xf7
      00BEE1 C7 52 5A         [ 1] 2550 	ld	0x525a, a
                                   2551 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1263: }
      00BEE4 81               [ 4] 2552 	ret
                                   2553 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1271: void TIM1_OC4PreloadConfig(FunctionalState NewState)
                                   2554 ;	-----------------------------------------
                                   2555 ;	 function TIM1_OC4PreloadConfig
                                   2556 ;	-----------------------------------------
      00BEE5                       2557 _TIM1_OC4PreloadConfig:
                                   2558 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1274: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BEE5 0D 03            [ 1] 2559 	tnz	(0x03, sp)
      00BEE7 27 14            [ 1] 2560 	jreq	00107$
      00BEE9 7B 03            [ 1] 2561 	ld	a, (0x03, sp)
      00BEEB 4A               [ 1] 2562 	dec	a
      00BEEC 27 0F            [ 1] 2563 	jreq	00107$
      00BEEE 4B FA            [ 1] 2564 	push	#0xfa
      00BEF0 4B 04            [ 1] 2565 	push	#0x04
      00BEF2 5F               [ 1] 2566 	clrw	x
      00BEF3 89               [ 2] 2567 	pushw	x
      00BEF4 4B AD            [ 1] 2568 	push	#<(___str_0+0)
      00BEF6 4B 85            [ 1] 2569 	push	#((___str_0+0) >> 8)
      00BEF8 CD 00 00         [ 4] 2570 	call	_assert_failed
      00BEFB 5B 06            [ 2] 2571 	addw	sp, #6
      00BEFD                       2572 00107$:
                                   2573 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      00BEFD C6 52 5B         [ 1] 2574 	ld	a, 0x525b
                                   2575 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1277: if (NewState != DISABLE)
      00BF00 0D 03            [ 1] 2576 	tnz	(0x03, sp)
      00BF02 27 06            [ 1] 2577 	jreq	00102$
                                   2578 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      00BF04 AA 08            [ 1] 2579 	or	a, #0x08
      00BF06 C7 52 5B         [ 1] 2580 	ld	0x525b, a
      00BF09 81               [ 4] 2581 	ret
      00BF0A                       2582 00102$:
                                   2583 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1283: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      00BF0A A4 F7            [ 1] 2584 	and	a, #0xf7
      00BF0C C7 52 5B         [ 1] 2585 	ld	0x525b, a
                                   2586 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1285: }
      00BF0F 81               [ 4] 2587 	ret
                                   2588 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1293: void TIM1_OC1FastConfig(FunctionalState NewState)
                                   2589 ;	-----------------------------------------
                                   2590 ;	 function TIM1_OC1FastConfig
                                   2591 ;	-----------------------------------------
      00BF10                       2592 _TIM1_OC1FastConfig:
                                   2593 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1296: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BF10 0D 03            [ 1] 2594 	tnz	(0x03, sp)
      00BF12 27 14            [ 1] 2595 	jreq	00107$
      00BF14 7B 03            [ 1] 2596 	ld	a, (0x03, sp)
      00BF16 4A               [ 1] 2597 	dec	a
      00BF17 27 0F            [ 1] 2598 	jreq	00107$
      00BF19 4B 10            [ 1] 2599 	push	#0x10
      00BF1B 4B 05            [ 1] 2600 	push	#0x05
      00BF1D 5F               [ 1] 2601 	clrw	x
      00BF1E 89               [ 2] 2602 	pushw	x
      00BF1F 4B AD            [ 1] 2603 	push	#<(___str_0+0)
      00BF21 4B 85            [ 1] 2604 	push	#((___str_0+0) >> 8)
      00BF23 CD 00 00         [ 4] 2605 	call	_assert_failed
      00BF26 5B 06            [ 2] 2606 	addw	sp, #6
      00BF28                       2607 00107$:
                                   2608 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      00BF28 C6 52 58         [ 1] 2609 	ld	a, 0x5258
                                   2610 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1299: if (NewState != DISABLE)
      00BF2B 0D 03            [ 1] 2611 	tnz	(0x03, sp)
      00BF2D 27 06            [ 1] 2612 	jreq	00102$
                                   2613 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      00BF2F AA 04            [ 1] 2614 	or	a, #0x04
      00BF31 C7 52 58         [ 1] 2615 	ld	0x5258, a
      00BF34 81               [ 4] 2616 	ret
      00BF35                       2617 00102$:
                                   2618 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1305: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      00BF35 A4 FB            [ 1] 2619 	and	a, #0xfb
      00BF37 C7 52 58         [ 1] 2620 	ld	0x5258, a
                                   2621 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1307: }
      00BF3A 81               [ 4] 2622 	ret
                                   2623 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1315: void TIM1_OC2FastConfig(FunctionalState NewState)
                                   2624 ;	-----------------------------------------
                                   2625 ;	 function TIM1_OC2FastConfig
                                   2626 ;	-----------------------------------------
      00BF3B                       2627 _TIM1_OC2FastConfig:
                                   2628 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1318: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BF3B 0D 03            [ 1] 2629 	tnz	(0x03, sp)
      00BF3D 27 14            [ 1] 2630 	jreq	00107$
      00BF3F 7B 03            [ 1] 2631 	ld	a, (0x03, sp)
      00BF41 4A               [ 1] 2632 	dec	a
      00BF42 27 0F            [ 1] 2633 	jreq	00107$
      00BF44 4B 26            [ 1] 2634 	push	#0x26
      00BF46 4B 05            [ 1] 2635 	push	#0x05
      00BF48 5F               [ 1] 2636 	clrw	x
      00BF49 89               [ 2] 2637 	pushw	x
      00BF4A 4B AD            [ 1] 2638 	push	#<(___str_0+0)
      00BF4C 4B 85            [ 1] 2639 	push	#((___str_0+0) >> 8)
      00BF4E CD 00 00         [ 4] 2640 	call	_assert_failed
      00BF51 5B 06            [ 2] 2641 	addw	sp, #6
      00BF53                       2642 00107$:
                                   2643 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      00BF53 C6 52 59         [ 1] 2644 	ld	a, 0x5259
                                   2645 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1321: if (NewState != DISABLE)
      00BF56 0D 03            [ 1] 2646 	tnz	(0x03, sp)
      00BF58 27 06            [ 1] 2647 	jreq	00102$
                                   2648 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      00BF5A AA 04            [ 1] 2649 	or	a, #0x04
      00BF5C C7 52 59         [ 1] 2650 	ld	0x5259, a
      00BF5F 81               [ 4] 2651 	ret
      00BF60                       2652 00102$:
                                   2653 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1327: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      00BF60 A4 FB            [ 1] 2654 	and	a, #0xfb
      00BF62 C7 52 59         [ 1] 2655 	ld	0x5259, a
                                   2656 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1329: }
      00BF65 81               [ 4] 2657 	ret
                                   2658 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1337: void TIM1_OC3FastConfig(FunctionalState NewState)
                                   2659 ;	-----------------------------------------
                                   2660 ;	 function TIM1_OC3FastConfig
                                   2661 ;	-----------------------------------------
      00BF66                       2662 _TIM1_OC3FastConfig:
                                   2663 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1340: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BF66 0D 03            [ 1] 2664 	tnz	(0x03, sp)
      00BF68 27 14            [ 1] 2665 	jreq	00107$
      00BF6A 7B 03            [ 1] 2666 	ld	a, (0x03, sp)
      00BF6C 4A               [ 1] 2667 	dec	a
      00BF6D 27 0F            [ 1] 2668 	jreq	00107$
      00BF6F 4B 3C            [ 1] 2669 	push	#0x3c
      00BF71 4B 05            [ 1] 2670 	push	#0x05
      00BF73 5F               [ 1] 2671 	clrw	x
      00BF74 89               [ 2] 2672 	pushw	x
      00BF75 4B AD            [ 1] 2673 	push	#<(___str_0+0)
      00BF77 4B 85            [ 1] 2674 	push	#((___str_0+0) >> 8)
      00BF79 CD 00 00         [ 4] 2675 	call	_assert_failed
      00BF7C 5B 06            [ 2] 2676 	addw	sp, #6
      00BF7E                       2677 00107$:
                                   2678 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      00BF7E C6 52 5A         [ 1] 2679 	ld	a, 0x525a
                                   2680 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1343: if (NewState != DISABLE)
      00BF81 0D 03            [ 1] 2681 	tnz	(0x03, sp)
      00BF83 27 06            [ 1] 2682 	jreq	00102$
                                   2683 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      00BF85 AA 04            [ 1] 2684 	or	a, #0x04
      00BF87 C7 52 5A         [ 1] 2685 	ld	0x525a, a
      00BF8A 81               [ 4] 2686 	ret
      00BF8B                       2687 00102$:
                                   2688 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1349: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      00BF8B A4 FB            [ 1] 2689 	and	a, #0xfb
      00BF8D C7 52 5A         [ 1] 2690 	ld	0x525a, a
                                   2691 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1351: }
      00BF90 81               [ 4] 2692 	ret
                                   2693 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1359: void TIM1_OC4FastConfig(FunctionalState NewState)
                                   2694 ;	-----------------------------------------
                                   2695 ;	 function TIM1_OC4FastConfig
                                   2696 ;	-----------------------------------------
      00BF91                       2697 _TIM1_OC4FastConfig:
                                   2698 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1362: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BF91 0D 03            [ 1] 2699 	tnz	(0x03, sp)
      00BF93 27 14            [ 1] 2700 	jreq	00107$
      00BF95 7B 03            [ 1] 2701 	ld	a, (0x03, sp)
      00BF97 4A               [ 1] 2702 	dec	a
      00BF98 27 0F            [ 1] 2703 	jreq	00107$
      00BF9A 4B 52            [ 1] 2704 	push	#0x52
      00BF9C 4B 05            [ 1] 2705 	push	#0x05
      00BF9E 5F               [ 1] 2706 	clrw	x
      00BF9F 89               [ 2] 2707 	pushw	x
      00BFA0 4B AD            [ 1] 2708 	push	#<(___str_0+0)
      00BFA2 4B 85            [ 1] 2709 	push	#((___str_0+0) >> 8)
      00BFA4 CD 00 00         [ 4] 2710 	call	_assert_failed
      00BFA7 5B 06            [ 2] 2711 	addw	sp, #6
      00BFA9                       2712 00107$:
                                   2713 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      00BFA9 C6 52 5B         [ 1] 2714 	ld	a, 0x525b
                                   2715 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1365: if (NewState != DISABLE)
      00BFAC 0D 03            [ 1] 2716 	tnz	(0x03, sp)
      00BFAE 27 06            [ 1] 2717 	jreq	00102$
                                   2718 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      00BFB0 AA 04            [ 1] 2719 	or	a, #0x04
      00BFB2 C7 52 5B         [ 1] 2720 	ld	0x525b, a
      00BFB5 81               [ 4] 2721 	ret
      00BFB6                       2722 00102$:
                                   2723 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1371: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      00BFB6 A4 FB            [ 1] 2724 	and	a, #0xfb
      00BFB8 C7 52 5B         [ 1] 2725 	ld	0x525b, a
                                   2726 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1373: }
      00BFBB 81               [ 4] 2727 	ret
                                   2728 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1389: void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
                                   2729 ;	-----------------------------------------
                                   2730 ;	 function TIM1_GenerateEvent
                                   2731 ;	-----------------------------------------
      00BFBC                       2732 _TIM1_GenerateEvent:
                                   2733 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1392: assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
      00BFBC 0D 03            [ 1] 2734 	tnz	(0x03, sp)
      00BFBE 26 0F            [ 1] 2735 	jrne	00104$
      00BFC0 4B 70            [ 1] 2736 	push	#0x70
      00BFC2 4B 05            [ 1] 2737 	push	#0x05
      00BFC4 5F               [ 1] 2738 	clrw	x
      00BFC5 89               [ 2] 2739 	pushw	x
      00BFC6 4B AD            [ 1] 2740 	push	#<(___str_0+0)
      00BFC8 4B 85            [ 1] 2741 	push	#((___str_0+0) >> 8)
      00BFCA CD 00 00         [ 4] 2742 	call	_assert_failed
      00BFCD 5B 06            [ 2] 2743 	addw	sp, #6
      00BFCF                       2744 00104$:
                                   2745 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1395: TIM1->EGR = (uint8_t)TIM1_EventSource;
      00BFCF AE 52 57         [ 2] 2746 	ldw	x, #0x5257
      00BFD2 7B 03            [ 1] 2747 	ld	a, (0x03, sp)
      00BFD4 F7               [ 1] 2748 	ld	(x), a
                                   2749 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1396: }
      00BFD5 81               [ 4] 2750 	ret
                                   2751 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1406: void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2752 ;	-----------------------------------------
                                   2753 ;	 function TIM1_OC1PolarityConfig
                                   2754 ;	-----------------------------------------
      00BFD6                       2755 _TIM1_OC1PolarityConfig:
                                   2756 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1409: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00BFD6 0D 03            [ 1] 2757 	tnz	(0x03, sp)
      00BFD8 27 15            [ 1] 2758 	jreq	00107$
      00BFDA 7B 03            [ 1] 2759 	ld	a, (0x03, sp)
      00BFDC A1 22            [ 1] 2760 	cp	a, #0x22
      00BFDE 27 0F            [ 1] 2761 	jreq	00107$
      00BFE0 4B 81            [ 1] 2762 	push	#0x81
      00BFE2 4B 05            [ 1] 2763 	push	#0x05
      00BFE4 5F               [ 1] 2764 	clrw	x
      00BFE5 89               [ 2] 2765 	pushw	x
      00BFE6 4B AD            [ 1] 2766 	push	#<(___str_0+0)
      00BFE8 4B 85            [ 1] 2767 	push	#((___str_0+0) >> 8)
      00BFEA CD 00 00         [ 4] 2768 	call	_assert_failed
      00BFED 5B 06            [ 2] 2769 	addw	sp, #6
      00BFEF                       2770 00107$:
                                   2771 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00BFEF C6 52 5C         [ 1] 2772 	ld	a, 0x525c
                                   2773 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1412: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00BFF2 0D 03            [ 1] 2774 	tnz	(0x03, sp)
      00BFF4 27 06            [ 1] 2775 	jreq	00102$
                                   2776 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00BFF6 AA 02            [ 1] 2777 	or	a, #0x02
      00BFF8 C7 52 5C         [ 1] 2778 	ld	0x525c, a
      00BFFB 81               [ 4] 2779 	ret
      00BFFC                       2780 00102$:
                                   2781 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1418: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      00BFFC A4 FD            [ 1] 2782 	and	a, #0xfd
      00BFFE C7 52 5C         [ 1] 2783 	ld	0x525c, a
                                   2784 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1420: }
      00C001 81               [ 4] 2785 	ret
                                   2786 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1430: void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2787 ;	-----------------------------------------
                                   2788 ;	 function TIM1_OC1NPolarityConfig
                                   2789 ;	-----------------------------------------
      00C002                       2790 _TIM1_OC1NPolarityConfig:
                                   2791 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1433: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00C002 0D 03            [ 1] 2792 	tnz	(0x03, sp)
      00C004 27 15            [ 1] 2793 	jreq	00107$
      00C006 7B 03            [ 1] 2794 	ld	a, (0x03, sp)
      00C008 A1 88            [ 1] 2795 	cp	a, #0x88
      00C00A 27 0F            [ 1] 2796 	jreq	00107$
      00C00C 4B 99            [ 1] 2797 	push	#0x99
      00C00E 4B 05            [ 1] 2798 	push	#0x05
      00C010 5F               [ 1] 2799 	clrw	x
      00C011 89               [ 2] 2800 	pushw	x
      00C012 4B AD            [ 1] 2801 	push	#<(___str_0+0)
      00C014 4B 85            [ 1] 2802 	push	#((___str_0+0) >> 8)
      00C016 CD 00 00         [ 4] 2803 	call	_assert_failed
      00C019 5B 06            [ 2] 2804 	addw	sp, #6
      00C01B                       2805 00107$:
                                   2806 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      00C01B C6 52 5C         [ 1] 2807 	ld	a, 0x525c
                                   2808 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1436: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00C01E 0D 03            [ 1] 2809 	tnz	(0x03, sp)
      00C020 27 06            [ 1] 2810 	jreq	00102$
                                   2811 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      00C022 AA 08            [ 1] 2812 	or	a, #0x08
      00C024 C7 52 5C         [ 1] 2813 	ld	0x525c, a
      00C027 81               [ 4] 2814 	ret
      00C028                       2815 00102$:
                                   2816 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1442: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
      00C028 A4 F7            [ 1] 2817 	and	a, #0xf7
      00C02A C7 52 5C         [ 1] 2818 	ld	0x525c, a
                                   2819 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1444: }
      00C02D 81               [ 4] 2820 	ret
                                   2821 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1454: void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2822 ;	-----------------------------------------
                                   2823 ;	 function TIM1_OC2PolarityConfig
                                   2824 ;	-----------------------------------------
      00C02E                       2825 _TIM1_OC2PolarityConfig:
                                   2826 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1457: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00C02E 0D 03            [ 1] 2827 	tnz	(0x03, sp)
      00C030 27 15            [ 1] 2828 	jreq	00107$
      00C032 7B 03            [ 1] 2829 	ld	a, (0x03, sp)
      00C034 A1 22            [ 1] 2830 	cp	a, #0x22
      00C036 27 0F            [ 1] 2831 	jreq	00107$
      00C038 4B B1            [ 1] 2832 	push	#0xb1
      00C03A 4B 05            [ 1] 2833 	push	#0x05
      00C03C 5F               [ 1] 2834 	clrw	x
      00C03D 89               [ 2] 2835 	pushw	x
      00C03E 4B AD            [ 1] 2836 	push	#<(___str_0+0)
      00C040 4B 85            [ 1] 2837 	push	#((___str_0+0) >> 8)
      00C042 CD 00 00         [ 4] 2838 	call	_assert_failed
      00C045 5B 06            [ 2] 2839 	addw	sp, #6
      00C047                       2840 00107$:
                                   2841 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00C047 C6 52 5C         [ 1] 2842 	ld	a, 0x525c
                                   2843 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1460: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00C04A 0D 03            [ 1] 2844 	tnz	(0x03, sp)
      00C04C 27 06            [ 1] 2845 	jreq	00102$
                                   2846 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00C04E AA 20            [ 1] 2847 	or	a, #0x20
      00C050 C7 52 5C         [ 1] 2848 	ld	0x525c, a
      00C053 81               [ 4] 2849 	ret
      00C054                       2850 00102$:
                                   2851 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1466: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      00C054 A4 DF            [ 1] 2852 	and	a, #0xdf
      00C056 C7 52 5C         [ 1] 2853 	ld	0x525c, a
                                   2854 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1468: }
      00C059 81               [ 4] 2855 	ret
                                   2856 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1478: void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2857 ;	-----------------------------------------
                                   2858 ;	 function TIM1_OC2NPolarityConfig
                                   2859 ;	-----------------------------------------
      00C05A                       2860 _TIM1_OC2NPolarityConfig:
                                   2861 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1481: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00C05A 0D 03            [ 1] 2862 	tnz	(0x03, sp)
      00C05C 27 15            [ 1] 2863 	jreq	00107$
      00C05E 7B 03            [ 1] 2864 	ld	a, (0x03, sp)
      00C060 A1 88            [ 1] 2865 	cp	a, #0x88
      00C062 27 0F            [ 1] 2866 	jreq	00107$
      00C064 4B C9            [ 1] 2867 	push	#0xc9
      00C066 4B 05            [ 1] 2868 	push	#0x05
      00C068 5F               [ 1] 2869 	clrw	x
      00C069 89               [ 2] 2870 	pushw	x
      00C06A 4B AD            [ 1] 2871 	push	#<(___str_0+0)
      00C06C 4B 85            [ 1] 2872 	push	#((___str_0+0) >> 8)
      00C06E CD 00 00         [ 4] 2873 	call	_assert_failed
      00C071 5B 06            [ 2] 2874 	addw	sp, #6
      00C073                       2875 00107$:
                                   2876 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      00C073 C6 52 5C         [ 1] 2877 	ld	a, 0x525c
                                   2878 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1484: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00C076 0D 03            [ 1] 2879 	tnz	(0x03, sp)
      00C078 27 06            [ 1] 2880 	jreq	00102$
                                   2881 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      00C07A AA 80            [ 1] 2882 	or	a, #0x80
      00C07C C7 52 5C         [ 1] 2883 	ld	0x525c, a
      00C07F 81               [ 4] 2884 	ret
      00C080                       2885 00102$:
                                   2886 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1490: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
      00C080 A4 7F            [ 1] 2887 	and	a, #0x7f
      00C082 C7 52 5C         [ 1] 2888 	ld	0x525c, a
                                   2889 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1492: }
      00C085 81               [ 4] 2890 	ret
                                   2891 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1502: void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2892 ;	-----------------------------------------
                                   2893 ;	 function TIM1_OC3PolarityConfig
                                   2894 ;	-----------------------------------------
      00C086                       2895 _TIM1_OC3PolarityConfig:
                                   2896 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1505: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00C086 0D 03            [ 1] 2897 	tnz	(0x03, sp)
      00C088 27 15            [ 1] 2898 	jreq	00107$
      00C08A 7B 03            [ 1] 2899 	ld	a, (0x03, sp)
      00C08C A1 22            [ 1] 2900 	cp	a, #0x22
      00C08E 27 0F            [ 1] 2901 	jreq	00107$
      00C090 4B E1            [ 1] 2902 	push	#0xe1
      00C092 4B 05            [ 1] 2903 	push	#0x05
      00C094 5F               [ 1] 2904 	clrw	x
      00C095 89               [ 2] 2905 	pushw	x
      00C096 4B AD            [ 1] 2906 	push	#<(___str_0+0)
      00C098 4B 85            [ 1] 2907 	push	#((___str_0+0) >> 8)
      00C09A CD 00 00         [ 4] 2908 	call	_assert_failed
      00C09D 5B 06            [ 2] 2909 	addw	sp, #6
      00C09F                       2910 00107$:
                                   2911 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      00C09F C6 52 5D         [ 1] 2912 	ld	a, 0x525d
                                   2913 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1508: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00C0A2 0D 03            [ 1] 2914 	tnz	(0x03, sp)
      00C0A4 27 06            [ 1] 2915 	jreq	00102$
                                   2916 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      00C0A6 AA 02            [ 1] 2917 	or	a, #0x02
      00C0A8 C7 52 5D         [ 1] 2918 	ld	0x525d, a
      00C0AB 81               [ 4] 2919 	ret
      00C0AC                       2920 00102$:
                                   2921 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1514: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      00C0AC A4 FD            [ 1] 2922 	and	a, #0xfd
      00C0AE C7 52 5D         [ 1] 2923 	ld	0x525d, a
                                   2924 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1516: }
      00C0B1 81               [ 4] 2925 	ret
                                   2926 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1527: void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2927 ;	-----------------------------------------
                                   2928 ;	 function TIM1_OC3NPolarityConfig
                                   2929 ;	-----------------------------------------
      00C0B2                       2930 _TIM1_OC3NPolarityConfig:
                                   2931 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1530: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00C0B2 0D 03            [ 1] 2932 	tnz	(0x03, sp)
      00C0B4 27 15            [ 1] 2933 	jreq	00107$
      00C0B6 7B 03            [ 1] 2934 	ld	a, (0x03, sp)
      00C0B8 A1 88            [ 1] 2935 	cp	a, #0x88
      00C0BA 27 0F            [ 1] 2936 	jreq	00107$
      00C0BC 4B FA            [ 1] 2937 	push	#0xfa
      00C0BE 4B 05            [ 1] 2938 	push	#0x05
      00C0C0 5F               [ 1] 2939 	clrw	x
      00C0C1 89               [ 2] 2940 	pushw	x
      00C0C2 4B AD            [ 1] 2941 	push	#<(___str_0+0)
      00C0C4 4B 85            [ 1] 2942 	push	#((___str_0+0) >> 8)
      00C0C6 CD 00 00         [ 4] 2943 	call	_assert_failed
      00C0C9 5B 06            [ 2] 2944 	addw	sp, #6
      00C0CB                       2945 00107$:
                                   2946 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      00C0CB C6 52 5D         [ 1] 2947 	ld	a, 0x525d
                                   2948 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1533: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00C0CE 0D 03            [ 1] 2949 	tnz	(0x03, sp)
      00C0D0 27 06            [ 1] 2950 	jreq	00102$
                                   2951 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      00C0D2 AA 08            [ 1] 2952 	or	a, #0x08
      00C0D4 C7 52 5D         [ 1] 2953 	ld	0x525d, a
      00C0D7 81               [ 4] 2954 	ret
      00C0D8                       2955 00102$:
                                   2956 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1539: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
      00C0D8 A4 F7            [ 1] 2957 	and	a, #0xf7
      00C0DA C7 52 5D         [ 1] 2958 	ld	0x525d, a
                                   2959 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1541: }
      00C0DD 81               [ 4] 2960 	ret
                                   2961 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1551: void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2962 ;	-----------------------------------------
                                   2963 ;	 function TIM1_OC4PolarityConfig
                                   2964 ;	-----------------------------------------
      00C0DE                       2965 _TIM1_OC4PolarityConfig:
                                   2966 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1554: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00C0DE 0D 03            [ 1] 2967 	tnz	(0x03, sp)
      00C0E0 27 15            [ 1] 2968 	jreq	00107$
      00C0E2 7B 03            [ 1] 2969 	ld	a, (0x03, sp)
      00C0E4 A1 22            [ 1] 2970 	cp	a, #0x22
      00C0E6 27 0F            [ 1] 2971 	jreq	00107$
      00C0E8 4B 12            [ 1] 2972 	push	#0x12
      00C0EA 4B 06            [ 1] 2973 	push	#0x06
      00C0EC 5F               [ 1] 2974 	clrw	x
      00C0ED 89               [ 2] 2975 	pushw	x
      00C0EE 4B AD            [ 1] 2976 	push	#<(___str_0+0)
      00C0F0 4B 85            [ 1] 2977 	push	#((___str_0+0) >> 8)
      00C0F2 CD 00 00         [ 4] 2978 	call	_assert_failed
      00C0F5 5B 06            [ 2] 2979 	addw	sp, #6
      00C0F7                       2980 00107$:
                                   2981 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      00C0F7 C6 52 5D         [ 1] 2982 	ld	a, 0x525d
                                   2983 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1557: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00C0FA 0D 03            [ 1] 2984 	tnz	(0x03, sp)
      00C0FC 27 06            [ 1] 2985 	jreq	00102$
                                   2986 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      00C0FE AA 20            [ 1] 2987 	or	a, #0x20
      00C100 C7 52 5D         [ 1] 2988 	ld	0x525d, a
      00C103 81               [ 4] 2989 	ret
      00C104                       2990 00102$:
                                   2991 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1563: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      00C104 A4 DF            [ 1] 2992 	and	a, #0xdf
      00C106 C7 52 5D         [ 1] 2993 	ld	0x525d, a
                                   2994 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1565: }
      00C109 81               [ 4] 2995 	ret
                                   2996 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1579: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   2997 ;	-----------------------------------------
                                   2998 ;	 function TIM1_CCxCmd
                                   2999 ;	-----------------------------------------
      00C10A                       3000 _TIM1_CCxCmd:
      00C10A 89               [ 2] 3001 	pushw	x
                                   3002 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1582: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      00C10B 7B 05            [ 1] 3003 	ld	a, (0x05, sp)
      00C10D 4A               [ 1] 3004 	dec	a
      00C10E 26 05            [ 1] 3005 	jrne	00206$
      00C110 A6 01            [ 1] 3006 	ld	a, #0x01
      00C112 6B 01            [ 1] 3007 	ld	(0x01, sp), a
      00C114 C5                    3008 	.byte 0xc5
      00C115                       3009 00206$:
      00C115 0F 01            [ 1] 3010 	clr	(0x01, sp)
      00C117                       3011 00207$:
      00C117 7B 05            [ 1] 3012 	ld	a, (0x05, sp)
      00C119 A0 02            [ 1] 3013 	sub	a, #0x02
      00C11B 26 04            [ 1] 3014 	jrne	00209$
      00C11D 4C               [ 1] 3015 	inc	a
      00C11E 6B 02            [ 1] 3016 	ld	(0x02, sp), a
      00C120 C5                    3017 	.byte 0xc5
      00C121                       3018 00209$:
      00C121 0F 02            [ 1] 3019 	clr	(0x02, sp)
      00C123                       3020 00210$:
      00C123 0D 05            [ 1] 3021 	tnz	(0x05, sp)
      00C125 27 1D            [ 1] 3022 	jreq	00125$
      00C127 0D 01            [ 1] 3023 	tnz	(0x01, sp)
      00C129 26 19            [ 1] 3024 	jrne	00125$
      00C12B 0D 02            [ 1] 3025 	tnz	(0x02, sp)
      00C12D 26 15            [ 1] 3026 	jrne	00125$
      00C12F 7B 05            [ 1] 3027 	ld	a, (0x05, sp)
      00C131 A1 03            [ 1] 3028 	cp	a, #0x03
      00C133 27 0F            [ 1] 3029 	jreq	00125$
      00C135 4B 2E            [ 1] 3030 	push	#0x2e
      00C137 4B 06            [ 1] 3031 	push	#0x06
      00C139 5F               [ 1] 3032 	clrw	x
      00C13A 89               [ 2] 3033 	pushw	x
      00C13B 4B AD            [ 1] 3034 	push	#<(___str_0+0)
      00C13D 4B 85            [ 1] 3035 	push	#((___str_0+0) >> 8)
      00C13F CD 00 00         [ 4] 3036 	call	_assert_failed
      00C142 5B 06            [ 2] 3037 	addw	sp, #6
      00C144                       3038 00125$:
                                   3039 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1583: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C144 0D 06            [ 1] 3040 	tnz	(0x06, sp)
      00C146 27 14            [ 1] 3041 	jreq	00136$
      00C148 7B 06            [ 1] 3042 	ld	a, (0x06, sp)
      00C14A 4A               [ 1] 3043 	dec	a
      00C14B 27 0F            [ 1] 3044 	jreq	00136$
      00C14D 4B 2F            [ 1] 3045 	push	#0x2f
      00C14F 4B 06            [ 1] 3046 	push	#0x06
      00C151 5F               [ 1] 3047 	clrw	x
      00C152 89               [ 2] 3048 	pushw	x
      00C153 4B AD            [ 1] 3049 	push	#<(___str_0+0)
      00C155 4B 85            [ 1] 3050 	push	#((___str_0+0) >> 8)
      00C157 CD 00 00         [ 4] 3051 	call	_assert_failed
      00C15A 5B 06            [ 2] 3052 	addw	sp, #6
      00C15C                       3053 00136$:
                                   3054 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1585: if (TIM1_Channel == TIM1_CHANNEL_1)
      00C15C 0D 05            [ 1] 3055 	tnz	(0x05, sp)
      00C15E 26 15            [ 1] 3056 	jrne	00120$
                                   3057 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      00C160 C6 52 5C         [ 1] 3058 	ld	a, 0x525c
                                   3059 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1588: if (NewState != DISABLE)
      00C163 0D 06            [ 1] 3060 	tnz	(0x06, sp)
      00C165 27 07            [ 1] 3061 	jreq	00102$
                                   3062 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      00C167 AA 01            [ 1] 3063 	or	a, #0x01
      00C169 C7 52 5C         [ 1] 3064 	ld	0x525c, a
      00C16C 20 4E            [ 2] 3065 	jra	00122$
      00C16E                       3066 00102$:
                                   3067 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1594: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00C16E A4 FE            [ 1] 3068 	and	a, #0xfe
      00C170 C7 52 5C         [ 1] 3069 	ld	0x525c, a
      00C173 20 47            [ 2] 3070 	jra	00122$
      00C175                       3071 00120$:
                                   3072 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1598: else if (TIM1_Channel == TIM1_CHANNEL_2)
      00C175 7B 01            [ 1] 3073 	ld	a, (0x01, sp)
      00C177 27 15            [ 1] 3074 	jreq	00117$
                                   3075 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      00C179 C6 52 5C         [ 1] 3076 	ld	a, 0x525c
                                   3077 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1601: if (NewState != DISABLE)
      00C17C 0D 06            [ 1] 3078 	tnz	(0x06, sp)
      00C17E 27 07            [ 1] 3079 	jreq	00105$
                                   3080 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1603: TIM1->CCER1 |= TIM1_CCER1_CC2E;
      00C180 AA 10            [ 1] 3081 	or	a, #0x10
      00C182 C7 52 5C         [ 1] 3082 	ld	0x525c, a
      00C185 20 35            [ 2] 3083 	jra	00122$
      00C187                       3084 00105$:
                                   3085 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1607: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      00C187 A4 EF            [ 1] 3086 	and	a, #0xef
      00C189 C7 52 5C         [ 1] 3087 	ld	0x525c, a
      00C18C 20 2E            [ 2] 3088 	jra	00122$
      00C18E                       3089 00117$:
                                   3090 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      00C18E C6 52 5D         [ 1] 3091 	ld	a, 0x525d
                                   3092 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1610: else if (TIM1_Channel == TIM1_CHANNEL_3)
      00C191 41               [ 1] 3093 	exg	a, xl
      00C192 7B 02            [ 1] 3094 	ld	a, (0x02, sp)
      00C194 41               [ 1] 3095 	exg	a, xl
      00C195 41               [ 1] 3096 	exg	a, xl
      00C196 4D               [ 1] 3097 	tnz	a
      00C197 41               [ 1] 3098 	exg	a, xl
      00C198 27 12            [ 1] 3099 	jreq	00114$
                                   3100 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1613: if (NewState != DISABLE)
      00C19A 0D 06            [ 1] 3101 	tnz	(0x06, sp)
      00C19C 27 07            [ 1] 3102 	jreq	00108$
                                   3103 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      00C19E AA 01            [ 1] 3104 	or	a, #0x01
      00C1A0 C7 52 5D         [ 1] 3105 	ld	0x525d, a
      00C1A3 20 17            [ 2] 3106 	jra	00122$
      00C1A5                       3107 00108$:
                                   3108 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1619: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      00C1A5 A4 FE            [ 1] 3109 	and	a, #0xfe
      00C1A7 C7 52 5D         [ 1] 3110 	ld	0x525d, a
      00C1AA 20 10            [ 2] 3111 	jra	00122$
      00C1AC                       3112 00114$:
                                   3113 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1625: if (NewState != DISABLE)
      00C1AC 0D 06            [ 1] 3114 	tnz	(0x06, sp)
      00C1AE 27 07            [ 1] 3115 	jreq	00111$
                                   3116 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1627: TIM1->CCER2 |= TIM1_CCER2_CC4E;
      00C1B0 AA 10            [ 1] 3117 	or	a, #0x10
      00C1B2 C7 52 5D         [ 1] 3118 	ld	0x525d, a
      00C1B5 20 05            [ 2] 3119 	jra	00122$
      00C1B7                       3120 00111$:
                                   3121 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1631: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      00C1B7 A4 EF            [ 1] 3122 	and	a, #0xef
      00C1B9 C7 52 5D         [ 1] 3123 	ld	0x525d, a
      00C1BC                       3124 00122$:
                                   3125 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1634: }
      00C1BC 85               [ 2] 3126 	popw	x
      00C1BD 81               [ 4] 3127 	ret
                                   3128 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1647: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   3129 ;	-----------------------------------------
                                   3130 ;	 function TIM1_CCxNCmd
                                   3131 ;	-----------------------------------------
      00C1BE                       3132 _TIM1_CCxNCmd:
      00C1BE 88               [ 1] 3133 	push	a
                                   3134 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1650: assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
      00C1BF 7B 04            [ 1] 3135 	ld	a, (0x04, sp)
      00C1C1 4A               [ 1] 3136 	dec	a
      00C1C2 26 05            [ 1] 3137 	jrne	00182$
      00C1C4 A6 01            [ 1] 3138 	ld	a, #0x01
      00C1C6 6B 01            [ 1] 3139 	ld	(0x01, sp), a
      00C1C8 C5                    3140 	.byte 0xc5
      00C1C9                       3141 00182$:
      00C1C9 0F 01            [ 1] 3142 	clr	(0x01, sp)
      00C1CB                       3143 00183$:
      00C1CB 0D 04            [ 1] 3144 	tnz	(0x04, sp)
      00C1CD 27 19            [ 1] 3145 	jreq	00119$
      00C1CF 0D 01            [ 1] 3146 	tnz	(0x01, sp)
      00C1D1 26 15            [ 1] 3147 	jrne	00119$
      00C1D3 7B 04            [ 1] 3148 	ld	a, (0x04, sp)
      00C1D5 A1 02            [ 1] 3149 	cp	a, #0x02
      00C1D7 27 0F            [ 1] 3150 	jreq	00119$
      00C1D9 4B 72            [ 1] 3151 	push	#0x72
      00C1DB 4B 06            [ 1] 3152 	push	#0x06
      00C1DD 5F               [ 1] 3153 	clrw	x
      00C1DE 89               [ 2] 3154 	pushw	x
      00C1DF 4B AD            [ 1] 3155 	push	#<(___str_0+0)
      00C1E1 4B 85            [ 1] 3156 	push	#((___str_0+0) >> 8)
      00C1E3 CD 00 00         [ 4] 3157 	call	_assert_failed
      00C1E6 5B 06            [ 2] 3158 	addw	sp, #6
      00C1E8                       3159 00119$:
                                   3160 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1651: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C1E8 0D 05            [ 1] 3161 	tnz	(0x05, sp)
      00C1EA 27 14            [ 1] 3162 	jreq	00127$
      00C1EC 7B 05            [ 1] 3163 	ld	a, (0x05, sp)
      00C1EE 4A               [ 1] 3164 	dec	a
      00C1EF 27 0F            [ 1] 3165 	jreq	00127$
      00C1F1 4B 73            [ 1] 3166 	push	#0x73
      00C1F3 4B 06            [ 1] 3167 	push	#0x06
      00C1F5 5F               [ 1] 3168 	clrw	x
      00C1F6 89               [ 2] 3169 	pushw	x
      00C1F7 4B AD            [ 1] 3170 	push	#<(___str_0+0)
      00C1F9 4B 85            [ 1] 3171 	push	#((___str_0+0) >> 8)
      00C1FB CD 00 00         [ 4] 3172 	call	_assert_failed
      00C1FE 5B 06            [ 2] 3173 	addw	sp, #6
      00C200                       3174 00127$:
                                   3175 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1653: if (TIM1_Channel == TIM1_CHANNEL_1)
      00C200 0D 04            [ 1] 3176 	tnz	(0x04, sp)
      00C202 26 15            [ 1] 3177 	jrne	00114$
                                   3178 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      00C204 C6 52 5C         [ 1] 3179 	ld	a, 0x525c
                                   3180 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1656: if (NewState != DISABLE)
      00C207 0D 05            [ 1] 3181 	tnz	(0x05, sp)
      00C209 27 07            [ 1] 3182 	jreq	00102$
                                   3183 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      00C20B AA 04            [ 1] 3184 	or	a, #0x04
      00C20D C7 52 5C         [ 1] 3185 	ld	0x525c, a
      00C210 20 33            [ 2] 3186 	jra	00116$
      00C212                       3187 00102$:
                                   3188 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1662: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
      00C212 A4 FB            [ 1] 3189 	and	a, #0xfb
      00C214 C7 52 5C         [ 1] 3190 	ld	0x525c, a
      00C217 20 2C            [ 2] 3191 	jra	00116$
      00C219                       3192 00114$:
                                   3193 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1665: else if (TIM1_Channel == TIM1_CHANNEL_2)
      00C219 7B 01            [ 1] 3194 	ld	a, (0x01, sp)
      00C21B 27 15            [ 1] 3195 	jreq	00111$
                                   3196 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      00C21D C6 52 5C         [ 1] 3197 	ld	a, 0x525c
                                   3198 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1668: if (NewState != DISABLE)
      00C220 0D 05            [ 1] 3199 	tnz	(0x05, sp)
      00C222 27 07            [ 1] 3200 	jreq	00105$
                                   3201 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1670: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
      00C224 AA 40            [ 1] 3202 	or	a, #0x40
      00C226 C7 52 5C         [ 1] 3203 	ld	0x525c, a
      00C229 20 1A            [ 2] 3204 	jra	00116$
      00C22B                       3205 00105$:
                                   3206 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1674: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
      00C22B A4 BF            [ 1] 3207 	and	a, #0xbf
      00C22D C7 52 5C         [ 1] 3208 	ld	0x525c, a
      00C230 20 13            [ 2] 3209 	jra	00116$
      00C232                       3210 00111$:
                                   3211 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      00C232 C6 52 5D         [ 1] 3212 	ld	a, 0x525d
                                   3213 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1680: if (NewState != DISABLE)
      00C235 0D 05            [ 1] 3214 	tnz	(0x05, sp)
      00C237 27 07            [ 1] 3215 	jreq	00108$
                                   3216 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      00C239 AA 04            [ 1] 3217 	or	a, #0x04
      00C23B C7 52 5D         [ 1] 3218 	ld	0x525d, a
      00C23E 20 05            [ 2] 3219 	jra	00116$
      00C240                       3220 00108$:
                                   3221 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1686: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
      00C240 A4 FB            [ 1] 3222 	and	a, #0xfb
      00C242 C7 52 5D         [ 1] 3223 	ld	0x525d, a
      00C245                       3224 00116$:
                                   3225 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1689: }
      00C245 84               [ 1] 3226 	pop	a
      00C246 81               [ 4] 3227 	ret
                                   3228 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1712: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
                                   3229 ;	-----------------------------------------
                                   3230 ;	 function TIM1_SelectOCxM
                                   3231 ;	-----------------------------------------
      00C247                       3232 _TIM1_SelectOCxM:
      00C247 89               [ 2] 3233 	pushw	x
                                   3234 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1715: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      00C248 7B 05            [ 1] 3235 	ld	a, (0x05, sp)
      00C24A 4A               [ 1] 3236 	dec	a
      00C24B 26 05            [ 1] 3237 	jrne	00222$
      00C24D A6 01            [ 1] 3238 	ld	a, #0x01
      00C24F 6B 01            [ 1] 3239 	ld	(0x01, sp), a
      00C251 C5                    3240 	.byte 0xc5
      00C252                       3241 00222$:
      00C252 0F 01            [ 1] 3242 	clr	(0x01, sp)
      00C254                       3243 00223$:
      00C254 7B 05            [ 1] 3244 	ld	a, (0x05, sp)
      00C256 A0 02            [ 1] 3245 	sub	a, #0x02
      00C258 26 04            [ 1] 3246 	jrne	00225$
      00C25A 4C               [ 1] 3247 	inc	a
      00C25B 6B 02            [ 1] 3248 	ld	(0x02, sp), a
      00C25D C5                    3249 	.byte 0xc5
      00C25E                       3250 00225$:
      00C25E 0F 02            [ 1] 3251 	clr	(0x02, sp)
      00C260                       3252 00226$:
      00C260 0D 05            [ 1] 3253 	tnz	(0x05, sp)
      00C262 27 1D            [ 1] 3254 	jreq	00113$
      00C264 0D 01            [ 1] 3255 	tnz	(0x01, sp)
      00C266 26 19            [ 1] 3256 	jrne	00113$
      00C268 0D 02            [ 1] 3257 	tnz	(0x02, sp)
      00C26A 26 15            [ 1] 3258 	jrne	00113$
      00C26C 7B 05            [ 1] 3259 	ld	a, (0x05, sp)
      00C26E A1 03            [ 1] 3260 	cp	a, #0x03
      00C270 27 0F            [ 1] 3261 	jreq	00113$
      00C272 4B B3            [ 1] 3262 	push	#0xb3
      00C274 4B 06            [ 1] 3263 	push	#0x06
      00C276 5F               [ 1] 3264 	clrw	x
      00C277 89               [ 2] 3265 	pushw	x
      00C278 4B AD            [ 1] 3266 	push	#<(___str_0+0)
      00C27A 4B 85            [ 1] 3267 	push	#((___str_0+0) >> 8)
      00C27C CD 00 00         [ 4] 3268 	call	_assert_failed
      00C27F 5B 06            [ 2] 3269 	addw	sp, #6
      00C281                       3270 00113$:
                                   3271 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1716: assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
      00C281 0D 06            [ 1] 3272 	tnz	(0x06, sp)
      00C283 27 39            [ 1] 3273 	jreq	00124$
      00C285 7B 06            [ 1] 3274 	ld	a, (0x06, sp)
      00C287 A1 10            [ 1] 3275 	cp	a, #0x10
      00C289 27 33            [ 1] 3276 	jreq	00124$
      00C28B 7B 06            [ 1] 3277 	ld	a, (0x06, sp)
      00C28D A1 20            [ 1] 3278 	cp	a, #0x20
      00C28F 27 2D            [ 1] 3279 	jreq	00124$
      00C291 7B 06            [ 1] 3280 	ld	a, (0x06, sp)
      00C293 A1 30            [ 1] 3281 	cp	a, #0x30
      00C295 27 27            [ 1] 3282 	jreq	00124$
      00C297 7B 06            [ 1] 3283 	ld	a, (0x06, sp)
      00C299 A1 60            [ 1] 3284 	cp	a, #0x60
      00C29B 27 21            [ 1] 3285 	jreq	00124$
      00C29D 7B 06            [ 1] 3286 	ld	a, (0x06, sp)
      00C29F A1 70            [ 1] 3287 	cp	a, #0x70
      00C2A1 27 1B            [ 1] 3288 	jreq	00124$
      00C2A3 7B 06            [ 1] 3289 	ld	a, (0x06, sp)
      00C2A5 A1 50            [ 1] 3290 	cp	a, #0x50
      00C2A7 27 15            [ 1] 3291 	jreq	00124$
      00C2A9 7B 06            [ 1] 3292 	ld	a, (0x06, sp)
      00C2AB A1 40            [ 1] 3293 	cp	a, #0x40
      00C2AD 27 0F            [ 1] 3294 	jreq	00124$
      00C2AF 4B B4            [ 1] 3295 	push	#0xb4
      00C2B1 4B 06            [ 1] 3296 	push	#0x06
      00C2B3 5F               [ 1] 3297 	clrw	x
      00C2B4 89               [ 2] 3298 	pushw	x
      00C2B5 4B AD            [ 1] 3299 	push	#<(___str_0+0)
      00C2B7 4B 85            [ 1] 3300 	push	#((___str_0+0) >> 8)
      00C2B9 CD 00 00         [ 4] 3301 	call	_assert_failed
      00C2BC 5B 06            [ 2] 3302 	addw	sp, #6
      00C2BE                       3303 00124$:
                                   3304 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1718: if (TIM1_Channel == TIM1_CHANNEL_1)
      00C2BE 0D 05            [ 1] 3305 	tnz	(0x05, sp)
      00C2C0 26 10            [ 1] 3306 	jrne	00108$
                                   3307 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1721: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00C2C2 72 11 52 5C      [ 1] 3308 	bres	21084, #0
                                   3309 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1724: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
      00C2C6 C6 52 58         [ 1] 3310 	ld	a, 0x5258
      00C2C9 A4 8F            [ 1] 3311 	and	a, #0x8f
                                   3312 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1725: | (uint8_t)TIM1_OCMode);
      00C2CB 1A 06            [ 1] 3313 	or	a, (0x06, sp)
      00C2CD C7 52 58         [ 1] 3314 	ld	0x5258, a
      00C2D0 20 3E            [ 2] 3315 	jra	00110$
      00C2D2                       3316 00108$:
                                   3317 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1727: else if (TIM1_Channel == TIM1_CHANNEL_2)
      00C2D2 7B 01            [ 1] 3318 	ld	a, (0x01, sp)
      00C2D4 27 10            [ 1] 3319 	jreq	00105$
                                   3320 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1730: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      00C2D6 72 19 52 5C      [ 1] 3321 	bres	21084, #4
                                   3322 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1733: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      00C2DA C6 52 59         [ 1] 3323 	ld	a, 0x5259
      00C2DD A4 8F            [ 1] 3324 	and	a, #0x8f
                                   3325 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1734: | (uint8_t)TIM1_OCMode);
      00C2DF 1A 06            [ 1] 3326 	or	a, (0x06, sp)
      00C2E1 C7 52 59         [ 1] 3327 	ld	0x5259, a
      00C2E4 20 2A            [ 2] 3328 	jra	00110$
      00C2E6                       3329 00105$:
                                   3330 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      00C2E6 C6 52 5D         [ 1] 3331 	ld	a, 0x525d
      00C2E9 97               [ 1] 3332 	ld	xl, a
                                   3333 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1736: else if (TIM1_Channel == TIM1_CHANNEL_3)
      00C2EA 7B 02            [ 1] 3334 	ld	a, (0x02, sp)
      00C2EC 27 12            [ 1] 3335 	jreq	00102$
                                   3336 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      00C2EE 9F               [ 1] 3337 	ld	a, xl
      00C2EF A4 FE            [ 1] 3338 	and	a, #0xfe
      00C2F1 C7 52 5D         [ 1] 3339 	ld	0x525d, a
                                   3340 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1742: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
      00C2F4 C6 52 5A         [ 1] 3341 	ld	a, 0x525a
      00C2F7 A4 8F            [ 1] 3342 	and	a, #0x8f
                                   3343 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1743: | (uint8_t)TIM1_OCMode);
      00C2F9 1A 06            [ 1] 3344 	or	a, (0x06, sp)
      00C2FB C7 52 5A         [ 1] 3345 	ld	0x525a, a
      00C2FE 20 10            [ 2] 3346 	jra	00110$
      00C300                       3347 00102$:
                                   3348 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1748: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      00C300 9F               [ 1] 3349 	ld	a, xl
      00C301 A4 EF            [ 1] 3350 	and	a, #0xef
      00C303 C7 52 5D         [ 1] 3351 	ld	0x525d, a
                                   3352 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1751: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      00C306 C6 52 5B         [ 1] 3353 	ld	a, 0x525b
      00C309 A4 8F            [ 1] 3354 	and	a, #0x8f
                                   3355 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1752: | (uint8_t)TIM1_OCMode);
      00C30B 1A 06            [ 1] 3356 	or	a, (0x06, sp)
      00C30D C7 52 5B         [ 1] 3357 	ld	0x525b, a
      00C310                       3358 00110$:
                                   3359 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1754: }
      00C310 85               [ 2] 3360 	popw	x
      00C311 81               [ 4] 3361 	ret
                                   3362 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1762: void TIM1_SetCounter(uint16_t Counter)
                                   3363 ;	-----------------------------------------
                                   3364 ;	 function TIM1_SetCounter
                                   3365 ;	-----------------------------------------
      00C312                       3366 _TIM1_SetCounter:
                                   3367 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1765: TIM1->CNTRH = (uint8_t)(Counter >> 8);
      00C312 7B 03            [ 1] 3368 	ld	a, (0x03, sp)
      00C314 C7 52 5E         [ 1] 3369 	ld	0x525e, a
                                   3370 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1766: TIM1->CNTRL = (uint8_t)(Counter);
      00C317 7B 04            [ 1] 3371 	ld	a, (0x04, sp)
      00C319 C7 52 5F         [ 1] 3372 	ld	0x525f, a
                                   3373 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1767: }
      00C31C 81               [ 4] 3374 	ret
                                   3375 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1775: void TIM1_SetAutoreload(uint16_t Autoreload)
                                   3376 ;	-----------------------------------------
                                   3377 ;	 function TIM1_SetAutoreload
                                   3378 ;	-----------------------------------------
      00C31D                       3379 _TIM1_SetAutoreload:
                                   3380 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1778: TIM1->ARRH = (uint8_t)(Autoreload >> 8);
      00C31D 7B 03            [ 1] 3381 	ld	a, (0x03, sp)
      00C31F C7 52 62         [ 1] 3382 	ld	0x5262, a
                                   3383 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1779: TIM1->ARRL = (uint8_t)(Autoreload);
      00C322 7B 04            [ 1] 3384 	ld	a, (0x04, sp)
      00C324 C7 52 63         [ 1] 3385 	ld	0x5263, a
                                   3386 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1780: }
      00C327 81               [ 4] 3387 	ret
                                   3388 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1788: void TIM1_SetCompare1(uint16_t Compare1)
                                   3389 ;	-----------------------------------------
                                   3390 ;	 function TIM1_SetCompare1
                                   3391 ;	-----------------------------------------
      00C328                       3392 _TIM1_SetCompare1:
                                   3393 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1791: TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
      00C328 7B 03            [ 1] 3394 	ld	a, (0x03, sp)
      00C32A C7 52 65         [ 1] 3395 	ld	0x5265, a
                                   3396 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1792: TIM1->CCR1L = (uint8_t)(Compare1);
      00C32D 7B 04            [ 1] 3397 	ld	a, (0x04, sp)
      00C32F C7 52 66         [ 1] 3398 	ld	0x5266, a
                                   3399 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1793: }
      00C332 81               [ 4] 3400 	ret
                                   3401 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1801: void TIM1_SetCompare2(uint16_t Compare2)
                                   3402 ;	-----------------------------------------
                                   3403 ;	 function TIM1_SetCompare2
                                   3404 ;	-----------------------------------------
      00C333                       3405 _TIM1_SetCompare2:
                                   3406 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1804: TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
      00C333 7B 03            [ 1] 3407 	ld	a, (0x03, sp)
      00C335 C7 52 67         [ 1] 3408 	ld	0x5267, a
                                   3409 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1805: TIM1->CCR2L = (uint8_t)(Compare2);
      00C338 7B 04            [ 1] 3410 	ld	a, (0x04, sp)
      00C33A C7 52 68         [ 1] 3411 	ld	0x5268, a
                                   3412 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1806: }
      00C33D 81               [ 4] 3413 	ret
                                   3414 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1814: void TIM1_SetCompare3(uint16_t Compare3)
                                   3415 ;	-----------------------------------------
                                   3416 ;	 function TIM1_SetCompare3
                                   3417 ;	-----------------------------------------
      00C33E                       3418 _TIM1_SetCompare3:
                                   3419 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1817: TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
      00C33E 7B 03            [ 1] 3420 	ld	a, (0x03, sp)
      00C340 C7 52 69         [ 1] 3421 	ld	0x5269, a
                                   3422 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1818: TIM1->CCR3L = (uint8_t)(Compare3);
      00C343 7B 04            [ 1] 3423 	ld	a, (0x04, sp)
      00C345 C7 52 6A         [ 1] 3424 	ld	0x526a, a
                                   3425 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1819: }
      00C348 81               [ 4] 3426 	ret
                                   3427 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1827: void TIM1_SetCompare4(uint16_t Compare4)
                                   3428 ;	-----------------------------------------
                                   3429 ;	 function TIM1_SetCompare4
                                   3430 ;	-----------------------------------------
      00C349                       3431 _TIM1_SetCompare4:
                                   3432 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1830: TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
      00C349 7B 03            [ 1] 3433 	ld	a, (0x03, sp)
      00C34B C7 52 6B         [ 1] 3434 	ld	0x526b, a
                                   3435 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1831: TIM1->CCR4L = (uint8_t)(Compare4);
      00C34E 7B 04            [ 1] 3436 	ld	a, (0x04, sp)
      00C350 C7 52 6C         [ 1] 3437 	ld	0x526c, a
                                   3438 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1832: }
      00C353 81               [ 4] 3439 	ret
                                   3440 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1844: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                   3441 ;	-----------------------------------------
                                   3442 ;	 function TIM1_SetIC1Prescaler
                                   3443 ;	-----------------------------------------
      00C354                       3444 _TIM1_SetIC1Prescaler:
                                   3445 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1847: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
      00C354 0D 03            [ 1] 3446 	tnz	(0x03, sp)
      00C356 27 21            [ 1] 3447 	jreq	00104$
      00C358 7B 03            [ 1] 3448 	ld	a, (0x03, sp)
      00C35A A1 04            [ 1] 3449 	cp	a, #0x04
      00C35C 27 1B            [ 1] 3450 	jreq	00104$
      00C35E 7B 03            [ 1] 3451 	ld	a, (0x03, sp)
      00C360 A1 08            [ 1] 3452 	cp	a, #0x08
      00C362 27 15            [ 1] 3453 	jreq	00104$
      00C364 7B 03            [ 1] 3454 	ld	a, (0x03, sp)
      00C366 A1 0C            [ 1] 3455 	cp	a, #0x0c
      00C368 27 0F            [ 1] 3456 	jreq	00104$
      00C36A 4B 37            [ 1] 3457 	push	#0x37
      00C36C 4B 07            [ 1] 3458 	push	#0x07
      00C36E 5F               [ 1] 3459 	clrw	x
      00C36F 89               [ 2] 3460 	pushw	x
      00C370 4B AD            [ 1] 3461 	push	#<(___str_0+0)
      00C372 4B 85            [ 1] 3462 	push	#((___str_0+0) >> 8)
      00C374 CD 00 00         [ 4] 3463 	call	_assert_failed
      00C377 5B 06            [ 2] 3464 	addw	sp, #6
      00C379                       3465 00104$:
                                   3466 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1850: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
      00C379 C6 52 58         [ 1] 3467 	ld	a, 0x5258
      00C37C A4 F3            [ 1] 3468 	and	a, #0xf3
                                   3469 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1851: | (uint8_t)TIM1_IC1Prescaler);
      00C37E 1A 03            [ 1] 3470 	or	a, (0x03, sp)
      00C380 C7 52 58         [ 1] 3471 	ld	0x5258, a
                                   3472 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1852: }
      00C383 81               [ 4] 3473 	ret
                                   3474 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1864: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                   3475 ;	-----------------------------------------
                                   3476 ;	 function TIM1_SetIC2Prescaler
                                   3477 ;	-----------------------------------------
      00C384                       3478 _TIM1_SetIC2Prescaler:
                                   3479 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1868: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
      00C384 0D 03            [ 1] 3480 	tnz	(0x03, sp)
      00C386 27 21            [ 1] 3481 	jreq	00104$
      00C388 7B 03            [ 1] 3482 	ld	a, (0x03, sp)
      00C38A A1 04            [ 1] 3483 	cp	a, #0x04
      00C38C 27 1B            [ 1] 3484 	jreq	00104$
      00C38E 7B 03            [ 1] 3485 	ld	a, (0x03, sp)
      00C390 A1 08            [ 1] 3486 	cp	a, #0x08
      00C392 27 15            [ 1] 3487 	jreq	00104$
      00C394 7B 03            [ 1] 3488 	ld	a, (0x03, sp)
      00C396 A1 0C            [ 1] 3489 	cp	a, #0x0c
      00C398 27 0F            [ 1] 3490 	jreq	00104$
      00C39A 4B 4C            [ 1] 3491 	push	#0x4c
      00C39C 4B 07            [ 1] 3492 	push	#0x07
      00C39E 5F               [ 1] 3493 	clrw	x
      00C39F 89               [ 2] 3494 	pushw	x
      00C3A0 4B AD            [ 1] 3495 	push	#<(___str_0+0)
      00C3A2 4B 85            [ 1] 3496 	push	#((___str_0+0) >> 8)
      00C3A4 CD 00 00         [ 4] 3497 	call	_assert_failed
      00C3A7 5B 06            [ 2] 3498 	addw	sp, #6
      00C3A9                       3499 00104$:
                                   3500 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1871: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
      00C3A9 C6 52 59         [ 1] 3501 	ld	a, 0x5259
      00C3AC A4 F3            [ 1] 3502 	and	a, #0xf3
                                   3503 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1872: | (uint8_t)TIM1_IC2Prescaler);
      00C3AE 1A 03            [ 1] 3504 	or	a, (0x03, sp)
      00C3B0 C7 52 59         [ 1] 3505 	ld	0x5259, a
                                   3506 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1873: }
      00C3B3 81               [ 4] 3507 	ret
                                   3508 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1885: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                   3509 ;	-----------------------------------------
                                   3510 ;	 function TIM1_SetIC3Prescaler
                                   3511 ;	-----------------------------------------
      00C3B4                       3512 _TIM1_SetIC3Prescaler:
                                   3513 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1889: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
      00C3B4 0D 03            [ 1] 3514 	tnz	(0x03, sp)
      00C3B6 27 21            [ 1] 3515 	jreq	00104$
      00C3B8 7B 03            [ 1] 3516 	ld	a, (0x03, sp)
      00C3BA A1 04            [ 1] 3517 	cp	a, #0x04
      00C3BC 27 1B            [ 1] 3518 	jreq	00104$
      00C3BE 7B 03            [ 1] 3519 	ld	a, (0x03, sp)
      00C3C0 A1 08            [ 1] 3520 	cp	a, #0x08
      00C3C2 27 15            [ 1] 3521 	jreq	00104$
      00C3C4 7B 03            [ 1] 3522 	ld	a, (0x03, sp)
      00C3C6 A1 0C            [ 1] 3523 	cp	a, #0x0c
      00C3C8 27 0F            [ 1] 3524 	jreq	00104$
      00C3CA 4B 61            [ 1] 3525 	push	#0x61
      00C3CC 4B 07            [ 1] 3526 	push	#0x07
      00C3CE 5F               [ 1] 3527 	clrw	x
      00C3CF 89               [ 2] 3528 	pushw	x
      00C3D0 4B AD            [ 1] 3529 	push	#<(___str_0+0)
      00C3D2 4B 85            [ 1] 3530 	push	#((___str_0+0) >> 8)
      00C3D4 CD 00 00         [ 4] 3531 	call	_assert_failed
      00C3D7 5B 06            [ 2] 3532 	addw	sp, #6
      00C3D9                       3533 00104$:
                                   3534 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1892: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
      00C3D9 C6 52 5A         [ 1] 3535 	ld	a, 0x525a
      00C3DC A4 F3            [ 1] 3536 	and	a, #0xf3
                                   3537 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1893: (uint8_t)TIM1_IC3Prescaler);
      00C3DE 1A 03            [ 1] 3538 	or	a, (0x03, sp)
      00C3E0 C7 52 5A         [ 1] 3539 	ld	0x525a, a
                                   3540 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1894: }
      00C3E3 81               [ 4] 3541 	ret
                                   3542 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1906: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                   3543 ;	-----------------------------------------
                                   3544 ;	 function TIM1_SetIC4Prescaler
                                   3545 ;	-----------------------------------------
      00C3E4                       3546 _TIM1_SetIC4Prescaler:
                                   3547 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1910: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
      00C3E4 0D 03            [ 1] 3548 	tnz	(0x03, sp)
      00C3E6 27 21            [ 1] 3549 	jreq	00104$
      00C3E8 7B 03            [ 1] 3550 	ld	a, (0x03, sp)
      00C3EA A1 04            [ 1] 3551 	cp	a, #0x04
      00C3EC 27 1B            [ 1] 3552 	jreq	00104$
      00C3EE 7B 03            [ 1] 3553 	ld	a, (0x03, sp)
      00C3F0 A1 08            [ 1] 3554 	cp	a, #0x08
      00C3F2 27 15            [ 1] 3555 	jreq	00104$
      00C3F4 7B 03            [ 1] 3556 	ld	a, (0x03, sp)
      00C3F6 A1 0C            [ 1] 3557 	cp	a, #0x0c
      00C3F8 27 0F            [ 1] 3558 	jreq	00104$
      00C3FA 4B 76            [ 1] 3559 	push	#0x76
      00C3FC 4B 07            [ 1] 3560 	push	#0x07
      00C3FE 5F               [ 1] 3561 	clrw	x
      00C3FF 89               [ 2] 3562 	pushw	x
      00C400 4B AD            [ 1] 3563 	push	#<(___str_0+0)
      00C402 4B 85            [ 1] 3564 	push	#((___str_0+0) >> 8)
      00C404 CD 00 00         [ 4] 3565 	call	_assert_failed
      00C407 5B 06            [ 2] 3566 	addw	sp, #6
      00C409                       3567 00104$:
                                   3568 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1913: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      00C409 C6 52 5B         [ 1] 3569 	ld	a, 0x525b
      00C40C A4 F3            [ 1] 3570 	and	a, #0xf3
                                   3571 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1914: (uint8_t)TIM1_IC4Prescaler);
      00C40E 1A 03            [ 1] 3572 	or	a, (0x03, sp)
      00C410 C7 52 5B         [ 1] 3573 	ld	0x525b, a
                                   3574 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1915: }
      00C413 81               [ 4] 3575 	ret
                                   3576 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1922: uint16_t TIM1_GetCapture1(void)
                                   3577 ;	-----------------------------------------
                                   3578 ;	 function TIM1_GetCapture1
                                   3579 ;	-----------------------------------------
      00C414                       3580 _TIM1_GetCapture1:
      00C414 89               [ 2] 3581 	pushw	x
                                   3582 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1929: tmpccr1h = TIM1->CCR1H;
      00C415 C6 52 65         [ 1] 3583 	ld	a, 0x5265
      00C418 95               [ 1] 3584 	ld	xh, a
                                   3585 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1930: tmpccr1l = TIM1->CCR1L;
      00C419 C6 52 66         [ 1] 3586 	ld	a, 0x5266
                                   3587 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1932: tmpccr1 = (uint16_t)(tmpccr1l);
      00C41C 97               [ 1] 3588 	ld	xl, a
      00C41D 4F               [ 1] 3589 	clr	a
                                   3590 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1933: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00C41E 0F 02            [ 1] 3591 	clr	(0x02, sp)
      00C420 89               [ 2] 3592 	pushw	x
      00C421 1A 01            [ 1] 3593 	or	a, (1, sp)
      00C423 85               [ 2] 3594 	popw	x
      00C424 01               [ 1] 3595 	rrwa	x
      00C425 1A 02            [ 1] 3596 	or	a, (0x02, sp)
      00C427 97               [ 1] 3597 	ld	xl, a
                                   3598 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1935: return (uint16_t)tmpccr1;
                                   3599 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1936: }
      00C428 5B 02            [ 2] 3600 	addw	sp, #2
      00C42A 81               [ 4] 3601 	ret
                                   3602 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1943: uint16_t TIM1_GetCapture2(void)
                                   3603 ;	-----------------------------------------
                                   3604 ;	 function TIM1_GetCapture2
                                   3605 ;	-----------------------------------------
      00C42B                       3606 _TIM1_GetCapture2:
      00C42B 89               [ 2] 3607 	pushw	x
                                   3608 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1950: tmpccr2h = TIM1->CCR2H;
      00C42C C6 52 67         [ 1] 3609 	ld	a, 0x5267
      00C42F 95               [ 1] 3610 	ld	xh, a
                                   3611 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1951: tmpccr2l = TIM1->CCR2L;
      00C430 C6 52 68         [ 1] 3612 	ld	a, 0x5268
                                   3613 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1953: tmpccr2 = (uint16_t)(tmpccr2l);
      00C433 97               [ 1] 3614 	ld	xl, a
      00C434 4F               [ 1] 3615 	clr	a
                                   3616 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1954: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00C435 0F 02            [ 1] 3617 	clr	(0x02, sp)
      00C437 89               [ 2] 3618 	pushw	x
      00C438 1A 01            [ 1] 3619 	or	a, (1, sp)
      00C43A 85               [ 2] 3620 	popw	x
      00C43B 01               [ 1] 3621 	rrwa	x
      00C43C 1A 02            [ 1] 3622 	or	a, (0x02, sp)
      00C43E 97               [ 1] 3623 	ld	xl, a
                                   3624 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1956: return (uint16_t)tmpccr2;
                                   3625 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1957: }
      00C43F 5B 02            [ 2] 3626 	addw	sp, #2
      00C441 81               [ 4] 3627 	ret
                                   3628 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1964: uint16_t TIM1_GetCapture3(void)
                                   3629 ;	-----------------------------------------
                                   3630 ;	 function TIM1_GetCapture3
                                   3631 ;	-----------------------------------------
      00C442                       3632 _TIM1_GetCapture3:
      00C442 89               [ 2] 3633 	pushw	x
                                   3634 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1970: tmpccr3h = TIM1->CCR3H;
      00C443 C6 52 69         [ 1] 3635 	ld	a, 0x5269
      00C446 95               [ 1] 3636 	ld	xh, a
                                   3637 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1971: tmpccr3l = TIM1->CCR3L;
      00C447 C6 52 6A         [ 1] 3638 	ld	a, 0x526a
                                   3639 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1973: tmpccr3 = (uint16_t)(tmpccr3l);
      00C44A 97               [ 1] 3640 	ld	xl, a
      00C44B 4F               [ 1] 3641 	clr	a
                                   3642 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1974: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      00C44C 0F 02            [ 1] 3643 	clr	(0x02, sp)
      00C44E 89               [ 2] 3644 	pushw	x
      00C44F 1A 01            [ 1] 3645 	or	a, (1, sp)
      00C451 85               [ 2] 3646 	popw	x
      00C452 01               [ 1] 3647 	rrwa	x
      00C453 1A 02            [ 1] 3648 	or	a, (0x02, sp)
      00C455 97               [ 1] 3649 	ld	xl, a
                                   3650 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1976: return (uint16_t)tmpccr3;
                                   3651 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1977: }
      00C456 5B 02            [ 2] 3652 	addw	sp, #2
      00C458 81               [ 4] 3653 	ret
                                   3654 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1984: uint16_t TIM1_GetCapture4(void)
                                   3655 ;	-----------------------------------------
                                   3656 ;	 function TIM1_GetCapture4
                                   3657 ;	-----------------------------------------
      00C459                       3658 _TIM1_GetCapture4:
      00C459 89               [ 2] 3659 	pushw	x
                                   3660 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1990: tmpccr4h = TIM1->CCR4H;
      00C45A C6 52 6B         [ 1] 3661 	ld	a, 0x526b
      00C45D 95               [ 1] 3662 	ld	xh, a
                                   3663 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1991: tmpccr4l = TIM1->CCR4L;
      00C45E C6 52 6C         [ 1] 3664 	ld	a, 0x526c
                                   3665 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1993: tmpccr4 = (uint16_t)(tmpccr4l);
      00C461 97               [ 1] 3666 	ld	xl, a
      00C462 4F               [ 1] 3667 	clr	a
                                   3668 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1994: tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
      00C463 0F 02            [ 1] 3669 	clr	(0x02, sp)
      00C465 89               [ 2] 3670 	pushw	x
      00C466 1A 01            [ 1] 3671 	or	a, (1, sp)
      00C468 85               [ 2] 3672 	popw	x
      00C469 01               [ 1] 3673 	rrwa	x
      00C46A 1A 02            [ 1] 3674 	or	a, (0x02, sp)
      00C46C 97               [ 1] 3675 	ld	xl, a
                                   3676 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1996: return (uint16_t)tmpccr4;
                                   3677 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 1997: }
      00C46D 5B 02            [ 2] 3678 	addw	sp, #2
      00C46F 81               [ 4] 3679 	ret
                                   3680 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2004: uint16_t TIM1_GetCounter(void)
                                   3681 ;	-----------------------------------------
                                   3682 ;	 function TIM1_GetCounter
                                   3683 ;	-----------------------------------------
      00C470                       3684 _TIM1_GetCounter:
      00C470 52 04            [ 2] 3685 	sub	sp, #4
                                   3686 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2008: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
      00C472 C6 52 5E         [ 1] 3687 	ld	a, 0x525e
      00C475 5F               [ 1] 3688 	clrw	x
      00C476 95               [ 1] 3689 	ld	xh, a
      00C477 4F               [ 1] 3690 	clr	a
      00C478 6B 02            [ 1] 3691 	ld	(0x02, sp), a
                                   3692 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2011: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
      00C47A C6 52 5F         [ 1] 3693 	ld	a, 0x525f
      00C47D 0F 03            [ 1] 3694 	clr	(0x03, sp)
      00C47F 1A 02            [ 1] 3695 	or	a, (0x02, sp)
      00C481 02               [ 1] 3696 	rlwa	x
      00C482 1A 03            [ 1] 3697 	or	a, (0x03, sp)
      00C484 95               [ 1] 3698 	ld	xh, a
                                   3699 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2012: }
      00C485 5B 04            [ 2] 3700 	addw	sp, #4
      00C487 81               [ 4] 3701 	ret
                                   3702 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2019: uint16_t TIM1_GetPrescaler(void)
                                   3703 ;	-----------------------------------------
                                   3704 ;	 function TIM1_GetPrescaler
                                   3705 ;	-----------------------------------------
      00C488                       3706 _TIM1_GetPrescaler:
      00C488 52 04            [ 2] 3707 	sub	sp, #4
                                   3708 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2023: temp = ((uint16_t)TIM1->PSCRH << 8);
      00C48A C6 52 60         [ 1] 3709 	ld	a, 0x5260
      00C48D 5F               [ 1] 3710 	clrw	x
      00C48E 95               [ 1] 3711 	ld	xh, a
      00C48F 4F               [ 1] 3712 	clr	a
      00C490 6B 02            [ 1] 3713 	ld	(0x02, sp), a
                                   3714 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2026: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
      00C492 C6 52 61         [ 1] 3715 	ld	a, 0x5261
      00C495 0F 03            [ 1] 3716 	clr	(0x03, sp)
      00C497 1A 02            [ 1] 3717 	or	a, (0x02, sp)
      00C499 02               [ 1] 3718 	rlwa	x
      00C49A 1A 03            [ 1] 3719 	or	a, (0x03, sp)
      00C49C 95               [ 1] 3720 	ld	xh, a
                                   3721 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2027: }
      00C49D 5B 04            [ 2] 3722 	addw	sp, #4
      00C49F 81               [ 4] 3723 	ret
                                   3724 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2047: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   3725 ;	-----------------------------------------
                                   3726 ;	 function TIM1_GetFlagStatus
                                   3727 ;	-----------------------------------------
      00C4A0                       3728 _TIM1_GetFlagStatus:
      00C4A0 88               [ 1] 3729 	push	a
                                   3730 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2053: assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
      00C4A1 1E 04            [ 2] 3731 	ldw	x, (0x04, sp)
      00C4A3 A3 00 01         [ 2] 3732 	cpw	x, #0x0001
      00C4A6 27 4A            [ 1] 3733 	jreq	00107$
      00C4A8 A3 00 02         [ 2] 3734 	cpw	x, #0x0002
      00C4AB 27 45            [ 1] 3735 	jreq	00107$
      00C4AD A3 00 04         [ 2] 3736 	cpw	x, #0x0004
      00C4B0 27 40            [ 1] 3737 	jreq	00107$
      00C4B2 A3 00 08         [ 2] 3738 	cpw	x, #0x0008
      00C4B5 27 3B            [ 1] 3739 	jreq	00107$
      00C4B7 A3 00 10         [ 2] 3740 	cpw	x, #0x0010
      00C4BA 27 36            [ 1] 3741 	jreq	00107$
      00C4BC A3 00 20         [ 2] 3742 	cpw	x, #0x0020
      00C4BF 27 31            [ 1] 3743 	jreq	00107$
      00C4C1 A3 00 40         [ 2] 3744 	cpw	x, #0x0040
      00C4C4 27 2C            [ 1] 3745 	jreq	00107$
      00C4C6 A3 00 80         [ 2] 3746 	cpw	x, #0x0080
      00C4C9 27 27            [ 1] 3747 	jreq	00107$
      00C4CB A3 02 00         [ 2] 3748 	cpw	x, #0x0200
      00C4CE 27 22            [ 1] 3749 	jreq	00107$
      00C4D0 A3 04 00         [ 2] 3750 	cpw	x, #0x0400
      00C4D3 27 1D            [ 1] 3751 	jreq	00107$
      00C4D5 A3 08 00         [ 2] 3752 	cpw	x, #0x0800
      00C4D8 27 18            [ 1] 3753 	jreq	00107$
      00C4DA A3 10 00         [ 2] 3754 	cpw	x, #0x1000
      00C4DD 27 13            [ 1] 3755 	jreq	00107$
      00C4DF 89               [ 2] 3756 	pushw	x
      00C4E0 4B 05            [ 1] 3757 	push	#0x05
      00C4E2 4B 08            [ 1] 3758 	push	#0x08
      00C4E4 4B 00            [ 1] 3759 	push	#0x00
      00C4E6 4B 00            [ 1] 3760 	push	#0x00
      00C4E8 4B AD            [ 1] 3761 	push	#<(___str_0+0)
      00C4EA 4B 85            [ 1] 3762 	push	#((___str_0+0) >> 8)
      00C4EC CD 00 00         [ 4] 3763 	call	_assert_failed
      00C4EF 5B 06            [ 2] 3764 	addw	sp, #6
      00C4F1 85               [ 2] 3765 	popw	x
      00C4F2                       3766 00107$:
                                   3767 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2055: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
      00C4F2 C6 52 55         [ 1] 3768 	ld	a, 0x5255
      00C4F5 6B 01            [ 1] 3769 	ld	(0x01, sp), a
      00C4F7 7B 05            [ 1] 3770 	ld	a, (0x05, sp)
      00C4F9 14 01            [ 1] 3771 	and	a, (0x01, sp)
      00C4FB 6B 01            [ 1] 3772 	ld	(0x01, sp), a
                                   3773 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2056: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
                                   3774 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2058: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
      00C4FD C6 52 56         [ 1] 3775 	ld	a, 0x5256
      00C500 89               [ 2] 3776 	pushw	x
      00C501 14 01            [ 1] 3777 	and	a, (1, sp)
      00C503 85               [ 2] 3778 	popw	x
      00C504 1A 01            [ 1] 3779 	or	a, (0x01, sp)
      00C506 27 03            [ 1] 3780 	jreq	00102$
                                   3781 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2060: bitstatus = SET;
      00C508 A6 01            [ 1] 3782 	ld	a, #0x01
                                   3783 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2064: bitstatus = RESET;
      00C50A 21                    3784 	.byte 0x21
      00C50B                       3785 00102$:
      00C50B 4F               [ 1] 3786 	clr	a
      00C50C                       3787 00103$:
                                   3788 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2066: return (FlagStatus)(bitstatus);
                                   3789 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2067: }
      00C50C 5B 01            [ 2] 3790 	addw	sp, #1
      00C50E 81               [ 4] 3791 	ret
                                   3792 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2087: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   3793 ;	-----------------------------------------
                                   3794 ;	 function TIM1_ClearFlag
                                   3795 ;	-----------------------------------------
      00C50F                       3796 _TIM1_ClearFlag:
      00C50F 89               [ 2] 3797 	pushw	x
                                   3798 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2090: assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
      00C510 16 05            [ 2] 3799 	ldw	y, (0x05, sp)
      00C512 17 01            [ 2] 3800 	ldw	(0x01, sp), y
      00C514 7B 01            [ 1] 3801 	ld	a, (0x01, sp)
      00C516 A5 E1            [ 1] 3802 	bcp	a, #0xe1
      00C518 26 04            [ 1] 3803 	jrne	00103$
      00C51A 1E 05            [ 2] 3804 	ldw	x, (0x05, sp)
      00C51C 26 0F            [ 1] 3805 	jrne	00104$
      00C51E                       3806 00103$:
      00C51E 4B 2A            [ 1] 3807 	push	#0x2a
      00C520 4B 08            [ 1] 3808 	push	#0x08
      00C522 5F               [ 1] 3809 	clrw	x
      00C523 89               [ 2] 3810 	pushw	x
      00C524 4B AD            [ 1] 3811 	push	#<(___str_0+0)
      00C526 4B 85            [ 1] 3812 	push	#((___str_0+0) >> 8)
      00C528 CD 00 00         [ 4] 3813 	call	_assert_failed
      00C52B 5B 06            [ 2] 3814 	addw	sp, #6
      00C52D                       3815 00104$:
                                   3816 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2093: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      00C52D 7B 06            [ 1] 3817 	ld	a, (0x06, sp)
      00C52F 43               [ 1] 3818 	cpl	a
      00C530 C7 52 55         [ 1] 3819 	ld	0x5255, a
                                   3820 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2094: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
      00C533 7B 01            [ 1] 3821 	ld	a, (0x01, sp)
      00C535 43               [ 1] 3822 	cpl	a
      00C536 A4 1E            [ 1] 3823 	and	a, #0x1e
      00C538 C7 52 56         [ 1] 3824 	ld	0x5256, a
                                   3825 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2096: }
      00C53B 85               [ 2] 3826 	popw	x
      00C53C 81               [ 4] 3827 	ret
                                   3828 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2112: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
                                   3829 ;	-----------------------------------------
                                   3830 ;	 function TIM1_GetITStatus
                                   3831 ;	-----------------------------------------
      00C53D                       3832 _TIM1_GetITStatus:
      00C53D 88               [ 1] 3833 	push	a
                                   3834 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2118: assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
      00C53E 7B 04            [ 1] 3835 	ld	a, (0x04, sp)
      00C540 4A               [ 1] 3836 	dec	a
      00C541 27 39            [ 1] 3837 	jreq	00108$
      00C543 7B 04            [ 1] 3838 	ld	a, (0x04, sp)
      00C545 A1 02            [ 1] 3839 	cp	a, #0x02
      00C547 27 33            [ 1] 3840 	jreq	00108$
      00C549 7B 04            [ 1] 3841 	ld	a, (0x04, sp)
      00C54B A1 04            [ 1] 3842 	cp	a, #0x04
      00C54D 27 2D            [ 1] 3843 	jreq	00108$
      00C54F 7B 04            [ 1] 3844 	ld	a, (0x04, sp)
      00C551 A1 08            [ 1] 3845 	cp	a, #0x08
      00C553 27 27            [ 1] 3846 	jreq	00108$
      00C555 7B 04            [ 1] 3847 	ld	a, (0x04, sp)
      00C557 A1 10            [ 1] 3848 	cp	a, #0x10
      00C559 27 21            [ 1] 3849 	jreq	00108$
      00C55B 7B 04            [ 1] 3850 	ld	a, (0x04, sp)
      00C55D A1 20            [ 1] 3851 	cp	a, #0x20
      00C55F 27 1B            [ 1] 3852 	jreq	00108$
      00C561 7B 04            [ 1] 3853 	ld	a, (0x04, sp)
      00C563 A1 40            [ 1] 3854 	cp	a, #0x40
      00C565 27 15            [ 1] 3855 	jreq	00108$
      00C567 7B 04            [ 1] 3856 	ld	a, (0x04, sp)
      00C569 A1 80            [ 1] 3857 	cp	a, #0x80
      00C56B 27 0F            [ 1] 3858 	jreq	00108$
      00C56D 4B 46            [ 1] 3859 	push	#0x46
      00C56F 4B 08            [ 1] 3860 	push	#0x08
      00C571 5F               [ 1] 3861 	clrw	x
      00C572 89               [ 2] 3862 	pushw	x
      00C573 4B AD            [ 1] 3863 	push	#<(___str_0+0)
      00C575 4B 85            [ 1] 3864 	push	#((___str_0+0) >> 8)
      00C577 CD 00 00         [ 4] 3865 	call	_assert_failed
      00C57A 5B 06            [ 2] 3866 	addw	sp, #6
      00C57C                       3867 00108$:
                                   3868 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2120: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
      00C57C C6 52 55         [ 1] 3869 	ld	a, 0x5255
      00C57F 14 04            [ 1] 3870 	and	a, (0x04, sp)
      00C581 6B 01            [ 1] 3871 	ld	(0x01, sp), a
                                   3872 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2122: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
      00C583 C6 52 54         [ 1] 3873 	ld	a, 0x5254
      00C586 14 04            [ 1] 3874 	and	a, (0x04, sp)
                                   3875 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2124: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
      00C588 0D 01            [ 1] 3876 	tnz	(0x01, sp)
      00C58A 27 06            [ 1] 3877 	jreq	00102$
      00C58C 4D               [ 1] 3878 	tnz	a
      00C58D 27 03            [ 1] 3879 	jreq	00102$
                                   3880 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2126: bitstatus = SET;
      00C58F A6 01            [ 1] 3881 	ld	a, #0x01
                                   3882 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2130: bitstatus = RESET;
      00C591 21                    3883 	.byte 0x21
      00C592                       3884 00102$:
      00C592 4F               [ 1] 3885 	clr	a
      00C593                       3886 00103$:
                                   3887 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2132: return (ITStatus)(bitstatus);
                                   3888 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2133: }
      00C593 5B 01            [ 2] 3889 	addw	sp, #1
      00C595 81               [ 4] 3890 	ret
                                   3891 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2149: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                   3892 ;	-----------------------------------------
                                   3893 ;	 function TIM1_ClearITPendingBit
                                   3894 ;	-----------------------------------------
      00C596                       3895 _TIM1_ClearITPendingBit:
                                   3896 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2152: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      00C596 0D 03            [ 1] 3897 	tnz	(0x03, sp)
      00C598 26 0F            [ 1] 3898 	jrne	00104$
      00C59A 4B 68            [ 1] 3899 	push	#0x68
      00C59C 4B 08            [ 1] 3900 	push	#0x08
      00C59E 5F               [ 1] 3901 	clrw	x
      00C59F 89               [ 2] 3902 	pushw	x
      00C5A0 4B AD            [ 1] 3903 	push	#<(___str_0+0)
      00C5A2 4B 85            [ 1] 3904 	push	#((___str_0+0) >> 8)
      00C5A4 CD 00 00         [ 4] 3905 	call	_assert_failed
      00C5A7 5B 06            [ 2] 3906 	addw	sp, #6
      00C5A9                       3907 00104$:
                                   3908 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2155: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      00C5A9 7B 03            [ 1] 3909 	ld	a, (0x03, sp)
      00C5AB 43               [ 1] 3910 	cpl	a
      00C5AC C7 52 55         [ 1] 3911 	ld	0x5255, a
                                   3912 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2156: }
      00C5AF 81               [ 4] 3913 	ret
                                   3914 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2174: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                   3915 ;	-----------------------------------------
                                   3916 ;	 function TI1_Config
                                   3917 ;	-----------------------------------------
      00C5B0                       3918 _TI1_Config:
      00C5B0 88               [ 1] 3919 	push	a
                                   3920 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00C5B1 72 11 52 5C      [ 1] 3921 	bres	21084, #0
                                   3922 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2182: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
      00C5B5 C6 52 58         [ 1] 3923 	ld	a, 0x5258
      00C5B8 A4 0C            [ 1] 3924 	and	a, #0x0c
      00C5BA 6B 01            [ 1] 3925 	ld	(0x01, sp), a
                                   3926 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2183: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00C5BC 7B 06            [ 1] 3927 	ld	a, (0x06, sp)
      00C5BE 4E               [ 1] 3928 	swap	a
      00C5BF A4 F0            [ 1] 3929 	and	a, #0xf0
      00C5C1 1A 05            [ 1] 3930 	or	a, (0x05, sp)
      00C5C3 1A 01            [ 1] 3931 	or	a, (0x01, sp)
      00C5C5 C7 52 58         [ 1] 3932 	ld	0x5258, a
                                   3933 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00C5C8 C6 52 5C         [ 1] 3934 	ld	a, 0x525c
                                   3935 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2186: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00C5CB 0D 04            [ 1] 3936 	tnz	(0x04, sp)
      00C5CD 27 07            [ 1] 3937 	jreq	00102$
                                   3938 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2188: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00C5CF AA 02            [ 1] 3939 	or	a, #0x02
      00C5D1 C7 52 5C         [ 1] 3940 	ld	0x525c, a
      00C5D4 20 05            [ 2] 3941 	jra	00103$
      00C5D6                       3942 00102$:
                                   3943 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2192: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      00C5D6 A4 FD            [ 1] 3944 	and	a, #0xfd
      00C5D8 C7 52 5C         [ 1] 3945 	ld	0x525c, a
      00C5DB                       3946 00103$:
                                   3947 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2196: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
      00C5DB 72 10 52 5C      [ 1] 3948 	bset	21084, #0
                                   3949 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2197: }
      00C5DF 84               [ 1] 3950 	pop	a
      00C5E0 81               [ 4] 3951 	ret
                                   3952 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2215: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                   3953 ;	-----------------------------------------
                                   3954 ;	 function TI2_Config
                                   3955 ;	-----------------------------------------
      00C5E1                       3956 _TI2_Config:
      00C5E1 88               [ 1] 3957 	push	a
                                   3958 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      00C5E2 72 19 52 5C      [ 1] 3959 	bres	21084, #4
                                   3960 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2223: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
      00C5E6 C6 52 59         [ 1] 3961 	ld	a, 0x5259
      00C5E9 A4 0C            [ 1] 3962 	and	a, #0x0c
      00C5EB 6B 01            [ 1] 3963 	ld	(0x01, sp), a
                                   3964 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2224: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00C5ED 7B 06            [ 1] 3965 	ld	a, (0x06, sp)
      00C5EF 4E               [ 1] 3966 	swap	a
      00C5F0 A4 F0            [ 1] 3967 	and	a, #0xf0
      00C5F2 1A 05            [ 1] 3968 	or	a, (0x05, sp)
      00C5F4 1A 01            [ 1] 3969 	or	a, (0x01, sp)
      00C5F6 C7 52 59         [ 1] 3970 	ld	0x5259, a
                                   3971 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      00C5F9 C6 52 5C         [ 1] 3972 	ld	a, 0x525c
                                   3973 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2226: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00C5FC 0D 04            [ 1] 3974 	tnz	(0x04, sp)
      00C5FE 27 07            [ 1] 3975 	jreq	00102$
                                   3976 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2228: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00C600 AA 20            [ 1] 3977 	or	a, #0x20
      00C602 C7 52 5C         [ 1] 3978 	ld	0x525c, a
      00C605 20 05            [ 2] 3979 	jra	00103$
      00C607                       3980 00102$:
                                   3981 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2232: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      00C607 A4 DF            [ 1] 3982 	and	a, #0xdf
      00C609 C7 52 5C         [ 1] 3983 	ld	0x525c, a
      00C60C                       3984 00103$:
                                   3985 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2235: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
      00C60C 72 18 52 5C      [ 1] 3986 	bset	21084, #4
                                   3987 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2236: }
      00C610 84               [ 1] 3988 	pop	a
      00C611 81               [ 4] 3989 	ret
                                   3990 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2254: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                   3991 ;	-----------------------------------------
                                   3992 ;	 function TI3_Config
                                   3993 ;	-----------------------------------------
      00C612                       3994 _TI3_Config:
      00C612 88               [ 1] 3995 	push	a
                                   3996 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      00C613 C6 52 5D         [ 1] 3997 	ld	a, 0x525d
      00C616 A4 FE            [ 1] 3998 	and	a, #0xfe
      00C618 C7 52 5D         [ 1] 3999 	ld	0x525d, a
                                   4000 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2262: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
      00C61B C6 52 5A         [ 1] 4001 	ld	a, 0x525a
      00C61E A4 0C            [ 1] 4002 	and	a, #0x0c
      00C620 6B 01            [ 1] 4003 	ld	(0x01, sp), a
                                   4004 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2263: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00C622 7B 06            [ 1] 4005 	ld	a, (0x06, sp)
      00C624 4E               [ 1] 4006 	swap	a
      00C625 A4 F0            [ 1] 4007 	and	a, #0xf0
      00C627 1A 05            [ 1] 4008 	or	a, (0x05, sp)
      00C629 1A 01            [ 1] 4009 	or	a, (0x01, sp)
      00C62B C7 52 5A         [ 1] 4010 	ld	0x525a, a
                                   4011 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      00C62E C6 52 5D         [ 1] 4012 	ld	a, 0x525d
                                   4013 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2266: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00C631 0D 04            [ 1] 4014 	tnz	(0x04, sp)
      00C633 27 07            [ 1] 4015 	jreq	00102$
                                   4016 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2268: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      00C635 AA 02            [ 1] 4017 	or	a, #0x02
      00C637 C7 52 5D         [ 1] 4018 	ld	0x525d, a
      00C63A 20 05            [ 2] 4019 	jra	00103$
      00C63C                       4020 00102$:
                                   4021 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2272: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      00C63C A4 FD            [ 1] 4022 	and	a, #0xfd
      00C63E C7 52 5D         [ 1] 4023 	ld	0x525d, a
      00C641                       4024 00103$:
                                   4025 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2275: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
      00C641 72 10 52 5D      [ 1] 4026 	bset	21085, #0
                                   4027 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2276: }
      00C645 84               [ 1] 4028 	pop	a
      00C646 81               [ 4] 4029 	ret
                                   4030 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2294: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                   4031 ;	-----------------------------------------
                                   4032 ;	 function TI4_Config
                                   4033 ;	-----------------------------------------
      00C647                       4034 _TI4_Config:
      00C647 88               [ 1] 4035 	push	a
                                   4036 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      00C648 72 19 52 5D      [ 1] 4037 	bres	21085, #4
                                   4038 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2302: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
      00C64C C6 52 5B         [ 1] 4039 	ld	a, 0x525b
      00C64F A4 0C            [ 1] 4040 	and	a, #0x0c
      00C651 6B 01            [ 1] 4041 	ld	(0x01, sp), a
                                   4042 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2303: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00C653 7B 06            [ 1] 4043 	ld	a, (0x06, sp)
      00C655 4E               [ 1] 4044 	swap	a
      00C656 A4 F0            [ 1] 4045 	and	a, #0xf0
      00C658 1A 05            [ 1] 4046 	or	a, (0x05, sp)
      00C65A 1A 01            [ 1] 4047 	or	a, (0x01, sp)
      00C65C C7 52 5B         [ 1] 4048 	ld	0x525b, a
                                   4049 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      00C65F C6 52 5D         [ 1] 4050 	ld	a, 0x525d
                                   4051 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2306: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00C662 0D 04            [ 1] 4052 	tnz	(0x04, sp)
      00C664 27 07            [ 1] 4053 	jreq	00102$
                                   4054 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2308: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      00C666 AA 20            [ 1] 4055 	or	a, #0x20
      00C668 C7 52 5D         [ 1] 4056 	ld	0x525d, a
      00C66B 20 05            [ 2] 4057 	jra	00103$
      00C66D                       4058 00102$:
                                   4059 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2312: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      00C66D A4 DF            [ 1] 4060 	and	a, #0xdf
      00C66F C7 52 5D         [ 1] 4061 	ld	0x525d, a
      00C672                       4062 00103$:
                                   4063 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2316: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
      00C672 72 18 52 5D      [ 1] 4064 	bset	21085, #4
                                   4065 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_tim1.c: 2317: }
      00C676 84               [ 1] 4066 	pop	a
      00C677 81               [ 4] 4067 	ret
                                   4068 	.area CODE
                                   4069 	.area CONST
                                   4070 	.area CONST
      0085AD                       4071 ___str_0:
      0085AD 43 3A                 4072 	.ascii "C:"
      0085AF 5C                    4073 	.db 0x5c
      0085B0 55 73 65 72 73        4074 	.ascii "Users"
      0085B5 5C                    4075 	.db 0x5c
      0085B6 41 64 6D 69 6E        4076 	.ascii "Admin"
      0085BB 5C                    4077 	.db 0x5c
      0085BC 2E 70 6C 61 74 66 6F  4078 	.ascii ".platformio"
             72 6D 69 6F
      0085C7 5C                    4079 	.db 0x5c
      0085C8 70 61 63 6B 61 67 65  4080 	.ascii "packages"
             73
      0085D0 5C                    4081 	.db 0x5c
      0085D1 66 72 61 6D 65 77 6F  4082 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0085E4 5C                    4083 	.db 0x5c
      0085E5 4C 69 62 72 61 72 69  4084 	.ascii "Libraries"
             65 73
      0085EE 5C                    4085 	.db 0x5c
      0085EF 53 54 4D 38 53 5F 53  4086 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      008605 5C                    4087 	.db 0x5c
      008606 73 72 63              4088 	.ascii "src"
      008609 5C                    4089 	.db 0x5c
      00860A 73 74 6D 38 73 5F 74  4090 	.ascii "stm8s_tim1.c"
             69 6D 31 2E 63
      008616 00                    4091 	.db 0x00
                                   4092 	.area CODE
                                   4093 	.area INITIALIZER
                                   4094 	.area CABS (ABS)
