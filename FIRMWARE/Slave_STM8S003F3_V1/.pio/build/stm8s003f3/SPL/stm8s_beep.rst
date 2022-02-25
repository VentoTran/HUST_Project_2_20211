                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_beep
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _BEEP_DeInit
                                     13 	.globl _BEEP_Init
                                     14 	.globl _BEEP_Cmd
                                     15 	.globl _BEEP_LSICalibrationConfig
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                                     53 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 54: void BEEP_DeInit(void)
                                     54 ;	-----------------------------------------
                                     55 ;	 function BEEP_DeInit
                                     56 ;	-----------------------------------------
      0093C5                         57 _BEEP_DeInit:
                                     58 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 56: BEEP->CSR = BEEP_CSR_RESET_VALUE;
      0093C5 35 1F 50 F3      [ 1]   59 	mov	0x50f3+0, #0x1f
                                     60 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 57: }
      0093C9 81               [ 4]   61 	ret
                                     62 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 67: void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
                                     63 ;	-----------------------------------------
                                     64 ;	 function BEEP_Init
                                     65 ;	-----------------------------------------
      0093CA                         66 _BEEP_Init:
                                     67 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 70: assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
      0093CA 0D 03            [ 1]   68 	tnz	(0x03, sp)
      0093CC 27 1B            [ 1]   69 	jreq	00106$
      0093CE 7B 03            [ 1]   70 	ld	a, (0x03, sp)
      0093D0 A1 40            [ 1]   71 	cp	a, #0x40
      0093D2 27 15            [ 1]   72 	jreq	00106$
      0093D4 7B 03            [ 1]   73 	ld	a, (0x03, sp)
      0093D6 A1 80            [ 1]   74 	cp	a, #0x80
      0093D8 27 0F            [ 1]   75 	jreq	00106$
      0093DA 4B 46            [ 1]   76 	push	#0x46
      0093DC 5F               [ 1]   77 	clrw	x
      0093DD 89               [ 2]   78 	pushw	x
      0093DE 4B 00            [ 1]   79 	push	#0x00
      0093E0 4B 81            [ 1]   80 	push	#<(___str_0+0)
      0093E2 4B 81            [ 1]   81 	push	#((___str_0+0) >> 8)
      0093E4 CD 00 00         [ 4]   82 	call	_assert_failed
      0093E7 5B 06            [ 2]   83 	addw	sp, #6
      0093E9                         84 00106$:
                                     85 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 73: if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
      0093E9 C6 50 F3         [ 1]   86 	ld	a, 0x50f3
      0093EC A4 1F            [ 1]   87 	and	a, #0x1f
      0093EE A1 1F            [ 1]   88 	cp	a, #0x1f
      0093F0 26 10            [ 1]   89 	jrne	00102$
                                     90 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 75: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
      0093F2 C6 50 F3         [ 1]   91 	ld	a, 0x50f3
      0093F5 A4 E0            [ 1]   92 	and	a, #0xe0
      0093F7 C7 50 F3         [ 1]   93 	ld	0x50f3, a
                                     94 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 76: BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
      0093FA C6 50 F3         [ 1]   95 	ld	a, 0x50f3
      0093FD AA 0B            [ 1]   96 	or	a, #0x0b
      0093FF C7 50 F3         [ 1]   97 	ld	0x50f3, a
      009402                         98 00102$:
                                     99 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 80: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
      009402 C6 50 F3         [ 1]  100 	ld	a, 0x50f3
      009405 A4 3F            [ 1]  101 	and	a, #0x3f
      009407 C7 50 F3         [ 1]  102 	ld	0x50f3, a
                                    103 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 81: BEEP->CSR |= (uint8_t)(BEEP_Frequency);
      00940A C6 50 F3         [ 1]  104 	ld	a, 0x50f3
      00940D 1A 03            [ 1]  105 	or	a, (0x03, sp)
      00940F C7 50 F3         [ 1]  106 	ld	0x50f3, a
                                    107 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 82: }
      009412 81               [ 4]  108 	ret
                                    109 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 91: void BEEP_Cmd(FunctionalState NewState)
                                    110 ;	-----------------------------------------
                                    111 ;	 function BEEP_Cmd
                                    112 ;	-----------------------------------------
      009413                        113 _BEEP_Cmd:
                                    114 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      009413 C6 50 F3         [ 1]  115 	ld	a, 0x50f3
                                    116 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 93: if (NewState != DISABLE)
      009416 0D 03            [ 1]  117 	tnz	(0x03, sp)
      009418 27 06            [ 1]  118 	jreq	00102$
                                    119 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      00941A AA 20            [ 1]  120 	or	a, #0x20
      00941C C7 50 F3         [ 1]  121 	ld	0x50f3, a
      00941F 81               [ 4]  122 	ret
      009420                        123 00102$:
                                    124 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 101: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
      009420 A4 DF            [ 1]  125 	and	a, #0xdf
      009422 C7 50 F3         [ 1]  126 	ld	0x50f3, a
                                    127 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 103: }
      009425 81               [ 4]  128 	ret
                                    129 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 118: void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
                                    130 ;	-----------------------------------------
                                    131 ;	 function BEEP_LSICalibrationConfig
                                    132 ;	-----------------------------------------
      009426                        133 _BEEP_LSICalibrationConfig:
      009426 52 07            [ 2]  134 	sub	sp, #7
                                    135 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 124: assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
      009428 1E 0C            [ 2]  136 	ldw	x, (0x0c, sp)
      00942A A3 AD B0         [ 2]  137 	cpw	x, #0xadb0
      00942D 7B 0B            [ 1]  138 	ld	a, (0x0b, sp)
      00942F A2 01            [ 1]  139 	sbc	a, #0x01
      009431 7B 0A            [ 1]  140 	ld	a, (0x0a, sp)
      009433 A2 00            [ 1]  141 	sbc	a, #0x00
      009435 25 0E            [ 1]  142 	jrc	00106$
      009437 AE 49 F0         [ 2]  143 	ldw	x, #0x49f0
      00943A 13 0C            [ 2]  144 	cpw	x, (0x0c, sp)
      00943C A6 02            [ 1]  145 	ld	a, #0x02
      00943E 12 0B            [ 1]  146 	sbc	a, (0x0b, sp)
      009440 4F               [ 1]  147 	clr	a
      009441 12 0A            [ 1]  148 	sbc	a, (0x0a, sp)
      009443 24 0F            [ 1]  149 	jrnc	00107$
      009445                        150 00106$:
      009445 4B 7C            [ 1]  151 	push	#0x7c
      009447 5F               [ 1]  152 	clrw	x
      009448 89               [ 2]  153 	pushw	x
      009449 4B 00            [ 1]  154 	push	#0x00
      00944B 4B 81            [ 1]  155 	push	#<(___str_0+0)
      00944D 4B 81            [ 1]  156 	push	#((___str_0+0) >> 8)
      00944F CD 00 00         [ 4]  157 	call	_assert_failed
      009452 5B 06            [ 2]  158 	addw	sp, #6
      009454                        159 00107$:
                                    160 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 126: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
      009454 4B E8            [ 1]  161 	push	#0xe8
      009456 4B 03            [ 1]  162 	push	#0x03
      009458 5F               [ 1]  163 	clrw	x
      009459 89               [ 2]  164 	pushw	x
      00945A 1E 10            [ 2]  165 	ldw	x, (0x10, sp)
      00945C 89               [ 2]  166 	pushw	x
      00945D 1E 10            [ 2]  167 	ldw	x, (0x10, sp)
      00945F 89               [ 2]  168 	pushw	x
      009460 CD DC DA         [ 4]  169 	call	__divulong
      009463 5B 08            [ 2]  170 	addw	sp, #8
      009465 51               [ 1]  171 	exgw	x, y
                                    172 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 130: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
      009466 C6 50 F3         [ 1]  173 	ld	a, 0x50f3
      009469 A4 E0            [ 1]  174 	and	a, #0xe0
      00946B C7 50 F3         [ 1]  175 	ld	0x50f3, a
                                    176 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 132: A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
      00946E 93               [ 1]  177 	ldw	x, y
      00946F 54               [ 2]  178 	srlw	x
      009470 54               [ 2]  179 	srlw	x
      009471 54               [ 2]  180 	srlw	x
                                    181 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 134: if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
      009472 1F 01            [ 2]  182 	ldw	(0x01, sp), x
      009474 1F 06            [ 2]  183 	ldw	(0x06, sp), x
      009476 58               [ 2]  184 	sllw	x
      009477 58               [ 2]  185 	sllw	x
      009478 58               [ 2]  186 	sllw	x
      009479 1F 03            [ 2]  187 	ldw	(0x03, sp), x
      00947B 72 F2 03         [ 2]  188 	subw	y, (0x03, sp)
      00947E 1E 06            [ 2]  189 	ldw	x, (0x06, sp)
      009480 58               [ 2]  190 	sllw	x
      009481 5C               [ 1]  191 	incw	x
      009482 89               [ 2]  192 	pushw	x
      009483 90 89            [ 2]  193 	pushw	y
                                    194 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 130: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
      009485 CD DC C1         [ 4]  195 	call	__mulint
      009488 5B 04            [ 2]  196 	addw	sp, #4
      00948A 1F 05            [ 2]  197 	ldw	(0x05, sp), x
      00948C C6 50 F3         [ 1]  198 	ld	a, 0x50f3
      00948F 6B 07            [ 1]  199 	ld	(0x07, sp), a
                                    200 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 136: BEEP->CSR |= (uint8_t)(A - 2U);
      009491 7B 02            [ 1]  201 	ld	a, (0x02, sp)
                                    202 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 134: if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
      009493 1E 03            [ 2]  203 	ldw	x, (0x03, sp)
      009495 13 05            [ 2]  204 	cpw	x, (0x05, sp)
      009497 25 09            [ 1]  205 	jrc	00102$
                                    206 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 136: BEEP->CSR |= (uint8_t)(A - 2U);
      009499 A0 02            [ 1]  207 	sub	a, #0x02
      00949B 1A 07            [ 1]  208 	or	a, (0x07, sp)
      00949D C7 50 F3         [ 1]  209 	ld	0x50f3, a
      0094A0 20 06            [ 2]  210 	jra	00104$
      0094A2                        211 00102$:
                                    212 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 140: BEEP->CSR |= (uint8_t)(A - 1U);
      0094A2 4A               [ 1]  213 	dec	a
      0094A3 1A 07            [ 1]  214 	or	a, (0x07, sp)
      0094A5 C7 50 F3         [ 1]  215 	ld	0x50f3, a
      0094A8                        216 00104$:
                                    217 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 142: }
      0094A8 5B 07            [ 2]  218 	addw	sp, #7
      0094AA 81               [ 4]  219 	ret
                                    220 	.area CODE
                                    221 	.area CONST
                                    222 	.area CONST
      008181                        223 ___str_0:
      008181 43 3A                  224 	.ascii "C:"
      008183 5C                     225 	.db 0x5c
      008184 55 73 65 72 73         226 	.ascii "Users"
      008189 5C                     227 	.db 0x5c
      00818A 41 64 6D 69 6E         228 	.ascii "Admin"
      00818F 5C                     229 	.db 0x5c
      008190 2E 70 6C 61 74 66 6F   230 	.ascii ".platformio"
             72 6D 69 6F
      00819B 5C                     231 	.db 0x5c
      00819C 70 61 63 6B 61 67 65   232 	.ascii "packages"
             73
      0081A4 5C                     233 	.db 0x5c
      0081A5 66 72 61 6D 65 77 6F   234 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0081B8 5C                     235 	.db 0x5c
      0081B9 4C 69 62 72 61 72 69   236 	.ascii "Libraries"
             65 73
      0081C2 5C                     237 	.db 0x5c
      0081C3 53 54 4D 38 53 5F 53   238 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0081D9 5C                     239 	.db 0x5c
      0081DA 73 72 63               240 	.ascii "src"
      0081DD 5C                     241 	.db 0x5c
      0081DE 73 74 6D 38 73 5F 62   242 	.ascii "stm8s_beep.c"
             65 65 70 2E 63
      0081EA 00                     243 	.db 0x00
                                    244 	.area CODE
                                    245 	.area INITIALIZER
                                    246 	.area CABS (ABS)
