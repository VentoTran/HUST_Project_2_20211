                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_itc
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _ITC_GetCPUCC
                                     13 	.globl _ITC_DeInit
                                     14 	.globl _ITC_GetSoftIntStatus
                                     15 	.globl _ITC_GetSoftwarePriority
                                     16 	.globl _ITC_SetSoftwarePriority
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
                                     54 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 50: uint8_t ITC_GetCPUCC(void)
                                     55 ;	-----------------------------------------
                                     56 ;	 function ITC_GetCPUCC
                                     57 ;	-----------------------------------------
      00AA22                         58 _ITC_GetCPUCC:
                                     59 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 59: __asm__("push cc");
      00AA22 8A               [ 1]   60 	push	cc
                                     61 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 60: __asm__("pop a");
      00AA23 84               [ 1]   62 	pop	a
                                     63 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 65: }
      00AA24 81               [ 4]   64 	ret
                                     65 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 83: void ITC_DeInit(void)
                                     66 ;	-----------------------------------------
                                     67 ;	 function ITC_DeInit
                                     68 ;	-----------------------------------------
      00AA25                         69 _ITC_DeInit:
                                     70 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 85: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
      00AA25 35 FF 7F 70      [ 1]   71 	mov	0x7f70+0, #0xff
                                     72 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 86: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
      00AA29 35 FF 7F 71      [ 1]   73 	mov	0x7f71+0, #0xff
                                     74 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 87: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
      00AA2D 35 FF 7F 72      [ 1]   75 	mov	0x7f72+0, #0xff
                                     76 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 88: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
      00AA31 35 FF 7F 73      [ 1]   77 	mov	0x7f73+0, #0xff
                                     78 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 89: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
      00AA35 35 FF 7F 74      [ 1]   79 	mov	0x7f74+0, #0xff
                                     80 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 90: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
      00AA39 35 FF 7F 75      [ 1]   81 	mov	0x7f75+0, #0xff
                                     82 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 91: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
      00AA3D 35 FF 7F 76      [ 1]   83 	mov	0x7f76+0, #0xff
                                     84 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 92: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
      00AA41 35 FF 7F 77      [ 1]   85 	mov	0x7f77+0, #0xff
                                     86 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 93: }
      00AA45 81               [ 4]   87 	ret
                                     88 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 100: uint8_t ITC_GetSoftIntStatus(void)
                                     89 ;	-----------------------------------------
                                     90 ;	 function ITC_GetSoftIntStatus
                                     91 ;	-----------------------------------------
      00AA46                         92 _ITC_GetSoftIntStatus:
                                     93 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 102: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
      00AA46 CD AA 22         [ 4]   94 	call	_ITC_GetCPUCC
      00AA49 A4 28            [ 1]   95 	and	a, #0x28
                                     96 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 103: }
      00AA4B 81               [ 4]   97 	ret
                                     98 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 110: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
                                     99 ;	-----------------------------------------
                                    100 ;	 function ITC_GetSoftwarePriority
                                    101 ;	-----------------------------------------
      00AA4C                        102 _ITC_GetSoftwarePriority:
      00AA4C 52 04            [ 2]  103 	sub	sp, #4
                                    104 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 112: uint8_t Value = 0;
      00AA4E 0F 01            [ 1]  105 	clr	(0x01, sp)
                                    106 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 116: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
      00AA50 7B 07            [ 1]  107 	ld	a, (0x07, sp)
      00AA52 A1 18            [ 1]  108 	cp	a, #0x18
      00AA54 22 04            [ 1]  109 	jrugt	00138$
      00AA56 0F 02            [ 1]  110 	clr	(0x02, sp)
      00AA58 20 04            [ 2]  111 	jra	00139$
      00AA5A                        112 00138$:
      00AA5A A6 01            [ 1]  113 	ld	a, #0x01
      00AA5C 6B 02            [ 1]  114 	ld	(0x02, sp), a
      00AA5E                        115 00139$:
      00AA5E 0D 02            [ 1]  116 	tnz	(0x02, sp)
      00AA60 27 0F            [ 1]  117 	jreq	00127$
      00AA62 4B 74            [ 1]  118 	push	#0x74
      00AA64 5F               [ 1]  119 	clrw	x
      00AA65 89               [ 2]  120 	pushw	x
      00AA66 4B 00            [ 1]  121 	push	#0x00
      00AA68 4B 08            [ 1]  122 	push	#<(___str_0+0)
      00AA6A 4B 84            [ 1]  123 	push	#((___str_0+0) >> 8)
      00AA6C CD 00 00         [ 4]  124 	call	_assert_failed
      00AA6F 5B 06            [ 2]  125 	addw	sp, #6
      00AA71                        126 00127$:
                                    127 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 119: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
      00AA71 7B 07            [ 1]  128 	ld	a, (0x07, sp)
      00AA73 A4 03            [ 1]  129 	and	a, #0x03
      00AA75 48               [ 1]  130 	sll	a
      00AA76 6B 03            [ 1]  131 	ld	(0x03, sp), a
      00AA78 A6 03            [ 1]  132 	ld	a, #0x03
      00AA7A 6B 04            [ 1]  133 	ld	(0x04, sp), a
      00AA7C 7B 03            [ 1]  134 	ld	a, (0x03, sp)
      00AA7E 27 05            [ 1]  135 	jreq	00142$
      00AA80                        136 00141$:
      00AA80 08 04            [ 1]  137 	sll	(0x04, sp)
      00AA82 4A               [ 1]  138 	dec	a
      00AA83 26 FB            [ 1]  139 	jrne	00141$
      00AA85                        140 00142$:
                                    141 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 121: switch (IrqNum)
      00AA85 7B 02            [ 1]  142 	ld	a, (0x02, sp)
      00AA87 26 78            [ 1]  143 	jrne	00123$
      00AA89 5F               [ 1]  144 	clrw	x
      00AA8A 7B 07            [ 1]  145 	ld	a, (0x07, sp)
      00AA8C 97               [ 1]  146 	ld	xl, a
      00AA8D 58               [ 2]  147 	sllw	x
      00AA8E DE AA 92         [ 2]  148 	ldw	x, (#00144$, x)
      00AA91 FC               [ 2]  149 	jp	(x)
      00AA92                        150 00144$:
      00AA92 AA C4                  151 	.dw	#00104$
      00AA94 AA C4                  152 	.dw	#00104$
      00AA96 AA C4                  153 	.dw	#00104$
      00AA98 AA C4                  154 	.dw	#00104$
      00AA9A AA CD                  155 	.dw	#00108$
      00AA9C AA CD                  156 	.dw	#00108$
      00AA9E AA CD                  157 	.dw	#00108$
      00AAA0 AA CD                  158 	.dw	#00108$
      00AAA2 AB 01                  159 	.dw	#00123$
      00AAA4 AB 01                  160 	.dw	#00123$
      00AAA6 AA D6                  161 	.dw	#00110$
      00AAA8 AA D6                  162 	.dw	#00110$
      00AAAA AA DF                  163 	.dw	#00114$
      00AAAC AA DF                  164 	.dw	#00114$
      00AAAE AA DF                  165 	.dw	#00114$
      00AAB0 AA DF                  166 	.dw	#00114$
      00AAB2 AA E8                  167 	.dw	#00118$
      00AAB4 AA E8                  168 	.dw	#00118$
      00AAB6 AA E8                  169 	.dw	#00118$
      00AAB8 AA E8                  170 	.dw	#00118$
      00AABA AB 01                  171 	.dw	#00123$
      00AABC AB 01                  172 	.dw	#00123$
      00AABE AA F1                  173 	.dw	#00120$
      00AAC0 AA F1                  174 	.dw	#00120$
      00AAC2 AA FA                  175 	.dw	#00121$
                                    176 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 126: case ITC_IRQ_PORTA:
      00AAC4                        177 00104$:
                                    178 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 127: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
      00AAC4 C6 7F 70         [ 1]  179 	ld	a, 0x7f70
      00AAC7 14 04            [ 1]  180 	and	a, (0x04, sp)
      00AAC9 6B 01            [ 1]  181 	ld	(0x01, sp), a
                                    182 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 128: break;
      00AACB 20 34            [ 2]  183 	jra	00123$
                                    184 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 133: case ITC_IRQ_PORTE:
      00AACD                        185 00108$:
                                    186 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
      00AACD C6 7F 71         [ 1]  187 	ld	a, 0x7f71
      00AAD0 14 04            [ 1]  188 	and	a, (0x04, sp)
      00AAD2 6B 01            [ 1]  189 	ld	(0x01, sp), a
                                    190 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 135: break;
      00AAD4 20 2B            [ 2]  191 	jra	00123$
                                    192 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 145: case ITC_IRQ_TIM1_OVF:
      00AAD6                        193 00110$:
                                    194 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 146: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
      00AAD6 C6 7F 72         [ 1]  195 	ld	a, 0x7f72
      00AAD9 14 04            [ 1]  196 	and	a, (0x04, sp)
      00AADB 6B 01            [ 1]  197 	ld	(0x01, sp), a
                                    198 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 147: break;
      00AADD 20 22            [ 2]  199 	jra	00123$
                                    200 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 157: case ITC_IRQ_TIM3_OVF:
      00AADF                        201 00114$:
                                    202 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 158: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
      00AADF C6 7F 73         [ 1]  203 	ld	a, 0x7f73
      00AAE2 14 04            [ 1]  204 	and	a, (0x04, sp)
      00AAE4 6B 01            [ 1]  205 	ld	(0x01, sp), a
                                    206 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 159: break;
      00AAE6 20 19            [ 2]  207 	jra	00123$
                                    208 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 171: case ITC_IRQ_I2C:
      00AAE8                        209 00118$:
                                    210 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 172: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
      00AAE8 C6 7F 74         [ 1]  211 	ld	a, 0x7f74
      00AAEB 14 04            [ 1]  212 	and	a, (0x04, sp)
      00AAED 6B 01            [ 1]  213 	ld	(0x01, sp), a
                                    214 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 173: break;
      00AAEF 20 10            [ 2]  215 	jra	00123$
                                    216 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 192: case ITC_IRQ_TIM4_OVF:
      00AAF1                        217 00120$:
                                    218 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 194: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
      00AAF1 C6 7F 75         [ 1]  219 	ld	a, 0x7f75
      00AAF4 14 04            [ 1]  220 	and	a, (0x04, sp)
      00AAF6 6B 01            [ 1]  221 	ld	(0x01, sp), a
                                    222 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 195: break;
      00AAF8 20 07            [ 2]  223 	jra	00123$
                                    224 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 197: case ITC_IRQ_EEPROM_EEC:
      00AAFA                        225 00121$:
                                    226 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 198: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
      00AAFA C6 7F 76         [ 1]  227 	ld	a, 0x7f76
      00AAFD 14 04            [ 1]  228 	and	a, (0x04, sp)
      00AAFF 6B 01            [ 1]  229 	ld	(0x01, sp), a
                                    230 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 203: }
      00AB01                        231 00123$:
                                    232 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 205: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
      00AB01 7B 01            [ 1]  233 	ld	a, (0x01, sp)
      00AB03 88               [ 1]  234 	push	a
      00AB04 7B 04            [ 1]  235 	ld	a, (0x04, sp)
      00AB06 27 05            [ 1]  236 	jreq	00146$
      00AB08                        237 00145$:
      00AB08 04 01            [ 1]  238 	srl	(1, sp)
      00AB0A 4A               [ 1]  239 	dec	a
      00AB0B 26 FB            [ 1]  240 	jrne	00145$
      00AB0D                        241 00146$:
      00AB0D 84               [ 1]  242 	pop	a
                                    243 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 207: return((ITC_PriorityLevel_TypeDef)Value);
                                    244 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 208: }
      00AB0E 5B 04            [ 2]  245 	addw	sp, #4
      00AB10 81               [ 4]  246 	ret
                                    247 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 223: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
                                    248 ;	-----------------------------------------
                                    249 ;	 function ITC_SetSoftwarePriority
                                    250 ;	-----------------------------------------
      00AB11                        251 _ITC_SetSoftwarePriority:
      00AB11 52 03            [ 2]  252 	sub	sp, #3
                                    253 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 229: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
      00AB13 7B 06            [ 1]  254 	ld	a, (0x06, sp)
      00AB15 A1 18            [ 1]  255 	cp	a, #0x18
      00AB17 22 04            [ 1]  256 	jrugt	00176$
      00AB19 0F 01            [ 1]  257 	clr	(0x01, sp)
      00AB1B 20 04            [ 2]  258 	jra	00177$
      00AB1D                        259 00176$:
      00AB1D A6 01            [ 1]  260 	ld	a, #0x01
      00AB1F 6B 01            [ 1]  261 	ld	(0x01, sp), a
      00AB21                        262 00177$:
      00AB21 0D 01            [ 1]  263 	tnz	(0x01, sp)
      00AB23 27 0F            [ 1]  264 	jreq	00127$
      00AB25 4B E5            [ 1]  265 	push	#0xe5
      00AB27 5F               [ 1]  266 	clrw	x
      00AB28 89               [ 2]  267 	pushw	x
      00AB29 4B 00            [ 1]  268 	push	#0x00
      00AB2B 4B 08            [ 1]  269 	push	#<(___str_0+0)
      00AB2D 4B 84            [ 1]  270 	push	#((___str_0+0) >> 8)
      00AB2F CD 00 00         [ 4]  271 	call	_assert_failed
      00AB32 5B 06            [ 2]  272 	addw	sp, #6
      00AB34                        273 00127$:
                                    274 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 230: assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
      00AB34 7B 07            [ 1]  275 	ld	a, (0x07, sp)
      00AB36 A1 02            [ 1]  276 	cp	a, #0x02
      00AB38 27 1E            [ 1]  277 	jreq	00129$
      00AB3A 7B 07            [ 1]  278 	ld	a, (0x07, sp)
      00AB3C 4A               [ 1]  279 	dec	a
      00AB3D 27 19            [ 1]  280 	jreq	00129$
      00AB3F 0D 07            [ 1]  281 	tnz	(0x07, sp)
      00AB41 27 15            [ 1]  282 	jreq	00129$
      00AB43 7B 07            [ 1]  283 	ld	a, (0x07, sp)
      00AB45 A1 03            [ 1]  284 	cp	a, #0x03
      00AB47 27 0F            [ 1]  285 	jreq	00129$
      00AB49 4B E6            [ 1]  286 	push	#0xe6
      00AB4B 5F               [ 1]  287 	clrw	x
      00AB4C 89               [ 2]  288 	pushw	x
      00AB4D 4B 00            [ 1]  289 	push	#0x00
      00AB4F 4B 08            [ 1]  290 	push	#<(___str_0+0)
      00AB51 4B 84            [ 1]  291 	push	#((___str_0+0) >> 8)
      00AB53 CD 00 00         [ 4]  292 	call	_assert_failed
      00AB56 5B 06            [ 2]  293 	addw	sp, #6
      00AB58                        294 00129$:
                                    295 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 233: assert_param(IS_ITC_INTERRUPTS_DISABLED);
      00AB58 CD AA 46         [ 4]  296 	call	_ITC_GetSoftIntStatus
      00AB5B A1 28            [ 1]  297 	cp	a, #0x28
      00AB5D 27 0F            [ 1]  298 	jreq	00140$
      00AB5F 4B E9            [ 1]  299 	push	#0xe9
      00AB61 5F               [ 1]  300 	clrw	x
      00AB62 89               [ 2]  301 	pushw	x
      00AB63 4B 00            [ 1]  302 	push	#0x00
      00AB65 4B 08            [ 1]  303 	push	#<(___str_0+0)
      00AB67 4B 84            [ 1]  304 	push	#((___str_0+0) >> 8)
      00AB69 CD 00 00         [ 4]  305 	call	_assert_failed
      00AB6C 5B 06            [ 2]  306 	addw	sp, #6
      00AB6E                        307 00140$:
                                    308 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 237: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
      00AB6E 7B 06            [ 1]  309 	ld	a, (0x06, sp)
      00AB70 5F               [ 1]  310 	clrw	x
      00AB71 A4 03            [ 1]  311 	and	a, #0x03
      00AB73 97               [ 1]  312 	ld	xl, a
      00AB74 58               [ 2]  313 	sllw	x
      00AB75 A6 03            [ 1]  314 	ld	a, #0x03
      00AB77 88               [ 1]  315 	push	a
      00AB78 9F               [ 1]  316 	ld	a, xl
      00AB79 4D               [ 1]  317 	tnz	a
      00AB7A 27 05            [ 1]  318 	jreq	00193$
      00AB7C                        319 00192$:
      00AB7C 08 01            [ 1]  320 	sll	(1, sp)
      00AB7E 4A               [ 1]  321 	dec	a
      00AB7F 26 FB            [ 1]  322 	jrne	00192$
      00AB81                        323 00193$:
      00AB81 84               [ 1]  324 	pop	a
      00AB82 43               [ 1]  325 	cpl	a
      00AB83 6B 02            [ 1]  326 	ld	(0x02, sp), a
                                    327 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 240: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
      00AB85 7B 07            [ 1]  328 	ld	a, (0x07, sp)
      00AB87 88               [ 1]  329 	push	a
      00AB88 9F               [ 1]  330 	ld	a, xl
      00AB89 4D               [ 1]  331 	tnz	a
      00AB8A 27 05            [ 1]  332 	jreq	00195$
      00AB8C                        333 00194$:
      00AB8C 08 01            [ 1]  334 	sll	(1, sp)
      00AB8E 4A               [ 1]  335 	dec	a
      00AB8F 26 FB            [ 1]  336 	jrne	00194$
      00AB91                        337 00195$:
      00AB91 84               [ 1]  338 	pop	a
      00AB92 6B 03            [ 1]  339 	ld	(0x03, sp), a
                                    340 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 242: switch (IrqNum)
      00AB94 7B 01            [ 1]  341 	ld	a, (0x01, sp)
      00AB96 27 03            [ 1]  342 	jreq	00196$
      00AB98 CC AC 52         [ 2]  343 	jp	00124$
      00AB9B                        344 00196$:
      00AB9B 5F               [ 1]  345 	clrw	x
      00AB9C 7B 06            [ 1]  346 	ld	a, (0x06, sp)
      00AB9E 97               [ 1]  347 	ld	xl, a
      00AB9F 58               [ 2]  348 	sllw	x
      00ABA0 DE AB A4         [ 2]  349 	ldw	x, (#00197$, x)
      00ABA3 FC               [ 2]  350 	jp	(x)
      00ABA4                        351 00197$:
      00ABA4 AB D6                  352 	.dw	#00104$
      00ABA6 AB D6                  353 	.dw	#00104$
      00ABA8 AB D6                  354 	.dw	#00104$
      00ABAA AB D6                  355 	.dw	#00104$
      00ABAC AB E8                  356 	.dw	#00108$
      00ABAE AB E8                  357 	.dw	#00108$
      00ABB0 AB E8                  358 	.dw	#00108$
      00ABB2 AB E8                  359 	.dw	#00108$
      00ABB4 AC 52                  360 	.dw	#00124$
      00ABB6 AC 52                  361 	.dw	#00124$
      00ABB8 AB FA                  362 	.dw	#00110$
      00ABBA AB FA                  363 	.dw	#00110$
      00ABBC AC 0C                  364 	.dw	#00114$
      00ABBE AC 0C                  365 	.dw	#00114$
      00ABC0 AC 0C                  366 	.dw	#00114$
      00ABC2 AC 0C                  367 	.dw	#00114$
      00ABC4 AC 1E                  368 	.dw	#00118$
      00ABC6 AC 1E                  369 	.dw	#00118$
      00ABC8 AC 1E                  370 	.dw	#00118$
      00ABCA AC 1E                  371 	.dw	#00118$
      00ABCC AC 52                  372 	.dw	#00124$
      00ABCE AC 52                  373 	.dw	#00124$
      00ABD0 AC 30                  374 	.dw	#00120$
      00ABD2 AC 30                  375 	.dw	#00120$
      00ABD4 AC 42                  376 	.dw	#00121$
                                    377 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 247: case ITC_IRQ_PORTA:
      00ABD6                        378 00104$:
                                    379 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 248: ITC->ISPR1 &= Mask;
      00ABD6 C6 7F 70         [ 1]  380 	ld	a, 0x7f70
      00ABD9 14 02            [ 1]  381 	and	a, (0x02, sp)
      00ABDB C7 7F 70         [ 1]  382 	ld	0x7f70, a
                                    383 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 249: ITC->ISPR1 |= NewPriority;
      00ABDE C6 7F 70         [ 1]  384 	ld	a, 0x7f70
      00ABE1 1A 03            [ 1]  385 	or	a, (0x03, sp)
      00ABE3 C7 7F 70         [ 1]  386 	ld	0x7f70, a
                                    387 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 250: break;
      00ABE6 20 6A            [ 2]  388 	jra	00124$
                                    389 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 255: case ITC_IRQ_PORTE:
      00ABE8                        390 00108$:
                                    391 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 256: ITC->ISPR2 &= Mask;
      00ABE8 C6 7F 71         [ 1]  392 	ld	a, 0x7f71
      00ABEB 14 02            [ 1]  393 	and	a, (0x02, sp)
      00ABED C7 7F 71         [ 1]  394 	ld	0x7f71, a
                                    395 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 257: ITC->ISPR2 |= NewPriority;
      00ABF0 C6 7F 71         [ 1]  396 	ld	a, 0x7f71
      00ABF3 1A 03            [ 1]  397 	or	a, (0x03, sp)
      00ABF5 C7 7F 71         [ 1]  398 	ld	0x7f71, a
                                    399 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 258: break;
      00ABF8 20 58            [ 2]  400 	jra	00124$
                                    401 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 268: case ITC_IRQ_TIM1_OVF:
      00ABFA                        402 00110$:
                                    403 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 269: ITC->ISPR3 &= Mask;
      00ABFA C6 7F 72         [ 1]  404 	ld	a, 0x7f72
      00ABFD 14 02            [ 1]  405 	and	a, (0x02, sp)
      00ABFF C7 7F 72         [ 1]  406 	ld	0x7f72, a
                                    407 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 270: ITC->ISPR3 |= NewPriority;
      00AC02 C6 7F 72         [ 1]  408 	ld	a, 0x7f72
      00AC05 1A 03            [ 1]  409 	or	a, (0x03, sp)
      00AC07 C7 7F 72         [ 1]  410 	ld	0x7f72, a
                                    411 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 271: break;
      00AC0A 20 46            [ 2]  412 	jra	00124$
                                    413 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 281: case ITC_IRQ_TIM3_OVF:
      00AC0C                        414 00114$:
                                    415 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 282: ITC->ISPR4 &= Mask;
      00AC0C C6 7F 73         [ 1]  416 	ld	a, 0x7f73
      00AC0F 14 02            [ 1]  417 	and	a, (0x02, sp)
      00AC11 C7 7F 73         [ 1]  418 	ld	0x7f73, a
                                    419 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 283: ITC->ISPR4 |= NewPriority;
      00AC14 C6 7F 73         [ 1]  420 	ld	a, 0x7f73
      00AC17 1A 03            [ 1]  421 	or	a, (0x03, sp)
      00AC19 C7 7F 73         [ 1]  422 	ld	0x7f73, a
                                    423 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 284: break;
      00AC1C 20 34            [ 2]  424 	jra	00124$
                                    425 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 296: case ITC_IRQ_I2C:
      00AC1E                        426 00118$:
                                    427 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 297: ITC->ISPR5 &= Mask;
      00AC1E C6 7F 74         [ 1]  428 	ld	a, 0x7f74
      00AC21 14 02            [ 1]  429 	and	a, (0x02, sp)
      00AC23 C7 7F 74         [ 1]  430 	ld	0x7f74, a
                                    431 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 298: ITC->ISPR5 |= NewPriority;
      00AC26 C6 7F 74         [ 1]  432 	ld	a, 0x7f74
      00AC29 1A 03            [ 1]  433 	or	a, (0x03, sp)
      00AC2B C7 7F 74         [ 1]  434 	ld	0x7f74, a
                                    435 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 299: break;
      00AC2E 20 22            [ 2]  436 	jra	00124$
                                    437 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 321: case ITC_IRQ_TIM4_OVF:
      00AC30                        438 00120$:
                                    439 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 323: ITC->ISPR6 &= Mask;
      00AC30 C6 7F 75         [ 1]  440 	ld	a, 0x7f75
      00AC33 14 02            [ 1]  441 	and	a, (0x02, sp)
      00AC35 C7 7F 75         [ 1]  442 	ld	0x7f75, a
                                    443 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 324: ITC->ISPR6 |= NewPriority;
      00AC38 C6 7F 75         [ 1]  444 	ld	a, 0x7f75
      00AC3B 1A 03            [ 1]  445 	or	a, (0x03, sp)
      00AC3D C7 7F 75         [ 1]  446 	ld	0x7f75, a
                                    447 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 325: break;
      00AC40 20 10            [ 2]  448 	jra	00124$
                                    449 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 327: case ITC_IRQ_EEPROM_EEC:
      00AC42                        450 00121$:
                                    451 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 328: ITC->ISPR7 &= Mask;
      00AC42 C6 7F 76         [ 1]  452 	ld	a, 0x7f76
      00AC45 14 02            [ 1]  453 	and	a, (0x02, sp)
      00AC47 C7 7F 76         [ 1]  454 	ld	0x7f76, a
                                    455 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 329: ITC->ISPR7 |= NewPriority;
      00AC4A C6 7F 76         [ 1]  456 	ld	a, 0x7f76
      00AC4D 1A 03            [ 1]  457 	or	a, (0x03, sp)
      00AC4F C7 7F 76         [ 1]  458 	ld	0x7f76, a
                                    459 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 334: }
      00AC52                        460 00124$:
                                    461 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 335: }
      00AC52 5B 03            [ 2]  462 	addw	sp, #3
      00AC54 81               [ 4]  463 	ret
                                    464 	.area CODE
                                    465 	.area CONST
                                    466 	.area CONST
      008408                        467 ___str_0:
      008408 43 3A                  468 	.ascii "C:"
      00840A 5C                     469 	.db 0x5c
      00840B 55 73 65 72 73         470 	.ascii "Users"
      008410 5C                     471 	.db 0x5c
      008411 41 64 6D 69 6E         472 	.ascii "Admin"
      008416 5C                     473 	.db 0x5c
      008417 2E 70 6C 61 74 66 6F   474 	.ascii ".platformio"
             72 6D 69 6F
      008422 5C                     475 	.db 0x5c
      008423 70 61 63 6B 61 67 65   476 	.ascii "packages"
             73
      00842B 5C                     477 	.db 0x5c
      00842C 66 72 61 6D 65 77 6F   478 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00843F 5C                     479 	.db 0x5c
      008440 4C 69 62 72 61 72 69   480 	.ascii "Libraries"
             65 73
      008449 5C                     481 	.db 0x5c
      00844A 53 54 4D 38 53 5F 53   482 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      008460 5C                     483 	.db 0x5c
      008461 73 72 63               484 	.ascii "src"
      008464 5C                     485 	.db 0x5c
      008465 73 74 6D 38 73 5F 69   486 	.ascii "stm8s_itc.c"
             74 63 2E 63
      008470 00                     487 	.db 0x00
                                    488 	.area CODE
                                    489 	.area INITIALIZER
                                    490 	.area CABS (ABS)
