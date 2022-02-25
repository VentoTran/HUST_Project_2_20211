                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _ADC1_DeInit
                                     13 	.globl _ADC1_Init
                                     14 	.globl _ADC1_Cmd
                                     15 	.globl _ADC1_ScanModeCmd
                                     16 	.globl _ADC1_DataBufferCmd
                                     17 	.globl _ADC1_ITConfig
                                     18 	.globl _ADC1_PrescalerConfig
                                     19 	.globl _ADC1_SchmittTriggerConfig
                                     20 	.globl _ADC1_ConversionConfig
                                     21 	.globl _ADC1_ExternalTriggerConfig
                                     22 	.globl _ADC1_StartConversion
                                     23 	.globl _ADC1_GetConversionValue
                                     24 	.globl _ADC1_AWDChannelConfig
                                     25 	.globl _ADC1_SetHighThreshold
                                     26 	.globl _ADC1_SetLowThreshold
                                     27 	.globl _ADC1_GetBufferValue
                                     28 	.globl _ADC1_GetAWDChannelStatus
                                     29 	.globl _ADC1_GetFlagStatus
                                     30 	.globl _ADC1_ClearFlag
                                     31 	.globl _ADC1_GetITStatus
                                     32 	.globl _ADC1_ClearITPendingBit
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DATA
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area INITIALIZED
                                     41 ;--------------------------------------------------------
                                     42 ; absolute external ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area DABS (ABS)
                                     45 
                                     46 ; default segment ordering for linker
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area CONST
                                     51 	.area INITIALIZER
                                     52 	.area CODE
                                     53 
                                     54 ;--------------------------------------------------------
                                     55 ; global & static initialisations
                                     56 ;--------------------------------------------------------
                                     57 	.area HOME
                                     58 	.area GSINIT
                                     59 	.area GSFINAL
                                     60 	.area GSINIT
                                     61 ;--------------------------------------------------------
                                     62 ; Home
                                     63 ;--------------------------------------------------------
                                     64 	.area HOME
                                     65 	.area HOME
                                     66 ;--------------------------------------------------------
                                     67 ; code
                                     68 ;--------------------------------------------------------
                                     69 	.area CODE
                                     70 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 52: void ADC1_DeInit(void)
                                     71 ;	-----------------------------------------
                                     72 ;	 function ADC1_DeInit
                                     73 ;	-----------------------------------------
      0088AA                         74 _ADC1_DeInit:
                                     75 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
      0088AA 35 00 54 00      [ 1]   76 	mov	0x5400+0, #0x00
                                     77 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
      0088AE 35 00 54 01      [ 1]   78 	mov	0x5401+0, #0x00
                                     79 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
      0088B2 35 00 54 02      [ 1]   80 	mov	0x5402+0, #0x00
                                     81 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
      0088B6 35 00 54 03      [ 1]   82 	mov	0x5403+0, #0x00
                                     83 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
      0088BA 35 00 54 06      [ 1]   84 	mov	0x5406+0, #0x00
                                     85 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
      0088BE 35 00 54 07      [ 1]   86 	mov	0x5407+0, #0x00
                                     87 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
      0088C2 35 FF 54 08      [ 1]   88 	mov	0x5408+0, #0xff
                                     89 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
      0088C6 35 03 54 09      [ 1]   90 	mov	0x5409+0, #0x03
                                     91 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
      0088CA 35 00 54 0A      [ 1]   92 	mov	0x540a+0, #0x00
                                     93 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
      0088CE 35 00 54 0B      [ 1]   94 	mov	0x540b+0, #0x00
                                     95 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
      0088D2 35 00 54 0E      [ 1]   96 	mov	0x540e+0, #0x00
                                     97 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
      0088D6 35 00 54 0F      [ 1]   98 	mov	0x540f+0, #0x00
                                     99 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 66: }
      0088DA 81               [ 4]  100 	ret
                                    101 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
                                    102 ;	-----------------------------------------
                                    103 ;	 function ADC1_Init
                                    104 ;	-----------------------------------------
      0088DB                        105 _ADC1_Init:
                                    106 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 91: assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
      0088DB 0D 03            [ 1]  107 	tnz	(0x03, sp)
      0088DD 27 14            [ 1]  108 	jreq	00104$
      0088DF 7B 03            [ 1]  109 	ld	a, (0x03, sp)
      0088E1 4A               [ 1]  110 	dec	a
      0088E2 27 0F            [ 1]  111 	jreq	00104$
      0088E4 4B 5B            [ 1]  112 	push	#0x5b
      0088E6 5F               [ 1]  113 	clrw	x
      0088E7 89               [ 2]  114 	pushw	x
      0088E8 4B 00            [ 1]  115 	push	#0x00
      0088EA 4B 8C            [ 1]  116 	push	#<(___str_0+0)
      0088EC 4B 80            [ 1]  117 	push	#((___str_0+0) >> 8)
      0088EE CD 00 00         [ 4]  118 	call	_assert_failed
      0088F1 5B 06            [ 2]  119 	addw	sp, #6
      0088F3                        120 00104$:
                                    121 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 92: assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
      0088F3 0D 04            [ 1]  122 	tnz	(0x04, sp)
      0088F5 27 4A            [ 1]  123 	jreq	00109$
      0088F7 7B 04            [ 1]  124 	ld	a, (0x04, sp)
      0088F9 4A               [ 1]  125 	dec	a
      0088FA 27 45            [ 1]  126 	jreq	00109$
      0088FC 7B 04            [ 1]  127 	ld	a, (0x04, sp)
      0088FE A1 02            [ 1]  128 	cp	a, #0x02
      008900 27 3F            [ 1]  129 	jreq	00109$
      008902 7B 04            [ 1]  130 	ld	a, (0x04, sp)
      008904 A1 03            [ 1]  131 	cp	a, #0x03
      008906 27 39            [ 1]  132 	jreq	00109$
      008908 7B 04            [ 1]  133 	ld	a, (0x04, sp)
      00890A A1 04            [ 1]  134 	cp	a, #0x04
      00890C 27 33            [ 1]  135 	jreq	00109$
      00890E 7B 04            [ 1]  136 	ld	a, (0x04, sp)
      008910 A1 05            [ 1]  137 	cp	a, #0x05
      008912 27 2D            [ 1]  138 	jreq	00109$
      008914 7B 04            [ 1]  139 	ld	a, (0x04, sp)
      008916 A1 06            [ 1]  140 	cp	a, #0x06
      008918 27 27            [ 1]  141 	jreq	00109$
      00891A 7B 04            [ 1]  142 	ld	a, (0x04, sp)
      00891C A1 07            [ 1]  143 	cp	a, #0x07
      00891E 27 21            [ 1]  144 	jreq	00109$
      008920 7B 04            [ 1]  145 	ld	a, (0x04, sp)
      008922 A1 08            [ 1]  146 	cp	a, #0x08
      008924 27 1B            [ 1]  147 	jreq	00109$
      008926 7B 04            [ 1]  148 	ld	a, (0x04, sp)
      008928 A1 0C            [ 1]  149 	cp	a, #0x0c
      00892A 27 15            [ 1]  150 	jreq	00109$
      00892C 7B 04            [ 1]  151 	ld	a, (0x04, sp)
      00892E A1 09            [ 1]  152 	cp	a, #0x09
      008930 27 0F            [ 1]  153 	jreq	00109$
      008932 4B 5C            [ 1]  154 	push	#0x5c
      008934 5F               [ 1]  155 	clrw	x
      008935 89               [ 2]  156 	pushw	x
      008936 4B 00            [ 1]  157 	push	#0x00
      008938 4B 8C            [ 1]  158 	push	#<(___str_0+0)
      00893A 4B 80            [ 1]  159 	push	#((___str_0+0) >> 8)
      00893C CD 00 00         [ 4]  160 	call	_assert_failed
      00893F 5B 06            [ 2]  161 	addw	sp, #6
      008941                        162 00109$:
                                    163 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 93: assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
      008941 0D 05            [ 1]  164 	tnz	(0x05, sp)
      008943 27 39            [ 1]  165 	jreq	00141$
      008945 7B 05            [ 1]  166 	ld	a, (0x05, sp)
      008947 A1 10            [ 1]  167 	cp	a, #0x10
      008949 27 33            [ 1]  168 	jreq	00141$
      00894B 7B 05            [ 1]  169 	ld	a, (0x05, sp)
      00894D A1 20            [ 1]  170 	cp	a, #0x20
      00894F 27 2D            [ 1]  171 	jreq	00141$
      008951 7B 05            [ 1]  172 	ld	a, (0x05, sp)
      008953 A1 30            [ 1]  173 	cp	a, #0x30
      008955 27 27            [ 1]  174 	jreq	00141$
      008957 7B 05            [ 1]  175 	ld	a, (0x05, sp)
      008959 A1 40            [ 1]  176 	cp	a, #0x40
      00895B 27 21            [ 1]  177 	jreq	00141$
      00895D 7B 05            [ 1]  178 	ld	a, (0x05, sp)
      00895F A1 50            [ 1]  179 	cp	a, #0x50
      008961 27 1B            [ 1]  180 	jreq	00141$
      008963 7B 05            [ 1]  181 	ld	a, (0x05, sp)
      008965 A1 60            [ 1]  182 	cp	a, #0x60
      008967 27 15            [ 1]  183 	jreq	00141$
      008969 7B 05            [ 1]  184 	ld	a, (0x05, sp)
      00896B A1 70            [ 1]  185 	cp	a, #0x70
      00896D 27 0F            [ 1]  186 	jreq	00141$
      00896F 4B 5D            [ 1]  187 	push	#0x5d
      008971 5F               [ 1]  188 	clrw	x
      008972 89               [ 2]  189 	pushw	x
      008973 4B 00            [ 1]  190 	push	#0x00
      008975 4B 8C            [ 1]  191 	push	#<(___str_0+0)
      008977 4B 80            [ 1]  192 	push	#((___str_0+0) >> 8)
      008979 CD 00 00         [ 4]  193 	call	_assert_failed
      00897C 5B 06            [ 2]  194 	addw	sp, #6
      00897E                        195 00141$:
                                    196 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 94: assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
      00897E 0D 06            [ 1]  197 	tnz	(0x06, sp)
      008980 27 15            [ 1]  198 	jreq	00164$
      008982 7B 06            [ 1]  199 	ld	a, (0x06, sp)
      008984 A1 10            [ 1]  200 	cp	a, #0x10
      008986 27 0F            [ 1]  201 	jreq	00164$
      008988 4B 5E            [ 1]  202 	push	#0x5e
      00898A 5F               [ 1]  203 	clrw	x
      00898B 89               [ 2]  204 	pushw	x
      00898C 4B 00            [ 1]  205 	push	#0x00
      00898E 4B 8C            [ 1]  206 	push	#<(___str_0+0)
      008990 4B 80            [ 1]  207 	push	#((___str_0+0) >> 8)
      008992 CD 00 00         [ 4]  208 	call	_assert_failed
      008995 5B 06            [ 2]  209 	addw	sp, #6
      008997                        210 00164$:
                                    211 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 95: assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
      008997 0D 07            [ 1]  212 	tnz	(0x07, sp)
      008999 27 14            [ 1]  213 	jreq	00169$
      00899B 7B 07            [ 1]  214 	ld	a, (0x07, sp)
      00899D 4A               [ 1]  215 	dec	a
      00899E 27 0F            [ 1]  216 	jreq	00169$
      0089A0 4B 5F            [ 1]  217 	push	#0x5f
      0089A2 5F               [ 1]  218 	clrw	x
      0089A3 89               [ 2]  219 	pushw	x
      0089A4 4B 00            [ 1]  220 	push	#0x00
      0089A6 4B 8C            [ 1]  221 	push	#<(___str_0+0)
      0089A8 4B 80            [ 1]  222 	push	#((___str_0+0) >> 8)
      0089AA CD 00 00         [ 4]  223 	call	_assert_failed
      0089AD 5B 06            [ 2]  224 	addw	sp, #6
      0089AF                        225 00169$:
                                    226 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 96: assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
      0089AF 0D 08            [ 1]  227 	tnz	(0x08, sp)
      0089B1 27 15            [ 1]  228 	jreq	00174$
      0089B3 7B 08            [ 1]  229 	ld	a, (0x08, sp)
      0089B5 A1 08            [ 1]  230 	cp	a, #0x08
      0089B7 27 0F            [ 1]  231 	jreq	00174$
      0089B9 4B 60            [ 1]  232 	push	#0x60
      0089BB 5F               [ 1]  233 	clrw	x
      0089BC 89               [ 2]  234 	pushw	x
      0089BD 4B 00            [ 1]  235 	push	#0x00
      0089BF 4B 8C            [ 1]  236 	push	#<(___str_0+0)
      0089C1 4B 80            [ 1]  237 	push	#((___str_0+0) >> 8)
      0089C3 CD 00 00         [ 4]  238 	call	_assert_failed
      0089C6 5B 06            [ 2]  239 	addw	sp, #6
      0089C8                        240 00174$:
                                    241 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 97: assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
      0089C8 0D 09            [ 1]  242 	tnz	(0x09, sp)
      0089CA 27 4F            [ 1]  243 	jreq	00179$
      0089CC 7B 09            [ 1]  244 	ld	a, (0x09, sp)
      0089CE 4A               [ 1]  245 	dec	a
      0089CF 27 4A            [ 1]  246 	jreq	00179$
      0089D1 7B 09            [ 1]  247 	ld	a, (0x09, sp)
      0089D3 A1 02            [ 1]  248 	cp	a, #0x02
      0089D5 27 44            [ 1]  249 	jreq	00179$
      0089D7 7B 09            [ 1]  250 	ld	a, (0x09, sp)
      0089D9 A1 03            [ 1]  251 	cp	a, #0x03
      0089DB 27 3E            [ 1]  252 	jreq	00179$
      0089DD 7B 09            [ 1]  253 	ld	a, (0x09, sp)
      0089DF A1 04            [ 1]  254 	cp	a, #0x04
      0089E1 27 38            [ 1]  255 	jreq	00179$
      0089E3 7B 09            [ 1]  256 	ld	a, (0x09, sp)
      0089E5 A1 05            [ 1]  257 	cp	a, #0x05
      0089E7 27 32            [ 1]  258 	jreq	00179$
      0089E9 7B 09            [ 1]  259 	ld	a, (0x09, sp)
      0089EB A1 06            [ 1]  260 	cp	a, #0x06
      0089ED 27 2C            [ 1]  261 	jreq	00179$
      0089EF 7B 09            [ 1]  262 	ld	a, (0x09, sp)
      0089F1 A1 07            [ 1]  263 	cp	a, #0x07
      0089F3 27 26            [ 1]  264 	jreq	00179$
      0089F5 7B 09            [ 1]  265 	ld	a, (0x09, sp)
      0089F7 A1 08            [ 1]  266 	cp	a, #0x08
      0089F9 27 20            [ 1]  267 	jreq	00179$
      0089FB 7B 09            [ 1]  268 	ld	a, (0x09, sp)
      0089FD A1 0C            [ 1]  269 	cp	a, #0x0c
      0089FF 27 1A            [ 1]  270 	jreq	00179$
      008A01 7B 09            [ 1]  271 	ld	a, (0x09, sp)
      008A03 4C               [ 1]  272 	inc	a
      008A04 27 15            [ 1]  273 	jreq	00179$
      008A06 7B 09            [ 1]  274 	ld	a, (0x09, sp)
      008A08 A1 09            [ 1]  275 	cp	a, #0x09
      008A0A 27 0F            [ 1]  276 	jreq	00179$
      008A0C 4B 61            [ 1]  277 	push	#0x61
      008A0E 5F               [ 1]  278 	clrw	x
      008A0F 89               [ 2]  279 	pushw	x
      008A10 4B 00            [ 1]  280 	push	#0x00
      008A12 4B 8C            [ 1]  281 	push	#<(___str_0+0)
      008A14 4B 80            [ 1]  282 	push	#((___str_0+0) >> 8)
      008A16 CD 00 00         [ 4]  283 	call	_assert_failed
      008A19 5B 06            [ 2]  284 	addw	sp, #6
      008A1B                        285 00179$:
                                    286 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 98: assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
      008A1B 0D 0A            [ 1]  287 	tnz	(0x0a, sp)
      008A1D 27 14            [ 1]  288 	jreq	00214$
      008A1F 7B 0A            [ 1]  289 	ld	a, (0x0a, sp)
      008A21 4A               [ 1]  290 	dec	a
      008A22 27 0F            [ 1]  291 	jreq	00214$
      008A24 4B 62            [ 1]  292 	push	#0x62
      008A26 5F               [ 1]  293 	clrw	x
      008A27 89               [ 2]  294 	pushw	x
      008A28 4B 00            [ 1]  295 	push	#0x00
      008A2A 4B 8C            [ 1]  296 	push	#<(___str_0+0)
      008A2C 4B 80            [ 1]  297 	push	#((___str_0+0) >> 8)
      008A2E CD 00 00         [ 4]  298 	call	_assert_failed
      008A31 5B 06            [ 2]  299 	addw	sp, #6
      008A33                        300 00214$:
                                    301 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 103: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
      008A33 7B 08            [ 1]  302 	ld	a, (0x08, sp)
      008A35 88               [ 1]  303 	push	a
      008A36 7B 05            [ 1]  304 	ld	a, (0x05, sp)
      008A38 88               [ 1]  305 	push	a
      008A39 7B 05            [ 1]  306 	ld	a, (0x05, sp)
      008A3B 88               [ 1]  307 	push	a
      008A3C CD 8C 78         [ 4]  308 	call	_ADC1_ConversionConfig
      008A3F 5B 03            [ 2]  309 	addw	sp, #3
                                    310 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 105: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
      008A41 7B 05            [ 1]  311 	ld	a, (0x05, sp)
      008A43 88               [ 1]  312 	push	a
      008A44 CD 8B 39         [ 4]  313 	call	_ADC1_PrescalerConfig
      008A47 84               [ 1]  314 	pop	a
                                    315 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 110: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
      008A48 7B 07            [ 1]  316 	ld	a, (0x07, sp)
      008A4A 88               [ 1]  317 	push	a
      008A4B 7B 07            [ 1]  318 	ld	a, (0x07, sp)
      008A4D 88               [ 1]  319 	push	a
      008A4E CD 8D 37         [ 4]  320 	call	_ADC1_ExternalTriggerConfig
      008A51 85               [ 2]  321 	popw	x
                                    322 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 115: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
      008A52 7B 0A            [ 1]  323 	ld	a, (0x0a, sp)
      008A54 88               [ 1]  324 	push	a
      008A55 7B 0A            [ 1]  325 	ld	a, (0x0a, sp)
      008A57 88               [ 1]  326 	push	a
      008A58 CD 8B 87         [ 4]  327 	call	_ADC1_SchmittTriggerConfig
      008A5B 85               [ 2]  328 	popw	x
                                    329 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 118: ADC1->CR1 |= ADC1_CR1_ADON;
      008A5C 72 10 54 01      [ 1]  330 	bset	21505, #0
                                    331 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 119: }
      008A60 81               [ 4]  332 	ret
                                    333 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 126: void ADC1_Cmd(FunctionalState NewState)
                                    334 ;	-----------------------------------------
                                    335 ;	 function ADC1_Cmd
                                    336 ;	-----------------------------------------
      008A61                        337 _ADC1_Cmd:
                                    338 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 129: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A61 0D 03            [ 1]  339 	tnz	(0x03, sp)
      008A63 27 14            [ 1]  340 	jreq	00107$
      008A65 7B 03            [ 1]  341 	ld	a, (0x03, sp)
      008A67 4A               [ 1]  342 	dec	a
      008A68 27 0F            [ 1]  343 	jreq	00107$
      008A6A 4B 81            [ 1]  344 	push	#0x81
      008A6C 5F               [ 1]  345 	clrw	x
      008A6D 89               [ 2]  346 	pushw	x
      008A6E 4B 00            [ 1]  347 	push	#0x00
      008A70 4B 8C            [ 1]  348 	push	#<(___str_0+0)
      008A72 4B 80            [ 1]  349 	push	#((___str_0+0) >> 8)
      008A74 CD 00 00         [ 4]  350 	call	_assert_failed
      008A77 5B 06            [ 2]  351 	addw	sp, #6
      008A79                        352 00107$:
                                    353 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
      008A79 C6 54 01         [ 1]  354 	ld	a, 0x5401
                                    355 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 131: if (NewState != DISABLE)
      008A7C 0D 03            [ 1]  356 	tnz	(0x03, sp)
      008A7E 27 06            [ 1]  357 	jreq	00102$
                                    358 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
      008A80 AA 01            [ 1]  359 	or	a, #0x01
      008A82 C7 54 01         [ 1]  360 	ld	0x5401, a
      008A85 81               [ 4]  361 	ret
      008A86                        362 00102$:
                                    363 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 137: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
      008A86 A4 FE            [ 1]  364 	and	a, #0xfe
      008A88 C7 54 01         [ 1]  365 	ld	0x5401, a
                                    366 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 139: }
      008A8B 81               [ 4]  367 	ret
                                    368 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 146: void ADC1_ScanModeCmd(FunctionalState NewState)
                                    369 ;	-----------------------------------------
                                    370 ;	 function ADC1_ScanModeCmd
                                    371 ;	-----------------------------------------
      008A8C                        372 _ADC1_ScanModeCmd:
                                    373 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 149: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008A8C 0D 03            [ 1]  374 	tnz	(0x03, sp)
      008A8E 27 14            [ 1]  375 	jreq	00107$
      008A90 7B 03            [ 1]  376 	ld	a, (0x03, sp)
      008A92 4A               [ 1]  377 	dec	a
      008A93 27 0F            [ 1]  378 	jreq	00107$
      008A95 4B 95            [ 1]  379 	push	#0x95
      008A97 5F               [ 1]  380 	clrw	x
      008A98 89               [ 2]  381 	pushw	x
      008A99 4B 00            [ 1]  382 	push	#0x00
      008A9B 4B 8C            [ 1]  383 	push	#<(___str_0+0)
      008A9D 4B 80            [ 1]  384 	push	#((___str_0+0) >> 8)
      008A9F CD 00 00         [ 4]  385 	call	_assert_failed
      008AA2 5B 06            [ 2]  386 	addw	sp, #6
      008AA4                        387 00107$:
                                    388 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
      008AA4 C6 54 02         [ 1]  389 	ld	a, 0x5402
                                    390 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 151: if (NewState != DISABLE)
      008AA7 0D 03            [ 1]  391 	tnz	(0x03, sp)
      008AA9 27 06            [ 1]  392 	jreq	00102$
                                    393 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
      008AAB AA 02            [ 1]  394 	or	a, #0x02
      008AAD C7 54 02         [ 1]  395 	ld	0x5402, a
      008AB0 81               [ 4]  396 	ret
      008AB1                        397 00102$:
                                    398 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 157: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
      008AB1 A4 FD            [ 1]  399 	and	a, #0xfd
      008AB3 C7 54 02         [ 1]  400 	ld	0x5402, a
                                    401 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 159: }
      008AB6 81               [ 4]  402 	ret
                                    403 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 166: void ADC1_DataBufferCmd(FunctionalState NewState)
                                    404 ;	-----------------------------------------
                                    405 ;	 function ADC1_DataBufferCmd
                                    406 ;	-----------------------------------------
      008AB7                        407 _ADC1_DataBufferCmd:
                                    408 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008AB7 0D 03            [ 1]  409 	tnz	(0x03, sp)
      008AB9 27 14            [ 1]  410 	jreq	00107$
      008ABB 7B 03            [ 1]  411 	ld	a, (0x03, sp)
      008ABD 4A               [ 1]  412 	dec	a
      008ABE 27 0F            [ 1]  413 	jreq	00107$
      008AC0 4B A9            [ 1]  414 	push	#0xa9
      008AC2 5F               [ 1]  415 	clrw	x
      008AC3 89               [ 2]  416 	pushw	x
      008AC4 4B 00            [ 1]  417 	push	#0x00
      008AC6 4B 8C            [ 1]  418 	push	#<(___str_0+0)
      008AC8 4B 80            [ 1]  419 	push	#((___str_0+0) >> 8)
      008ACA CD 00 00         [ 4]  420 	call	_assert_failed
      008ACD 5B 06            [ 2]  421 	addw	sp, #6
      008ACF                        422 00107$:
                                    423 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
      008ACF C6 54 03         [ 1]  424 	ld	a, 0x5403
                                    425 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 171: if (NewState != DISABLE)
      008AD2 0D 03            [ 1]  426 	tnz	(0x03, sp)
      008AD4 27 06            [ 1]  427 	jreq	00102$
                                    428 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
      008AD6 AA 80            [ 1]  429 	or	a, #0x80
      008AD8 C7 54 03         [ 1]  430 	ld	0x5403, a
      008ADB 81               [ 4]  431 	ret
      008ADC                        432 00102$:
                                    433 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 177: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
      008ADC A4 7F            [ 1]  434 	and	a, #0x7f
      008ADE C7 54 03         [ 1]  435 	ld	0x5403, a
                                    436 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 179: }
      008AE1 81               [ 4]  437 	ret
                                    438 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 190: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
                                    439 ;	-----------------------------------------
                                    440 ;	 function ADC1_ITConfig
                                    441 ;	-----------------------------------------
      008AE2                        442 _ADC1_ITConfig:
      008AE2 88               [ 1]  443 	push	a
                                    444 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 193: assert_param(IS_ADC1_IT_OK(ADC1_IT));
      008AE3 1E 04            [ 2]  445 	ldw	x, (0x04, sp)
      008AE5 A3 00 20         [ 2]  446 	cpw	x, #0x0020
      008AE8 27 18            [ 1]  447 	jreq	00107$
      008AEA A3 00 10         [ 2]  448 	cpw	x, #0x0010
      008AED 27 13            [ 1]  449 	jreq	00107$
      008AEF 89               [ 2]  450 	pushw	x
      008AF0 4B C1            [ 1]  451 	push	#0xc1
      008AF2 4B 00            [ 1]  452 	push	#0x00
      008AF4 4B 00            [ 1]  453 	push	#0x00
      008AF6 4B 00            [ 1]  454 	push	#0x00
      008AF8 4B 8C            [ 1]  455 	push	#<(___str_0+0)
      008AFA 4B 80            [ 1]  456 	push	#((___str_0+0) >> 8)
      008AFC CD 00 00         [ 4]  457 	call	_assert_failed
      008AFF 5B 06            [ 2]  458 	addw	sp, #6
      008B01 85               [ 2]  459 	popw	x
      008B02                        460 00107$:
                                    461 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 194: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008B02 0D 06            [ 1]  462 	tnz	(0x06, sp)
      008B04 27 18            [ 1]  463 	jreq	00112$
      008B06 7B 06            [ 1]  464 	ld	a, (0x06, sp)
      008B08 4A               [ 1]  465 	dec	a
      008B09 27 13            [ 1]  466 	jreq	00112$
      008B0B 89               [ 2]  467 	pushw	x
      008B0C 4B C2            [ 1]  468 	push	#0xc2
      008B0E 4B 00            [ 1]  469 	push	#0x00
      008B10 4B 00            [ 1]  470 	push	#0x00
      008B12 4B 00            [ 1]  471 	push	#0x00
      008B14 4B 8C            [ 1]  472 	push	#<(___str_0+0)
      008B16 4B 80            [ 1]  473 	push	#((___str_0+0) >> 8)
      008B18 CD 00 00         [ 4]  474 	call	_assert_failed
      008B1B 5B 06            [ 2]  475 	addw	sp, #6
      008B1D 85               [ 2]  476 	popw	x
      008B1E                        477 00112$:
                                    478 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
      008B1E C6 54 00         [ 1]  479 	ld	a, 0x5400
      008B21 6B 01            [ 1]  480 	ld	(0x01, sp), a
                                    481 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 196: if (NewState != DISABLE)
      008B23 0D 06            [ 1]  482 	tnz	(0x06, sp)
      008B25 27 09            [ 1]  483 	jreq	00102$
                                    484 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
      008B27 7B 05            [ 1]  485 	ld	a, (0x05, sp)
      008B29 1A 01            [ 1]  486 	or	a, (0x01, sp)
      008B2B C7 54 00         [ 1]  487 	ld	0x5400, a
      008B2E 20 07            [ 2]  488 	jra	00104$
      008B30                        489 00102$:
                                    490 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 204: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
      008B30 53               [ 2]  491 	cplw	x
      008B31 9F               [ 1]  492 	ld	a, xl
      008B32 14 01            [ 1]  493 	and	a, (0x01, sp)
      008B34 C7 54 00         [ 1]  494 	ld	0x5400, a
      008B37                        495 00104$:
                                    496 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 206: }
      008B37 84               [ 1]  497 	pop	a
      008B38 81               [ 4]  498 	ret
                                    499 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 214: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
                                    500 ;	-----------------------------------------
                                    501 ;	 function ADC1_PrescalerConfig
                                    502 ;	-----------------------------------------
      008B39                        503 _ADC1_PrescalerConfig:
                                    504 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 217: assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
      008B39 0D 03            [ 1]  505 	tnz	(0x03, sp)
      008B3B 27 39            [ 1]  506 	jreq	00104$
      008B3D 7B 03            [ 1]  507 	ld	a, (0x03, sp)
      008B3F A1 10            [ 1]  508 	cp	a, #0x10
      008B41 27 33            [ 1]  509 	jreq	00104$
      008B43 7B 03            [ 1]  510 	ld	a, (0x03, sp)
      008B45 A1 20            [ 1]  511 	cp	a, #0x20
      008B47 27 2D            [ 1]  512 	jreq	00104$
      008B49 7B 03            [ 1]  513 	ld	a, (0x03, sp)
      008B4B A1 30            [ 1]  514 	cp	a, #0x30
      008B4D 27 27            [ 1]  515 	jreq	00104$
      008B4F 7B 03            [ 1]  516 	ld	a, (0x03, sp)
      008B51 A1 40            [ 1]  517 	cp	a, #0x40
      008B53 27 21            [ 1]  518 	jreq	00104$
      008B55 7B 03            [ 1]  519 	ld	a, (0x03, sp)
      008B57 A1 50            [ 1]  520 	cp	a, #0x50
      008B59 27 1B            [ 1]  521 	jreq	00104$
      008B5B 7B 03            [ 1]  522 	ld	a, (0x03, sp)
      008B5D A1 60            [ 1]  523 	cp	a, #0x60
      008B5F 27 15            [ 1]  524 	jreq	00104$
      008B61 7B 03            [ 1]  525 	ld	a, (0x03, sp)
      008B63 A1 70            [ 1]  526 	cp	a, #0x70
      008B65 27 0F            [ 1]  527 	jreq	00104$
      008B67 4B D9            [ 1]  528 	push	#0xd9
      008B69 5F               [ 1]  529 	clrw	x
      008B6A 89               [ 2]  530 	pushw	x
      008B6B 4B 00            [ 1]  531 	push	#0x00
      008B6D 4B 8C            [ 1]  532 	push	#<(___str_0+0)
      008B6F 4B 80            [ 1]  533 	push	#((___str_0+0) >> 8)
      008B71 CD 00 00         [ 4]  534 	call	_assert_failed
      008B74 5B 06            [ 2]  535 	addw	sp, #6
      008B76                        536 00104$:
                                    537 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 220: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
      008B76 C6 54 01         [ 1]  538 	ld	a, 0x5401
      008B79 A4 8F            [ 1]  539 	and	a, #0x8f
      008B7B C7 54 01         [ 1]  540 	ld	0x5401, a
                                    541 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 222: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
      008B7E C6 54 01         [ 1]  542 	ld	a, 0x5401
      008B81 1A 03            [ 1]  543 	or	a, (0x03, sp)
      008B83 C7 54 01         [ 1]  544 	ld	0x5401, a
                                    545 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 223: }
      008B86 81               [ 4]  546 	ret
                                    547 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 233: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
                                    548 ;	-----------------------------------------
                                    549 ;	 function ADC1_SchmittTriggerConfig
                                    550 ;	-----------------------------------------
      008B87                        551 _ADC1_SchmittTriggerConfig:
      008B87 88               [ 1]  552 	push	a
                                    553 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 236: assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
      008B88 7B 04            [ 1]  554 	ld	a, (0x04, sp)
      008B8A 4C               [ 1]  555 	inc	a
      008B8B 26 05            [ 1]  556 	jrne	00254$
      008B8D A6 01            [ 1]  557 	ld	a, #0x01
      008B8F 6B 01            [ 1]  558 	ld	(0x01, sp), a
      008B91 C5                     559 	.byte 0xc5
      008B92                        560 00254$:
      008B92 0F 01            [ 1]  561 	clr	(0x01, sp)
      008B94                        562 00255$:
      008B94 0D 04            [ 1]  563 	tnz	(0x04, sp)
      008B96 27 4E            [ 1]  564 	jreq	00119$
      008B98 7B 04            [ 1]  565 	ld	a, (0x04, sp)
      008B9A 4A               [ 1]  566 	dec	a
      008B9B 27 49            [ 1]  567 	jreq	00119$
      008B9D 7B 04            [ 1]  568 	ld	a, (0x04, sp)
      008B9F A1 02            [ 1]  569 	cp	a, #0x02
      008BA1 27 43            [ 1]  570 	jreq	00119$
      008BA3 7B 04            [ 1]  571 	ld	a, (0x04, sp)
      008BA5 A1 03            [ 1]  572 	cp	a, #0x03
      008BA7 27 3D            [ 1]  573 	jreq	00119$
      008BA9 7B 04            [ 1]  574 	ld	a, (0x04, sp)
      008BAB A1 04            [ 1]  575 	cp	a, #0x04
      008BAD 27 37            [ 1]  576 	jreq	00119$
      008BAF 7B 04            [ 1]  577 	ld	a, (0x04, sp)
      008BB1 A1 05            [ 1]  578 	cp	a, #0x05
      008BB3 27 31            [ 1]  579 	jreq	00119$
      008BB5 7B 04            [ 1]  580 	ld	a, (0x04, sp)
      008BB7 A1 06            [ 1]  581 	cp	a, #0x06
      008BB9 27 2B            [ 1]  582 	jreq	00119$
      008BBB 7B 04            [ 1]  583 	ld	a, (0x04, sp)
      008BBD A1 07            [ 1]  584 	cp	a, #0x07
      008BBF 27 25            [ 1]  585 	jreq	00119$
      008BC1 7B 04            [ 1]  586 	ld	a, (0x04, sp)
      008BC3 A1 08            [ 1]  587 	cp	a, #0x08
      008BC5 27 1F            [ 1]  588 	jreq	00119$
      008BC7 7B 04            [ 1]  589 	ld	a, (0x04, sp)
      008BC9 A1 0C            [ 1]  590 	cp	a, #0x0c
      008BCB 27 19            [ 1]  591 	jreq	00119$
      008BCD 0D 01            [ 1]  592 	tnz	(0x01, sp)
      008BCF 26 15            [ 1]  593 	jrne	00119$
      008BD1 7B 04            [ 1]  594 	ld	a, (0x04, sp)
      008BD3 A1 09            [ 1]  595 	cp	a, #0x09
      008BD5 27 0F            [ 1]  596 	jreq	00119$
      008BD7 4B EC            [ 1]  597 	push	#0xec
      008BD9 5F               [ 1]  598 	clrw	x
      008BDA 89               [ 2]  599 	pushw	x
      008BDB 4B 00            [ 1]  600 	push	#0x00
      008BDD 4B 8C            [ 1]  601 	push	#<(___str_0+0)
      008BDF 4B 80            [ 1]  602 	push	#((___str_0+0) >> 8)
      008BE1 CD 00 00         [ 4]  603 	call	_assert_failed
      008BE4 5B 06            [ 2]  604 	addw	sp, #6
      008BE6                        605 00119$:
                                    606 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 237: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008BE6 0D 05            [ 1]  607 	tnz	(0x05, sp)
      008BE8 27 14            [ 1]  608 	jreq	00154$
      008BEA 7B 05            [ 1]  609 	ld	a, (0x05, sp)
      008BEC 4A               [ 1]  610 	dec	a
      008BED 27 0F            [ 1]  611 	jreq	00154$
      008BEF 4B ED            [ 1]  612 	push	#0xed
      008BF1 5F               [ 1]  613 	clrw	x
      008BF2 89               [ 2]  614 	pushw	x
      008BF3 4B 00            [ 1]  615 	push	#0x00
      008BF5 4B 8C            [ 1]  616 	push	#<(___str_0+0)
      008BF7 4B 80            [ 1]  617 	push	#((___str_0+0) >> 8)
      008BF9 CD 00 00         [ 4]  618 	call	_assert_failed
      008BFC 5B 06            [ 2]  619 	addw	sp, #6
      008BFE                        620 00154$:
                                    621 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 239: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
      008BFE 7B 01            [ 1]  622 	ld	a, (0x01, sp)
      008C00 27 21            [ 1]  623 	jreq	00114$
                                    624 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
      008C02 C6 54 07         [ 1]  625 	ld	a, 0x5407
                                    626 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 241: if (NewState != DISABLE)
      008C05 0D 05            [ 1]  627 	tnz	(0x05, sp)
      008C07 27 0D            [ 1]  628 	jreq	00102$
                                    629 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
      008C09 35 00 54 07      [ 1]  630 	mov	0x5407+0, #0x00
                                    631 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
      008C0D C6 54 06         [ 1]  632 	ld	a, 0x5406
      008C10 35 00 54 06      [ 1]  633 	mov	0x5406+0, #0x00
      008C14 20 60            [ 2]  634 	jra	00116$
      008C16                        635 00102$:
                                    636 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 248: ADC1->TDRL |= (uint8_t)0xFF;
      008C16 35 FF 54 07      [ 1]  637 	mov	0x5407+0, #0xff
                                    638 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 249: ADC1->TDRH |= (uint8_t)0xFF;
      008C1A C6 54 06         [ 1]  639 	ld	a, 0x5406
      008C1D 35 FF 54 06      [ 1]  640 	mov	0x5406+0, #0xff
      008C21 20 53            [ 2]  641 	jra	00116$
      008C23                        642 00114$:
                                    643 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 252: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
      008C23 7B 04            [ 1]  644 	ld	a, (0x04, sp)
      008C25 A1 08            [ 1]  645 	cp	a, #0x08
      008C27 24 25            [ 1]  646 	jrnc	00111$
                                    647 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
      008C29 C6 54 07         [ 1]  648 	ld	a, 0x5407
      008C2C 6B 01            [ 1]  649 	ld	(0x01, sp), a
                                    650 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      008C2E A6 01            [ 1]  651 	ld	a, #0x01
      008C30 88               [ 1]  652 	push	a
      008C31 7B 05            [ 1]  653 	ld	a, (0x05, sp)
      008C33 27 05            [ 1]  654 	jreq	00296$
      008C35                        655 00295$:
      008C35 08 01            [ 1]  656 	sll	(1, sp)
      008C37 4A               [ 1]  657 	dec	a
      008C38 26 FB            [ 1]  658 	jrne	00295$
      008C3A                        659 00296$:
      008C3A 84               [ 1]  660 	pop	a
                                    661 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 254: if (NewState != DISABLE)
      008C3B 0D 05            [ 1]  662 	tnz	(0x05, sp)
      008C3D 27 08            [ 1]  663 	jreq	00105$
                                    664 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      008C3F 43               [ 1]  665 	cpl	a
      008C40 14 01            [ 1]  666 	and	a, (0x01, sp)
      008C42 C7 54 07         [ 1]  667 	ld	0x5407, a
      008C45 20 2F            [ 2]  668 	jra	00116$
      008C47                        669 00105$:
                                    670 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 260: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
      008C47 1A 01            [ 1]  671 	or	a, (0x01, sp)
      008C49 C7 54 07         [ 1]  672 	ld	0x5407, a
      008C4C 20 28            [ 2]  673 	jra	00116$
      008C4E                        674 00111$:
                                    675 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
      008C4E C6 54 06         [ 1]  676 	ld	a, 0x5406
      008C51 6B 01            [ 1]  677 	ld	(0x01, sp), a
                                    678 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      008C53 7B 04            [ 1]  679 	ld	a, (0x04, sp)
      008C55 A0 08            [ 1]  680 	sub	a, #0x08
      008C57 97               [ 1]  681 	ld	xl, a
      008C58 A6 01            [ 1]  682 	ld	a, #0x01
      008C5A 88               [ 1]  683 	push	a
      008C5B 9F               [ 1]  684 	ld	a, xl
      008C5C 4D               [ 1]  685 	tnz	a
      008C5D 27 05            [ 1]  686 	jreq	00299$
      008C5F                        687 00298$:
      008C5F 08 01            [ 1]  688 	sll	(1, sp)
      008C61 4A               [ 1]  689 	dec	a
      008C62 26 FB            [ 1]  690 	jrne	00298$
      008C64                        691 00299$:
      008C64 84               [ 1]  692 	pop	a
                                    693 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 265: if (NewState != DISABLE)
      008C65 0D 05            [ 1]  694 	tnz	(0x05, sp)
      008C67 27 08            [ 1]  695 	jreq	00108$
                                    696 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      008C69 43               [ 1]  697 	cpl	a
      008C6A 14 01            [ 1]  698 	and	a, (0x01, sp)
      008C6C C7 54 06         [ 1]  699 	ld	0x5406, a
      008C6F 20 05            [ 2]  700 	jra	00116$
      008C71                        701 00108$:
                                    702 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 271: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
      008C71 1A 01            [ 1]  703 	or	a, (0x01, sp)
      008C73 C7 54 06         [ 1]  704 	ld	0x5406, a
      008C76                        705 00116$:
                                    706 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 274: }
      008C76 84               [ 1]  707 	pop	a
      008C77 81               [ 4]  708 	ret
                                    709 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 286: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
                                    710 ;	-----------------------------------------
                                    711 ;	 function ADC1_ConversionConfig
                                    712 ;	-----------------------------------------
      008C78                        713 _ADC1_ConversionConfig:
      008C78 88               [ 1]  714 	push	a
                                    715 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 289: assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
      008C79 7B 04            [ 1]  716 	ld	a, (0x04, sp)
      008C7B 4A               [ 1]  717 	dec	a
      008C7C 26 05            [ 1]  718 	jrne	00229$
      008C7E A6 01            [ 1]  719 	ld	a, #0x01
      008C80 6B 01            [ 1]  720 	ld	(0x01, sp), a
      008C82 C5                     721 	.byte 0xc5
      008C83                        722 00229$:
      008C83 0F 01            [ 1]  723 	clr	(0x01, sp)
      008C85                        724 00230$:
      008C85 0D 04            [ 1]  725 	tnz	(0x04, sp)
      008C87 27 13            [ 1]  726 	jreq	00107$
      008C89 0D 01            [ 1]  727 	tnz	(0x01, sp)
      008C8B 26 0F            [ 1]  728 	jrne	00107$
      008C8D 4B 21            [ 1]  729 	push	#0x21
      008C8F 4B 01            [ 1]  730 	push	#0x01
      008C91 5F               [ 1]  731 	clrw	x
      008C92 89               [ 2]  732 	pushw	x
      008C93 4B 8C            [ 1]  733 	push	#<(___str_0+0)
      008C95 4B 80            [ 1]  734 	push	#((___str_0+0) >> 8)
      008C97 CD 00 00         [ 4]  735 	call	_assert_failed
      008C9A 5B 06            [ 2]  736 	addw	sp, #6
      008C9C                        737 00107$:
                                    738 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 290: assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
      008C9C 0D 05            [ 1]  739 	tnz	(0x05, sp)
      008C9E 27 4A            [ 1]  740 	jreq	00112$
      008CA0 7B 05            [ 1]  741 	ld	a, (0x05, sp)
      008CA2 4A               [ 1]  742 	dec	a
      008CA3 27 45            [ 1]  743 	jreq	00112$
      008CA5 7B 05            [ 1]  744 	ld	a, (0x05, sp)
      008CA7 A1 02            [ 1]  745 	cp	a, #0x02
      008CA9 27 3F            [ 1]  746 	jreq	00112$
      008CAB 7B 05            [ 1]  747 	ld	a, (0x05, sp)
      008CAD A1 03            [ 1]  748 	cp	a, #0x03
      008CAF 27 39            [ 1]  749 	jreq	00112$
      008CB1 7B 05            [ 1]  750 	ld	a, (0x05, sp)
      008CB3 A1 04            [ 1]  751 	cp	a, #0x04
      008CB5 27 33            [ 1]  752 	jreq	00112$
      008CB7 7B 05            [ 1]  753 	ld	a, (0x05, sp)
      008CB9 A1 05            [ 1]  754 	cp	a, #0x05
      008CBB 27 2D            [ 1]  755 	jreq	00112$
      008CBD 7B 05            [ 1]  756 	ld	a, (0x05, sp)
      008CBF A1 06            [ 1]  757 	cp	a, #0x06
      008CC1 27 27            [ 1]  758 	jreq	00112$
      008CC3 7B 05            [ 1]  759 	ld	a, (0x05, sp)
      008CC5 A1 07            [ 1]  760 	cp	a, #0x07
      008CC7 27 21            [ 1]  761 	jreq	00112$
      008CC9 7B 05            [ 1]  762 	ld	a, (0x05, sp)
      008CCB A1 08            [ 1]  763 	cp	a, #0x08
      008CCD 27 1B            [ 1]  764 	jreq	00112$
      008CCF 7B 05            [ 1]  765 	ld	a, (0x05, sp)
      008CD1 A1 0C            [ 1]  766 	cp	a, #0x0c
      008CD3 27 15            [ 1]  767 	jreq	00112$
      008CD5 7B 05            [ 1]  768 	ld	a, (0x05, sp)
      008CD7 A1 09            [ 1]  769 	cp	a, #0x09
      008CD9 27 0F            [ 1]  770 	jreq	00112$
      008CDB 4B 22            [ 1]  771 	push	#0x22
      008CDD 4B 01            [ 1]  772 	push	#0x01
      008CDF 5F               [ 1]  773 	clrw	x
      008CE0 89               [ 2]  774 	pushw	x
      008CE1 4B 8C            [ 1]  775 	push	#<(___str_0+0)
      008CE3 4B 80            [ 1]  776 	push	#((___str_0+0) >> 8)
      008CE5 CD 00 00         [ 4]  777 	call	_assert_failed
      008CE8 5B 06            [ 2]  778 	addw	sp, #6
      008CEA                        779 00112$:
                                    780 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 291: assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
      008CEA 0D 06            [ 1]  781 	tnz	(0x06, sp)
      008CEC 27 15            [ 1]  782 	jreq	00144$
      008CEE 7B 06            [ 1]  783 	ld	a, (0x06, sp)
      008CF0 A1 08            [ 1]  784 	cp	a, #0x08
      008CF2 27 0F            [ 1]  785 	jreq	00144$
      008CF4 4B 23            [ 1]  786 	push	#0x23
      008CF6 4B 01            [ 1]  787 	push	#0x01
      008CF8 5F               [ 1]  788 	clrw	x
      008CF9 89               [ 2]  789 	pushw	x
      008CFA 4B 8C            [ 1]  790 	push	#<(___str_0+0)
      008CFC 4B 80            [ 1]  791 	push	#((___str_0+0) >> 8)
      008CFE CD 00 00         [ 4]  792 	call	_assert_failed
      008D01 5B 06            [ 2]  793 	addw	sp, #6
      008D03                        794 00144$:
                                    795 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 294: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
      008D03 72 17 54 02      [ 1]  796 	bres	21506, #3
                                    797 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 296: ADC1->CR2 |= (uint8_t)(ADC1_Align);
      008D07 C6 54 02         [ 1]  798 	ld	a, 0x5402
      008D0A 1A 06            [ 1]  799 	or	a, (0x06, sp)
      008D0C C7 54 02         [ 1]  800 	ld	0x5402, a
                                    801 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
      008D0F C6 54 01         [ 1]  802 	ld	a, 0x5401
      008D12 97               [ 1]  803 	ld	xl, a
                                    804 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 298: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
      008D13 7B 01            [ 1]  805 	ld	a, (0x01, sp)
      008D15 27 08            [ 1]  806 	jreq	00102$
                                    807 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
      008D17 9F               [ 1]  808 	ld	a, xl
      008D18 AA 02            [ 1]  809 	or	a, #0x02
      008D1A C7 54 01         [ 1]  810 	ld	0x5401, a
      008D1D 20 06            [ 2]  811 	jra	00103$
      008D1F                        812 00102$:
                                    813 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 306: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
      008D1F 9F               [ 1]  814 	ld	a, xl
      008D20 A4 FD            [ 1]  815 	and	a, #0xfd
      008D22 C7 54 01         [ 1]  816 	ld	0x5401, a
      008D25                        817 00103$:
                                    818 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 310: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
      008D25 C6 54 00         [ 1]  819 	ld	a, 0x5400
      008D28 A4 F0            [ 1]  820 	and	a, #0xf0
      008D2A C7 54 00         [ 1]  821 	ld	0x5400, a
                                    822 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 312: ADC1->CSR |= (uint8_t)(ADC1_Channel);
      008D2D C6 54 00         [ 1]  823 	ld	a, 0x5400
      008D30 1A 05            [ 1]  824 	or	a, (0x05, sp)
      008D32 C7 54 00         [ 1]  825 	ld	0x5400, a
                                    826 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 313: }
      008D35 84               [ 1]  827 	pop	a
      008D36 81               [ 4]  828 	ret
                                    829 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 325: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
                                    830 ;	-----------------------------------------
                                    831 ;	 function ADC1_ExternalTriggerConfig
                                    832 ;	-----------------------------------------
      008D37                        833 _ADC1_ExternalTriggerConfig:
                                    834 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 328: assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
      008D37 0D 03            [ 1]  835 	tnz	(0x03, sp)
      008D39 27 15            [ 1]  836 	jreq	00107$
      008D3B 7B 03            [ 1]  837 	ld	a, (0x03, sp)
      008D3D A1 10            [ 1]  838 	cp	a, #0x10
      008D3F 27 0F            [ 1]  839 	jreq	00107$
      008D41 4B 48            [ 1]  840 	push	#0x48
      008D43 4B 01            [ 1]  841 	push	#0x01
      008D45 5F               [ 1]  842 	clrw	x
      008D46 89               [ 2]  843 	pushw	x
      008D47 4B 8C            [ 1]  844 	push	#<(___str_0+0)
      008D49 4B 80            [ 1]  845 	push	#((___str_0+0) >> 8)
      008D4B CD 00 00         [ 4]  846 	call	_assert_failed
      008D4E 5B 06            [ 2]  847 	addw	sp, #6
      008D50                        848 00107$:
                                    849 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 329: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D50 0D 04            [ 1]  850 	tnz	(0x04, sp)
      008D52 27 14            [ 1]  851 	jreq	00112$
      008D54 7B 04            [ 1]  852 	ld	a, (0x04, sp)
      008D56 4A               [ 1]  853 	dec	a
      008D57 27 0F            [ 1]  854 	jreq	00112$
      008D59 4B 49            [ 1]  855 	push	#0x49
      008D5B 4B 01            [ 1]  856 	push	#0x01
      008D5D 5F               [ 1]  857 	clrw	x
      008D5E 89               [ 2]  858 	pushw	x
      008D5F 4B 8C            [ 1]  859 	push	#<(___str_0+0)
      008D61 4B 80            [ 1]  860 	push	#((___str_0+0) >> 8)
      008D63 CD 00 00         [ 4]  861 	call	_assert_failed
      008D66 5B 06            [ 2]  862 	addw	sp, #6
      008D68                        863 00112$:
                                    864 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 332: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
      008D68 C6 54 02         [ 1]  865 	ld	a, 0x5402
      008D6B A4 CF            [ 1]  866 	and	a, #0xcf
      008D6D C7 54 02         [ 1]  867 	ld	0x5402, a
      008D70 C6 54 02         [ 1]  868 	ld	a, 0x5402
                                    869 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 334: if (NewState != DISABLE)
      008D73 0D 04            [ 1]  870 	tnz	(0x04, sp)
      008D75 27 07            [ 1]  871 	jreq	00102$
                                    872 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 337: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
      008D77 AA 40            [ 1]  873 	or	a, #0x40
      008D79 C7 54 02         [ 1]  874 	ld	0x5402, a
      008D7C 20 05            [ 2]  875 	jra	00103$
      008D7E                        876 00102$:
                                    877 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 342: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
      008D7E A4 BF            [ 1]  878 	and	a, #0xbf
      008D80 C7 54 02         [ 1]  879 	ld	0x5402, a
      008D83                        880 00103$:
                                    881 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 346: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
      008D83 C6 54 02         [ 1]  882 	ld	a, 0x5402
      008D86 1A 03            [ 1]  883 	or	a, (0x03, sp)
      008D88 C7 54 02         [ 1]  884 	ld	0x5402, a
                                    885 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 347: }
      008D8B 81               [ 4]  886 	ret
                                    887 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 358: void ADC1_StartConversion(void)
                                    888 ;	-----------------------------------------
                                    889 ;	 function ADC1_StartConversion
                                    890 ;	-----------------------------------------
      008D8C                        891 _ADC1_StartConversion:
                                    892 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 360: ADC1->CR1 |= ADC1_CR1_ADON;
      008D8C 72 10 54 01      [ 1]  893 	bset	21505, #0
                                    894 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 361: }
      008D90 81               [ 4]  895 	ret
                                    896 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 370: uint16_t ADC1_GetConversionValue(void)
                                    897 ;	-----------------------------------------
                                    898 ;	 function ADC1_GetConversionValue
                                    899 ;	-----------------------------------------
      008D91                        900 _ADC1_GetConversionValue:
      008D91 52 04            [ 2]  901 	sub	sp, #4
                                    902 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 375: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      008D93 C6 54 02         [ 1]  903 	ld	a, 0x5402
      008D96 A5 08            [ 1]  904 	bcp	a, #0x08
      008D98 27 15            [ 1]  905 	jreq	00102$
                                    906 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 378: templ = ADC1->DRL;
      008D9A C6 54 05         [ 1]  907 	ld	a, 0x5405
      008D9D 97               [ 1]  908 	ld	xl, a
                                    909 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 380: temph = ADC1->DRH;
      008D9E C6 54 04         [ 1]  910 	ld	a, 0x5404
                                    911 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 382: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      008DA1 0F 02            [ 1]  912 	clr	(0x02, sp)
      008DA3 0F 03            [ 1]  913 	clr	(0x03, sp)
      008DA5 1A 03            [ 1]  914 	or	a, (0x03, sp)
      008DA7 01               [ 1]  915 	rrwa	x
      008DA8 1A 02            [ 1]  916 	or	a, (0x02, sp)
      008DAA 97               [ 1]  917 	ld	xl, a
      008DAB 1F 03            [ 2]  918 	ldw	(0x03, sp), x
      008DAD 20 1D            [ 2]  919 	jra	00103$
      008DAF                        920 00102$:
                                    921 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 387: temph = ADC1->DRH;
      008DAF C6 54 04         [ 1]  922 	ld	a, 0x5404
      008DB2 5F               [ 1]  923 	clrw	x
      008DB3 97               [ 1]  924 	ld	xl, a
      008DB4 51               [ 1]  925 	exgw	x, y
                                    926 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 389: templ = ADC1->DRL;
      008DB5 C6 54 05         [ 1]  927 	ld	a, 0x5405
                                    928 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 391: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
      008DB8 5F               [ 1]  929 	clrw	x
      008DB9 97               [ 1]  930 	ld	xl, a
      008DBA 58               [ 2]  931 	sllw	x
      008DBB 58               [ 2]  932 	sllw	x
      008DBC 58               [ 2]  933 	sllw	x
      008DBD 58               [ 2]  934 	sllw	x
      008DBE 58               [ 2]  935 	sllw	x
      008DBF 58               [ 2]  936 	sllw	x
      008DC0 1F 03            [ 2]  937 	ldw	(0x03, sp), x
      008DC2 7B 04            [ 1]  938 	ld	a, (0x04, sp)
      008DC4 97               [ 1]  939 	ld	xl, a
      008DC5 90 9F            [ 1]  940 	ld	a, yl
      008DC7 1A 03            [ 1]  941 	or	a, (0x03, sp)
      008DC9 95               [ 1]  942 	ld	xh, a
      008DCA 1F 03            [ 2]  943 	ldw	(0x03, sp), x
      008DCC                        944 00103$:
                                    945 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 394: return ((uint16_t)temph);
      008DCC 1E 03            [ 2]  946 	ldw	x, (0x03, sp)
                                    947 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 395: }
      008DCE 5B 04            [ 2]  948 	addw	sp, #4
      008DD0 81               [ 4]  949 	ret
                                    950 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 405: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
                                    951 ;	-----------------------------------------
                                    952 ;	 function ADC1_AWDChannelConfig
                                    953 ;	-----------------------------------------
      008DD1                        954 _ADC1_AWDChannelConfig:
      008DD1 88               [ 1]  955 	push	a
                                    956 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 408: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DD2 0D 05            [ 1]  957 	tnz	(0x05, sp)
      008DD4 27 14            [ 1]  958 	jreq	00113$
      008DD6 7B 05            [ 1]  959 	ld	a, (0x05, sp)
      008DD8 4A               [ 1]  960 	dec	a
      008DD9 27 0F            [ 1]  961 	jreq	00113$
      008DDB 4B 98            [ 1]  962 	push	#0x98
      008DDD 4B 01            [ 1]  963 	push	#0x01
      008DDF 5F               [ 1]  964 	clrw	x
      008DE0 89               [ 2]  965 	pushw	x
      008DE1 4B 8C            [ 1]  966 	push	#<(___str_0+0)
      008DE3 4B 80            [ 1]  967 	push	#((___str_0+0) >> 8)
      008DE5 CD 00 00         [ 4]  968 	call	_assert_failed
      008DE8 5B 06            [ 2]  969 	addw	sp, #6
      008DEA                        970 00113$:
                                    971 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 409: assert_param(IS_ADC1_CHANNEL_OK(Channel));
      008DEA 0D 04            [ 1]  972 	tnz	(0x04, sp)
      008DEC 27 4A            [ 1]  973 	jreq	00118$
      008DEE 7B 04            [ 1]  974 	ld	a, (0x04, sp)
      008DF0 4A               [ 1]  975 	dec	a
      008DF1 27 45            [ 1]  976 	jreq	00118$
      008DF3 7B 04            [ 1]  977 	ld	a, (0x04, sp)
      008DF5 A1 02            [ 1]  978 	cp	a, #0x02
      008DF7 27 3F            [ 1]  979 	jreq	00118$
      008DF9 7B 04            [ 1]  980 	ld	a, (0x04, sp)
      008DFB A1 03            [ 1]  981 	cp	a, #0x03
      008DFD 27 39            [ 1]  982 	jreq	00118$
      008DFF 7B 04            [ 1]  983 	ld	a, (0x04, sp)
      008E01 A1 04            [ 1]  984 	cp	a, #0x04
      008E03 27 33            [ 1]  985 	jreq	00118$
      008E05 7B 04            [ 1]  986 	ld	a, (0x04, sp)
      008E07 A1 05            [ 1]  987 	cp	a, #0x05
      008E09 27 2D            [ 1]  988 	jreq	00118$
      008E0B 7B 04            [ 1]  989 	ld	a, (0x04, sp)
      008E0D A1 06            [ 1]  990 	cp	a, #0x06
      008E0F 27 27            [ 1]  991 	jreq	00118$
      008E11 7B 04            [ 1]  992 	ld	a, (0x04, sp)
      008E13 A1 07            [ 1]  993 	cp	a, #0x07
      008E15 27 21            [ 1]  994 	jreq	00118$
      008E17 7B 04            [ 1]  995 	ld	a, (0x04, sp)
      008E19 A1 08            [ 1]  996 	cp	a, #0x08
      008E1B 27 1B            [ 1]  997 	jreq	00118$
      008E1D 7B 04            [ 1]  998 	ld	a, (0x04, sp)
      008E1F A1 0C            [ 1]  999 	cp	a, #0x0c
      008E21 27 15            [ 1] 1000 	jreq	00118$
      008E23 7B 04            [ 1] 1001 	ld	a, (0x04, sp)
      008E25 A1 09            [ 1] 1002 	cp	a, #0x09
      008E27 27 0F            [ 1] 1003 	jreq	00118$
      008E29 4B 99            [ 1] 1004 	push	#0x99
      008E2B 4B 01            [ 1] 1005 	push	#0x01
      008E2D 5F               [ 1] 1006 	clrw	x
      008E2E 89               [ 2] 1007 	pushw	x
      008E2F 4B 8C            [ 1] 1008 	push	#<(___str_0+0)
      008E31 4B 80            [ 1] 1009 	push	#((___str_0+0) >> 8)
      008E33 CD 00 00         [ 4] 1010 	call	_assert_failed
      008E36 5B 06            [ 2] 1011 	addw	sp, #6
      008E38                       1012 00118$:
                                   1013 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 411: if (Channel < (uint8_t)8)
      008E38 7B 04            [ 1] 1014 	ld	a, (0x04, sp)
      008E3A A1 08            [ 1] 1015 	cp	a, #0x08
      008E3C 24 25            [ 1] 1016 	jrnc	00108$
                                   1017 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
      008E3E C6 54 0F         [ 1] 1018 	ld	a, 0x540f
      008E41 6B 01            [ 1] 1019 	ld	(0x01, sp), a
      008E43 A6 01            [ 1] 1020 	ld	a, #0x01
      008E45 88               [ 1] 1021 	push	a
      008E46 7B 05            [ 1] 1022 	ld	a, (0x05, sp)
      008E48 27 05            [ 1] 1023 	jreq	00266$
      008E4A                       1024 00265$:
      008E4A 08 01            [ 1] 1025 	sll	(1, sp)
      008E4C 4A               [ 1] 1026 	dec	a
      008E4D 26 FB            [ 1] 1027 	jrne	00265$
      008E4F                       1028 00266$:
      008E4F 84               [ 1] 1029 	pop	a
                                   1030 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 413: if (NewState != DISABLE)
      008E50 0D 05            [ 1] 1031 	tnz	(0x05, sp)
      008E52 27 07            [ 1] 1032 	jreq	00102$
                                   1033 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
      008E54 1A 01            [ 1] 1034 	or	a, (0x01, sp)
      008E56 C7 54 0F         [ 1] 1035 	ld	0x540f, a
      008E59 20 30            [ 2] 1036 	jra	00110$
      008E5B                       1037 00102$:
                                   1038 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 419: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
      008E5B 43               [ 1] 1039 	cpl	a
      008E5C 14 01            [ 1] 1040 	and	a, (0x01, sp)
      008E5E C7 54 0F         [ 1] 1041 	ld	0x540f, a
      008E61 20 28            [ 2] 1042 	jra	00110$
      008E63                       1043 00108$:
                                   1044 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
      008E63 C6 54 0E         [ 1] 1045 	ld	a, 0x540e
      008E66 6B 01            [ 1] 1046 	ld	(0x01, sp), a
      008E68 7B 04            [ 1] 1047 	ld	a, (0x04, sp)
      008E6A A0 08            [ 1] 1048 	sub	a, #0x08
      008E6C 97               [ 1] 1049 	ld	xl, a
      008E6D A6 01            [ 1] 1050 	ld	a, #0x01
      008E6F 88               [ 1] 1051 	push	a
      008E70 9F               [ 1] 1052 	ld	a, xl
      008E71 4D               [ 1] 1053 	tnz	a
      008E72 27 05            [ 1] 1054 	jreq	00269$
      008E74                       1055 00268$:
      008E74 08 01            [ 1] 1056 	sll	(1, sp)
      008E76 4A               [ 1] 1057 	dec	a
      008E77 26 FB            [ 1] 1058 	jrne	00268$
      008E79                       1059 00269$:
      008E79 84               [ 1] 1060 	pop	a
                                   1061 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 424: if (NewState != DISABLE)
      008E7A 0D 05            [ 1] 1062 	tnz	(0x05, sp)
      008E7C 27 07            [ 1] 1063 	jreq	00105$
                                   1064 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
      008E7E 1A 01            [ 1] 1065 	or	a, (0x01, sp)
      008E80 C7 54 0E         [ 1] 1066 	ld	0x540e, a
      008E83 20 06            [ 2] 1067 	jra	00110$
      008E85                       1068 00105$:
                                   1069 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 430: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
      008E85 43               [ 1] 1070 	cpl	a
      008E86 14 01            [ 1] 1071 	and	a, (0x01, sp)
      008E88 C7 54 0E         [ 1] 1072 	ld	0x540e, a
      008E8B                       1073 00110$:
                                   1074 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 433: }
      008E8B 84               [ 1] 1075 	pop	a
      008E8C 81               [ 4] 1076 	ret
                                   1077 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 441: void ADC1_SetHighThreshold(uint16_t Threshold)
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function ADC1_SetHighThreshold
                                   1080 ;	-----------------------------------------
      008E8D                       1081 _ADC1_SetHighThreshold:
                                   1082 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 443: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
      008E8D 1E 03            [ 2] 1083 	ldw	x, (0x03, sp)
      008E8F 54               [ 2] 1084 	srlw	x
      008E90 54               [ 2] 1085 	srlw	x
      008E91 9F               [ 1] 1086 	ld	a, xl
      008E92 C7 54 08         [ 1] 1087 	ld	0x5408, a
                                   1088 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 444: ADC1->HTRL = (uint8_t)Threshold;
      008E95 7B 04            [ 1] 1089 	ld	a, (0x04, sp)
      008E97 C7 54 09         [ 1] 1090 	ld	0x5409, a
                                   1091 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 445: }
      008E9A 81               [ 4] 1092 	ret
                                   1093 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 453: void ADC1_SetLowThreshold(uint16_t Threshold)
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function ADC1_SetLowThreshold
                                   1096 ;	-----------------------------------------
      008E9B                       1097 _ADC1_SetLowThreshold:
                                   1098 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 455: ADC1->LTRL = (uint8_t)Threshold;
      008E9B 7B 04            [ 1] 1099 	ld	a, (0x04, sp)
      008E9D C7 54 0B         [ 1] 1100 	ld	0x540b, a
                                   1101 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 456: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
      008EA0 1E 03            [ 2] 1102 	ldw	x, (0x03, sp)
      008EA2 54               [ 2] 1103 	srlw	x
      008EA3 54               [ 2] 1104 	srlw	x
      008EA4 9F               [ 1] 1105 	ld	a, xl
      008EA5 C7 54 0A         [ 1] 1106 	ld	0x540a, a
                                   1107 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 457: }
      008EA8 81               [ 4] 1108 	ret
                                   1109 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 466: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function ADC1_GetBufferValue
                                   1112 ;	-----------------------------------------
      008EA9                       1113 _ADC1_GetBufferValue:
      008EA9 52 04            [ 2] 1114 	sub	sp, #4
                                   1115 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 472: assert_param(IS_ADC1_BUFFER_OK(Buffer));
      008EAB 7B 07            [ 1] 1116 	ld	a, (0x07, sp)
      008EAD A1 09            [ 1] 1117 	cp	a, #0x09
      008EAF 23 0F            [ 2] 1118 	jrule	00107$
      008EB1 4B D8            [ 1] 1119 	push	#0xd8
      008EB3 4B 01            [ 1] 1120 	push	#0x01
      008EB5 5F               [ 1] 1121 	clrw	x
      008EB6 89               [ 2] 1122 	pushw	x
      008EB7 4B 8C            [ 1] 1123 	push	#<(___str_0+0)
      008EB9 4B 80            [ 1] 1124 	push	#((___str_0+0) >> 8)
      008EBB CD 00 00         [ 4] 1125 	call	_assert_failed
      008EBE 5B 06            [ 2] 1126 	addw	sp, #6
      008EC0                       1127 00107$:
                                   1128 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      008EC0 C6 54 02         [ 1] 1129 	ld	a, 0x5402
      008EC3 6B 04            [ 1] 1130 	ld	(0x04, sp), a
                                   1131 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      008EC5 7B 07            [ 1] 1132 	ld	a, (0x07, sp)
      008EC7 48               [ 1] 1133 	sll	a
      008EC8 5F               [ 1] 1134 	clrw	x
      008EC9 97               [ 1] 1135 	ld	xl, a
      008ECA 90 93            [ 1] 1136 	ldw	y, x
      008ECC 72 A9 53 E1      [ 2] 1137 	addw	y, #0x53e1
                                   1138 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      008ED0 1C 53 E0         [ 2] 1139 	addw	x, #0x53e0
                                   1140 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                   1141 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                   1142 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      008ED3 90 F6            [ 1] 1143 	ld	a, (y)
      008ED5 90 97            [ 1] 1144 	ld	yl, a
                                   1145 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      008ED7 F6               [ 1] 1146 	ld	a, (x)
      008ED8 5F               [ 1] 1147 	clrw	x
                                   1148 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      008ED9 88               [ 1] 1149 	push	a
      008EDA 7B 05            [ 1] 1150 	ld	a, (0x05, sp)
      008EDC A5 08            [ 1] 1151 	bcp	a, #0x08
      008EDE 84               [ 1] 1152 	pop	a
      008EDF 27 10            [ 1] 1153 	jreq	00102$
                                   1154 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                   1155 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                   1156 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 481: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      008EE1 0F 02            [ 1] 1157 	clr	(0x02, sp)
      008EE3 0F 03            [ 1] 1158 	clr	(0x03, sp)
      008EE5 1A 03            [ 1] 1159 	or	a, (0x03, sp)
      008EE7 95               [ 1] 1160 	ld	xh, a
      008EE8 90 9F            [ 1] 1161 	ld	a, yl
      008EEA 1A 02            [ 1] 1162 	or	a, (0x02, sp)
      008EEC 97               [ 1] 1163 	ld	xl, a
      008EED 1F 03            [ 2] 1164 	ldw	(0x03, sp), x
      008EEF 20 19            [ 2] 1165 	jra	00103$
      008EF1                       1166 00102$:
                                   1167 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 486: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      008EF1 90 95            [ 1] 1168 	ld	yh, a
      008EF3 9E               [ 1] 1169 	ld	a, xh
                                   1170 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 488: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      008EF4 93               [ 1] 1171 	ldw	x, y
                                   1172 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 490: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
      008EF5 02               [ 1] 1173 	rlwa	x
      008EF6 4F               [ 1] 1174 	clr	a
      008EF7 01               [ 1] 1175 	rrwa	x
      008EF8 58               [ 2] 1176 	sllw	x
      008EF9 58               [ 2] 1177 	sllw	x
      008EFA 58               [ 2] 1178 	sllw	x
      008EFB 58               [ 2] 1179 	sllw	x
      008EFC 58               [ 2] 1180 	sllw	x
      008EFD 58               [ 2] 1181 	sllw	x
      008EFE 1F 01            [ 2] 1182 	ldw	(0x01, sp), x
      008F00 7B 02            [ 1] 1183 	ld	a, (0x02, sp)
      008F02 6B 04            [ 1] 1184 	ld	(0x04, sp), a
      008F04 90 9E            [ 1] 1185 	ld	a, yh
      008F06 1A 01            [ 1] 1186 	or	a, (0x01, sp)
      008F08 6B 03            [ 1] 1187 	ld	(0x03, sp), a
      008F0A                       1188 00103$:
                                   1189 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 493: return ((uint16_t)temph);
      008F0A 1E 03            [ 2] 1190 	ldw	x, (0x03, sp)
                                   1191 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 494: }
      008F0C 5B 04            [ 2] 1192 	addw	sp, #4
      008F0E 81               [ 4] 1193 	ret
                                   1194 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 502: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function ADC1_GetAWDChannelStatus
                                   1197 ;	-----------------------------------------
      008F0F                       1198 _ADC1_GetAWDChannelStatus:
      008F0F 88               [ 1] 1199 	push	a
                                   1200 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 507: assert_param(IS_ADC1_CHANNEL_OK(Channel));
      008F10 0D 04            [ 1] 1201 	tnz	(0x04, sp)
      008F12 27 4A            [ 1] 1202 	jreq	00107$
      008F14 7B 04            [ 1] 1203 	ld	a, (0x04, sp)
      008F16 4A               [ 1] 1204 	dec	a
      008F17 27 45            [ 1] 1205 	jreq	00107$
      008F19 7B 04            [ 1] 1206 	ld	a, (0x04, sp)
      008F1B A1 02            [ 1] 1207 	cp	a, #0x02
      008F1D 27 3F            [ 1] 1208 	jreq	00107$
      008F1F 7B 04            [ 1] 1209 	ld	a, (0x04, sp)
      008F21 A1 03            [ 1] 1210 	cp	a, #0x03
      008F23 27 39            [ 1] 1211 	jreq	00107$
      008F25 7B 04            [ 1] 1212 	ld	a, (0x04, sp)
      008F27 A1 04            [ 1] 1213 	cp	a, #0x04
      008F29 27 33            [ 1] 1214 	jreq	00107$
      008F2B 7B 04            [ 1] 1215 	ld	a, (0x04, sp)
      008F2D A1 05            [ 1] 1216 	cp	a, #0x05
      008F2F 27 2D            [ 1] 1217 	jreq	00107$
      008F31 7B 04            [ 1] 1218 	ld	a, (0x04, sp)
      008F33 A1 06            [ 1] 1219 	cp	a, #0x06
      008F35 27 27            [ 1] 1220 	jreq	00107$
      008F37 7B 04            [ 1] 1221 	ld	a, (0x04, sp)
      008F39 A1 07            [ 1] 1222 	cp	a, #0x07
      008F3B 27 21            [ 1] 1223 	jreq	00107$
      008F3D 7B 04            [ 1] 1224 	ld	a, (0x04, sp)
      008F3F A1 08            [ 1] 1225 	cp	a, #0x08
      008F41 27 1B            [ 1] 1226 	jreq	00107$
      008F43 7B 04            [ 1] 1227 	ld	a, (0x04, sp)
      008F45 A1 0C            [ 1] 1228 	cp	a, #0x0c
      008F47 27 15            [ 1] 1229 	jreq	00107$
      008F49 7B 04            [ 1] 1230 	ld	a, (0x04, sp)
      008F4B A1 09            [ 1] 1231 	cp	a, #0x09
      008F4D 27 0F            [ 1] 1232 	jreq	00107$
      008F4F 4B FB            [ 1] 1233 	push	#0xfb
      008F51 4B 01            [ 1] 1234 	push	#0x01
      008F53 5F               [ 1] 1235 	clrw	x
      008F54 89               [ 2] 1236 	pushw	x
      008F55 4B 8C            [ 1] 1237 	push	#<(___str_0+0)
      008F57 4B 80            [ 1] 1238 	push	#((___str_0+0) >> 8)
      008F59 CD 00 00         [ 4] 1239 	call	_assert_failed
      008F5C 5B 06            [ 2] 1240 	addw	sp, #6
      008F5E                       1241 00107$:
                                   1242 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 509: if (Channel < (uint8_t)8)
      008F5E 7B 04            [ 1] 1243 	ld	a, (0x04, sp)
      008F60 A1 08            [ 1] 1244 	cp	a, #0x08
      008F62 24 16            [ 1] 1245 	jrnc	00102$
                                   1246 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 511: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
      008F64 C6 54 0D         [ 1] 1247 	ld	a, 0x540d
      008F67 88               [ 1] 1248 	push	a
      008F68 A6 01            [ 1] 1249 	ld	a, #0x01
      008F6A 6B 02            [ 1] 1250 	ld	(0x02, sp), a
      008F6C 7B 05            [ 1] 1251 	ld	a, (0x05, sp)
      008F6E 27 05            [ 1] 1252 	jreq	00231$
      008F70                       1253 00230$:
      008F70 08 02            [ 1] 1254 	sll	(0x02, sp)
      008F72 4A               [ 1] 1255 	dec	a
      008F73 26 FB            [ 1] 1256 	jrne	00230$
      008F75                       1257 00231$:
      008F75 84               [ 1] 1258 	pop	a
      008F76 14 01            [ 1] 1259 	and	a, (0x01, sp)
      008F78 20 19            [ 2] 1260 	jra	00103$
      008F7A                       1261 00102$:
                                   1262 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 515: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
      008F7A C6 54 0C         [ 1] 1263 	ld	a, 0x540c
      008F7D 97               [ 1] 1264 	ld	xl, a
      008F7E 7B 04            [ 1] 1265 	ld	a, (0x04, sp)
      008F80 A0 08            [ 1] 1266 	sub	a, #0x08
      008F82 88               [ 1] 1267 	push	a
      008F83 A6 01            [ 1] 1268 	ld	a, #0x01
      008F85 6B 02            [ 1] 1269 	ld	(0x02, sp), a
      008F87 84               [ 1] 1270 	pop	a
      008F88 4D               [ 1] 1271 	tnz	a
      008F89 27 05            [ 1] 1272 	jreq	00233$
      008F8B                       1273 00232$:
      008F8B 08 01            [ 1] 1274 	sll	(0x01, sp)
      008F8D 4A               [ 1] 1275 	dec	a
      008F8E 26 FB            [ 1] 1276 	jrne	00232$
      008F90                       1277 00233$:
      008F90 9F               [ 1] 1278 	ld	a, xl
      008F91 14 01            [ 1] 1279 	and	a, (0x01, sp)
      008F93                       1280 00103$:
                                   1281 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 518: return ((FlagStatus)status);
                                   1282 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 519: }
      008F93 5B 01            [ 2] 1283 	addw	sp, #1
      008F95 81               [ 4] 1284 	ret
                                   1285 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 527: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
                                   1286 ;	-----------------------------------------
                                   1287 ;	 function ADC1_GetFlagStatus
                                   1288 ;	-----------------------------------------
      008F96                       1289 _ADC1_GetFlagStatus:
      008F96 89               [ 2] 1290 	pushw	x
                                   1291 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 533: assert_param(IS_ADC1_FLAG_OK(Flag));
      008F97 7B 05            [ 1] 1292 	ld	a, (0x05, sp)
      008F99 A1 80            [ 1] 1293 	cp	a, #0x80
      008F9B 27 57            [ 1] 1294 	jreq	00113$
      008F9D 7B 05            [ 1] 1295 	ld	a, (0x05, sp)
      008F9F A1 41            [ 1] 1296 	cp	a, #0x41
      008FA1 27 51            [ 1] 1297 	jreq	00113$
      008FA3 7B 05            [ 1] 1298 	ld	a, (0x05, sp)
      008FA5 A1 40            [ 1] 1299 	cp	a, #0x40
      008FA7 27 4B            [ 1] 1300 	jreq	00113$
      008FA9 7B 05            [ 1] 1301 	ld	a, (0x05, sp)
      008FAB A1 10            [ 1] 1302 	cp	a, #0x10
      008FAD 27 45            [ 1] 1303 	jreq	00113$
      008FAF 7B 05            [ 1] 1304 	ld	a, (0x05, sp)
      008FB1 A1 11            [ 1] 1305 	cp	a, #0x11
      008FB3 27 3F            [ 1] 1306 	jreq	00113$
      008FB5 7B 05            [ 1] 1307 	ld	a, (0x05, sp)
      008FB7 A1 12            [ 1] 1308 	cp	a, #0x12
      008FB9 27 39            [ 1] 1309 	jreq	00113$
      008FBB 7B 05            [ 1] 1310 	ld	a, (0x05, sp)
      008FBD A1 13            [ 1] 1311 	cp	a, #0x13
      008FBF 27 33            [ 1] 1312 	jreq	00113$
      008FC1 7B 05            [ 1] 1313 	ld	a, (0x05, sp)
      008FC3 A1 14            [ 1] 1314 	cp	a, #0x14
      008FC5 27 2D            [ 1] 1315 	jreq	00113$
      008FC7 7B 05            [ 1] 1316 	ld	a, (0x05, sp)
      008FC9 A1 15            [ 1] 1317 	cp	a, #0x15
      008FCB 27 27            [ 1] 1318 	jreq	00113$
      008FCD 7B 05            [ 1] 1319 	ld	a, (0x05, sp)
      008FCF A1 16            [ 1] 1320 	cp	a, #0x16
      008FD1 27 21            [ 1] 1321 	jreq	00113$
      008FD3 7B 05            [ 1] 1322 	ld	a, (0x05, sp)
      008FD5 A1 17            [ 1] 1323 	cp	a, #0x17
      008FD7 27 1B            [ 1] 1324 	jreq	00113$
      008FD9 7B 05            [ 1] 1325 	ld	a, (0x05, sp)
      008FDB A1 18            [ 1] 1326 	cp	a, #0x18
      008FDD 27 15            [ 1] 1327 	jreq	00113$
      008FDF 7B 05            [ 1] 1328 	ld	a, (0x05, sp)
      008FE1 A1 19            [ 1] 1329 	cp	a, #0x19
      008FE3 27 0F            [ 1] 1330 	jreq	00113$
      008FE5 4B 15            [ 1] 1331 	push	#0x15
      008FE7 4B 02            [ 1] 1332 	push	#0x02
      008FE9 5F               [ 1] 1333 	clrw	x
      008FEA 89               [ 2] 1334 	pushw	x
      008FEB 4B 8C            [ 1] 1335 	push	#<(___str_0+0)
      008FED 4B 80            [ 1] 1336 	push	#((___str_0+0) >> 8)
      008FEF CD 00 00         [ 4] 1337 	call	_assert_failed
      008FF2 5B 06            [ 2] 1338 	addw	sp, #6
      008FF4                       1339 00113$:
                                   1340 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 535: if ((Flag & 0x0F) == 0x01)
      008FF4 7B 05            [ 1] 1341 	ld	a, (0x05, sp)
      008FF6 0F 01            [ 1] 1342 	clr	(0x01, sp)
      008FF8 88               [ 1] 1343 	push	a
      008FF9 A4 0F            [ 1] 1344 	and	a, #0x0f
      008FFB 97               [ 1] 1345 	ld	xl, a
      008FFC 4F               [ 1] 1346 	clr	a
      008FFD 95               [ 1] 1347 	ld	xh, a
      008FFE 84               [ 1] 1348 	pop	a
      008FFF 5A               [ 2] 1349 	decw	x
      009000 26 07            [ 1] 1350 	jrne	00108$
                                   1351 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 538: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
      009002 C6 54 03         [ 1] 1352 	ld	a, 0x5403
      009005 A4 40            [ 1] 1353 	and	a, #0x40
      009007 20 47            [ 2] 1354 	jra	00109$
      009009                       1355 00108$:
                                   1356 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 540: else if ((Flag & 0xF0) == 0x10)
      009009 A4 F0            [ 1] 1357 	and	a, #0xf0
      00900B 97               [ 1] 1358 	ld	xl, a
      00900C 4F               [ 1] 1359 	clr	a
      00900D 95               [ 1] 1360 	ld	xh, a
      00900E A3 00 10         [ 2] 1361 	cpw	x, #0x0010
      009011 26 38            [ 1] 1362 	jrne	00105$
                                   1363 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 543: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      009013 7B 05            [ 1] 1364 	ld	a, (0x05, sp)
      009015 A4 0F            [ 1] 1365 	and	a, #0x0f
                                   1366 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 544: if (temp < 8)
      009017 97               [ 1] 1367 	ld	xl, a
      009018 A1 08            [ 1] 1368 	cp	a, #0x08
      00901A 24 16            [ 1] 1369 	jrnc	00102$
                                   1370 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 546: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      00901C C6 54 0D         [ 1] 1371 	ld	a, 0x540d
      00901F 6B 02            [ 1] 1372 	ld	(0x02, sp), a
      009021 A6 01            [ 1] 1373 	ld	a, #0x01
      009023 88               [ 1] 1374 	push	a
      009024 9F               [ 1] 1375 	ld	a, xl
      009025 4D               [ 1] 1376 	tnz	a
      009026 27 05            [ 1] 1377 	jreq	00277$
      009028                       1378 00276$:
      009028 08 01            [ 1] 1379 	sll	(1, sp)
      00902A 4A               [ 1] 1380 	dec	a
      00902B 26 FB            [ 1] 1381 	jrne	00276$
      00902D                       1382 00277$:
      00902D 84               [ 1] 1383 	pop	a
      00902E 14 02            [ 1] 1384 	and	a, (0x02, sp)
      009030 20 1E            [ 2] 1385 	jra	00109$
      009032                       1386 00102$:
                                   1387 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 550: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      009032 C6 54 0C         [ 1] 1388 	ld	a, 0x540c
      009035 6B 02            [ 1] 1389 	ld	(0x02, sp), a
      009037 1D 00 08         [ 2] 1390 	subw	x, #8
      00903A A6 01            [ 1] 1391 	ld	a, #0x01
      00903C 88               [ 1] 1392 	push	a
      00903D 9F               [ 1] 1393 	ld	a, xl
      00903E 4D               [ 1] 1394 	tnz	a
      00903F 27 05            [ 1] 1395 	jreq	00279$
      009041                       1396 00278$:
      009041 08 01            [ 1] 1397 	sll	(1, sp)
      009043 4A               [ 1] 1398 	dec	a
      009044 26 FB            [ 1] 1399 	jrne	00278$
      009046                       1400 00279$:
      009046 84               [ 1] 1401 	pop	a
      009047 14 02            [ 1] 1402 	and	a, (0x02, sp)
      009049 20 05            [ 2] 1403 	jra	00109$
      00904B                       1404 00105$:
                                   1405 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 555: flagstatus = (uint8_t)(ADC1->CSR & Flag);
      00904B C6 54 00         [ 1] 1406 	ld	a, 0x5400
      00904E 14 05            [ 1] 1407 	and	a, (0x05, sp)
      009050                       1408 00109$:
                                   1409 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 557: return ((FlagStatus)flagstatus);
                                   1410 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 559: }
      009050 85               [ 2] 1411 	popw	x
      009051 81               [ 4] 1412 	ret
                                   1413 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 567: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
                                   1414 ;	-----------------------------------------
                                   1415 ;	 function ADC1_ClearFlag
                                   1416 ;	-----------------------------------------
      009052                       1417 _ADC1_ClearFlag:
      009052 89               [ 2] 1418 	pushw	x
                                   1419 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 572: assert_param(IS_ADC1_FLAG_OK(Flag));
      009053 7B 05            [ 1] 1420 	ld	a, (0x05, sp)
      009055 A1 80            [ 1] 1421 	cp	a, #0x80
      009057 27 57            [ 1] 1422 	jreq	00113$
      009059 7B 05            [ 1] 1423 	ld	a, (0x05, sp)
      00905B A1 41            [ 1] 1424 	cp	a, #0x41
      00905D 27 51            [ 1] 1425 	jreq	00113$
      00905F 7B 05            [ 1] 1426 	ld	a, (0x05, sp)
      009061 A1 40            [ 1] 1427 	cp	a, #0x40
      009063 27 4B            [ 1] 1428 	jreq	00113$
      009065 7B 05            [ 1] 1429 	ld	a, (0x05, sp)
      009067 A1 10            [ 1] 1430 	cp	a, #0x10
      009069 27 45            [ 1] 1431 	jreq	00113$
      00906B 7B 05            [ 1] 1432 	ld	a, (0x05, sp)
      00906D A1 11            [ 1] 1433 	cp	a, #0x11
      00906F 27 3F            [ 1] 1434 	jreq	00113$
      009071 7B 05            [ 1] 1435 	ld	a, (0x05, sp)
      009073 A1 12            [ 1] 1436 	cp	a, #0x12
      009075 27 39            [ 1] 1437 	jreq	00113$
      009077 7B 05            [ 1] 1438 	ld	a, (0x05, sp)
      009079 A1 13            [ 1] 1439 	cp	a, #0x13
      00907B 27 33            [ 1] 1440 	jreq	00113$
      00907D 7B 05            [ 1] 1441 	ld	a, (0x05, sp)
      00907F A1 14            [ 1] 1442 	cp	a, #0x14
      009081 27 2D            [ 1] 1443 	jreq	00113$
      009083 7B 05            [ 1] 1444 	ld	a, (0x05, sp)
      009085 A1 15            [ 1] 1445 	cp	a, #0x15
      009087 27 27            [ 1] 1446 	jreq	00113$
      009089 7B 05            [ 1] 1447 	ld	a, (0x05, sp)
      00908B A1 16            [ 1] 1448 	cp	a, #0x16
      00908D 27 21            [ 1] 1449 	jreq	00113$
      00908F 7B 05            [ 1] 1450 	ld	a, (0x05, sp)
      009091 A1 17            [ 1] 1451 	cp	a, #0x17
      009093 27 1B            [ 1] 1452 	jreq	00113$
      009095 7B 05            [ 1] 1453 	ld	a, (0x05, sp)
      009097 A1 18            [ 1] 1454 	cp	a, #0x18
      009099 27 15            [ 1] 1455 	jreq	00113$
      00909B 7B 05            [ 1] 1456 	ld	a, (0x05, sp)
      00909D A1 19            [ 1] 1457 	cp	a, #0x19
      00909F 27 0F            [ 1] 1458 	jreq	00113$
      0090A1 4B 3C            [ 1] 1459 	push	#0x3c
      0090A3 4B 02            [ 1] 1460 	push	#0x02
      0090A5 5F               [ 1] 1461 	clrw	x
      0090A6 89               [ 2] 1462 	pushw	x
      0090A7 4B 8C            [ 1] 1463 	push	#<(___str_0+0)
      0090A9 4B 80            [ 1] 1464 	push	#((___str_0+0) >> 8)
      0090AB CD 00 00         [ 4] 1465 	call	_assert_failed
      0090AE 5B 06            [ 2] 1466 	addw	sp, #6
      0090B0                       1467 00113$:
                                   1468 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 574: if ((Flag & 0x0F) == 0x01)
      0090B0 7B 05            [ 1] 1469 	ld	a, (0x05, sp)
      0090B2 0F 01            [ 1] 1470 	clr	(0x01, sp)
      0090B4 88               [ 1] 1471 	push	a
      0090B5 A4 0F            [ 1] 1472 	and	a, #0x0f
      0090B7 97               [ 1] 1473 	ld	xl, a
      0090B8 4F               [ 1] 1474 	clr	a
      0090B9 95               [ 1] 1475 	ld	xh, a
      0090BA 84               [ 1] 1476 	pop	a
      0090BB 5A               [ 2] 1477 	decw	x
      0090BC 26 06            [ 1] 1478 	jrne	00108$
                                   1479 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 577: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
      0090BE 72 1D 54 03      [ 1] 1480 	bres	21507, #6
      0090C2 20 57            [ 2] 1481 	jra	00110$
      0090C4                       1482 00108$:
                                   1483 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 579: else if ((Flag & 0xF0) == 0x10)
      0090C4 A4 F0            [ 1] 1484 	and	a, #0xf0
      0090C6 97               [ 1] 1485 	ld	xl, a
      0090C7 4F               [ 1] 1486 	clr	a
      0090C8 95               [ 1] 1487 	ld	xh, a
      0090C9 A3 00 10         [ 2] 1488 	cpw	x, #0x0010
      0090CC 26 40            [ 1] 1489 	jrne	00105$
                                   1490 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 582: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      0090CE 7B 05            [ 1] 1491 	ld	a, (0x05, sp)
      0090D0 A4 0F            [ 1] 1492 	and	a, #0x0f
                                   1493 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 583: if (temp < 8)
      0090D2 97               [ 1] 1494 	ld	xl, a
      0090D3 A1 08            [ 1] 1495 	cp	a, #0x08
      0090D5 24 1A            [ 1] 1496 	jrnc	00102$
                                   1497 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 585: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      0090D7 C6 54 0D         [ 1] 1498 	ld	a, 0x540d
      0090DA 6B 02            [ 1] 1499 	ld	(0x02, sp), a
      0090DC A6 01            [ 1] 1500 	ld	a, #0x01
      0090DE 88               [ 1] 1501 	push	a
      0090DF 9F               [ 1] 1502 	ld	a, xl
      0090E0 4D               [ 1] 1503 	tnz	a
      0090E1 27 05            [ 1] 1504 	jreq	00277$
      0090E3                       1505 00276$:
      0090E3 08 01            [ 1] 1506 	sll	(1, sp)
      0090E5 4A               [ 1] 1507 	dec	a
      0090E6 26 FB            [ 1] 1508 	jrne	00276$
      0090E8                       1509 00277$:
      0090E8 84               [ 1] 1510 	pop	a
      0090E9 43               [ 1] 1511 	cpl	a
      0090EA 14 02            [ 1] 1512 	and	a, (0x02, sp)
      0090EC C7 54 0D         [ 1] 1513 	ld	0x540d, a
      0090EF 20 2A            [ 2] 1514 	jra	00110$
      0090F1                       1515 00102$:
                                   1516 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 589: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      0090F1 C6 54 0C         [ 1] 1517 	ld	a, 0x540c
      0090F4 6B 02            [ 1] 1518 	ld	(0x02, sp), a
      0090F6 1D 00 08         [ 2] 1519 	subw	x, #8
      0090F9 A6 01            [ 1] 1520 	ld	a, #0x01
      0090FB 88               [ 1] 1521 	push	a
      0090FC 9F               [ 1] 1522 	ld	a, xl
      0090FD 4D               [ 1] 1523 	tnz	a
      0090FE 27 05            [ 1] 1524 	jreq	00279$
      009100                       1525 00278$:
      009100 08 01            [ 1] 1526 	sll	(1, sp)
      009102 4A               [ 1] 1527 	dec	a
      009103 26 FB            [ 1] 1528 	jrne	00278$
      009105                       1529 00279$:
      009105 84               [ 1] 1530 	pop	a
      009106 43               [ 1] 1531 	cpl	a
      009107 14 02            [ 1] 1532 	and	a, (0x02, sp)
      009109 C7 54 0C         [ 1] 1533 	ld	0x540c, a
      00910C 20 0D            [ 2] 1534 	jra	00110$
      00910E                       1535 00105$:
                                   1536 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 594: ADC1->CSR &= (uint8_t) (~Flag);
      00910E C6 54 00         [ 1] 1537 	ld	a, 0x5400
      009111 6B 02            [ 1] 1538 	ld	(0x02, sp), a
      009113 7B 05            [ 1] 1539 	ld	a, (0x05, sp)
      009115 43               [ 1] 1540 	cpl	a
      009116 14 02            [ 1] 1541 	and	a, (0x02, sp)
      009118 C7 54 00         [ 1] 1542 	ld	0x5400, a
      00911B                       1543 00110$:
                                   1544 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 596: }
      00911B 85               [ 2] 1545 	popw	x
      00911C 81               [ 4] 1546 	ret
                                   1547 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 616: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
                                   1548 ;	-----------------------------------------
                                   1549 ;	 function ADC1_GetITStatus
                                   1550 ;	-----------------------------------------
      00911D                       1551 _ADC1_GetITStatus:
      00911D 88               [ 1] 1552 	push	a
                                   1553 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 622: assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
      00911E 1E 04            [ 2] 1554 	ldw	x, (0x04, sp)
      009120 A3 00 80         [ 2] 1555 	cpw	x, #0x0080
      009123 27 4B            [ 1] 1556 	jreq	00110$
      009125 A3 01 40         [ 2] 1557 	cpw	x, #0x0140
      009128 27 46            [ 1] 1558 	jreq	00110$
      00912A A3 01 10         [ 2] 1559 	cpw	x, #0x0110
      00912D 27 41            [ 1] 1560 	jreq	00110$
      00912F A3 01 11         [ 2] 1561 	cpw	x, #0x0111
      009132 27 3C            [ 1] 1562 	jreq	00110$
      009134 A3 01 12         [ 2] 1563 	cpw	x, #0x0112
      009137 27 37            [ 1] 1564 	jreq	00110$
      009139 A3 01 13         [ 2] 1565 	cpw	x, #0x0113
      00913C 27 32            [ 1] 1566 	jreq	00110$
      00913E A3 01 14         [ 2] 1567 	cpw	x, #0x0114
      009141 27 2D            [ 1] 1568 	jreq	00110$
      009143 A3 01 15         [ 2] 1569 	cpw	x, #0x0115
      009146 27 28            [ 1] 1570 	jreq	00110$
      009148 A3 01 16         [ 2] 1571 	cpw	x, #0x0116
      00914B 27 23            [ 1] 1572 	jreq	00110$
      00914D A3 01 17         [ 2] 1573 	cpw	x, #0x0117
      009150 27 1E            [ 1] 1574 	jreq	00110$
      009152 A3 01 18         [ 2] 1575 	cpw	x, #0x0118
      009155 27 19            [ 1] 1576 	jreq	00110$
      009157 A3 01 1C         [ 2] 1577 	cpw	x, #0x011c
      00915A 27 14            [ 1] 1578 	jreq	00110$
      00915C A3 01 19         [ 2] 1579 	cpw	x, #0x0119
      00915F 27 0F            [ 1] 1580 	jreq	00110$
      009161 4B 6E            [ 1] 1581 	push	#0x6e
      009163 4B 02            [ 1] 1582 	push	#0x02
      009165 5F               [ 1] 1583 	clrw	x
      009166 89               [ 2] 1584 	pushw	x
      009167 4B 8C            [ 1] 1585 	push	#<(___str_0+0)
      009169 4B 80            [ 1] 1586 	push	#((___str_0+0) >> 8)
      00916B CD 00 00         [ 4] 1587 	call	_assert_failed
      00916E 5B 06            [ 2] 1588 	addw	sp, #6
      009170                       1589 00110$:
                                   1590 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 624: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      009170 1E 04            [ 2] 1591 	ldw	x, (0x04, sp)
      009172 90 5F            [ 1] 1592 	clrw	y
      009174 9F               [ 1] 1593 	ld	a, xl
      009175 A4 F0            [ 1] 1594 	and	a, #0xf0
      009177 90 97            [ 1] 1595 	ld	yl, a
      009179 90 A3 00 10      [ 2] 1596 	cpw	y, #0x0010
      00917D 26 37            [ 1] 1597 	jrne	00105$
                                   1598 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 627: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      00917F 9F               [ 1] 1599 	ld	a, xl
      009180 A4 0F            [ 1] 1600 	and	a, #0x0f
                                   1601 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 628: if (temp < 8)
      009182 97               [ 1] 1602 	ld	xl, a
      009183 A1 08            [ 1] 1603 	cp	a, #0x08
      009185 24 16            [ 1] 1604 	jrnc	00102$
                                   1605 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 630: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      009187 C6 54 0D         [ 1] 1606 	ld	a, 0x540d
      00918A 88               [ 1] 1607 	push	a
      00918B A6 01            [ 1] 1608 	ld	a, #0x01
      00918D 6B 02            [ 1] 1609 	ld	(0x02, sp), a
      00918F 9F               [ 1] 1610 	ld	a, xl
      009190 4D               [ 1] 1611 	tnz	a
      009191 27 05            [ 1] 1612 	jreq	00266$
      009193                       1613 00265$:
      009193 08 02            [ 1] 1614 	sll	(0x02, sp)
      009195 4A               [ 1] 1615 	dec	a
      009196 26 FB            [ 1] 1616 	jrne	00265$
      009198                       1617 00266$:
      009198 84               [ 1] 1618 	pop	a
      009199 14 01            [ 1] 1619 	and	a, (0x01, sp)
      00919B 20 20            [ 2] 1620 	jra	00106$
      00919D                       1621 00102$:
                                   1622 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 634: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00919D C6 54 0C         [ 1] 1623 	ld	a, 0x540c
      0091A0 6B 01            [ 1] 1624 	ld	(0x01, sp), a
      0091A2 1D 00 08         [ 2] 1625 	subw	x, #8
      0091A5 A6 01            [ 1] 1626 	ld	a, #0x01
      0091A7 88               [ 1] 1627 	push	a
      0091A8 9F               [ 1] 1628 	ld	a, xl
      0091A9 4D               [ 1] 1629 	tnz	a
      0091AA 27 05            [ 1] 1630 	jreq	00268$
      0091AC                       1631 00267$:
      0091AC 08 01            [ 1] 1632 	sll	(1, sp)
      0091AE 4A               [ 1] 1633 	dec	a
      0091AF 26 FB            [ 1] 1634 	jrne	00267$
      0091B1                       1635 00268$:
      0091B1 84               [ 1] 1636 	pop	a
      0091B2 14 01            [ 1] 1637 	and	a, (0x01, sp)
      0091B4 20 07            [ 2] 1638 	jra	00106$
      0091B6                       1639 00105$:
                                   1640 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 639: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
      0091B6 C6 54 00         [ 1] 1641 	ld	a, 0x5400
      0091B9 89               [ 2] 1642 	pushw	x
      0091BA 14 02            [ 1] 1643 	and	a, (2, sp)
      0091BC 85               [ 2] 1644 	popw	x
      0091BD                       1645 00106$:
                                   1646 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 641: return ((ITStatus)itstatus);
                                   1647 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 642: }
      0091BD 5B 01            [ 2] 1648 	addw	sp, #1
      0091BF 81               [ 4] 1649 	ret
                                   1650 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 662: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
                                   1651 ;	-----------------------------------------
                                   1652 ;	 function ADC1_ClearITPendingBit
                                   1653 ;	-----------------------------------------
      0091C0                       1654 _ADC1_ClearITPendingBit:
      0091C0 88               [ 1] 1655 	push	a
                                   1656 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 667: assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
      0091C1 1E 04            [ 2] 1657 	ldw	x, (0x04, sp)
      0091C3 A3 00 80         [ 2] 1658 	cpw	x, #0x0080
      0091C6 27 4B            [ 1] 1659 	jreq	00110$
      0091C8 A3 01 40         [ 2] 1660 	cpw	x, #0x0140
      0091CB 27 46            [ 1] 1661 	jreq	00110$
      0091CD A3 01 10         [ 2] 1662 	cpw	x, #0x0110
      0091D0 27 41            [ 1] 1663 	jreq	00110$
      0091D2 A3 01 11         [ 2] 1664 	cpw	x, #0x0111
      0091D5 27 3C            [ 1] 1665 	jreq	00110$
      0091D7 A3 01 12         [ 2] 1666 	cpw	x, #0x0112
      0091DA 27 37            [ 1] 1667 	jreq	00110$
      0091DC A3 01 13         [ 2] 1668 	cpw	x, #0x0113
      0091DF 27 32            [ 1] 1669 	jreq	00110$
      0091E1 A3 01 14         [ 2] 1670 	cpw	x, #0x0114
      0091E4 27 2D            [ 1] 1671 	jreq	00110$
      0091E6 A3 01 15         [ 2] 1672 	cpw	x, #0x0115
      0091E9 27 28            [ 1] 1673 	jreq	00110$
      0091EB A3 01 16         [ 2] 1674 	cpw	x, #0x0116
      0091EE 27 23            [ 1] 1675 	jreq	00110$
      0091F0 A3 01 17         [ 2] 1676 	cpw	x, #0x0117
      0091F3 27 1E            [ 1] 1677 	jreq	00110$
      0091F5 A3 01 18         [ 2] 1678 	cpw	x, #0x0118
      0091F8 27 19            [ 1] 1679 	jreq	00110$
      0091FA A3 01 1C         [ 2] 1680 	cpw	x, #0x011c
      0091FD 27 14            [ 1] 1681 	jreq	00110$
      0091FF A3 01 19         [ 2] 1682 	cpw	x, #0x0119
      009202 27 0F            [ 1] 1683 	jreq	00110$
      009204 4B 9B            [ 1] 1684 	push	#0x9b
      009206 4B 02            [ 1] 1685 	push	#0x02
      009208 5F               [ 1] 1686 	clrw	x
      009209 89               [ 2] 1687 	pushw	x
      00920A 4B 8C            [ 1] 1688 	push	#<(___str_0+0)
      00920C 4B 80            [ 1] 1689 	push	#((___str_0+0) >> 8)
      00920E CD 00 00         [ 4] 1690 	call	_assert_failed
      009211 5B 06            [ 2] 1691 	addw	sp, #6
      009213                       1692 00110$:
                                   1693 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 669: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      009213 1E 04            [ 2] 1694 	ldw	x, (0x04, sp)
      009215 90 5F            [ 1] 1695 	clrw	y
      009217 9F               [ 1] 1696 	ld	a, xl
      009218 A4 F0            [ 1] 1697 	and	a, #0xf0
      00921A 90 97            [ 1] 1698 	ld	yl, a
      00921C 90 A3 00 10      [ 2] 1699 	cpw	y, #0x0010
      009220 26 3F            [ 1] 1700 	jrne	00105$
                                   1701 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 672: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      009222 9F               [ 1] 1702 	ld	a, xl
      009223 A4 0F            [ 1] 1703 	and	a, #0x0f
                                   1704 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 673: if (temp < 8)
      009225 97               [ 1] 1705 	ld	xl, a
      009226 A1 08            [ 1] 1706 	cp	a, #0x08
      009228 24 1A            [ 1] 1707 	jrnc	00102$
                                   1708 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 675: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      00922A C6 54 0D         [ 1] 1709 	ld	a, 0x540d
      00922D 6B 01            [ 1] 1710 	ld	(0x01, sp), a
      00922F A6 01            [ 1] 1711 	ld	a, #0x01
      009231 88               [ 1] 1712 	push	a
      009232 9F               [ 1] 1713 	ld	a, xl
      009233 4D               [ 1] 1714 	tnz	a
      009234 27 05            [ 1] 1715 	jreq	00266$
      009236                       1716 00265$:
      009236 08 01            [ 1] 1717 	sll	(1, sp)
      009238 4A               [ 1] 1718 	dec	a
      009239 26 FB            [ 1] 1719 	jrne	00265$
      00923B                       1720 00266$:
      00923B 84               [ 1] 1721 	pop	a
      00923C 43               [ 1] 1722 	cpl	a
      00923D 14 01            [ 1] 1723 	and	a, (0x01, sp)
      00923F C7 54 0D         [ 1] 1724 	ld	0x540d, a
      009242 20 29            [ 2] 1725 	jra	00107$
      009244                       1726 00102$:
                                   1727 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 679: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      009244 C6 54 0C         [ 1] 1728 	ld	a, 0x540c
      009247 6B 01            [ 1] 1729 	ld	(0x01, sp), a
      009249 1D 00 08         [ 2] 1730 	subw	x, #8
      00924C A6 01            [ 1] 1731 	ld	a, #0x01
      00924E 88               [ 1] 1732 	push	a
      00924F 9F               [ 1] 1733 	ld	a, xl
      009250 4D               [ 1] 1734 	tnz	a
      009251 27 05            [ 1] 1735 	jreq	00268$
      009253                       1736 00267$:
      009253 08 01            [ 1] 1737 	sll	(1, sp)
      009255 4A               [ 1] 1738 	dec	a
      009256 26 FB            [ 1] 1739 	jrne	00267$
      009258                       1740 00268$:
      009258 84               [ 1] 1741 	pop	a
      009259 43               [ 1] 1742 	cpl	a
      00925A 14 01            [ 1] 1743 	and	a, (0x01, sp)
      00925C C7 54 0C         [ 1] 1744 	ld	0x540c, a
      00925F 20 0C            [ 2] 1745 	jra	00107$
      009261                       1746 00105$:
                                   1747 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 684: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
      009261 C6 54 00         [ 1] 1748 	ld	a, 0x5400
      009264 6B 01            [ 1] 1749 	ld	(0x01, sp), a
      009266 53               [ 2] 1750 	cplw	x
      009267 9F               [ 1] 1751 	ld	a, xl
      009268 14 01            [ 1] 1752 	and	a, (0x01, sp)
      00926A C7 54 00         [ 1] 1753 	ld	0x5400, a
      00926D                       1754 00107$:
                                   1755 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_adc1.c: 686: }
      00926D 84               [ 1] 1756 	pop	a
      00926E 81               [ 4] 1757 	ret
                                   1758 	.area CODE
                                   1759 	.area CONST
                                   1760 	.area CONST
      00808C                       1761 ___str_0:
      00808C 43 3A                 1762 	.ascii "C:"
      00808E 5C                    1763 	.db 0x5c
      00808F 55 73 65 72 73        1764 	.ascii "Users"
      008094 5C                    1765 	.db 0x5c
      008095 41 64 6D 69 6E        1766 	.ascii "Admin"
      00809A 5C                    1767 	.db 0x5c
      00809B 2E 70 6C 61 74 66 6F  1768 	.ascii ".platformio"
             72 6D 69 6F
      0080A6 5C                    1769 	.db 0x5c
      0080A7 70 61 63 6B 61 67 65  1770 	.ascii "packages"
             73
      0080AF 5C                    1771 	.db 0x5c
      0080B0 66 72 61 6D 65 77 6F  1772 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0080C3 5C                    1773 	.db 0x5c
      0080C4 4C 69 62 72 61 72 69  1774 	.ascii "Libraries"
             65 73
      0080CD 5C                    1775 	.db 0x5c
      0080CE 53 54 4D 38 53 5F 53  1776 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0080E4 5C                    1777 	.db 0x5c
      0080E5 73 72 63              1778 	.ascii "src"
      0080E8 5C                    1779 	.db 0x5c
      0080E9 73 74 6D 38 73 5F 61  1780 	.ascii "stm8s_adc1.c"
             64 63 31 2E 63
      0080F5 00                    1781 	.db 0x00
                                   1782 	.area CODE
                                   1783 	.area INITIALIZER
                                   1784 	.area CABS (ABS)
