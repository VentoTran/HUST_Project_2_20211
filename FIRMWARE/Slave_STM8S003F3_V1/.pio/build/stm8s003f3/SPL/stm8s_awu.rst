                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_awu
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TBR_Array
                                     12 	.globl _APR_Array
                                     13 	.globl _assert_failed
                                     14 	.globl _AWU_DeInit
                                     15 	.globl _AWU_Init
                                     16 	.globl _AWU_Cmd
                                     17 	.globl _AWU_LSICalibrationConfig
                                     18 	.globl _AWU_IdleModeEnable
                                     19 	.globl _AWU_GetFlagStatus
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DABS (ABS)
                                     32 
                                     33 ; default segment ordering for linker
                                     34 	.area HOME
                                     35 	.area GSINIT
                                     36 	.area GSFINAL
                                     37 	.area CONST
                                     38 	.area INITIALIZER
                                     39 	.area CODE
                                     40 
                                     41 ;--------------------------------------------------------
                                     42 ; global & static initialisations
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area GSINIT
                                     48 ;--------------------------------------------------------
                                     49 ; Home
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area HOME
                                     53 ;--------------------------------------------------------
                                     54 ; code
                                     55 ;--------------------------------------------------------
                                     56 	.area CODE
                                     57 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 73: void AWU_DeInit(void)
                                     58 ;	-----------------------------------------
                                     59 ;	 function AWU_DeInit
                                     60 ;	-----------------------------------------
      00926F                         61 _AWU_DeInit:
                                     62 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 75: AWU->CSR = AWU_CSR_RESET_VALUE;
      00926F 35 00 50 F0      [ 1]   63 	mov	0x50f0+0, #0x00
                                     64 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 76: AWU->APR = AWU_APR_RESET_VALUE;
      009273 35 3F 50 F1      [ 1]   65 	mov	0x50f1+0, #0x3f
                                     66 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 77: AWU->TBR = AWU_TBR_RESET_VALUE;
      009277 35 00 50 F2      [ 1]   67 	mov	0x50f2+0, #0x00
                                     68 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 78: }
      00927B 81               [ 4]   69 	ret
                                     70 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 88: void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
                                     71 ;	-----------------------------------------
                                     72 ;	 function AWU_Init
                                     73 ;	-----------------------------------------
      00927C                         74 _AWU_Init:
      00927C 88               [ 1]   75 	push	a
                                     76 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 91: assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
      00927D 0D 04            [ 1]   77 	tnz	(0x04, sp)
      00927F 27 6E            [ 1]   78 	jreq	00104$
      009281 7B 04            [ 1]   79 	ld	a, (0x04, sp)
      009283 4A               [ 1]   80 	dec	a
      009284 27 69            [ 1]   81 	jreq	00104$
      009286 7B 04            [ 1]   82 	ld	a, (0x04, sp)
      009288 A1 02            [ 1]   83 	cp	a, #0x02
      00928A 27 63            [ 1]   84 	jreq	00104$
      00928C 7B 04            [ 1]   85 	ld	a, (0x04, sp)
      00928E A1 03            [ 1]   86 	cp	a, #0x03
      009290 27 5D            [ 1]   87 	jreq	00104$
      009292 7B 04            [ 1]   88 	ld	a, (0x04, sp)
      009294 A1 04            [ 1]   89 	cp	a, #0x04
      009296 27 57            [ 1]   90 	jreq	00104$
      009298 7B 04            [ 1]   91 	ld	a, (0x04, sp)
      00929A A1 05            [ 1]   92 	cp	a, #0x05
      00929C 27 51            [ 1]   93 	jreq	00104$
      00929E 7B 04            [ 1]   94 	ld	a, (0x04, sp)
      0092A0 A1 06            [ 1]   95 	cp	a, #0x06
      0092A2 27 4B            [ 1]   96 	jreq	00104$
      0092A4 7B 04            [ 1]   97 	ld	a, (0x04, sp)
      0092A6 A1 07            [ 1]   98 	cp	a, #0x07
      0092A8 27 45            [ 1]   99 	jreq	00104$
      0092AA 7B 04            [ 1]  100 	ld	a, (0x04, sp)
      0092AC A1 08            [ 1]  101 	cp	a, #0x08
      0092AE 27 3F            [ 1]  102 	jreq	00104$
      0092B0 7B 04            [ 1]  103 	ld	a, (0x04, sp)
      0092B2 A1 09            [ 1]  104 	cp	a, #0x09
      0092B4 27 39            [ 1]  105 	jreq	00104$
      0092B6 7B 04            [ 1]  106 	ld	a, (0x04, sp)
      0092B8 A1 0A            [ 1]  107 	cp	a, #0x0a
      0092BA 27 33            [ 1]  108 	jreq	00104$
      0092BC 7B 04            [ 1]  109 	ld	a, (0x04, sp)
      0092BE A1 0B            [ 1]  110 	cp	a, #0x0b
      0092C0 27 2D            [ 1]  111 	jreq	00104$
      0092C2 7B 04            [ 1]  112 	ld	a, (0x04, sp)
      0092C4 A1 0C            [ 1]  113 	cp	a, #0x0c
      0092C6 27 27            [ 1]  114 	jreq	00104$
      0092C8 7B 04            [ 1]  115 	ld	a, (0x04, sp)
      0092CA A1 0D            [ 1]  116 	cp	a, #0x0d
      0092CC 27 21            [ 1]  117 	jreq	00104$
      0092CE 7B 04            [ 1]  118 	ld	a, (0x04, sp)
      0092D0 A1 0E            [ 1]  119 	cp	a, #0x0e
      0092D2 27 1B            [ 1]  120 	jreq	00104$
      0092D4 7B 04            [ 1]  121 	ld	a, (0x04, sp)
      0092D6 A1 0F            [ 1]  122 	cp	a, #0x0f
      0092D8 27 15            [ 1]  123 	jreq	00104$
      0092DA 7B 04            [ 1]  124 	ld	a, (0x04, sp)
      0092DC A1 10            [ 1]  125 	cp	a, #0x10
      0092DE 27 0F            [ 1]  126 	jreq	00104$
      0092E0 4B 5B            [ 1]  127 	push	#0x5b
      0092E2 5F               [ 1]  128 	clrw	x
      0092E3 89               [ 2]  129 	pushw	x
      0092E4 4B 00            [ 1]  130 	push	#0x00
      0092E6 4B 18            [ 1]  131 	push	#<(___str_0+0)
      0092E8 4B 81            [ 1]  132 	push	#((___str_0+0) >> 8)
      0092EA CD 00 00         [ 4]  133 	call	_assert_failed
      0092ED 5B 06            [ 2]  134 	addw	sp, #6
      0092EF                        135 00104$:
                                    136 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 94: AWU->CSR |= AWU_CSR_AWUEN;
      0092EF 72 18 50 F0      [ 1]  137 	bset	20720, #4
                                    138 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 97: AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
      0092F3 C6 50 F2         [ 1]  139 	ld	a, 0x50f2
      0092F6 A4 F0            [ 1]  140 	and	a, #0xf0
      0092F8 C7 50 F2         [ 1]  141 	ld	0x50f2, a
                                    142 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 98: AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
      0092FB C6 50 F2         [ 1]  143 	ld	a, 0x50f2
      0092FE 6B 01            [ 1]  144 	ld	(0x01, sp), a
      009300 5F               [ 1]  145 	clrw	x
      009301 7B 04            [ 1]  146 	ld	a, (0x04, sp)
      009303 97               [ 1]  147 	ld	xl, a
      009304 1C 81 07         [ 2]  148 	addw	x, #(_TBR_Array+0)
      009307 F6               [ 1]  149 	ld	a, (x)
      009308 1A 01            [ 1]  150 	or	a, (0x01, sp)
      00930A C7 50 F2         [ 1]  151 	ld	0x50f2, a
                                    152 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 101: AWU->APR &= (uint8_t)(~AWU_APR_APR);
      00930D C6 50 F1         [ 1]  153 	ld	a, 0x50f1
      009310 A4 C0            [ 1]  154 	and	a, #0xc0
      009312 C7 50 F1         [ 1]  155 	ld	0x50f1, a
                                    156 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 102: AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
      009315 C6 50 F1         [ 1]  157 	ld	a, 0x50f1
      009318 6B 01            [ 1]  158 	ld	(0x01, sp), a
      00931A 5F               [ 1]  159 	clrw	x
      00931B 7B 04            [ 1]  160 	ld	a, (0x04, sp)
      00931D 97               [ 1]  161 	ld	xl, a
      00931E D6 80 F6         [ 1]  162 	ld	a, (_APR_Array+0, x)
      009321 1A 01            [ 1]  163 	or	a, (0x01, sp)
      009323 C7 50 F1         [ 1]  164 	ld	0x50f1, a
                                    165 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 103: }
      009326 84               [ 1]  166 	pop	a
      009327 81               [ 4]  167 	ret
                                    168 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 112: void AWU_Cmd(FunctionalState NewState)
                                    169 ;	-----------------------------------------
                                    170 ;	 function AWU_Cmd
                                    171 ;	-----------------------------------------
      009328                        172 _AWU_Cmd:
                                    173 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 117: AWU->CSR |= AWU_CSR_AWUEN;
      009328 C6 50 F0         [ 1]  174 	ld	a, 0x50f0
                                    175 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 114: if (NewState != DISABLE)
      00932B 0D 03            [ 1]  176 	tnz	(0x03, sp)
      00932D 27 06            [ 1]  177 	jreq	00102$
                                    178 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 117: AWU->CSR |= AWU_CSR_AWUEN;
      00932F AA 10            [ 1]  179 	or	a, #0x10
      009331 C7 50 F0         [ 1]  180 	ld	0x50f0, a
      009334 81               [ 4]  181 	ret
      009335                        182 00102$:
                                    183 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 122: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
      009335 A4 EF            [ 1]  184 	and	a, #0xef
      009337 C7 50 F0         [ 1]  185 	ld	0x50f0, a
                                    186 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 124: }
      00933A 81               [ 4]  187 	ret
                                    188 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 139: void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
                                    189 ;	-----------------------------------------
                                    190 ;	 function AWU_LSICalibrationConfig
                                    191 ;	-----------------------------------------
      00933B                        192 _AWU_LSICalibrationConfig:
      00933B 52 06            [ 2]  193 	sub	sp, #6
                                    194 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 145: assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
      00933D 1E 0B            [ 2]  195 	ldw	x, (0x0b, sp)
      00933F A3 AD B0         [ 2]  196 	cpw	x, #0xadb0
      009342 7B 0A            [ 1]  197 	ld	a, (0x0a, sp)
      009344 A2 01            [ 1]  198 	sbc	a, #0x01
      009346 7B 09            [ 1]  199 	ld	a, (0x09, sp)
      009348 A2 00            [ 1]  200 	sbc	a, #0x00
      00934A 25 0E            [ 1]  201 	jrc	00106$
      00934C AE 49 F0         [ 2]  202 	ldw	x, #0x49f0
      00934F 13 0B            [ 2]  203 	cpw	x, (0x0b, sp)
      009351 A6 02            [ 1]  204 	ld	a, #0x02
      009353 12 0A            [ 1]  205 	sbc	a, (0x0a, sp)
      009355 4F               [ 1]  206 	clr	a
      009356 12 09            [ 1]  207 	sbc	a, (0x09, sp)
      009358 24 0F            [ 1]  208 	jrnc	00107$
      00935A                        209 00106$:
      00935A 4B 91            [ 1]  210 	push	#0x91
      00935C 5F               [ 1]  211 	clrw	x
      00935D 89               [ 2]  212 	pushw	x
      00935E 4B 00            [ 1]  213 	push	#0x00
      009360 4B 18            [ 1]  214 	push	#<(___str_0+0)
      009362 4B 81            [ 1]  215 	push	#((___str_0+0) >> 8)
      009364 CD 00 00         [ 4]  216 	call	_assert_failed
      009367 5B 06            [ 2]  217 	addw	sp, #6
      009369                        218 00107$:
                                    219 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 147: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
      009369 4B E8            [ 1]  220 	push	#0xe8
      00936B 4B 03            [ 1]  221 	push	#0x03
      00936D 5F               [ 1]  222 	clrw	x
      00936E 89               [ 2]  223 	pushw	x
      00936F 1E 0F            [ 2]  224 	ldw	x, (0x0f, sp)
      009371 89               [ 2]  225 	pushw	x
      009372 1E 0F            [ 2]  226 	ldw	x, (0x0f, sp)
      009374 89               [ 2]  227 	pushw	x
      009375 CD DC DA         [ 4]  228 	call	__divulong
      009378 5B 08            [ 2]  229 	addw	sp, #8
                                    230 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 151: A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
      00937A 90 93            [ 1]  231 	ldw	y, x
      00937C 54               [ 2]  232 	srlw	x
      00937D 54               [ 2]  233 	srlw	x
                                    234 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
      00937E 1F 01            [ 2]  235 	ldw	(0x01, sp), x
      009380 1F 03            [ 2]  236 	ldw	(0x03, sp), x
      009382 08 04            [ 1]  237 	sll	(0x04, sp)
      009384 09 03            [ 1]  238 	rlc	(0x03, sp)
      009386 08 04            [ 1]  239 	sll	(0x04, sp)
      009388 09 03            [ 1]  240 	rlc	(0x03, sp)
      00938A 72 F2 03         [ 2]  241 	subw	y, (0x03, sp)
      00938D 58               [ 2]  242 	sllw	x
      00938E 5C               [ 1]  243 	incw	x
      00938F 89               [ 2]  244 	pushw	x
      009390 90 89            [ 2]  245 	pushw	y
                                    246 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
      009392 CD DC C1         [ 4]  247 	call	__mulint
      009395 5B 04            [ 2]  248 	addw	sp, #4
      009397 1F 05            [ 2]  249 	ldw	(0x05, sp), x
      009399 7B 02            [ 1]  250 	ld	a, (0x02, sp)
                                    251 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
      00939B 1E 03            [ 2]  252 	ldw	x, (0x03, sp)
      00939D 13 05            [ 2]  253 	cpw	x, (0x05, sp)
      00939F 25 07            [ 1]  254 	jrc	00102$
                                    255 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
      0093A1 A0 02            [ 1]  256 	sub	a, #0x02
      0093A3 C7 50 F1         [ 1]  257 	ld	0x50f1, a
      0093A6 20 04            [ 2]  258 	jra	00104$
      0093A8                        259 00102$:
                                    260 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 159: AWU->APR = (uint8_t)(A - 1U);
      0093A8 4A               [ 1]  261 	dec	a
      0093A9 C7 50 F1         [ 1]  262 	ld	0x50f1, a
      0093AC                        263 00104$:
                                    264 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 161: }
      0093AC 5B 06            [ 2]  265 	addw	sp, #6
      0093AE 81               [ 4]  266 	ret
                                    267 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 168: void AWU_IdleModeEnable(void)
                                    268 ;	-----------------------------------------
                                    269 ;	 function AWU_IdleModeEnable
                                    270 ;	-----------------------------------------
      0093AF                        271 _AWU_IdleModeEnable:
                                    272 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 171: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
      0093AF 72 19 50 F0      [ 1]  273 	bres	20720, #4
                                    274 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 174: AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
      0093B3 35 F0 50 F2      [ 1]  275 	mov	0x50f2+0, #0xf0
                                    276 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 175: }
      0093B7 81               [ 4]  277 	ret
                                    278 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 183: FlagStatus AWU_GetFlagStatus(void)
                                    279 ;	-----------------------------------------
                                    280 ;	 function AWU_GetFlagStatus
                                    281 ;	-----------------------------------------
      0093B8                        282 _AWU_GetFlagStatus:
                                    283 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 185: return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
      0093B8 C6 50 F0         [ 1]  284 	ld	a, 0x50f0
      0093BB A5 20            [ 1]  285 	bcp	a, #0x20
      0093BD 26 02            [ 1]  286 	jrne	00103$
      0093BF 5F               [ 1]  287 	clrw	x
      0093C0 C5                     288 	.byte 0xc5
      0093C1                        289 00103$:
      0093C1 5F               [ 1]  290 	clrw	x
      0093C2 5C               [ 1]  291 	incw	x
      0093C3                        292 00104$:
      0093C3 9F               [ 1]  293 	ld	a, xl
                                    294 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 186: }
      0093C4 81               [ 4]  295 	ret
                                    296 	.area CODE
                                    297 	.area CONST
      0080F6                        298 _APR_Array:
      0080F6 00                     299 	.db #0x00	; 0
      0080F7 1E                     300 	.db #0x1e	; 30
      0080F8 1E                     301 	.db #0x1e	; 30
      0080F9 1E                     302 	.db #0x1e	; 30
      0080FA 1E                     303 	.db #0x1e	; 30
      0080FB 1E                     304 	.db #0x1e	; 30
      0080FC 1E                     305 	.db #0x1e	; 30
      0080FD 1E                     306 	.db #0x1e	; 30
      0080FE 1E                     307 	.db #0x1e	; 30
      0080FF 1E                     308 	.db #0x1e	; 30
      008100 1E                     309 	.db #0x1e	; 30
      008101 1E                     310 	.db #0x1e	; 30
      008102 1E                     311 	.db #0x1e	; 30
      008103 3D                     312 	.db #0x3d	; 61
      008104 17                     313 	.db #0x17	; 23
      008105 17                     314 	.db #0x17	; 23
      008106 3E                     315 	.db #0x3e	; 62
      008107                        316 _TBR_Array:
      008107 00                     317 	.db #0x00	; 0
      008108 01                     318 	.db #0x01	; 1
      008109 02                     319 	.db #0x02	; 2
      00810A 03                     320 	.db #0x03	; 3
      00810B 04                     321 	.db #0x04	; 4
      00810C 05                     322 	.db #0x05	; 5
      00810D 06                     323 	.db #0x06	; 6
      00810E 07                     324 	.db #0x07	; 7
      00810F 08                     325 	.db #0x08	; 8
      008110 09                     326 	.db #0x09	; 9
      008111 0A                     327 	.db #0x0a	; 10
      008112 0B                     328 	.db #0x0b	; 11
      008113 0C                     329 	.db #0x0c	; 12
      008114 0C                     330 	.db #0x0c	; 12
      008115 0E                     331 	.db #0x0e	; 14
      008116 0F                     332 	.db #0x0f	; 15
      008117 0F                     333 	.db #0x0f	; 15
                                    334 	.area CONST
      008118                        335 ___str_0:
      008118 43 3A                  336 	.ascii "C:"
      00811A 5C                     337 	.db 0x5c
      00811B 55 73 65 72 73         338 	.ascii "Users"
      008120 5C                     339 	.db 0x5c
      008121 41 64 6D 69 6E         340 	.ascii "Admin"
      008126 5C                     341 	.db 0x5c
      008127 2E 70 6C 61 74 66 6F   342 	.ascii ".platformio"
             72 6D 69 6F
      008132 5C                     343 	.db 0x5c
      008133 70 61 63 6B 61 67 65   344 	.ascii "packages"
             73
      00813B 5C                     345 	.db 0x5c
      00813C 66 72 61 6D 65 77 6F   346 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00814F 5C                     347 	.db 0x5c
      008150 4C 69 62 72 61 72 69   348 	.ascii "Libraries"
             65 73
      008159 5C                     349 	.db 0x5c
      00815A 53 54 4D 38 53 5F 53   350 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      008170 5C                     351 	.db 0x5c
      008171 73 72 63               352 	.ascii "src"
      008174 5C                     353 	.db 0x5c
      008175 73 74 6D 38 73 5F 61   354 	.ascii "stm8s_awu.c"
             77 75 2E 63
      008180 00                     355 	.db 0x00
                                    356 	.area CODE
                                    357 	.area INITIALIZER
                                    358 	.area CABS (ABS)
