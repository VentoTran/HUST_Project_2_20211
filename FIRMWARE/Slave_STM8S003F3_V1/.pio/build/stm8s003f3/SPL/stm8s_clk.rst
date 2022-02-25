                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _assert_failed
                                     14 	.globl _CLK_DeInit
                                     15 	.globl _CLK_FastHaltWakeUpCmd
                                     16 	.globl _CLK_HSECmd
                                     17 	.globl _CLK_HSICmd
                                     18 	.globl _CLK_LSICmd
                                     19 	.globl _CLK_CCOCmd
                                     20 	.globl _CLK_ClockSwitchCmd
                                     21 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     22 	.globl _CLK_PeripheralClockConfig
                                     23 	.globl _CLK_ClockSwitchConfig
                                     24 	.globl _CLK_HSIPrescalerConfig
                                     25 	.globl _CLK_CCOConfig
                                     26 	.globl _CLK_ITConfig
                                     27 	.globl _CLK_SYSCLKConfig
                                     28 	.globl _CLK_SWIMConfig
                                     29 	.globl _CLK_ClockSecuritySystemEnable
                                     30 	.globl _CLK_GetSYSCLKSource
                                     31 	.globl _CLK_GetClockFreq
                                     32 	.globl _CLK_AdjustHSICalibrationValue
                                     33 	.globl _CLK_SYSCLKEmergencyClear
                                     34 	.globl _CLK_GetFlagStatus
                                     35 	.globl _CLK_GetITStatus
                                     36 	.globl _CLK_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                                     74 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 72: void CLK_DeInit(void)
                                     75 ;	-----------------------------------------
                                     76 ;	 function CLK_DeInit
                                     77 ;	-----------------------------------------
      0094AB                         78 _CLK_DeInit:
                                     79 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      0094AB 35 01 50 C0      [ 1]   80 	mov	0x50c0+0, #0x01
                                     81 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      0094AF 35 00 50 C1      [ 1]   82 	mov	0x50c1+0, #0x00
                                     83 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      0094B3 35 E1 50 C4      [ 1]   84 	mov	0x50c4+0, #0xe1
                                     85 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      0094B7 35 00 50 C5      [ 1]   86 	mov	0x50c5+0, #0x00
                                     87 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      0094BB 35 18 50 C6      [ 1]   88 	mov	0x50c6+0, #0x18
                                     89 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      0094BF 35 FF 50 C7      [ 1]   90 	mov	0x50c7+0, #0xff
                                     91 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      0094C3 35 FF 50 CA      [ 1]   92 	mov	0x50ca+0, #0xff
                                     93 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      0094C7 35 00 50 C8      [ 1]   94 	mov	0x50c8+0, #0x00
                                     95 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      0094CB 35 00 50 C9      [ 1]   96 	mov	0x50c9+0, #0x00
                                     97 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      0094CF                         98 00101$:
      0094CF C6 50 C9         [ 1]   99 	ld	a, 0x50c9
      0094D2 44               [ 1]  100 	srl	a
      0094D3 25 FA            [ 1]  101 	jrc	00101$
                                    102 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      0094D5 35 00 50 C9      [ 1]  103 	mov	0x50c9+0, #0x00
                                    104 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      0094D9 35 00 50 CC      [ 1]  105 	mov	0x50cc+0, #0x00
                                    106 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      0094DD 35 00 50 CD      [ 1]  107 	mov	0x50cd+0, #0x00
                                    108 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 88: }
      0094E1 81               [ 4]  109 	ret
                                    110 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    111 ;	-----------------------------------------
                                    112 ;	 function CLK_FastHaltWakeUpCmd
                                    113 ;	-----------------------------------------
      0094E2                        114 _CLK_FastHaltWakeUpCmd:
                                    115 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0094E2 0D 03            [ 1]  116 	tnz	(0x03, sp)
      0094E4 27 14            [ 1]  117 	jreq	00107$
      0094E6 7B 03            [ 1]  118 	ld	a, (0x03, sp)
      0094E8 4A               [ 1]  119 	dec	a
      0094E9 27 0F            [ 1]  120 	jreq	00107$
      0094EB 4B 66            [ 1]  121 	push	#0x66
      0094ED 5F               [ 1]  122 	clrw	x
      0094EE 89               [ 2]  123 	pushw	x
      0094EF 4B 00            [ 1]  124 	push	#0x00
      0094F1 4B F7            [ 1]  125 	push	#<(___str_0+0)
      0094F3 4B 81            [ 1]  126 	push	#((___str_0+0) >> 8)
      0094F5 CD 00 00         [ 4]  127 	call	_assert_failed
      0094F8 5B 06            [ 2]  128 	addw	sp, #6
      0094FA                        129 00107$:
                                    130 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      0094FA C6 50 C0         [ 1]  131 	ld	a, 0x50c0
                                    132 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 104: if (NewState != DISABLE)
      0094FD 0D 03            [ 1]  133 	tnz	(0x03, sp)
      0094FF 27 06            [ 1]  134 	jreq	00102$
                                    135 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      009501 AA 04            [ 1]  136 	or	a, #0x04
      009503 C7 50 C0         [ 1]  137 	ld	0x50c0, a
      009506 81               [ 4]  138 	ret
      009507                        139 00102$:
                                    140 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      009507 A4 FB            [ 1]  141 	and	a, #0xfb
      009509 C7 50 C0         [ 1]  142 	ld	0x50c0, a
                                    143 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 114: }
      00950C 81               [ 4]  144 	ret
                                    145 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    146 ;	-----------------------------------------
                                    147 ;	 function CLK_HSECmd
                                    148 ;	-----------------------------------------
      00950D                        149 _CLK_HSECmd:
                                    150 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00950D 0D 03            [ 1]  151 	tnz	(0x03, sp)
      00950F 27 14            [ 1]  152 	jreq	00107$
      009511 7B 03            [ 1]  153 	ld	a, (0x03, sp)
      009513 4A               [ 1]  154 	dec	a
      009514 27 0F            [ 1]  155 	jreq	00107$
      009516 4B 7C            [ 1]  156 	push	#0x7c
      009518 5F               [ 1]  157 	clrw	x
      009519 89               [ 2]  158 	pushw	x
      00951A 4B 00            [ 1]  159 	push	#0x00
      00951C 4B F7            [ 1]  160 	push	#<(___str_0+0)
      00951E 4B 81            [ 1]  161 	push	#((___str_0+0) >> 8)
      009520 CD 00 00         [ 4]  162 	call	_assert_failed
      009523 5B 06            [ 2]  163 	addw	sp, #6
      009525                        164 00107$:
                                    165 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      009525 C6 50 C1         [ 1]  166 	ld	a, 0x50c1
                                    167 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 126: if (NewState != DISABLE)
      009528 0D 03            [ 1]  168 	tnz	(0x03, sp)
      00952A 27 06            [ 1]  169 	jreq	00102$
                                    170 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00952C AA 01            [ 1]  171 	or	a, #0x01
      00952E C7 50 C1         [ 1]  172 	ld	0x50c1, a
      009531 81               [ 4]  173 	ret
      009532                        174 00102$:
                                    175 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      009532 A4 FE            [ 1]  176 	and	a, #0xfe
      009534 C7 50 C1         [ 1]  177 	ld	0x50c1, a
                                    178 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 136: }
      009537 81               [ 4]  179 	ret
                                    180 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    181 ;	-----------------------------------------
                                    182 ;	 function CLK_HSICmd
                                    183 ;	-----------------------------------------
      009538                        184 _CLK_HSICmd:
                                    185 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009538 0D 03            [ 1]  186 	tnz	(0x03, sp)
      00953A 27 14            [ 1]  187 	jreq	00107$
      00953C 7B 03            [ 1]  188 	ld	a, (0x03, sp)
      00953E 4A               [ 1]  189 	dec	a
      00953F 27 0F            [ 1]  190 	jreq	00107$
      009541 4B 92            [ 1]  191 	push	#0x92
      009543 5F               [ 1]  192 	clrw	x
      009544 89               [ 2]  193 	pushw	x
      009545 4B 00            [ 1]  194 	push	#0x00
      009547 4B F7            [ 1]  195 	push	#<(___str_0+0)
      009549 4B 81            [ 1]  196 	push	#((___str_0+0) >> 8)
      00954B CD 00 00         [ 4]  197 	call	_assert_failed
      00954E 5B 06            [ 2]  198 	addw	sp, #6
      009550                        199 00107$:
                                    200 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      009550 C6 50 C0         [ 1]  201 	ld	a, 0x50c0
                                    202 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 148: if (NewState != DISABLE)
      009553 0D 03            [ 1]  203 	tnz	(0x03, sp)
      009555 27 06            [ 1]  204 	jreq	00102$
                                    205 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      009557 AA 01            [ 1]  206 	or	a, #0x01
      009559 C7 50 C0         [ 1]  207 	ld	0x50c0, a
      00955C 81               [ 4]  208 	ret
      00955D                        209 00102$:
                                    210 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00955D A4 FE            [ 1]  211 	and	a, #0xfe
      00955F C7 50 C0         [ 1]  212 	ld	0x50c0, a
                                    213 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 158: }
      009562 81               [ 4]  214 	ret
                                    215 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    216 ;	-----------------------------------------
                                    217 ;	 function CLK_LSICmd
                                    218 ;	-----------------------------------------
      009563                        219 _CLK_LSICmd:
                                    220 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009563 0D 03            [ 1]  221 	tnz	(0x03, sp)
      009565 27 14            [ 1]  222 	jreq	00107$
      009567 7B 03            [ 1]  223 	ld	a, (0x03, sp)
      009569 4A               [ 1]  224 	dec	a
      00956A 27 0F            [ 1]  225 	jreq	00107$
      00956C 4B A9            [ 1]  226 	push	#0xa9
      00956E 5F               [ 1]  227 	clrw	x
      00956F 89               [ 2]  228 	pushw	x
      009570 4B 00            [ 1]  229 	push	#0x00
      009572 4B F7            [ 1]  230 	push	#<(___str_0+0)
      009574 4B 81            [ 1]  231 	push	#((___str_0+0) >> 8)
      009576 CD 00 00         [ 4]  232 	call	_assert_failed
      009579 5B 06            [ 2]  233 	addw	sp, #6
      00957B                        234 00107$:
                                    235 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      00957B C6 50 C0         [ 1]  236 	ld	a, 0x50c0
                                    237 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 171: if (NewState != DISABLE)
      00957E 0D 03            [ 1]  238 	tnz	(0x03, sp)
      009580 27 06            [ 1]  239 	jreq	00102$
                                    240 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      009582 AA 08            [ 1]  241 	or	a, #0x08
      009584 C7 50 C0         [ 1]  242 	ld	0x50c0, a
      009587 81               [ 4]  243 	ret
      009588                        244 00102$:
                                    245 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      009588 A4 F7            [ 1]  246 	and	a, #0xf7
      00958A C7 50 C0         [ 1]  247 	ld	0x50c0, a
                                    248 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 181: }
      00958D 81               [ 4]  249 	ret
                                    250 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    251 ;	-----------------------------------------
                                    252 ;	 function CLK_CCOCmd
                                    253 ;	-----------------------------------------
      00958E                        254 _CLK_CCOCmd:
                                    255 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00958E 0D 03            [ 1]  256 	tnz	(0x03, sp)
      009590 27 14            [ 1]  257 	jreq	00107$
      009592 7B 03            [ 1]  258 	ld	a, (0x03, sp)
      009594 4A               [ 1]  259 	dec	a
      009595 27 0F            [ 1]  260 	jreq	00107$
      009597 4B C0            [ 1]  261 	push	#0xc0
      009599 5F               [ 1]  262 	clrw	x
      00959A 89               [ 2]  263 	pushw	x
      00959B 4B 00            [ 1]  264 	push	#0x00
      00959D 4B F7            [ 1]  265 	push	#<(___str_0+0)
      00959F 4B 81            [ 1]  266 	push	#((___str_0+0) >> 8)
      0095A1 CD 00 00         [ 4]  267 	call	_assert_failed
      0095A4 5B 06            [ 2]  268 	addw	sp, #6
      0095A6                        269 00107$:
                                    270 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0095A6 C6 50 C9         [ 1]  271 	ld	a, 0x50c9
                                    272 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 194: if (NewState != DISABLE)
      0095A9 0D 03            [ 1]  273 	tnz	(0x03, sp)
      0095AB 27 06            [ 1]  274 	jreq	00102$
                                    275 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0095AD AA 01            [ 1]  276 	or	a, #0x01
      0095AF C7 50 C9         [ 1]  277 	ld	0x50c9, a
      0095B2 81               [ 4]  278 	ret
      0095B3                        279 00102$:
                                    280 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      0095B3 A4 FE            [ 1]  281 	and	a, #0xfe
      0095B5 C7 50 C9         [ 1]  282 	ld	0x50c9, a
                                    283 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 204: }
      0095B8 81               [ 4]  284 	ret
                                    285 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    286 ;	-----------------------------------------
                                    287 ;	 function CLK_ClockSwitchCmd
                                    288 ;	-----------------------------------------
      0095B9                        289 _CLK_ClockSwitchCmd:
                                    290 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0095B9 0D 03            [ 1]  291 	tnz	(0x03, sp)
      0095BB 27 14            [ 1]  292 	jreq	00107$
      0095BD 7B 03            [ 1]  293 	ld	a, (0x03, sp)
      0095BF 4A               [ 1]  294 	dec	a
      0095C0 27 0F            [ 1]  295 	jreq	00107$
      0095C2 4B D8            [ 1]  296 	push	#0xd8
      0095C4 5F               [ 1]  297 	clrw	x
      0095C5 89               [ 2]  298 	pushw	x
      0095C6 4B 00            [ 1]  299 	push	#0x00
      0095C8 4B F7            [ 1]  300 	push	#<(___str_0+0)
      0095CA 4B 81            [ 1]  301 	push	#((___str_0+0) >> 8)
      0095CC CD 00 00         [ 4]  302 	call	_assert_failed
      0095CF 5B 06            [ 2]  303 	addw	sp, #6
      0095D1                        304 00107$:
                                    305 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      0095D1 C6 50 C5         [ 1]  306 	ld	a, 0x50c5
                                    307 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 218: if (NewState != DISABLE )
      0095D4 0D 03            [ 1]  308 	tnz	(0x03, sp)
      0095D6 27 06            [ 1]  309 	jreq	00102$
                                    310 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      0095D8 AA 02            [ 1]  311 	or	a, #0x02
      0095DA C7 50 C5         [ 1]  312 	ld	0x50c5, a
      0095DD 81               [ 4]  313 	ret
      0095DE                        314 00102$:
                                    315 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      0095DE A4 FD            [ 1]  316 	and	a, #0xfd
      0095E0 C7 50 C5         [ 1]  317 	ld	0x50c5, a
                                    318 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 228: }
      0095E3 81               [ 4]  319 	ret
                                    320 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    321 ;	-----------------------------------------
                                    322 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    323 ;	-----------------------------------------
      0095E4                        324 _CLK_SlowActiveHaltWakeUpCmd:
                                    325 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0095E4 0D 03            [ 1]  326 	tnz	(0x03, sp)
      0095E6 27 14            [ 1]  327 	jreq	00107$
      0095E8 7B 03            [ 1]  328 	ld	a, (0x03, sp)
      0095EA 4A               [ 1]  329 	dec	a
      0095EB 27 0F            [ 1]  330 	jreq	00107$
      0095ED 4B F1            [ 1]  331 	push	#0xf1
      0095EF 5F               [ 1]  332 	clrw	x
      0095F0 89               [ 2]  333 	pushw	x
      0095F1 4B 00            [ 1]  334 	push	#0x00
      0095F3 4B F7            [ 1]  335 	push	#<(___str_0+0)
      0095F5 4B 81            [ 1]  336 	push	#((___str_0+0) >> 8)
      0095F7 CD 00 00         [ 4]  337 	call	_assert_failed
      0095FA 5B 06            [ 2]  338 	addw	sp, #6
      0095FC                        339 00107$:
                                    340 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0095FC C6 50 C0         [ 1]  341 	ld	a, 0x50c0
                                    342 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 243: if (NewState != DISABLE)
      0095FF 0D 03            [ 1]  343 	tnz	(0x03, sp)
      009601 27 06            [ 1]  344 	jreq	00102$
                                    345 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      009603 AA 20            [ 1]  346 	or	a, #0x20
      009605 C7 50 C0         [ 1]  347 	ld	0x50c0, a
      009608 81               [ 4]  348 	ret
      009609                        349 00102$:
                                    350 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      009609 A4 DF            [ 1]  351 	and	a, #0xdf
      00960B C7 50 C0         [ 1]  352 	ld	0x50c0, a
                                    353 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 253: }
      00960E 81               [ 4]  354 	ret
                                    355 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    356 ;	-----------------------------------------
                                    357 ;	 function CLK_PeripheralClockConfig
                                    358 ;	-----------------------------------------
      00960F                        359 _CLK_PeripheralClockConfig:
      00960F 89               [ 2]  360 	pushw	x
                                    361 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009610 0D 06            [ 1]  362 	tnz	(0x06, sp)
      009612 27 14            [ 1]  363 	jreq	00113$
      009614 7B 06            [ 1]  364 	ld	a, (0x06, sp)
      009616 4A               [ 1]  365 	dec	a
      009617 27 0F            [ 1]  366 	jreq	00113$
      009619 4B 0A            [ 1]  367 	push	#0x0a
      00961B 4B 01            [ 1]  368 	push	#0x01
      00961D 5F               [ 1]  369 	clrw	x
      00961E 89               [ 2]  370 	pushw	x
      00961F 4B F7            [ 1]  371 	push	#<(___str_0+0)
      009621 4B 81            [ 1]  372 	push	#((___str_0+0) >> 8)
      009623 CD 00 00         [ 4]  373 	call	_assert_failed
      009626 5B 06            [ 2]  374 	addw	sp, #6
      009628                        375 00113$:
                                    376 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      009628 0D 05            [ 1]  377 	tnz	(0x05, sp)
      00962A 27 67            [ 1]  378 	jreq	00118$
      00962C 7B 05            [ 1]  379 	ld	a, (0x05, sp)
      00962E 4A               [ 1]  380 	dec	a
      00962F 27 62            [ 1]  381 	jreq	00118$
      009631 7B 05            [ 1]  382 	ld	a, (0x05, sp)
      009633 A0 03            [ 1]  383 	sub	a, #0x03
      009635 26 02            [ 1]  384 	jrne	00262$
      009637 4C               [ 1]  385 	inc	a
      009638 21                     386 	.byte 0x21
      009639                        387 00262$:
      009639 4F               [ 1]  388 	clr	a
      00963A                        389 00263$:
      00963A 4D               [ 1]  390 	tnz	a
      00963B 26 56            [ 1]  391 	jrne	00118$
      00963D 4D               [ 1]  392 	tnz	a
      00963E 26 53            [ 1]  393 	jrne	00118$
      009640 4D               [ 1]  394 	tnz	a
      009641 26 50            [ 1]  395 	jrne	00118$
      009643 7B 05            [ 1]  396 	ld	a, (0x05, sp)
      009645 A0 04            [ 1]  397 	sub	a, #0x04
      009647 26 04            [ 1]  398 	jrne	00268$
      009649 4C               [ 1]  399 	inc	a
      00964A 97               [ 1]  400 	ld	xl, a
      00964B 20 02            [ 2]  401 	jra	00269$
      00964D                        402 00268$:
      00964D 4F               [ 1]  403 	clr	a
      00964E 97               [ 1]  404 	ld	xl, a
      00964F                        405 00269$:
      00964F 9F               [ 1]  406 	ld	a, xl
      009650 4D               [ 1]  407 	tnz	a
      009651 26 40            [ 1]  408 	jrne	00118$
      009653 7B 05            [ 1]  409 	ld	a, (0x05, sp)
      009655 A0 05            [ 1]  410 	sub	a, #0x05
      009657 26 02            [ 1]  411 	jrne	00272$
      009659 4C               [ 1]  412 	inc	a
      00965A 21                     413 	.byte 0x21
      00965B                        414 00272$:
      00965B 4F               [ 1]  415 	clr	a
      00965C                        416 00273$:
      00965C 4D               [ 1]  417 	tnz	a
      00965D 26 34            [ 1]  418 	jrne	00118$
      00965F 4D               [ 1]  419 	tnz	a
      009660 26 31            [ 1]  420 	jrne	00118$
      009662 9F               [ 1]  421 	ld	a, xl
      009663 4D               [ 1]  422 	tnz	a
      009664 26 2D            [ 1]  423 	jrne	00118$
      009666 7B 05            [ 1]  424 	ld	a, (0x05, sp)
      009668 A1 06            [ 1]  425 	cp	a, #0x06
      00966A 27 27            [ 1]  426 	jreq	00118$
      00966C 7B 05            [ 1]  427 	ld	a, (0x05, sp)
      00966E A1 07            [ 1]  428 	cp	a, #0x07
      009670 27 21            [ 1]  429 	jreq	00118$
      009672 7B 05            [ 1]  430 	ld	a, (0x05, sp)
      009674 A1 17            [ 1]  431 	cp	a, #0x17
      009676 27 1B            [ 1]  432 	jreq	00118$
      009678 7B 05            [ 1]  433 	ld	a, (0x05, sp)
      00967A A1 13            [ 1]  434 	cp	a, #0x13
      00967C 27 15            [ 1]  435 	jreq	00118$
      00967E 7B 05            [ 1]  436 	ld	a, (0x05, sp)
      009680 A1 12            [ 1]  437 	cp	a, #0x12
      009682 27 0F            [ 1]  438 	jreq	00118$
      009684 4B 0B            [ 1]  439 	push	#0x0b
      009686 4B 01            [ 1]  440 	push	#0x01
      009688 5F               [ 1]  441 	clrw	x
      009689 89               [ 2]  442 	pushw	x
      00968A 4B F7            [ 1]  443 	push	#<(___str_0+0)
      00968C 4B 81            [ 1]  444 	push	#((___str_0+0) >> 8)
      00968E CD 00 00         [ 4]  445 	call	_assert_failed
      009691 5B 06            [ 2]  446 	addw	sp, #6
      009693                        447 00118$:
                                    448 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      009693 7B 05            [ 1]  449 	ld	a, (0x05, sp)
      009695 A4 0F            [ 1]  450 	and	a, #0x0f
      009697 88               [ 1]  451 	push	a
      009698 A6 01            [ 1]  452 	ld	a, #0x01
      00969A 6B 02            [ 1]  453 	ld	(0x02, sp), a
      00969C 84               [ 1]  454 	pop	a
      00969D 4D               [ 1]  455 	tnz	a
      00969E 27 05            [ 1]  456 	jreq	00293$
      0096A0                        457 00292$:
      0096A0 08 01            [ 1]  458 	sll	(0x01, sp)
      0096A2 4A               [ 1]  459 	dec	a
      0096A3 26 FB            [ 1]  460 	jrne	00292$
      0096A5                        461 00293$:
                                    462 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0096A5 7B 01            [ 1]  463 	ld	a, (0x01, sp)
      0096A7 43               [ 1]  464 	cpl	a
      0096A8 6B 02            [ 1]  465 	ld	(0x02, sp), a
                                    466 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0096AA 7B 05            [ 1]  467 	ld	a, (0x05, sp)
      0096AC A5 10            [ 1]  468 	bcp	a, #0x10
      0096AE 26 15            [ 1]  469 	jrne	00108$
                                    470 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0096B0 C6 50 C7         [ 1]  471 	ld	a, 0x50c7
                                    472 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 271: if (NewState != DISABLE)
      0096B3 0D 06            [ 1]  473 	tnz	(0x06, sp)
      0096B5 27 07            [ 1]  474 	jreq	00102$
                                    475 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0096B7 1A 01            [ 1]  476 	or	a, (0x01, sp)
      0096B9 C7 50 C7         [ 1]  477 	ld	0x50c7, a
      0096BC 20 1A            [ 2]  478 	jra	00110$
      0096BE                        479 00102$:
                                    480 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0096BE 14 02            [ 1]  481 	and	a, (0x02, sp)
      0096C0 C7 50 C7         [ 1]  482 	ld	0x50c7, a
      0096C3 20 13            [ 2]  483 	jra	00110$
      0096C5                        484 00108$:
                                    485 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0096C5 C6 50 CA         [ 1]  486 	ld	a, 0x50ca
                                    487 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 284: if (NewState != DISABLE)
      0096C8 0D 06            [ 1]  488 	tnz	(0x06, sp)
      0096CA 27 07            [ 1]  489 	jreq	00105$
                                    490 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0096CC 1A 01            [ 1]  491 	or	a, (0x01, sp)
      0096CE C7 50 CA         [ 1]  492 	ld	0x50ca, a
      0096D1 20 05            [ 2]  493 	jra	00110$
      0096D3                        494 00105$:
                                    495 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0096D3 14 02            [ 1]  496 	and	a, (0x02, sp)
      0096D5 C7 50 CA         [ 1]  497 	ld	0x50ca, a
      0096D8                        498 00110$:
                                    499 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 295: }
      0096D8 85               [ 2]  500 	popw	x
      0096D9 81               [ 4]  501 	ret
                                    502 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    503 ;	-----------------------------------------
                                    504 ;	 function CLK_ClockSwitchConfig
                                    505 ;	-----------------------------------------
      0096DA                        506 _CLK_ClockSwitchConfig:
      0096DA 88               [ 1]  507 	push	a
                                    508 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      0096DB 7B 05            [ 1]  509 	ld	a, (0x05, sp)
      0096DD A1 E1            [ 1]  510 	cp	a, #0xe1
      0096DF 27 1B            [ 1]  511 	jreq	00140$
      0096E1 7B 05            [ 1]  512 	ld	a, (0x05, sp)
      0096E3 A1 D2            [ 1]  513 	cp	a, #0xd2
      0096E5 27 15            [ 1]  514 	jreq	00140$
      0096E7 7B 05            [ 1]  515 	ld	a, (0x05, sp)
      0096E9 A1 B4            [ 1]  516 	cp	a, #0xb4
      0096EB 27 0F            [ 1]  517 	jreq	00140$
      0096ED 4B 3C            [ 1]  518 	push	#0x3c
      0096EF 4B 01            [ 1]  519 	push	#0x01
      0096F1 5F               [ 1]  520 	clrw	x
      0096F2 89               [ 2]  521 	pushw	x
      0096F3 4B F7            [ 1]  522 	push	#<(___str_0+0)
      0096F5 4B 81            [ 1]  523 	push	#((___str_0+0) >> 8)
      0096F7 CD 00 00         [ 4]  524 	call	_assert_failed
      0096FA 5B 06            [ 2]  525 	addw	sp, #6
      0096FC                        526 00140$:
                                    527 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      0096FC 7B 04            [ 1]  528 	ld	a, (0x04, sp)
      0096FE 4A               [ 1]  529 	dec	a
      0096FF 26 05            [ 1]  530 	jrne	00309$
      009701 A6 01            [ 1]  531 	ld	a, #0x01
      009703 6B 01            [ 1]  532 	ld	(0x01, sp), a
      009705 C5                     533 	.byte 0xc5
      009706                        534 00309$:
      009706 0F 01            [ 1]  535 	clr	(0x01, sp)
      009708                        536 00310$:
      009708 0D 04            [ 1]  537 	tnz	(0x04, sp)
      00970A 27 13            [ 1]  538 	jreq	00148$
      00970C 0D 01            [ 1]  539 	tnz	(0x01, sp)
      00970E 26 0F            [ 1]  540 	jrne	00148$
      009710 4B 3D            [ 1]  541 	push	#0x3d
      009712 4B 01            [ 1]  542 	push	#0x01
      009714 5F               [ 1]  543 	clrw	x
      009715 89               [ 2]  544 	pushw	x
      009716 4B F7            [ 1]  545 	push	#<(___str_0+0)
      009718 4B 81            [ 1]  546 	push	#((___str_0+0) >> 8)
      00971A CD 00 00         [ 4]  547 	call	_assert_failed
      00971D 5B 06            [ 2]  548 	addw	sp, #6
      00971F                        549 00148$:
                                    550 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      00971F 0D 06            [ 1]  551 	tnz	(0x06, sp)
      009721 27 14            [ 1]  552 	jreq	00153$
      009723 7B 06            [ 1]  553 	ld	a, (0x06, sp)
      009725 4A               [ 1]  554 	dec	a
      009726 27 0F            [ 1]  555 	jreq	00153$
      009728 4B 3E            [ 1]  556 	push	#0x3e
      00972A 4B 01            [ 1]  557 	push	#0x01
      00972C 5F               [ 1]  558 	clrw	x
      00972D 89               [ 2]  559 	pushw	x
      00972E 4B F7            [ 1]  560 	push	#<(___str_0+0)
      009730 4B 81            [ 1]  561 	push	#((___str_0+0) >> 8)
      009732 CD 00 00         [ 4]  562 	call	_assert_failed
      009735 5B 06            [ 2]  563 	addw	sp, #6
      009737                        564 00153$:
                                    565 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      009737 0D 07            [ 1]  566 	tnz	(0x07, sp)
      009739 27 14            [ 1]  567 	jreq	00158$
      00973B 7B 07            [ 1]  568 	ld	a, (0x07, sp)
      00973D 4A               [ 1]  569 	dec	a
      00973E 27 0F            [ 1]  570 	jreq	00158$
      009740 4B 3F            [ 1]  571 	push	#0x3f
      009742 4B 01            [ 1]  572 	push	#0x01
      009744 5F               [ 1]  573 	clrw	x
      009745 89               [ 2]  574 	pushw	x
      009746 4B F7            [ 1]  575 	push	#<(___str_0+0)
      009748 4B 81            [ 1]  576 	push	#((___str_0+0) >> 8)
      00974A CD 00 00         [ 4]  577 	call	_assert_failed
      00974D 5B 06            [ 2]  578 	addw	sp, #6
      00974F                        579 00158$:
                                    580 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      00974F C6 50 C3         [ 1]  581 	ld	a, 0x50c3
      009752 90 97            [ 1]  582 	ld	yl, a
                                    583 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      009754 C6 50 C5         [ 1]  584 	ld	a, 0x50c5
      009757 97               [ 1]  585 	ld	xl, a
                                    586 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      009758 7B 01            [ 1]  587 	ld	a, (0x01, sp)
      00975A 27 38            [ 1]  588 	jreq	00122$
                                    589 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00975C 9F               [ 1]  590 	ld	a, xl
      00975D AA 02            [ 1]  591 	or	a, #0x02
      00975F C7 50 C5         [ 1]  592 	ld	0x50c5, a
      009762 C6 50 C5         [ 1]  593 	ld	a, 0x50c5
                                    594 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 331: if (ITState != DISABLE)
      009765 0D 06            [ 1]  595 	tnz	(0x06, sp)
      009767 27 07            [ 1]  596 	jreq	00102$
                                    597 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      009769 AA 04            [ 1]  598 	or	a, #0x04
      00976B C7 50 C5         [ 1]  599 	ld	0x50c5, a
      00976E 20 05            [ 2]  600 	jra	00103$
      009770                        601 00102$:
                                    602 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      009770 A4 FB            [ 1]  603 	and	a, #0xfb
      009772 C7 50 C5         [ 1]  604 	ld	0x50c5, a
      009775                        605 00103$:
                                    606 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      009775 AE 50 C4         [ 2]  607 	ldw	x, #0x50c4
      009778 7B 05            [ 1]  608 	ld	a, (0x05, sp)
      00977A F7               [ 1]  609 	ld	(x), a
                                    610 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      00977B 5F               [ 1]  611 	clrw	x
      00977C 5A               [ 2]  612 	decw	x
      00977D                        613 00105$:
      00977D C6 50 C5         [ 1]  614 	ld	a, 0x50c5
      009780 44               [ 1]  615 	srl	a
      009781 24 06            [ 1]  616 	jrnc	00107$
      009783 5D               [ 2]  617 	tnzw	x
      009784 27 03            [ 1]  618 	jreq	00107$
                                    619 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 346: DownCounter--;
      009786 5A               [ 2]  620 	decw	x
      009787 20 F4            [ 2]  621 	jra	00105$
      009789                        622 00107$:
                                    623 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 349: if(DownCounter != 0)
      009789 5D               [ 2]  624 	tnzw	x
      00978A 27 05            [ 1]  625 	jreq	00109$
                                    626 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 351: Swif = SUCCESS;
      00978C A6 01            [ 1]  627 	ld	a, #0x01
      00978E 97               [ 1]  628 	ld	xl, a
      00978F 20 36            [ 2]  629 	jra	00123$
      009791                        630 00109$:
                                    631 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 355: Swif = ERROR;
      009791 5F               [ 1]  632 	clrw	x
      009792 20 33            [ 2]  633 	jra	00123$
      009794                        634 00122$:
                                    635 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 361: if (ITState != DISABLE)
      009794 0D 06            [ 1]  636 	tnz	(0x06, sp)
      009796 27 08            [ 1]  637 	jreq	00112$
                                    638 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      009798 9F               [ 1]  639 	ld	a, xl
      009799 AA 04            [ 1]  640 	or	a, #0x04
      00979B C7 50 C5         [ 1]  641 	ld	0x50c5, a
      00979E 20 06            [ 2]  642 	jra	00113$
      0097A0                        643 00112$:
                                    644 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0097A0 9F               [ 1]  645 	ld	a, xl
      0097A1 A4 FB            [ 1]  646 	and	a, #0xfb
      0097A3 C7 50 C5         [ 1]  647 	ld	0x50c5, a
      0097A6                        648 00113$:
                                    649 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      0097A6 AE 50 C4         [ 2]  650 	ldw	x, #0x50c4
      0097A9 7B 05            [ 1]  651 	ld	a, (0x05, sp)
      0097AB F7               [ 1]  652 	ld	(x), a
                                    653 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      0097AC 5F               [ 1]  654 	clrw	x
      0097AD 5A               [ 2]  655 	decw	x
      0097AE                        656 00115$:
      0097AE C6 50 C5         [ 1]  657 	ld	a, 0x50c5
      0097B1 A5 08            [ 1]  658 	bcp	a, #0x08
      0097B3 27 06            [ 1]  659 	jreq	00117$
      0097B5 5D               [ 2]  660 	tnzw	x
      0097B6 27 03            [ 1]  661 	jreq	00117$
                                    662 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 376: DownCounter--;
      0097B8 5A               [ 2]  663 	decw	x
      0097B9 20 F3            [ 2]  664 	jra	00115$
      0097BB                        665 00117$:
                                    666 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 379: if(DownCounter != 0)
      0097BB 5D               [ 2]  667 	tnzw	x
      0097BC 27 08            [ 1]  668 	jreq	00119$
                                    669 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      0097BE 72 12 50 C5      [ 1]  670 	bset	20677, #1
                                    671 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 383: Swif = SUCCESS;
      0097C2 A6 01            [ 1]  672 	ld	a, #0x01
      0097C4 97               [ 1]  673 	ld	xl, a
                                    674 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 387: Swif = ERROR;
      0097C5 21                     675 	.byte 0x21
      0097C6                        676 00119$:
      0097C6 5F               [ 1]  677 	clrw	x
      0097C7                        678 00123$:
                                    679 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 390: if(Swif != ERROR)
      0097C7 9F               [ 1]  680 	ld	a, xl
      0097C8 4D               [ 1]  681 	tnz	a
      0097C9 27 2E            [ 1]  682 	jreq	00136$
                                    683 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0097CB 0D 07            [ 1]  684 	tnz	(0x07, sp)
      0097CD 26 0C            [ 1]  685 	jrne	00132$
      0097CF 90 9F            [ 1]  686 	ld	a, yl
      0097D1 A1 E1            [ 1]  687 	cp	a, #0xe1
      0097D3 26 06            [ 1]  688 	jrne	00132$
                                    689 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0097D5 72 11 50 C0      [ 1]  690 	bres	20672, #0
      0097D9 20 1E            [ 2]  691 	jra	00136$
      0097DB                        692 00132$:
                                    693 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      0097DB 0D 07            [ 1]  694 	tnz	(0x07, sp)
      0097DD 26 0C            [ 1]  695 	jrne	00128$
      0097DF 90 9F            [ 1]  696 	ld	a, yl
      0097E1 A1 D2            [ 1]  697 	cp	a, #0xd2
      0097E3 26 06            [ 1]  698 	jrne	00128$
                                    699 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0097E5 72 17 50 C0      [ 1]  700 	bres	20672, #3
      0097E9 20 0E            [ 2]  701 	jra	00136$
      0097EB                        702 00128$:
                                    703 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      0097EB 0D 07            [ 1]  704 	tnz	(0x07, sp)
      0097ED 26 0A            [ 1]  705 	jrne	00136$
      0097EF 90 9F            [ 1]  706 	ld	a, yl
      0097F1 A1 B4            [ 1]  707 	cp	a, #0xb4
      0097F3 26 04            [ 1]  708 	jrne	00136$
                                    709 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0097F5 72 11 50 C1      [ 1]  710 	bres	20673, #0
      0097F9                        711 00136$:
                                    712 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 406: return(Swif);
      0097F9 9F               [ 1]  713 	ld	a, xl
                                    714 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 407: }
      0097FA 5B 01            [ 2]  715 	addw	sp, #1
      0097FC 81               [ 4]  716 	ret
                                    717 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    718 ;	-----------------------------------------
                                    719 ;	 function CLK_HSIPrescalerConfig
                                    720 ;	-----------------------------------------
      0097FD                        721 _CLK_HSIPrescalerConfig:
                                    722 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      0097FD 0D 03            [ 1]  723 	tnz	(0x03, sp)
      0097FF 27 21            [ 1]  724 	jreq	00104$
      009801 7B 03            [ 1]  725 	ld	a, (0x03, sp)
      009803 A1 08            [ 1]  726 	cp	a, #0x08
      009805 27 1B            [ 1]  727 	jreq	00104$
      009807 7B 03            [ 1]  728 	ld	a, (0x03, sp)
      009809 A1 10            [ 1]  729 	cp	a, #0x10
      00980B 27 15            [ 1]  730 	jreq	00104$
      00980D 7B 03            [ 1]  731 	ld	a, (0x03, sp)
      00980F A1 18            [ 1]  732 	cp	a, #0x18
      009811 27 0F            [ 1]  733 	jreq	00104$
      009813 4B A2            [ 1]  734 	push	#0xa2
      009815 4B 01            [ 1]  735 	push	#0x01
      009817 5F               [ 1]  736 	clrw	x
      009818 89               [ 2]  737 	pushw	x
      009819 4B F7            [ 1]  738 	push	#<(___str_0+0)
      00981B 4B 81            [ 1]  739 	push	#((___str_0+0) >> 8)
      00981D CD 00 00         [ 4]  740 	call	_assert_failed
      009820 5B 06            [ 2]  741 	addw	sp, #6
      009822                        742 00104$:
                                    743 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      009822 C6 50 C6         [ 1]  744 	ld	a, 0x50c6
      009825 A4 E7            [ 1]  745 	and	a, #0xe7
      009827 C7 50 C6         [ 1]  746 	ld	0x50c6, a
                                    747 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      00982A C6 50 C6         [ 1]  748 	ld	a, 0x50c6
      00982D 1A 03            [ 1]  749 	or	a, (0x03, sp)
      00982F C7 50 C6         [ 1]  750 	ld	0x50c6, a
                                    751 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 425: }
      009832 81               [ 4]  752 	ret
                                    753 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    754 ;	-----------------------------------------
                                    755 ;	 function CLK_CCOConfig
                                    756 ;	-----------------------------------------
      009833                        757 _CLK_CCOConfig:
                                    758 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
      009833 0D 03            [ 1]  759 	tnz	(0x03, sp)
      009835 27 57            [ 1]  760 	jreq	00104$
      009837 7B 03            [ 1]  761 	ld	a, (0x03, sp)
      009839 A1 04            [ 1]  762 	cp	a, #0x04
      00983B 27 51            [ 1]  763 	jreq	00104$
      00983D 7B 03            [ 1]  764 	ld	a, (0x03, sp)
      00983F A1 02            [ 1]  765 	cp	a, #0x02
      009841 27 4B            [ 1]  766 	jreq	00104$
      009843 7B 03            [ 1]  767 	ld	a, (0x03, sp)
      009845 A1 08            [ 1]  768 	cp	a, #0x08
      009847 27 45            [ 1]  769 	jreq	00104$
      009849 7B 03            [ 1]  770 	ld	a, (0x03, sp)
      00984B A1 0A            [ 1]  771 	cp	a, #0x0a
      00984D 27 3F            [ 1]  772 	jreq	00104$
      00984F 7B 03            [ 1]  773 	ld	a, (0x03, sp)
      009851 A1 0C            [ 1]  774 	cp	a, #0x0c
      009853 27 39            [ 1]  775 	jreq	00104$
      009855 7B 03            [ 1]  776 	ld	a, (0x03, sp)
      009857 A1 0E            [ 1]  777 	cp	a, #0x0e
      009859 27 33            [ 1]  778 	jreq	00104$
      00985B 7B 03            [ 1]  779 	ld	a, (0x03, sp)
      00985D A1 10            [ 1]  780 	cp	a, #0x10
      00985F 27 2D            [ 1]  781 	jreq	00104$
      009861 7B 03            [ 1]  782 	ld	a, (0x03, sp)
      009863 A1 12            [ 1]  783 	cp	a, #0x12
      009865 27 27            [ 1]  784 	jreq	00104$
      009867 7B 03            [ 1]  785 	ld	a, (0x03, sp)
      009869 A1 14            [ 1]  786 	cp	a, #0x14
      00986B 27 21            [ 1]  787 	jreq	00104$
      00986D 7B 03            [ 1]  788 	ld	a, (0x03, sp)
      00986F A1 16            [ 1]  789 	cp	a, #0x16
      009871 27 1B            [ 1]  790 	jreq	00104$
      009873 7B 03            [ 1]  791 	ld	a, (0x03, sp)
      009875 A1 18            [ 1]  792 	cp	a, #0x18
      009877 27 15            [ 1]  793 	jreq	00104$
      009879 7B 03            [ 1]  794 	ld	a, (0x03, sp)
      00987B A1 1A            [ 1]  795 	cp	a, #0x1a
      00987D 27 0F            [ 1]  796 	jreq	00104$
      00987F 4B B7            [ 1]  797 	push	#0xb7
      009881 4B 01            [ 1]  798 	push	#0x01
      009883 5F               [ 1]  799 	clrw	x
      009884 89               [ 2]  800 	pushw	x
      009885 4B F7            [ 1]  801 	push	#<(___str_0+0)
      009887 4B 81            [ 1]  802 	push	#((___str_0+0) >> 8)
      009889 CD 00 00         [ 4]  803 	call	_assert_failed
      00988C 5B 06            [ 2]  804 	addw	sp, #6
      00988E                        805 00104$:
                                    806 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      00988E C6 50 C9         [ 1]  807 	ld	a, 0x50c9
      009891 A4 E1            [ 1]  808 	and	a, #0xe1
      009893 C7 50 C9         [ 1]  809 	ld	0x50c9, a
                                    810 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      009896 C6 50 C9         [ 1]  811 	ld	a, 0x50c9
      009899 1A 03            [ 1]  812 	or	a, (0x03, sp)
      00989B C7 50 C9         [ 1]  813 	ld	0x50c9, a
                                    814 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      00989E 72 10 50 C9      [ 1]  815 	bset	20681, #0
                                    816 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 449: }
      0098A2 81               [ 4]  817 	ret
                                    818 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    819 ;	-----------------------------------------
                                    820 ;	 function CLK_ITConfig
                                    821 ;	-----------------------------------------
      0098A3                        822 _CLK_ITConfig:
      0098A3 88               [ 1]  823 	push	a
                                    824 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0098A4 0D 05            [ 1]  825 	tnz	(0x05, sp)
      0098A6 27 14            [ 1]  826 	jreq	00115$
      0098A8 7B 05            [ 1]  827 	ld	a, (0x05, sp)
      0098AA 4A               [ 1]  828 	dec	a
      0098AB 27 0F            [ 1]  829 	jreq	00115$
      0098AD 4B CE            [ 1]  830 	push	#0xce
      0098AF 4B 01            [ 1]  831 	push	#0x01
      0098B1 5F               [ 1]  832 	clrw	x
      0098B2 89               [ 2]  833 	pushw	x
      0098B3 4B F7            [ 1]  834 	push	#<(___str_0+0)
      0098B5 4B 81            [ 1]  835 	push	#((___str_0+0) >> 8)
      0098B7 CD 00 00         [ 4]  836 	call	_assert_failed
      0098BA 5B 06            [ 2]  837 	addw	sp, #6
      0098BC                        838 00115$:
                                    839 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
      0098BC 7B 04            [ 1]  840 	ld	a, (0x04, sp)
      0098BE A0 0C            [ 1]  841 	sub	a, #0x0c
      0098C0 26 02            [ 1]  842 	jrne	00174$
      0098C2 4C               [ 1]  843 	inc	a
      0098C3 21                     844 	.byte 0x21
      0098C4                        845 00174$:
      0098C4 4F               [ 1]  846 	clr	a
      0098C5                        847 00175$:
      0098C5 88               [ 1]  848 	push	a
      0098C6 7B 05            [ 1]  849 	ld	a, (0x05, sp)
      0098C8 A1 1C            [ 1]  850 	cp	a, #0x1c
      0098CA 84               [ 1]  851 	pop	a
      0098CB 26 07            [ 1]  852 	jrne	00177$
      0098CD 88               [ 1]  853 	push	a
      0098CE A6 01            [ 1]  854 	ld	a, #0x01
      0098D0 6B 02            [ 1]  855 	ld	(0x02, sp), a
      0098D2 84               [ 1]  856 	pop	a
      0098D3 C5                     857 	.byte 0xc5
      0098D4                        858 00177$:
      0098D4 0F 01            [ 1]  859 	clr	(0x01, sp)
      0098D6                        860 00178$:
      0098D6 4D               [ 1]  861 	tnz	a
      0098D7 26 15            [ 1]  862 	jrne	00120$
      0098D9 0D 01            [ 1]  863 	tnz	(0x01, sp)
      0098DB 26 11            [ 1]  864 	jrne	00120$
      0098DD 88               [ 1]  865 	push	a
      0098DE 4B CF            [ 1]  866 	push	#0xcf
      0098E0 4B 01            [ 1]  867 	push	#0x01
      0098E2 5F               [ 1]  868 	clrw	x
      0098E3 89               [ 2]  869 	pushw	x
      0098E4 4B F7            [ 1]  870 	push	#<(___str_0+0)
      0098E6 4B 81            [ 1]  871 	push	#((___str_0+0) >> 8)
      0098E8 CD 00 00         [ 4]  872 	call	_assert_failed
      0098EB 5B 06            [ 2]  873 	addw	sp, #6
      0098ED 84               [ 1]  874 	pop	a
      0098EE                        875 00120$:
                                    876 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 465: if (NewState != DISABLE)
      0098EE 0D 05            [ 1]  877 	tnz	(0x05, sp)
      0098F0 27 13            [ 1]  878 	jreq	00110$
                                    879 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 467: switch (CLK_IT)
      0098F2 4D               [ 1]  880 	tnz	a
      0098F3 26 0A            [ 1]  881 	jrne	00102$
      0098F5 7B 01            [ 1]  882 	ld	a, (0x01, sp)
      0098F7 27 1D            [ 1]  883 	jreq	00112$
                                    884 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      0098F9 72 14 50 C5      [ 1]  885 	bset	20677, #2
                                    886 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 471: break;
      0098FD 20 17            [ 2]  887 	jra	00112$
                                    888 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      0098FF                        889 00102$:
                                    890 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      0098FF 72 14 50 C8      [ 1]  891 	bset	20680, #2
                                    892 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 474: break;
      009903 20 11            [ 2]  893 	jra	00112$
                                    894 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 477: }
      009905                        895 00110$:
                                    896 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 481: switch (CLK_IT)
      009905 4D               [ 1]  897 	tnz	a
      009906 26 0A            [ 1]  898 	jrne	00106$
      009908 7B 01            [ 1]  899 	ld	a, (0x01, sp)
      00990A 27 0A            [ 1]  900 	jreq	00112$
                                    901 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      00990C 72 15 50 C5      [ 1]  902 	bres	20677, #2
                                    903 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 485: break;
      009910 20 04            [ 2]  904 	jra	00112$
                                    905 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      009912                        906 00106$:
                                    907 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      009912 72 15 50 C8      [ 1]  908 	bres	20680, #2
                                    909 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 491: }
      009916                        910 00112$:
                                    911 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 493: }
      009916 84               [ 1]  912 	pop	a
      009917 81               [ 4]  913 	ret
                                    914 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    915 ;	-----------------------------------------
                                    916 ;	 function CLK_SYSCLKConfig
                                    917 ;	-----------------------------------------
      009918                        918 _CLK_SYSCLKConfig:
      009918 88               [ 1]  919 	push	a
                                    920 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      009919 0D 04            [ 1]  921 	tnz	(0x04, sp)
      00991B 27 51            [ 1]  922 	jreq	00107$
      00991D 7B 04            [ 1]  923 	ld	a, (0x04, sp)
      00991F A1 08            [ 1]  924 	cp	a, #0x08
      009921 27 4B            [ 1]  925 	jreq	00107$
      009923 7B 04            [ 1]  926 	ld	a, (0x04, sp)
      009925 A1 10            [ 1]  927 	cp	a, #0x10
      009927 27 45            [ 1]  928 	jreq	00107$
      009929 7B 04            [ 1]  929 	ld	a, (0x04, sp)
      00992B A1 18            [ 1]  930 	cp	a, #0x18
      00992D 27 3F            [ 1]  931 	jreq	00107$
      00992F 7B 04            [ 1]  932 	ld	a, (0x04, sp)
      009931 A1 80            [ 1]  933 	cp	a, #0x80
      009933 27 39            [ 1]  934 	jreq	00107$
      009935 7B 04            [ 1]  935 	ld	a, (0x04, sp)
      009937 A1 81            [ 1]  936 	cp	a, #0x81
      009939 27 33            [ 1]  937 	jreq	00107$
      00993B 7B 04            [ 1]  938 	ld	a, (0x04, sp)
      00993D A1 82            [ 1]  939 	cp	a, #0x82
      00993F 27 2D            [ 1]  940 	jreq	00107$
      009941 7B 04            [ 1]  941 	ld	a, (0x04, sp)
      009943 A1 83            [ 1]  942 	cp	a, #0x83
      009945 27 27            [ 1]  943 	jreq	00107$
      009947 7B 04            [ 1]  944 	ld	a, (0x04, sp)
      009949 A1 84            [ 1]  945 	cp	a, #0x84
      00994B 27 21            [ 1]  946 	jreq	00107$
      00994D 7B 04            [ 1]  947 	ld	a, (0x04, sp)
      00994F A1 85            [ 1]  948 	cp	a, #0x85
      009951 27 1B            [ 1]  949 	jreq	00107$
      009953 7B 04            [ 1]  950 	ld	a, (0x04, sp)
      009955 A1 86            [ 1]  951 	cp	a, #0x86
      009957 27 15            [ 1]  952 	jreq	00107$
      009959 7B 04            [ 1]  953 	ld	a, (0x04, sp)
      00995B A1 87            [ 1]  954 	cp	a, #0x87
      00995D 27 0F            [ 1]  955 	jreq	00107$
      00995F 4B F7            [ 1]  956 	push	#0xf7
      009961 4B 01            [ 1]  957 	push	#0x01
      009963 5F               [ 1]  958 	clrw	x
      009964 89               [ 2]  959 	pushw	x
      009965 4B F7            [ 1]  960 	push	#<(___str_0+0)
      009967 4B 81            [ 1]  961 	push	#((___str_0+0) >> 8)
      009969 CD 00 00         [ 4]  962 	call	_assert_failed
      00996C 5B 06            [ 2]  963 	addw	sp, #6
      00996E                        964 00107$:
                                    965 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00996E C6 50 C6         [ 1]  966 	ld	a, 0x50c6
                                    967 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      009971 0D 04            [ 1]  968 	tnz	(0x04, sp)
      009973 2B 15            [ 1]  969 	jrmi	00102$
                                    970 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      009975 A4 E7            [ 1]  971 	and	a, #0xe7
      009977 C7 50 C6         [ 1]  972 	ld	0x50c6, a
                                    973 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      00997A C6 50 C6         [ 1]  974 	ld	a, 0x50c6
      00997D 6B 01            [ 1]  975 	ld	(0x01, sp), a
      00997F 7B 04            [ 1]  976 	ld	a, (0x04, sp)
      009981 A4 18            [ 1]  977 	and	a, #0x18
      009983 1A 01            [ 1]  978 	or	a, (0x01, sp)
      009985 C7 50 C6         [ 1]  979 	ld	0x50c6, a
      009988 20 13            [ 2]  980 	jra	00104$
      00998A                        981 00102$:
                                    982 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      00998A A4 F8            [ 1]  983 	and	a, #0xf8
      00998C C7 50 C6         [ 1]  984 	ld	0x50c6, a
                                    985 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00998F C6 50 C6         [ 1]  986 	ld	a, 0x50c6
      009992 6B 01            [ 1]  987 	ld	(0x01, sp), a
      009994 7B 04            [ 1]  988 	ld	a, (0x04, sp)
      009996 A4 07            [ 1]  989 	and	a, #0x07
      009998 1A 01            [ 1]  990 	or	a, (0x01, sp)
      00999A C7 50 C6         [ 1]  991 	ld	0x50c6, a
      00999D                        992 00104$:
                                    993 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 515: }
      00999D 84               [ 1]  994 	pop	a
      00999E 81               [ 4]  995 	ret
                                    996 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    997 ;	-----------------------------------------
                                    998 ;	 function CLK_SWIMConfig
                                    999 ;	-----------------------------------------
      00999F                       1000 _CLK_SWIMConfig:
                                   1001 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
      00999F 0D 03            [ 1] 1002 	tnz	(0x03, sp)
      0099A1 27 14            [ 1] 1003 	jreq	00107$
      0099A3 7B 03            [ 1] 1004 	ld	a, (0x03, sp)
      0099A5 4A               [ 1] 1005 	dec	a
      0099A6 27 0F            [ 1] 1006 	jreq	00107$
      0099A8 4B 0E            [ 1] 1007 	push	#0x0e
      0099AA 4B 02            [ 1] 1008 	push	#0x02
      0099AC 5F               [ 1] 1009 	clrw	x
      0099AD 89               [ 2] 1010 	pushw	x
      0099AE 4B F7            [ 1] 1011 	push	#<(___str_0+0)
      0099B0 4B 81            [ 1] 1012 	push	#((___str_0+0) >> 8)
      0099B2 CD 00 00         [ 4] 1013 	call	_assert_failed
      0099B5 5B 06            [ 2] 1014 	addw	sp, #6
      0099B7                       1015 00107$:
                                   1016 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      0099B7 C6 50 CD         [ 1] 1017 	ld	a, 0x50cd
                                   1018 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      0099BA 0D 03            [ 1] 1019 	tnz	(0x03, sp)
      0099BC 27 06            [ 1] 1020 	jreq	00102$
                                   1021 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      0099BE AA 01            [ 1] 1022 	or	a, #0x01
      0099C0 C7 50 CD         [ 1] 1023 	ld	0x50cd, a
      0099C3 81               [ 4] 1024 	ret
      0099C4                       1025 00102$:
                                   1026 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      0099C4 A4 FE            [ 1] 1027 	and	a, #0xfe
      0099C6 C7 50 CD         [ 1] 1028 	ld	0x50cd, a
                                   1029 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 538: }
      0099C9 81               [ 4] 1030 	ret
                                   1031 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function CLK_ClockSecuritySystemEnable
                                   1034 ;	-----------------------------------------
      0099CA                       1035 _CLK_ClockSecuritySystemEnable:
                                   1036 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      0099CA 72 10 50 C8      [ 1] 1037 	bset	20680, #0
                                   1038 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 551: }
      0099CE 81               [ 4] 1039 	ret
                                   1040 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function CLK_GetSYSCLKSource
                                   1043 ;	-----------------------------------------
      0099CF                       1044 _CLK_GetSYSCLKSource:
                                   1045 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      0099CF C6 50 C3         [ 1] 1046 	ld	a, 0x50c3
                                   1047 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 562: }
      0099D2 81               [ 4] 1048 	ret
                                   1049 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function CLK_GetClockFreq
                                   1052 ;	-----------------------------------------
      0099D3                       1053 _CLK_GetClockFreq:
      0099D3 52 04            [ 2] 1054 	sub	sp, #4
                                   1055 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0099D5 C6 50 C3         [ 1] 1056 	ld	a, 0x50c3
                                   1057 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      0099D8 6B 04            [ 1] 1058 	ld	(0x04, sp), a
      0099DA A1 E1            [ 1] 1059 	cp	a, #0xe1
      0099DC 26 26            [ 1] 1060 	jrne	00105$
                                   1061 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0099DE C6 50 C6         [ 1] 1062 	ld	a, 0x50c6
      0099E1 A4 18            [ 1] 1063 	and	a, #0x18
                                   1064 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      0099E3 44               [ 1] 1065 	srl	a
      0099E4 44               [ 1] 1066 	srl	a
      0099E5 44               [ 1] 1067 	srl	a
                                   1068 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      0099E6 5F               [ 1] 1069 	clrw	x
      0099E7 97               [ 1] 1070 	ld	xl, a
      0099E8 D6 81 EB         [ 1] 1071 	ld	a, (_HSIDivFactor+0, x)
                                   1072 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0099EB 5F               [ 1] 1073 	clrw	x
      0099EC 97               [ 1] 1074 	ld	xl, a
      0099ED 90 5F            [ 1] 1075 	clrw	y
      0099EF 89               [ 2] 1076 	pushw	x
      0099F0 90 89            [ 2] 1077 	pushw	y
      0099F2 4B 00            [ 1] 1078 	push	#0x00
      0099F4 4B 24            [ 1] 1079 	push	#0x24
      0099F6 4B F4            [ 1] 1080 	push	#0xf4
      0099F8 4B 00            [ 1] 1081 	push	#0x00
      0099FA CD DC DA         [ 4] 1082 	call	__divulong
      0099FD 5B 08            [ 2] 1083 	addw	sp, #8
      0099FF 51               [ 1] 1084 	exgw	x, y
      009A00 17 03            [ 2] 1085 	ldw	(0x03, sp), y
      009A02 20 17            [ 2] 1086 	jra	00106$
      009A04                       1087 00105$:
                                   1088 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      009A04 7B 04            [ 1] 1089 	ld	a, (0x04, sp)
      009A06 A1 D2            [ 1] 1090 	cp	a, #0xd2
      009A08 26 09            [ 1] 1091 	jrne	00102$
                                   1092 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      009A0A AE F4 00         [ 2] 1093 	ldw	x, #0xf400
      009A0D 1F 03            [ 2] 1094 	ldw	(0x03, sp), x
      009A0F 5F               [ 1] 1095 	clrw	x
      009A10 5C               [ 1] 1096 	incw	x
      009A11 20 08            [ 2] 1097 	jra	00106$
      009A13                       1098 00102$:
                                   1099 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      009A13 AE 24 00         [ 2] 1100 	ldw	x, #0x2400
      009A16 1F 03            [ 2] 1101 	ldw	(0x03, sp), x
      009A18 AE 00 F4         [ 2] 1102 	ldw	x, #0x00f4
      009A1B                       1103 00106$:
                                   1104 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      009A1B 51               [ 1] 1105 	exgw	x, y
      009A1C 1E 03            [ 2] 1106 	ldw	x, (0x03, sp)
                                   1107 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 595: }
      009A1E 5B 04            [ 2] 1108 	addw	sp, #4
      009A20 81               [ 4] 1109 	ret
                                   1110 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1111 ;	-----------------------------------------
                                   1112 ;	 function CLK_AdjustHSICalibrationValue
                                   1113 ;	-----------------------------------------
      009A21                       1114 _CLK_AdjustHSICalibrationValue:
                                   1115 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
      009A21 0D 03            [ 1] 1116 	tnz	(0x03, sp)
      009A23 27 38            [ 1] 1117 	jreq	00104$
      009A25 7B 03            [ 1] 1118 	ld	a, (0x03, sp)
      009A27 4A               [ 1] 1119 	dec	a
      009A28 27 33            [ 1] 1120 	jreq	00104$
      009A2A 7B 03            [ 1] 1121 	ld	a, (0x03, sp)
      009A2C A1 02            [ 1] 1122 	cp	a, #0x02
      009A2E 27 2D            [ 1] 1123 	jreq	00104$
      009A30 7B 03            [ 1] 1124 	ld	a, (0x03, sp)
      009A32 A1 03            [ 1] 1125 	cp	a, #0x03
      009A34 27 27            [ 1] 1126 	jreq	00104$
      009A36 7B 03            [ 1] 1127 	ld	a, (0x03, sp)
      009A38 A1 04            [ 1] 1128 	cp	a, #0x04
      009A3A 27 21            [ 1] 1129 	jreq	00104$
      009A3C 7B 03            [ 1] 1130 	ld	a, (0x03, sp)
      009A3E A1 05            [ 1] 1131 	cp	a, #0x05
      009A40 27 1B            [ 1] 1132 	jreq	00104$
      009A42 7B 03            [ 1] 1133 	ld	a, (0x03, sp)
      009A44 A1 06            [ 1] 1134 	cp	a, #0x06
      009A46 27 15            [ 1] 1135 	jreq	00104$
      009A48 7B 03            [ 1] 1136 	ld	a, (0x03, sp)
      009A4A A1 07            [ 1] 1137 	cp	a, #0x07
      009A4C 27 0F            [ 1] 1138 	jreq	00104$
      009A4E 4B 5F            [ 1] 1139 	push	#0x5f
      009A50 4B 02            [ 1] 1140 	push	#0x02
      009A52 5F               [ 1] 1141 	clrw	x
      009A53 89               [ 2] 1142 	pushw	x
      009A54 4B F7            [ 1] 1143 	push	#<(___str_0+0)
      009A56 4B 81            [ 1] 1144 	push	#((___str_0+0) >> 8)
      009A58 CD 00 00         [ 4] 1145 	call	_assert_failed
      009A5B 5B 06            [ 2] 1146 	addw	sp, #6
      009A5D                       1147 00104$:
                                   1148 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      009A5D C6 50 CC         [ 1] 1149 	ld	a, 0x50cc
      009A60 A4 F8            [ 1] 1150 	and	a, #0xf8
      009A62 1A 03            [ 1] 1151 	or	a, (0x03, sp)
      009A64 C7 50 CC         [ 1] 1152 	ld	0x50cc, a
                                   1153 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 611: }
      009A67 81               [ 4] 1154 	ret
                                   1155 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1156 ;	-----------------------------------------
                                   1157 ;	 function CLK_SYSCLKEmergencyClear
                                   1158 ;	-----------------------------------------
      009A68                       1159 _CLK_SYSCLKEmergencyClear:
                                   1160 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      009A68 72 11 50 C5      [ 1] 1161 	bres	20677, #0
                                   1162 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 625: }
      009A6C 81               [ 4] 1163 	ret
                                   1164 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1165 ;	-----------------------------------------
                                   1166 ;	 function CLK_GetFlagStatus
                                   1167 ;	-----------------------------------------
      009A6D                       1168 _CLK_GetFlagStatus:
      009A6D 88               [ 1] 1169 	push	a
                                   1170 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      009A6E 1E 04            [ 2] 1171 	ldw	x, (0x04, sp)
      009A70 A3 01 10         [ 2] 1172 	cpw	x, #0x0110
      009A73 27 3B            [ 1] 1173 	jreq	00119$
      009A75 A3 01 02         [ 2] 1174 	cpw	x, #0x0102
      009A78 27 36            [ 1] 1175 	jreq	00119$
      009A7A A3 02 02         [ 2] 1176 	cpw	x, #0x0202
      009A7D 27 31            [ 1] 1177 	jreq	00119$
      009A7F A3 03 08         [ 2] 1178 	cpw	x, #0x0308
      009A82 27 2C            [ 1] 1179 	jreq	00119$
      009A84 A3 03 01         [ 2] 1180 	cpw	x, #0x0301
      009A87 27 27            [ 1] 1181 	jreq	00119$
      009A89 A3 04 08         [ 2] 1182 	cpw	x, #0x0408
      009A8C 27 22            [ 1] 1183 	jreq	00119$
      009A8E A3 04 02         [ 2] 1184 	cpw	x, #0x0402
      009A91 27 1D            [ 1] 1185 	jreq	00119$
      009A93 A3 05 04         [ 2] 1186 	cpw	x, #0x0504
      009A96 27 18            [ 1] 1187 	jreq	00119$
      009A98 A3 05 02         [ 2] 1188 	cpw	x, #0x0502
      009A9B 27 13            [ 1] 1189 	jreq	00119$
      009A9D 89               [ 2] 1190 	pushw	x
      009A9E 4B 81            [ 1] 1191 	push	#0x81
      009AA0 4B 02            [ 1] 1192 	push	#0x02
      009AA2 4B 00            [ 1] 1193 	push	#0x00
      009AA4 4B 00            [ 1] 1194 	push	#0x00
      009AA6 4B F7            [ 1] 1195 	push	#<(___str_0+0)
      009AA8 4B 81            [ 1] 1196 	push	#((___str_0+0) >> 8)
      009AAA CD 00 00         [ 4] 1197 	call	_assert_failed
      009AAD 5B 06            [ 2] 1198 	addw	sp, #6
      009AAF 85               [ 2] 1199 	popw	x
      009AB0                       1200 00119$:
                                   1201 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      009AB0 4F               [ 1] 1202 	clr	a
                                   1203 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      009AB1 97               [ 1] 1204 	ld	xl, a
      009AB2 A3 01 00         [ 2] 1205 	cpw	x, #0x0100
      009AB5 26 05            [ 1] 1206 	jrne	00111$
                                   1207 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      009AB7 C6 50 C0         [ 1] 1208 	ld	a, 0x50c0
      009ABA 20 21            [ 2] 1209 	jra	00112$
      009ABC                       1210 00111$:
                                   1211 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      009ABC A3 02 00         [ 2] 1212 	cpw	x, #0x0200
      009ABF 26 05            [ 1] 1213 	jrne	00108$
                                   1214 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      009AC1 C6 50 C1         [ 1] 1215 	ld	a, 0x50c1
      009AC4 20 17            [ 2] 1216 	jra	00112$
      009AC6                       1217 00108$:
                                   1218 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      009AC6 A3 03 00         [ 2] 1219 	cpw	x, #0x0300
      009AC9 26 05            [ 1] 1220 	jrne	00105$
                                   1221 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      009ACB C6 50 C5         [ 1] 1222 	ld	a, 0x50c5
      009ACE 20 0D            [ 2] 1223 	jra	00112$
      009AD0                       1224 00105$:
                                   1225 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      009AD0 A3 04 00         [ 2] 1226 	cpw	x, #0x0400
      009AD3 26 05            [ 1] 1227 	jrne	00102$
                                   1228 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      009AD5 C6 50 C8         [ 1] 1229 	ld	a, 0x50c8
      009AD8 20 03            [ 2] 1230 	jra	00112$
      009ADA                       1231 00102$:
                                   1232 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      009ADA C6 50 C9         [ 1] 1233 	ld	a, 0x50c9
      009ADD                       1234 00112$:
                                   1235 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      009ADD 88               [ 1] 1236 	push	a
      009ADE 7B 06            [ 1] 1237 	ld	a, (0x06, sp)
      009AE0 6B 02            [ 1] 1238 	ld	(0x02, sp), a
      009AE2 84               [ 1] 1239 	pop	a
      009AE3 14 01            [ 1] 1240 	and	a, (0x01, sp)
      009AE5 27 03            [ 1] 1241 	jreq	00114$
                                   1242 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 670: bitstatus = SET;
      009AE7 A6 01            [ 1] 1243 	ld	a, #0x01
                                   1244 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 674: bitstatus = RESET;
      009AE9 21                    1245 	.byte 0x21
      009AEA                       1246 00114$:
      009AEA 4F               [ 1] 1247 	clr	a
      009AEB                       1248 00115$:
                                   1249 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1250 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 679: }
      009AEB 5B 01            [ 2] 1251 	addw	sp, #1
      009AED 81               [ 4] 1252 	ret
                                   1253 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1254 ;	-----------------------------------------
                                   1255 ;	 function CLK_GetITStatus
                                   1256 ;	-----------------------------------------
      009AEE                       1257 _CLK_GetITStatus:
                                   1258 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
      009AEE 7B 03            [ 1] 1259 	ld	a, (0x03, sp)
      009AF0 A0 1C            [ 1] 1260 	sub	a, #0x1c
      009AF2 26 02            [ 1] 1261 	jrne	00143$
      009AF4 4C               [ 1] 1262 	inc	a
      009AF5 21                    1263 	.byte 0x21
      009AF6                       1264 00143$:
      009AF6 4F               [ 1] 1265 	clr	a
      009AF7                       1266 00144$:
      009AF7 88               [ 1] 1267 	push	a
      009AF8 7B 04            [ 1] 1268 	ld	a, (0x04, sp)
      009AFA A1 0C            [ 1] 1269 	cp	a, #0x0c
      009AFC 84               [ 1] 1270 	pop	a
      009AFD 27 14            [ 1] 1271 	jreq	00113$
      009AFF 4D               [ 1] 1272 	tnz	a
      009B00 26 11            [ 1] 1273 	jrne	00113$
      009B02 88               [ 1] 1274 	push	a
      009B03 4B B4            [ 1] 1275 	push	#0xb4
      009B05 4B 02            [ 1] 1276 	push	#0x02
      009B07 5F               [ 1] 1277 	clrw	x
      009B08 89               [ 2] 1278 	pushw	x
      009B09 4B F7            [ 1] 1279 	push	#<(___str_0+0)
      009B0B 4B 81            [ 1] 1280 	push	#((___str_0+0) >> 8)
      009B0D CD 00 00         [ 4] 1281 	call	_assert_failed
      009B10 5B 06            [ 2] 1282 	addw	sp, #6
      009B12 84               [ 1] 1283 	pop	a
      009B13                       1284 00113$:
                                   1285 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      009B13 4D               [ 1] 1286 	tnz	a
      009B14 27 0D            [ 1] 1287 	jreq	00108$
                                   1288 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      009B16 C6 50 C5         [ 1] 1289 	ld	a, 0x50c5
      009B19 14 03            [ 1] 1290 	and	a, (0x03, sp)
                                   1291 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 699: bitstatus = SET;
      009B1B A0 0C            [ 1] 1292 	sub	a, #0x0c
      009B1D 26 02            [ 1] 1293 	jrne	00102$
      009B1F 4C               [ 1] 1294 	inc	a
      009B20 81               [ 4] 1295 	ret
      009B21                       1296 00102$:
                                   1297 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 703: bitstatus = RESET;
      009B21 4F               [ 1] 1298 	clr	a
      009B22 81               [ 4] 1299 	ret
      009B23                       1300 00108$:
                                   1301 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      009B23 C6 50 C8         [ 1] 1302 	ld	a, 0x50c8
      009B26 14 03            [ 1] 1303 	and	a, (0x03, sp)
                                   1304 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 711: bitstatus = SET;
      009B28 A0 0C            [ 1] 1305 	sub	a, #0x0c
      009B2A 26 02            [ 1] 1306 	jrne	00105$
      009B2C 4C               [ 1] 1307 	inc	a
      009B2D 81               [ 4] 1308 	ret
      009B2E                       1309 00105$:
                                   1310 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 715: bitstatus = RESET;
      009B2E 4F               [ 1] 1311 	clr	a
                                   1312 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 720: return bitstatus;
                                   1313 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 721: }
      009B2F 81               [ 4] 1314 	ret
                                   1315 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1316 ;	-----------------------------------------
                                   1317 ;	 function CLK_ClearITPendingBit
                                   1318 ;	-----------------------------------------
      009B30                       1319 _CLK_ClearITPendingBit:
                                   1320 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
      009B30 7B 03            [ 1] 1321 	ld	a, (0x03, sp)
      009B32 A0 0C            [ 1] 1322 	sub	a, #0x0c
      009B34 26 02            [ 1] 1323 	jrne	00127$
      009B36 4C               [ 1] 1324 	inc	a
      009B37 21                    1325 	.byte 0x21
      009B38                       1326 00127$:
      009B38 4F               [ 1] 1327 	clr	a
      009B39                       1328 00128$:
      009B39 4D               [ 1] 1329 	tnz	a
      009B3A 26 19            [ 1] 1330 	jrne	00107$
      009B3C 88               [ 1] 1331 	push	a
      009B3D 7B 04            [ 1] 1332 	ld	a, (0x04, sp)
      009B3F A1 1C            [ 1] 1333 	cp	a, #0x1c
      009B41 84               [ 1] 1334 	pop	a
      009B42 27 11            [ 1] 1335 	jreq	00107$
      009B44 88               [ 1] 1336 	push	a
      009B45 4B DC            [ 1] 1337 	push	#0xdc
      009B47 4B 02            [ 1] 1338 	push	#0x02
      009B49 5F               [ 1] 1339 	clrw	x
      009B4A 89               [ 2] 1340 	pushw	x
      009B4B 4B F7            [ 1] 1341 	push	#<(___str_0+0)
      009B4D 4B 81            [ 1] 1342 	push	#((___str_0+0) >> 8)
      009B4F CD 00 00         [ 4] 1343 	call	_assert_failed
      009B52 5B 06            [ 2] 1344 	addw	sp, #6
      009B54 84               [ 1] 1345 	pop	a
      009B55                       1346 00107$:
                                   1347 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      009B55 4D               [ 1] 1348 	tnz	a
      009B56 27 05            [ 1] 1349 	jreq	00102$
                                   1350 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      009B58 72 17 50 C8      [ 1] 1351 	bres	20680, #3
      009B5C 81               [ 4] 1352 	ret
      009B5D                       1353 00102$:
                                   1354 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      009B5D 72 17 50 C5      [ 1] 1355 	bres	20677, #3
                                   1356 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_clk.c: 745: }
      009B61 81               [ 4] 1357 	ret
                                   1358 	.area CODE
                                   1359 	.area CONST
      0081EB                       1360 _HSIDivFactor:
      0081EB 01                    1361 	.db #0x01	; 1
      0081EC 02                    1362 	.db #0x02	; 2
      0081ED 04                    1363 	.db #0x04	; 4
      0081EE 08                    1364 	.db #0x08	; 8
      0081EF                       1365 _CLKPrescTable:
      0081EF 01                    1366 	.db #0x01	; 1
      0081F0 02                    1367 	.db #0x02	; 2
      0081F1 04                    1368 	.db #0x04	; 4
      0081F2 08                    1369 	.db #0x08	; 8
      0081F3 0A                    1370 	.db #0x0a	; 10
      0081F4 10                    1371 	.db #0x10	; 16
      0081F5 14                    1372 	.db #0x14	; 20
      0081F6 28                    1373 	.db #0x28	; 40
                                   1374 	.area CONST
      0081F7                       1375 ___str_0:
      0081F7 43 3A                 1376 	.ascii "C:"
      0081F9 5C                    1377 	.db 0x5c
      0081FA 55 73 65 72 73        1378 	.ascii "Users"
      0081FF 5C                    1379 	.db 0x5c
      008200 41 64 6D 69 6E        1380 	.ascii "Admin"
      008205 5C                    1381 	.db 0x5c
      008206 2E 70 6C 61 74 66 6F  1382 	.ascii ".platformio"
             72 6D 69 6F
      008211 5C                    1383 	.db 0x5c
      008212 70 61 63 6B 61 67 65  1384 	.ascii "packages"
             73
      00821A 5C                    1385 	.db 0x5c
      00821B 66 72 61 6D 65 77 6F  1386 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00822E 5C                    1387 	.db 0x5c
      00822F 4C 69 62 72 61 72 69  1388 	.ascii "Libraries"
             65 73
      008238 5C                    1389 	.db 0x5c
      008239 53 54 4D 38 53 5F 53  1390 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      00824F 5C                    1391 	.db 0x5c
      008250 73 72 63              1392 	.ascii "src"
      008253 5C                    1393 	.db 0x5c
      008254 73 74 6D 38 73 5F 63  1394 	.ascii "stm8s_clk.c"
             6C 6B 2E 63
      00825F 00                    1395 	.db 0x00
                                   1396 	.area CODE
                                   1397 	.area INITIALIZER
                                   1398 	.area CABS (ABS)
