                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_flash
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _FLASH_Unlock
                                     13 	.globl _FLASH_Lock
                                     14 	.globl _FLASH_DeInit
                                     15 	.globl _FLASH_ITConfig
                                     16 	.globl _FLASH_EraseByte
                                     17 	.globl _FLASH_ProgramByte
                                     18 	.globl _FLASH_ReadByte
                                     19 	.globl _FLASH_ProgramWord
                                     20 	.globl _FLASH_ProgramOptionByte
                                     21 	.globl _FLASH_EraseOptionByte
                                     22 	.globl _FLASH_ReadOptionByte
                                     23 	.globl _FLASH_SetLowPowerMode
                                     24 	.globl _FLASH_SetProgrammingTime
                                     25 	.globl _FLASH_GetLowPowerMode
                                     26 	.globl _FLASH_GetProgrammingTime
                                     27 	.globl _FLASH_GetBootSize
                                     28 	.globl _FLASH_GetFlagStatus
                                     29 	.globl _FLASH_WaitForLastOperation
                                     30 	.globl _FLASH_EraseBlock
                                     31 	.globl _FLASH_ProgramBlock
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area CODE
                                     69 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 168: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
                                     70 ;	-----------------------------------------
                                     71 ;	 function FLASH_Unlock
                                     72 ;	-----------------------------------------
      009CF2                         73 _FLASH_Unlock:
                                     74 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 171: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
      009CF2 7B 03            [ 1]   75 	ld	a, (0x03, sp)
      009CF4 A0 FD            [ 1]   76 	sub	a, #0xfd
      009CF6 26 02            [ 1]   77 	jrne	00127$
      009CF8 4C               [ 1]   78 	inc	a
      009CF9 21                      79 	.byte 0x21
      009CFA                         80 00127$:
      009CFA 4F               [ 1]   81 	clr	a
      009CFB                         82 00128$:
      009CFB 4D               [ 1]   83 	tnz	a
      009CFC 26 19            [ 1]   84 	jrne	00107$
      009CFE 88               [ 1]   85 	push	a
      009CFF 7B 04            [ 1]   86 	ld	a, (0x04, sp)
      009D01 A1 F7            [ 1]   87 	cp	a, #0xf7
      009D03 84               [ 1]   88 	pop	a
      009D04 27 11            [ 1]   89 	jreq	00107$
      009D06 88               [ 1]   90 	push	a
      009D07 4B AB            [ 1]   91 	push	#0xab
      009D09 5F               [ 1]   92 	clrw	x
      009D0A 89               [ 2]   93 	pushw	x
      009D0B 4B 00            [ 1]   94 	push	#0x00
      009D0D 4B CA            [ 1]   95 	push	#<(___str_0+0)
      009D0F 4B 82            [ 1]   96 	push	#((___str_0+0) >> 8)
      009D11 CD 00 00         [ 4]   97 	call	_assert_failed
      009D14 5B 06            [ 2]   98 	addw	sp, #6
      009D16 84               [ 1]   99 	pop	a
      009D17                        100 00107$:
                                    101 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 174: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      009D17 4D               [ 1]  102 	tnz	a
      009D18 27 09            [ 1]  103 	jreq	00102$
                                    104 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 176: FLASH->PUKR = FLASH_RASS_KEY1;
      009D1A 35 56 50 62      [ 1]  105 	mov	0x5062+0, #0x56
                                    106 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 177: FLASH->PUKR = FLASH_RASS_KEY2;
      009D1E 35 AE 50 62      [ 1]  107 	mov	0x5062+0, #0xae
      009D22 81               [ 4]  108 	ret
      009D23                        109 00102$:
                                    110 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 182: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
      009D23 35 AE 50 64      [ 1]  111 	mov	0x5064+0, #0xae
                                    112 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 183: FLASH->DUKR = FLASH_RASS_KEY1;
      009D27 35 56 50 64      [ 1]  113 	mov	0x5064+0, #0x56
                                    114 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 185: }
      009D2B 81               [ 4]  115 	ret
                                    116 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 193: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
                                    117 ;	-----------------------------------------
                                    118 ;	 function FLASH_Lock
                                    119 ;	-----------------------------------------
      009D2C                        120 _FLASH_Lock:
                                    121 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 196: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
      009D2C 7B 03            [ 1]  122 	ld	a, (0x03, sp)
      009D2E A1 FD            [ 1]  123 	cp	a, #0xfd
      009D30 27 15            [ 1]  124 	jreq	00104$
      009D32 7B 03            [ 1]  125 	ld	a, (0x03, sp)
      009D34 A1 F7            [ 1]  126 	cp	a, #0xf7
      009D36 27 0F            [ 1]  127 	jreq	00104$
      009D38 4B C4            [ 1]  128 	push	#0xc4
      009D3A 5F               [ 1]  129 	clrw	x
      009D3B 89               [ 2]  130 	pushw	x
      009D3C 4B 00            [ 1]  131 	push	#0x00
      009D3E 4B CA            [ 1]  132 	push	#<(___str_0+0)
      009D40 4B 82            [ 1]  133 	push	#((___str_0+0) >> 8)
      009D42 CD 00 00         [ 4]  134 	call	_assert_failed
      009D45 5B 06            [ 2]  135 	addw	sp, #6
      009D47                        136 00104$:
                                    137 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 199: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
      009D47 C6 50 5F         [ 1]  138 	ld	a, 0x505f
      009D4A 14 03            [ 1]  139 	and	a, (0x03, sp)
      009D4C C7 50 5F         [ 1]  140 	ld	0x505f, a
                                    141 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 200: }
      009D4F 81               [ 4]  142 	ret
                                    143 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 207: void FLASH_DeInit(void)
                                    144 ;	-----------------------------------------
                                    145 ;	 function FLASH_DeInit
                                    146 ;	-----------------------------------------
      009D50                        147 _FLASH_DeInit:
                                    148 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 209: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
      009D50 35 00 50 5A      [ 1]  149 	mov	0x505a+0, #0x00
                                    150 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 210: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
      009D54 35 00 50 5B      [ 1]  151 	mov	0x505b+0, #0x00
                                    152 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 211: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
      009D58 35 FF 50 5C      [ 1]  153 	mov	0x505c+0, #0xff
                                    154 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 212: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
      009D5C 72 17 50 5F      [ 1]  155 	bres	20575, #3
                                    156 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 213: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
      009D60 72 13 50 5F      [ 1]  157 	bres	20575, #1
                                    158 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 214: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
      009D64 C6 50 5F         [ 1]  159 	ld	a, 0x505f
                                    160 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 215: }
      009D67 81               [ 4]  161 	ret
                                    162 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 223: void FLASH_ITConfig(FunctionalState NewState)
                                    163 ;	-----------------------------------------
                                    164 ;	 function FLASH_ITConfig
                                    165 ;	-----------------------------------------
      009D68                        166 _FLASH_ITConfig:
                                    167 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 226: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009D68 0D 03            [ 1]  168 	tnz	(0x03, sp)
      009D6A 27 14            [ 1]  169 	jreq	00107$
      009D6C 7B 03            [ 1]  170 	ld	a, (0x03, sp)
      009D6E 4A               [ 1]  171 	dec	a
      009D6F 27 0F            [ 1]  172 	jreq	00107$
      009D71 4B E2            [ 1]  173 	push	#0xe2
      009D73 5F               [ 1]  174 	clrw	x
      009D74 89               [ 2]  175 	pushw	x
      009D75 4B 00            [ 1]  176 	push	#0x00
      009D77 4B CA            [ 1]  177 	push	#<(___str_0+0)
      009D79 4B 82            [ 1]  178 	push	#((___str_0+0) >> 8)
      009D7B CD 00 00         [ 4]  179 	call	_assert_failed
      009D7E 5B 06            [ 2]  180 	addw	sp, #6
      009D80                        181 00107$:
                                    182 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 230: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
      009D80 C6 50 5A         [ 1]  183 	ld	a, 0x505a
                                    184 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 228: if(NewState != DISABLE)
      009D83 0D 03            [ 1]  185 	tnz	(0x03, sp)
      009D85 27 06            [ 1]  186 	jreq	00102$
                                    187 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 230: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
      009D87 AA 02            [ 1]  188 	or	a, #0x02
      009D89 C7 50 5A         [ 1]  189 	ld	0x505a, a
      009D8C 81               [ 4]  190 	ret
      009D8D                        191 00102$:
                                    192 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 234: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
      009D8D A4 FD            [ 1]  193 	and	a, #0xfd
      009D8F C7 50 5A         [ 1]  194 	ld	0x505a, a
                                    195 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 236: }
      009D92 81               [ 4]  196 	ret
                                    197 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 245: void FLASH_EraseByte(uint32_t Address)
                                    198 ;	-----------------------------------------
                                    199 ;	 function FLASH_EraseByte
                                    200 ;	-----------------------------------------
      009D93                        201 _FLASH_EraseByte:
                                    202 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 248: assert_param(IS_FLASH_ADDRESS_OK(Address));
      009D93 1E 05            [ 2]  203 	ldw	x, (0x05, sp)
      009D95 A3 80 00         [ 2]  204 	cpw	x, #0x8000
      009D98 7B 04            [ 1]  205 	ld	a, (0x04, sp)
      009D9A A2 00            [ 1]  206 	sbc	a, #0x00
      009D9C 7B 03            [ 1]  207 	ld	a, (0x03, sp)
      009D9E A2 00            [ 1]  208 	sbc	a, #0x00
      009DA0 25 0D            [ 1]  209 	jrc	00110$
      009DA2 AE 9F FF         [ 2]  210 	ldw	x, #0x9fff
      009DA5 13 05            [ 2]  211 	cpw	x, (0x05, sp)
      009DA7 4F               [ 1]  212 	clr	a
      009DA8 12 04            [ 1]  213 	sbc	a, (0x04, sp)
      009DAA 4F               [ 1]  214 	clr	a
      009DAB 12 03            [ 1]  215 	sbc	a, (0x03, sp)
      009DAD 24 2B            [ 1]  216 	jrnc	00104$
      009DAF                        217 00110$:
      009DAF 1E 05            [ 2]  218 	ldw	x, (0x05, sp)
      009DB1 A3 40 00         [ 2]  219 	cpw	x, #0x4000
      009DB4 7B 04            [ 1]  220 	ld	a, (0x04, sp)
      009DB6 A2 00            [ 1]  221 	sbc	a, #0x00
      009DB8 7B 03            [ 1]  222 	ld	a, (0x03, sp)
      009DBA A2 00            [ 1]  223 	sbc	a, #0x00
      009DBC 25 0D            [ 1]  224 	jrc	00103$
      009DBE AE 42 7F         [ 2]  225 	ldw	x, #0x427f
      009DC1 13 05            [ 2]  226 	cpw	x, (0x05, sp)
      009DC3 4F               [ 1]  227 	clr	a
      009DC4 12 04            [ 1]  228 	sbc	a, (0x04, sp)
      009DC6 4F               [ 1]  229 	clr	a
      009DC7 12 03            [ 1]  230 	sbc	a, (0x03, sp)
      009DC9 24 0F            [ 1]  231 	jrnc	00104$
      009DCB                        232 00103$:
      009DCB 4B F8            [ 1]  233 	push	#0xf8
      009DCD 5F               [ 1]  234 	clrw	x
      009DCE 89               [ 2]  235 	pushw	x
      009DCF 4B 00            [ 1]  236 	push	#0x00
      009DD1 4B CA            [ 1]  237 	push	#<(___str_0+0)
      009DD3 4B 82            [ 1]  238 	push	#((___str_0+0) >> 8)
      009DD5 CD 00 00         [ 4]  239 	call	_assert_failed
      009DD8 5B 06            [ 2]  240 	addw	sp, #6
      009DDA                        241 00104$:
                                    242 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 253: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE;
      009DDA 1E 05            [ 2]  243 	ldw	x, (0x05, sp)
      009DDC 7F               [ 1]  244 	clr	(x)
                                    245 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 257: }
      009DDD 81               [ 4]  246 	ret
                                    247 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 267: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
                                    248 ;	-----------------------------------------
                                    249 ;	 function FLASH_ProgramByte
                                    250 ;	-----------------------------------------
      009DDE                        251 _FLASH_ProgramByte:
                                    252 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 270: assert_param(IS_FLASH_ADDRESS_OK(Address));
      009DDE 1E 05            [ 2]  253 	ldw	x, (0x05, sp)
      009DE0 A3 80 00         [ 2]  254 	cpw	x, #0x8000
      009DE3 7B 04            [ 1]  255 	ld	a, (0x04, sp)
      009DE5 A2 00            [ 1]  256 	sbc	a, #0x00
      009DE7 7B 03            [ 1]  257 	ld	a, (0x03, sp)
      009DE9 A2 00            [ 1]  258 	sbc	a, #0x00
      009DEB 25 0D            [ 1]  259 	jrc	00110$
      009DED AE 9F FF         [ 2]  260 	ldw	x, #0x9fff
      009DF0 13 05            [ 2]  261 	cpw	x, (0x05, sp)
      009DF2 4F               [ 1]  262 	clr	a
      009DF3 12 04            [ 1]  263 	sbc	a, (0x04, sp)
      009DF5 4F               [ 1]  264 	clr	a
      009DF6 12 03            [ 1]  265 	sbc	a, (0x03, sp)
      009DF8 24 2B            [ 1]  266 	jrnc	00104$
      009DFA                        267 00110$:
      009DFA 1E 05            [ 2]  268 	ldw	x, (0x05, sp)
      009DFC A3 40 00         [ 2]  269 	cpw	x, #0x4000
      009DFF 7B 04            [ 1]  270 	ld	a, (0x04, sp)
      009E01 A2 00            [ 1]  271 	sbc	a, #0x00
      009E03 7B 03            [ 1]  272 	ld	a, (0x03, sp)
      009E05 A2 00            [ 1]  273 	sbc	a, #0x00
      009E07 25 0D            [ 1]  274 	jrc	00103$
      009E09 AE 42 7F         [ 2]  275 	ldw	x, #0x427f
      009E0C 13 05            [ 2]  276 	cpw	x, (0x05, sp)
      009E0E 4F               [ 1]  277 	clr	a
      009E0F 12 04            [ 1]  278 	sbc	a, (0x04, sp)
      009E11 4F               [ 1]  279 	clr	a
      009E12 12 03            [ 1]  280 	sbc	a, (0x03, sp)
      009E14 24 0F            [ 1]  281 	jrnc	00104$
      009E16                        282 00103$:
      009E16 4B 0E            [ 1]  283 	push	#0x0e
      009E18 4B 01            [ 1]  284 	push	#0x01
      009E1A 5F               [ 1]  285 	clrw	x
      009E1B 89               [ 2]  286 	pushw	x
      009E1C 4B CA            [ 1]  287 	push	#<(___str_0+0)
      009E1E 4B 82            [ 1]  288 	push	#((___str_0+0) >> 8)
      009E20 CD 00 00         [ 4]  289 	call	_assert_failed
      009E23 5B 06            [ 2]  290 	addw	sp, #6
      009E25                        291 00104$:
                                    292 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 275: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
      009E25 1E 05            [ 2]  293 	ldw	x, (0x05, sp)
      009E27 7B 07            [ 1]  294 	ld	a, (0x07, sp)
      009E29 F7               [ 1]  295 	ld	(x), a
                                    296 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 279: }
      009E2A 81               [ 4]  297 	ret
                                    298 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 288: uint8_t FLASH_ReadByte(uint32_t Address)
                                    299 ;	-----------------------------------------
                                    300 ;	 function FLASH_ReadByte
                                    301 ;	-----------------------------------------
      009E2B                        302 _FLASH_ReadByte:
                                    303 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 291: assert_param(IS_FLASH_ADDRESS_OK(Address));
      009E2B 1E 05            [ 2]  304 	ldw	x, (0x05, sp)
      009E2D A3 80 00         [ 2]  305 	cpw	x, #0x8000
      009E30 7B 04            [ 1]  306 	ld	a, (0x04, sp)
      009E32 A2 00            [ 1]  307 	sbc	a, #0x00
      009E34 7B 03            [ 1]  308 	ld	a, (0x03, sp)
      009E36 A2 00            [ 1]  309 	sbc	a, #0x00
      009E38 25 0D            [ 1]  310 	jrc	00110$
      009E3A AE 9F FF         [ 2]  311 	ldw	x, #0x9fff
      009E3D 13 05            [ 2]  312 	cpw	x, (0x05, sp)
      009E3F 4F               [ 1]  313 	clr	a
      009E40 12 04            [ 1]  314 	sbc	a, (0x04, sp)
      009E42 4F               [ 1]  315 	clr	a
      009E43 12 03            [ 1]  316 	sbc	a, (0x03, sp)
      009E45 24 2B            [ 1]  317 	jrnc	00104$
      009E47                        318 00110$:
      009E47 1E 05            [ 2]  319 	ldw	x, (0x05, sp)
      009E49 A3 40 00         [ 2]  320 	cpw	x, #0x4000
      009E4C 7B 04            [ 1]  321 	ld	a, (0x04, sp)
      009E4E A2 00            [ 1]  322 	sbc	a, #0x00
      009E50 7B 03            [ 1]  323 	ld	a, (0x03, sp)
      009E52 A2 00            [ 1]  324 	sbc	a, #0x00
      009E54 25 0D            [ 1]  325 	jrc	00103$
      009E56 AE 42 7F         [ 2]  326 	ldw	x, #0x427f
      009E59 13 05            [ 2]  327 	cpw	x, (0x05, sp)
      009E5B 4F               [ 1]  328 	clr	a
      009E5C 12 04            [ 1]  329 	sbc	a, (0x04, sp)
      009E5E 4F               [ 1]  330 	clr	a
      009E5F 12 03            [ 1]  331 	sbc	a, (0x03, sp)
      009E61 24 0F            [ 1]  332 	jrnc	00104$
      009E63                        333 00103$:
      009E63 4B 23            [ 1]  334 	push	#0x23
      009E65 4B 01            [ 1]  335 	push	#0x01
      009E67 5F               [ 1]  336 	clrw	x
      009E68 89               [ 2]  337 	pushw	x
      009E69 4B CA            [ 1]  338 	push	#<(___str_0+0)
      009E6B 4B 82            [ 1]  339 	push	#((___str_0+0) >> 8)
      009E6D CD 00 00         [ 4]  340 	call	_assert_failed
      009E70 5B 06            [ 2]  341 	addw	sp, #6
      009E72                        342 00104$:
                                    343 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 296: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
      009E72 1E 05            [ 2]  344 	ldw	x, (0x05, sp)
      009E74 F6               [ 1]  345 	ld	a, (x)
                                    346 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 300: }
      009E75 81               [ 4]  347 	ret
                                    348 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 310: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
                                    349 ;	-----------------------------------------
                                    350 ;	 function FLASH_ProgramWord
                                    351 ;	-----------------------------------------
      009E76                        352 _FLASH_ProgramWord:
      009E76 89               [ 2]  353 	pushw	x
                                    354 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 313: assert_param(IS_FLASH_ADDRESS_OK(Address));
      009E77 1E 07            [ 2]  355 	ldw	x, (0x07, sp)
      009E79 A3 80 00         [ 2]  356 	cpw	x, #0x8000
      009E7C 7B 06            [ 1]  357 	ld	a, (0x06, sp)
      009E7E A2 00            [ 1]  358 	sbc	a, #0x00
      009E80 7B 05            [ 1]  359 	ld	a, (0x05, sp)
      009E82 A2 00            [ 1]  360 	sbc	a, #0x00
      009E84 25 0D            [ 1]  361 	jrc	00110$
      009E86 AE 9F FF         [ 2]  362 	ldw	x, #0x9fff
      009E89 13 07            [ 2]  363 	cpw	x, (0x07, sp)
      009E8B 4F               [ 1]  364 	clr	a
      009E8C 12 06            [ 1]  365 	sbc	a, (0x06, sp)
      009E8E 4F               [ 1]  366 	clr	a
      009E8F 12 05            [ 1]  367 	sbc	a, (0x05, sp)
      009E91 24 2B            [ 1]  368 	jrnc	00104$
      009E93                        369 00110$:
      009E93 1E 07            [ 2]  370 	ldw	x, (0x07, sp)
      009E95 A3 40 00         [ 2]  371 	cpw	x, #0x4000
      009E98 7B 06            [ 1]  372 	ld	a, (0x06, sp)
      009E9A A2 00            [ 1]  373 	sbc	a, #0x00
      009E9C 7B 05            [ 1]  374 	ld	a, (0x05, sp)
      009E9E A2 00            [ 1]  375 	sbc	a, #0x00
      009EA0 25 0D            [ 1]  376 	jrc	00103$
      009EA2 AE 42 7F         [ 2]  377 	ldw	x, #0x427f
      009EA5 13 07            [ 2]  378 	cpw	x, (0x07, sp)
      009EA7 4F               [ 1]  379 	clr	a
      009EA8 12 06            [ 1]  380 	sbc	a, (0x06, sp)
      009EAA 4F               [ 1]  381 	clr	a
      009EAB 12 05            [ 1]  382 	sbc	a, (0x05, sp)
      009EAD 24 0F            [ 1]  383 	jrnc	00104$
      009EAF                        384 00103$:
      009EAF 4B 39            [ 1]  385 	push	#0x39
      009EB1 4B 01            [ 1]  386 	push	#0x01
      009EB3 5F               [ 1]  387 	clrw	x
      009EB4 89               [ 2]  388 	pushw	x
      009EB5 4B CA            [ 1]  389 	push	#<(___str_0+0)
      009EB7 4B 82            [ 1]  390 	push	#((___str_0+0) >> 8)
      009EB9 CD 00 00         [ 4]  391 	call	_assert_failed
      009EBC 5B 06            [ 2]  392 	addw	sp, #6
      009EBE                        393 00104$:
                                    394 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 316: FLASH->CR2 |= FLASH_CR2_WPRG;
      009EBE 72 1C 50 5B      [ 1]  395 	bset	20571, #6
                                    396 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 317: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
      009EC2 C6 50 5C         [ 1]  397 	ld	a, 0x505c
      009EC5 A4 BF            [ 1]  398 	and	a, #0xbf
      009EC7 C7 50 5C         [ 1]  399 	ld	0x505c, a
                                    400 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 322: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
      009ECA 16 07            [ 2]  401 	ldw	y, (0x07, sp)
      009ECC 7B 09            [ 1]  402 	ld  a, (9, sp)
      009ECE 90 F7            [ 1]  403 	ld	(y), a
                                    404 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 324: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
      009ED0 93               [ 1]  405 	ldw	x, y
      009ED1 5C               [ 1]  406 	incw	x
      009ED2 1F 01            [ 2]  407 	ldw	(0x01, sp), x
      009ED4 96               [ 1]  408 	ldw	x, sp
      009ED5 1C 00 09         [ 2]  409 	addw	x, #9
      009ED8 E6 01            [ 1]  410 	ld	a, (0x1, x)
      009EDA 1E 01            [ 2]  411 	ldw	x, (0x01, sp)
      009EDC F7               [ 1]  412 	ld	(x), a
                                    413 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 326: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
      009EDD 93               [ 1]  414 	ldw	x, y
      009EDE 5C               [ 1]  415 	incw	x
      009EDF 5C               [ 1]  416 	incw	x
      009EE0 1F 01            [ 2]  417 	ldw	(0x01, sp), x
      009EE2 96               [ 1]  418 	ldw	x, sp
      009EE3 1C 00 09         [ 2]  419 	addw	x, #9
      009EE6 E6 02            [ 1]  420 	ld	a, (0x2, x)
      009EE8 1E 01            [ 2]  421 	ldw	x, (0x01, sp)
      009EEA F7               [ 1]  422 	ld	(x), a
                                    423 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 328: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
      009EEB 72 A9 00 03      [ 2]  424 	addw	y, #0x0003
      009EEF 96               [ 1]  425 	ldw	x, sp
      009EF0 1C 00 09         [ 2]  426 	addw	x, #9
      009EF3 E6 03            [ 1]  427 	ld	a, (0x3, x)
      009EF5 90 F7            [ 1]  428 	ld	(y), a
                                    429 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 335: }
      009EF7 85               [ 2]  430 	popw	x
      009EF8 81               [ 4]  431 	ret
                                    432 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 343: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
                                    433 ;	-----------------------------------------
                                    434 ;	 function FLASH_ProgramOptionByte
                                    435 ;	-----------------------------------------
      009EF9                        436 _FLASH_ProgramOptionByte:
      009EF9 89               [ 2]  437 	pushw	x
                                    438 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 346: assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
      009EFA 1E 05            [ 2]  439 	ldw	x, (0x05, sp)
      009EFC A3 48 00         [ 2]  440 	cpw	x, #0x4800
      009EFF 25 07            [ 1]  441 	jrc	00106$
      009F01 1E 05            [ 2]  442 	ldw	x, (0x05, sp)
      009F03 A3 48 7F         [ 2]  443 	cpw	x, #0x487f
      009F06 23 0F            [ 2]  444 	jrule	00107$
      009F08                        445 00106$:
      009F08 4B 5A            [ 1]  446 	push	#0x5a
      009F0A 4B 01            [ 1]  447 	push	#0x01
      009F0C 5F               [ 1]  448 	clrw	x
      009F0D 89               [ 2]  449 	pushw	x
      009F0E 4B CA            [ 1]  450 	push	#<(___str_0+0)
      009F10 4B 82            [ 1]  451 	push	#((___str_0+0) >> 8)
      009F12 CD 00 00         [ 4]  452 	call	_assert_failed
      009F15 5B 06            [ 2]  453 	addw	sp, #6
      009F17                        454 00107$:
                                    455 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 349: FLASH->CR2 |= FLASH_CR2_OPT;
      009F17 72 1E 50 5B      [ 1]  456 	bset	20571, #7
                                    457 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 350: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      009F1B 72 1F 50 5C      [ 1]  458 	bres	20572, #7
                                    459 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 353: if(Address == 0x4800)
      009F1F 1E 05            [ 2]  460 	ldw	x, (0x05, sp)
                                    461 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 356: *((NEAR uint8_t*)Address) = Data;
      009F21 16 05            [ 2]  462 	ldw	y, (0x05, sp)
      009F23 17 01            [ 2]  463 	ldw	(0x01, sp), y
                                    464 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 353: if(Address == 0x4800)
      009F25 A3 48 00         [ 2]  465 	cpw	x, #0x4800
      009F28 26 07            [ 1]  466 	jrne	00102$
                                    467 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 356: *((NEAR uint8_t*)Address) = Data;
      009F2A 1E 01            [ 2]  468 	ldw	x, (0x01, sp)
      009F2C 7B 07            [ 1]  469 	ld	a, (0x07, sp)
      009F2E F7               [ 1]  470 	ld	(x), a
      009F2F 20 0F            [ 2]  471 	jra	00103$
      009F31                        472 00102$:
                                    473 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 361: *((NEAR uint8_t*)Address) = Data;
      009F31 16 01            [ 2]  474 	ldw	y, (0x01, sp)
      009F33 7B 07            [ 1]  475 	ld	a, (0x07, sp)
      009F35 90 F7            [ 1]  476 	ld	(y), a
                                    477 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 362: *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
      009F37 5C               [ 1]  478 	incw	x
      009F38 1F 01            [ 2]  479 	ldw	(0x01, sp), x
      009F3A 7B 07            [ 1]  480 	ld	a, (0x07, sp)
      009F3C 43               [ 1]  481 	cpl	a
      009F3D 1E 01            [ 2]  482 	ldw	x, (0x01, sp)
      009F3F F7               [ 1]  483 	ld	(x), a
      009F40                        484 00103$:
                                    485 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 364: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      009F40 4B FD            [ 1]  486 	push	#0xfd
      009F42 CD A0 A9         [ 4]  487 	call	_FLASH_WaitForLastOperation
      009F45 84               [ 1]  488 	pop	a
                                    489 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 367: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      009F46 72 1F 50 5B      [ 1]  490 	bres	20571, #7
                                    491 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 368: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      009F4A 72 1E 50 5C      [ 1]  492 	bset	20572, #7
                                    493 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 369: }
      009F4E 85               [ 2]  494 	popw	x
      009F4F 81               [ 4]  495 	ret
                                    496 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 376: void FLASH_EraseOptionByte(uint16_t Address)
                                    497 ;	-----------------------------------------
                                    498 ;	 function FLASH_EraseOptionByte
                                    499 ;	-----------------------------------------
      009F50                        500 _FLASH_EraseOptionByte:
                                    501 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 379: assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
      009F50 1E 03            [ 2]  502 	ldw	x, (0x03, sp)
      009F52 A3 48 00         [ 2]  503 	cpw	x, #0x4800
      009F55 25 07            [ 1]  504 	jrc	00106$
      009F57 1E 03            [ 2]  505 	ldw	x, (0x03, sp)
      009F59 A3 48 7F         [ 2]  506 	cpw	x, #0x487f
      009F5C 23 0F            [ 2]  507 	jrule	00107$
      009F5E                        508 00106$:
      009F5E 4B 7B            [ 1]  509 	push	#0x7b
      009F60 4B 01            [ 1]  510 	push	#0x01
      009F62 5F               [ 1]  511 	clrw	x
      009F63 89               [ 2]  512 	pushw	x
      009F64 4B CA            [ 1]  513 	push	#<(___str_0+0)
      009F66 4B 82            [ 1]  514 	push	#((___str_0+0) >> 8)
      009F68 CD 00 00         [ 4]  515 	call	_assert_failed
      009F6B 5B 06            [ 2]  516 	addw	sp, #6
      009F6D                        517 00107$:
                                    518 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 382: FLASH->CR2 |= FLASH_CR2_OPT;
      009F6D 72 1E 50 5B      [ 1]  519 	bset	20571, #7
                                    520 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 383: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      009F71 72 1F 50 5C      [ 1]  521 	bres	20572, #7
                                    522 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 386: if(Address == 0x4800)
      009F75 16 03            [ 2]  523 	ldw	y, (0x03, sp)
                                    524 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 389: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      009F77 1E 03            [ 2]  525 	ldw	x, (0x03, sp)
                                    526 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 386: if(Address == 0x4800)
      009F79 90 A3 48 00      [ 2]  527 	cpw	y, #0x4800
      009F7D 26 03            [ 1]  528 	jrne	00102$
                                    529 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 389: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      009F7F 7F               [ 1]  530 	clr	(x)
      009F80 20 07            [ 2]  531 	jra	00103$
      009F82                        532 00102$:
                                    533 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 394: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      009F82 7F               [ 1]  534 	clr	(x)
                                    535 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 395: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
      009F83 1E 03            [ 2]  536 	ldw	x, (0x03, sp)
      009F85 5C               [ 1]  537 	incw	x
      009F86 A6 FF            [ 1]  538 	ld	a, #0xff
      009F88 F7               [ 1]  539 	ld	(x), a
      009F89                        540 00103$:
                                    541 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 397: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      009F89 4B FD            [ 1]  542 	push	#0xfd
      009F8B CD A0 A9         [ 4]  543 	call	_FLASH_WaitForLastOperation
      009F8E 84               [ 1]  544 	pop	a
                                    545 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 400: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      009F8F 72 1F 50 5B      [ 1]  546 	bres	20571, #7
                                    547 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 401: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      009F93 72 1E 50 5C      [ 1]  548 	bset	20572, #7
                                    549 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 402: }
      009F97 81               [ 4]  550 	ret
                                    551 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 409: uint16_t FLASH_ReadOptionByte(uint16_t Address)
                                    552 ;	-----------------------------------------
                                    553 ;	 function FLASH_ReadOptionByte
                                    554 ;	-----------------------------------------
      009F98                        555 _FLASH_ReadOptionByte:
      009F98 52 03            [ 2]  556 	sub	sp, #3
                                    557 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 415: assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
      009F9A 1E 06            [ 2]  558 	ldw	x, (0x06, sp)
      009F9C A3 48 00         [ 2]  559 	cpw	x, #0x4800
      009F9F 25 05            [ 1]  560 	jrc	00109$
      009FA1 A3 48 7F         [ 2]  561 	cpw	x, #0x487f
      009FA4 23 0F            [ 2]  562 	jrule	00110$
      009FA6                        563 00109$:
      009FA6 4B 9F            [ 1]  564 	push	#0x9f
      009FA8 4B 01            [ 1]  565 	push	#0x01
      009FAA 5F               [ 1]  566 	clrw	x
      009FAB 89               [ 2]  567 	pushw	x
      009FAC 4B CA            [ 1]  568 	push	#<(___str_0+0)
      009FAE 4B 82            [ 1]  569 	push	#((___str_0+0) >> 8)
      009FB0 CD 00 00         [ 4]  570 	call	_assert_failed
      009FB3 5B 06            [ 2]  571 	addw	sp, #6
      009FB5                        572 00110$:
                                    573 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 417: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
      009FB5 1E 06            [ 2]  574 	ldw	x, (0x06, sp)
      009FB7 F6               [ 1]  575 	ld	a, (x)
      009FB8 6B 03            [ 1]  576 	ld	(0x03, sp), a
                                    577 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 418: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
      009FBA E6 01            [ 1]  578 	ld	a, (0x1, x)
      009FBC 6B 01            [ 1]  579 	ld	(0x01, sp), a
                                    580 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 421: if(Address == 0x4800)	 
      009FBE 16 06            [ 2]  581 	ldw	y, (0x06, sp)
                                    582 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 423: res_value =	 value_optbyte;
      009FC0 5F               [ 1]  583 	clrw	x
      009FC1 7B 03            [ 1]  584 	ld	a, (0x03, sp)
      009FC3 97               [ 1]  585 	ld	xl, a
                                    586 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 421: if(Address == 0x4800)	 
      009FC4 90 A3 48 00      [ 2]  587 	cpw	y, #0x4800
      009FC8 27 18            [ 1]  588 	jreq	00106$
                                    589 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 423: res_value =	 value_optbyte;
                                    590 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 427: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
      009FCA 7B 01            [ 1]  591 	ld	a, (0x01, sp)
      009FCC 43               [ 1]  592 	cpl	a
      009FCD 11 03            [ 1]  593 	cp	a, (0x03, sp)
      009FCF 26 0E            [ 1]  594 	jrne	00102$
                                    595 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 429: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
      009FD1 4F               [ 1]  596 	clr	a
      009FD2 02               [ 1]  597 	rlwa	x
      009FD3 1F 02            [ 2]  598 	ldw	(0x02, sp), x
                                    599 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 430: res_value = res_value | (uint16_t)value_optbyte_complement;
      009FD5 7B 01            [ 1]  600 	ld	a, (0x01, sp)
      009FD7 5F               [ 1]  601 	clrw	x
      009FD8 1A 03            [ 1]  602 	or	a, (0x03, sp)
      009FDA 02               [ 1]  603 	rlwa	x
      009FDB 1A 02            [ 1]  604 	or	a, (0x02, sp)
      009FDD 95               [ 1]  605 	ld	xh, a
                                    606 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 434: res_value = FLASH_OPTIONBYTE_ERROR;
      009FDE BC                     607 	.byte 0xbc
      009FDF                        608 00102$:
      009FDF AE 55 55         [ 2]  609 	ldw	x, #0x5555
      009FE2                        610 00106$:
                                    611 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 437: return(res_value);
                                    612 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 438: }
      009FE2 5B 03            [ 2]  613 	addw	sp, #3
      009FE4 81               [ 4]  614 	ret
                                    615 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 446: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
                                    616 ;	-----------------------------------------
                                    617 ;	 function FLASH_SetLowPowerMode
                                    618 ;	-----------------------------------------
      009FE5                        619 _FLASH_SetLowPowerMode:
                                    620 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 449: assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
      009FE5 7B 03            [ 1]  621 	ld	a, (0x03, sp)
      009FE7 A1 04            [ 1]  622 	cp	a, #0x04
      009FE9 27 1F            [ 1]  623 	jreq	00104$
      009FEB 7B 03            [ 1]  624 	ld	a, (0x03, sp)
      009FED A1 08            [ 1]  625 	cp	a, #0x08
      009FEF 27 19            [ 1]  626 	jreq	00104$
      009FF1 0D 03            [ 1]  627 	tnz	(0x03, sp)
      009FF3 27 15            [ 1]  628 	jreq	00104$
      009FF5 7B 03            [ 1]  629 	ld	a, (0x03, sp)
      009FF7 A1 0C            [ 1]  630 	cp	a, #0x0c
      009FF9 27 0F            [ 1]  631 	jreq	00104$
      009FFB 4B C1            [ 1]  632 	push	#0xc1
      009FFD 4B 01            [ 1]  633 	push	#0x01
      009FFF 5F               [ 1]  634 	clrw	x
      00A000 89               [ 2]  635 	pushw	x
      00A001 4B CA            [ 1]  636 	push	#<(___str_0+0)
      00A003 4B 82            [ 1]  637 	push	#((___str_0+0) >> 8)
      00A005 CD 00 00         [ 4]  638 	call	_assert_failed
      00A008 5B 06            [ 2]  639 	addw	sp, #6
      00A00A                        640 00104$:
                                    641 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 452: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
      00A00A C6 50 5A         [ 1]  642 	ld	a, 0x505a
      00A00D A4 F3            [ 1]  643 	and	a, #0xf3
      00A00F C7 50 5A         [ 1]  644 	ld	0x505a, a
                                    645 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 455: FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
      00A012 C6 50 5A         [ 1]  646 	ld	a, 0x505a
      00A015 1A 03            [ 1]  647 	or	a, (0x03, sp)
      00A017 C7 50 5A         [ 1]  648 	ld	0x505a, a
                                    649 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 456: }
      00A01A 81               [ 4]  650 	ret
                                    651 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 464: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
                                    652 ;	-----------------------------------------
                                    653 ;	 function FLASH_SetProgrammingTime
                                    654 ;	-----------------------------------------
      00A01B                        655 _FLASH_SetProgrammingTime:
                                    656 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 467: assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
      00A01B 0D 03            [ 1]  657 	tnz	(0x03, sp)
      00A01D 27 14            [ 1]  658 	jreq	00104$
      00A01F 7B 03            [ 1]  659 	ld	a, (0x03, sp)
      00A021 4A               [ 1]  660 	dec	a
      00A022 27 0F            [ 1]  661 	jreq	00104$
      00A024 4B D3            [ 1]  662 	push	#0xd3
      00A026 4B 01            [ 1]  663 	push	#0x01
      00A028 5F               [ 1]  664 	clrw	x
      00A029 89               [ 2]  665 	pushw	x
      00A02A 4B CA            [ 1]  666 	push	#<(___str_0+0)
      00A02C 4B 82            [ 1]  667 	push	#((___str_0+0) >> 8)
      00A02E CD 00 00         [ 4]  668 	call	_assert_failed
      00A031 5B 06            [ 2]  669 	addw	sp, #6
      00A033                        670 00104$:
                                    671 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 469: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
      00A033 C6 50 5A         [ 1]  672 	ld	a, 0x505a
      00A036 A4 FE            [ 1]  673 	and	a, #0xfe
      00A038 C7 50 5A         [ 1]  674 	ld	0x505a, a
                                    675 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 470: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
      00A03B C6 50 5A         [ 1]  676 	ld	a, 0x505a
      00A03E 1A 03            [ 1]  677 	or	a, (0x03, sp)
      00A040 C7 50 5A         [ 1]  678 	ld	0x505a, a
                                    679 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 471: }
      00A043 81               [ 4]  680 	ret
                                    681 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 478: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
                                    682 ;	-----------------------------------------
                                    683 ;	 function FLASH_GetLowPowerMode
                                    684 ;	-----------------------------------------
      00A044                        685 _FLASH_GetLowPowerMode:
                                    686 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 480: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
      00A044 C6 50 5A         [ 1]  687 	ld	a, 0x505a
      00A047 A4 0C            [ 1]  688 	and	a, #0x0c
                                    689 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 481: }
      00A049 81               [ 4]  690 	ret
                                    691 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 488: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
                                    692 ;	-----------------------------------------
                                    693 ;	 function FLASH_GetProgrammingTime
                                    694 ;	-----------------------------------------
      00A04A                        695 _FLASH_GetProgrammingTime:
                                    696 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 490: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
      00A04A C6 50 5A         [ 1]  697 	ld	a, 0x505a
      00A04D A4 01            [ 1]  698 	and	a, #0x01
                                    699 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 491: }
      00A04F 81               [ 4]  700 	ret
                                    701 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 498: uint32_t FLASH_GetBootSize(void)
                                    702 ;	-----------------------------------------
                                    703 ;	 function FLASH_GetBootSize
                                    704 ;	-----------------------------------------
      00A050                        705 _FLASH_GetBootSize:
      00A050 52 04            [ 2]  706 	sub	sp, #4
                                    707 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 503: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
      00A052 C6 50 5D         [ 1]  708 	ld	a, 0x505d
      00A055 5F               [ 1]  709 	clrw	x
      00A056 0F 04            [ 1]  710 	clr	(0x04, sp)
      00A058 08 04            [ 1]  711 	sll	(0x04, sp)
      00A05A 49               [ 1]  712 	rlc	a
      00A05B 59               [ 2]  713 	rlcw	x
      00A05C 90 95            [ 1]  714 	ld	yh, a
      00A05E 7B 04            [ 1]  715 	ld	a, (0x04, sp)
      00A060 90 97            [ 1]  716 	ld	yl, a
                                    717 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 506: if(FLASH->FPR == 0xFF)
      00A062 C6 50 5D         [ 1]  718 	ld	a, 0x505d
      00A065 4C               [ 1]  719 	inc	a
      00A066 26 0B            [ 1]  720 	jrne	00102$
                                    721 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 508: temp += 512;
      00A068 72 A9 02 00      [ 2]  722 	addw	y, #0x0200
      00A06C 9F               [ 1]  723 	ld	a, xl
      00A06D A9 00            [ 1]  724 	adc	a, #0x00
      00A06F 02               [ 1]  725 	rlwa	x
      00A070 A9 00            [ 1]  726 	adc	a, #0x00
      00A072 95               [ 1]  727 	ld	xh, a
      00A073                        728 00102$:
                                    729 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 512: return(temp);
      00A073 51               [ 1]  730 	exgw	x, y
                                    731 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 513: }
      00A074 5B 04            [ 2]  732 	addw	sp, #4
      00A076 81               [ 4]  733 	ret
                                    734 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 523: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
                                    735 ;	-----------------------------------------
                                    736 ;	 function FLASH_GetFlagStatus
                                    737 ;	-----------------------------------------
      00A077                        738 _FLASH_GetFlagStatus:
                                    739 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 527: assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
      00A077 7B 03            [ 1]  740 	ld	a, (0x03, sp)
      00A079 A1 08            [ 1]  741 	cp	a, #0x08
      00A07B 27 20            [ 1]  742 	jreq	00107$
      00A07D 7B 03            [ 1]  743 	ld	a, (0x03, sp)
      00A07F A1 04            [ 1]  744 	cp	a, #0x04
      00A081 27 1A            [ 1]  745 	jreq	00107$
      00A083 7B 03            [ 1]  746 	ld	a, (0x03, sp)
      00A085 A1 02            [ 1]  747 	cp	a, #0x02
      00A087 27 14            [ 1]  748 	jreq	00107$
      00A089 7B 03            [ 1]  749 	ld	a, (0x03, sp)
      00A08B 4A               [ 1]  750 	dec	a
      00A08C 27 0F            [ 1]  751 	jreq	00107$
      00A08E 4B 0F            [ 1]  752 	push	#0x0f
      00A090 4B 02            [ 1]  753 	push	#0x02
      00A092 5F               [ 1]  754 	clrw	x
      00A093 89               [ 2]  755 	pushw	x
      00A094 4B CA            [ 1]  756 	push	#<(___str_0+0)
      00A096 4B 82            [ 1]  757 	push	#((___str_0+0) >> 8)
      00A098 CD 00 00         [ 4]  758 	call	_assert_failed
      00A09B 5B 06            [ 2]  759 	addw	sp, #6
      00A09D                        760 00107$:
                                    761 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 530: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
      00A09D C6 50 5F         [ 1]  762 	ld	a, 0x505f
      00A0A0 14 03            [ 1]  763 	and	a, (0x03, sp)
      00A0A2 27 03            [ 1]  764 	jreq	00102$
                                    765 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 532: status = SET; /* FLASH_FLAG is set */
      00A0A4 A6 01            [ 1]  766 	ld	a, #0x01
      00A0A6 81               [ 4]  767 	ret
      00A0A7                        768 00102$:
                                    769 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 536: status = RESET; /* FLASH_FLAG is reset*/
      00A0A7 4F               [ 1]  770 	clr	a
                                    771 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 540: return status;
                                    772 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 541: }
      00A0A8 81               [ 4]  773 	ret
                                    774 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 660: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
                                    775 ;	-----------------------------------------
                                    776 ;	 function FLASH_WaitForLastOperation
                                    777 ;	-----------------------------------------
      00A0A9                        778 _FLASH_WaitForLastOperation:
                                    779 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 662: uint8_t flagstatus = 0x00;
      00A0A9 4F               [ 1]  780 	clr	a
                                    781 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 688: while((flagstatus == 0x00) && (timeout != 0x00))
      00A0AA 5F               [ 1]  782 	clrw	x
      00A0AB 5A               [ 2]  783 	decw	x
      00A0AC                        784 00102$:
      00A0AC 4D               [ 1]  785 	tnz	a
      00A0AD 26 0B            [ 1]  786 	jrne	00104$
      00A0AF 5D               [ 2]  787 	tnzw	x
      00A0B0 27 08            [ 1]  788 	jreq	00104$
                                    789 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 690: flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
      00A0B2 C6 50 5F         [ 1]  790 	ld	a, 0x505f
      00A0B5 A4 05            [ 1]  791 	and	a, #0x05
                                    792 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 691: timeout--;
      00A0B7 5A               [ 2]  793 	decw	x
      00A0B8 20 F2            [ 2]  794 	jra	00102$
      00A0BA                        795 00104$:
                                    796 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 695: if(timeout == 0x00 )
      00A0BA 5D               [ 2]  797 	tnzw	x
      00A0BB 27 01            [ 1]  798 	jreq	00132$
      00A0BD 81               [ 4]  799 	ret
      00A0BE                        800 00132$:
                                    801 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 697: flagstatus = FLASH_STATUS_TIMEOUT;
      00A0BE A6 02            [ 1]  802 	ld	a, #0x02
                                    803 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 700: return((FLASH_Status_TypeDef)flagstatus);
                                    804 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 701: }
      00A0C0 81               [ 4]  805 	ret
                                    806 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 710: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
                                    807 ;	-----------------------------------------
                                    808 ;	 function FLASH_EraseBlock
                                    809 ;	-----------------------------------------
      00A0C1                        810 _FLASH_EraseBlock:
      00A0C1 52 06            [ 2]  811 	sub	sp, #6
                                    812 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 722: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
      00A0C3 7B 0B            [ 1]  813 	ld	a, (0x0b, sp)
      00A0C5 A0 FD            [ 1]  814 	sub	a, #0xfd
      00A0C7 26 02            [ 1]  815 	jrne	00141$
      00A0C9 4C               [ 1]  816 	inc	a
      00A0CA 21                     817 	.byte 0x21
      00A0CB                        818 00141$:
      00A0CB 4F               [ 1]  819 	clr	a
      00A0CC                        820 00142$:
      00A0CC 4D               [ 1]  821 	tnz	a
      00A0CD 26 19            [ 1]  822 	jrne	00107$
      00A0CF 88               [ 1]  823 	push	a
      00A0D0 7B 0C            [ 1]  824 	ld	a, (0x0c, sp)
      00A0D2 A1 F7            [ 1]  825 	cp	a, #0xf7
      00A0D4 84               [ 1]  826 	pop	a
      00A0D5 27 11            [ 1]  827 	jreq	00107$
      00A0D7 88               [ 1]  828 	push	a
      00A0D8 4B D2            [ 1]  829 	push	#0xd2
      00A0DA 4B 02            [ 1]  830 	push	#0x02
      00A0DC 5F               [ 1]  831 	clrw	x
      00A0DD 89               [ 2]  832 	pushw	x
      00A0DE 4B CA            [ 1]  833 	push	#<(___str_0+0)
      00A0E0 4B 82            [ 1]  834 	push	#((___str_0+0) >> 8)
      00A0E2 CD 00 00         [ 4]  835 	call	_assert_failed
      00A0E5 5B 06            [ 2]  836 	addw	sp, #6
      00A0E7 84               [ 1]  837 	pop	a
      00A0E8                        838 00107$:
                                    839 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 723: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A0E8 4D               [ 1]  840 	tnz	a
      00A0E9 27 1F            [ 1]  841 	jreq	00102$
                                    842 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 725: assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
      00A0EB 1E 09            [ 2]  843 	ldw	x, (0x09, sp)
      00A0ED A3 00 80         [ 2]  844 	cpw	x, #0x0080
      00A0F0 25 0F            [ 1]  845 	jrc	00112$
      00A0F2 4B D5            [ 1]  846 	push	#0xd5
      00A0F4 4B 02            [ 1]  847 	push	#0x02
      00A0F6 5F               [ 1]  848 	clrw	x
      00A0F7 89               [ 2]  849 	pushw	x
      00A0F8 4B CA            [ 1]  850 	push	#<(___str_0+0)
      00A0FA 4B 82            [ 1]  851 	push	#((___str_0+0) >> 8)
      00A0FC CD 00 00         [ 4]  852 	call	_assert_failed
      00A0FF 5B 06            [ 2]  853 	addw	sp, #6
      00A101                        854 00112$:
                                    855 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 726: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00A101 0F 04            [ 1]  856 	clr	(0x04, sp)
      00A103 A6 80            [ 1]  857 	ld	a, #0x80
      00A105 5F               [ 1]  858 	clrw	x
      00A106 1F 01            [ 2]  859 	ldw	(0x01, sp), x
      00A108 20 1D            [ 2]  860 	jra	00103$
      00A10A                        861 00102$:
                                    862 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 730: assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
      00A10A 1E 09            [ 2]  863 	ldw	x, (0x09, sp)
      00A10C A3 00 0A         [ 2]  864 	cpw	x, #0x000a
      00A10F 25 0F            [ 1]  865 	jrc	00114$
      00A111 4B DA            [ 1]  866 	push	#0xda
      00A113 4B 02            [ 1]  867 	push	#0x02
      00A115 5F               [ 1]  868 	clrw	x
      00A116 89               [ 2]  869 	pushw	x
      00A117 4B CA            [ 1]  870 	push	#<(___str_0+0)
      00A119 4B 82            [ 1]  871 	push	#((___str_0+0) >> 8)
      00A11B CD 00 00         [ 4]  872 	call	_assert_failed
      00A11E 5B 06            [ 2]  873 	addw	sp, #6
      00A120                        874 00114$:
                                    875 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 731: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00A120 0F 04            [ 1]  876 	clr	(0x04, sp)
      00A122 A6 40            [ 1]  877 	ld	a, #0x40
      00A124 5F               [ 1]  878 	clrw	x
      00A125 1F 01            [ 2]  879 	ldw	(0x01, sp), x
      00A127                        880 00103$:
                                    881 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 739: pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
      00A127 1E 09            [ 2]  882 	ldw	x, (0x09, sp)
      00A129 58               [ 2]  883 	sllw	x
      00A12A 58               [ 2]  884 	sllw	x
      00A12B 58               [ 2]  885 	sllw	x
      00A12C 58               [ 2]  886 	sllw	x
      00A12D 58               [ 2]  887 	sllw	x
      00A12E 58               [ 2]  888 	sllw	x
      00A12F 1F 05            [ 2]  889 	ldw	(0x05, sp), x
      00A131 95               [ 1]  890 	ld	xh, a
      00A132 7B 04            [ 1]  891 	ld	a, (0x04, sp)
      00A134 97               [ 1]  892 	ld	xl, a
      00A135 72 FB 05         [ 2]  893 	addw	x, (0x05, sp)
                                    894 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 743: FLASH->CR2 |= FLASH_CR2_ERASE;
      00A138 72 1A 50 5B      [ 1]  895 	bset	20571, #5
                                    896 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 744: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
      00A13C 72 1B 50 5C      [ 1]  897 	bres	20572, #5
                                    898 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 748: *pwFlash = (uint32_t)0;
      00A140 90 5F            [ 1]  899 	clrw	y
      00A142 EF 02            [ 2]  900 	ldw	(0x2, x), y
      00A144 FF               [ 2]  901 	ldw	(x), y
                                    902 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 756: }
      00A145 5B 06            [ 2]  903 	addw	sp, #6
      00A147 81               [ 4]  904 	ret
                                    905 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 767: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
                                    906 ;	-----------------------------------------
                                    907 ;	 function FLASH_ProgramBlock
                                    908 ;	-----------------------------------------
      00A148                        909 _FLASH_ProgramBlock:
      00A148 52 08            [ 2]  910 	sub	sp, #8
                                    911 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 774: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
      00A14A 7B 0D            [ 1]  912 	ld	a, (0x0d, sp)
      00A14C A0 FD            [ 1]  913 	sub	a, #0xfd
      00A14E 26 04            [ 1]  914 	jrne	00173$
      00A150 4C               [ 1]  915 	inc	a
      00A151 6B 08            [ 1]  916 	ld	(0x08, sp), a
      00A153 C5                     917 	.byte 0xc5
      00A154                        918 00173$:
      00A154 0F 08            [ 1]  919 	clr	(0x08, sp)
      00A156                        920 00174$:
      00A156 0D 08            [ 1]  921 	tnz	(0x08, sp)
      00A158 26 15            [ 1]  922 	jrne	00113$
      00A15A 7B 0D            [ 1]  923 	ld	a, (0x0d, sp)
      00A15C A1 F7            [ 1]  924 	cp	a, #0xf7
      00A15E 27 0F            [ 1]  925 	jreq	00113$
      00A160 4B 06            [ 1]  926 	push	#0x06
      00A162 4B 03            [ 1]  927 	push	#0x03
      00A164 5F               [ 1]  928 	clrw	x
      00A165 89               [ 2]  929 	pushw	x
      00A166 4B CA            [ 1]  930 	push	#<(___str_0+0)
      00A168 4B 82            [ 1]  931 	push	#((___str_0+0) >> 8)
      00A16A CD 00 00         [ 4]  932 	call	_assert_failed
      00A16D 5B 06            [ 2]  933 	addw	sp, #6
      00A16F                        934 00113$:
                                    935 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 775: assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
      00A16F 0D 0E            [ 1]  936 	tnz	(0x0e, sp)
      00A171 27 15            [ 1]  937 	jreq	00118$
      00A173 7B 0E            [ 1]  938 	ld	a, (0x0e, sp)
      00A175 A1 10            [ 1]  939 	cp	a, #0x10
      00A177 27 0F            [ 1]  940 	jreq	00118$
      00A179 4B 07            [ 1]  941 	push	#0x07
      00A17B 4B 03            [ 1]  942 	push	#0x03
      00A17D 5F               [ 1]  943 	clrw	x
      00A17E 89               [ 2]  944 	pushw	x
      00A17F 4B CA            [ 1]  945 	push	#<(___str_0+0)
      00A181 4B 82            [ 1]  946 	push	#((___str_0+0) >> 8)
      00A183 CD 00 00         [ 4]  947 	call	_assert_failed
      00A186 5B 06            [ 2]  948 	addw	sp, #6
      00A188                        949 00118$:
                                    950 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 776: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A188 7B 08            [ 1]  951 	ld	a, (0x08, sp)
      00A18A 27 1E            [ 1]  952 	jreq	00102$
                                    953 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 778: assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
      00A18C 1E 0B            [ 2]  954 	ldw	x, (0x0b, sp)
      00A18E A3 00 80         [ 2]  955 	cpw	x, #0x0080
      00A191 25 0F            [ 1]  956 	jrc	00123$
      00A193 4B 0A            [ 1]  957 	push	#0x0a
      00A195 4B 03            [ 1]  958 	push	#0x03
      00A197 5F               [ 1]  959 	clrw	x
      00A198 89               [ 2]  960 	pushw	x
      00A199 4B CA            [ 1]  961 	push	#<(___str_0+0)
      00A19B 4B 82            [ 1]  962 	push	#((___str_0+0) >> 8)
      00A19D CD 00 00         [ 4]  963 	call	_assert_failed
      00A1A0 5B 06            [ 2]  964 	addw	sp, #6
      00A1A2                        965 00123$:
                                    966 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 779: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00A1A2 AE 80 00         [ 2]  967 	ldw	x, #0x8000
      00A1A5 1F 03            [ 2]  968 	ldw	(0x03, sp), x
      00A1A7 5F               [ 1]  969 	clrw	x
      00A1A8 20 1C            [ 2]  970 	jra	00103$
      00A1AA                        971 00102$:
                                    972 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 783: assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
      00A1AA 1E 0B            [ 2]  973 	ldw	x, (0x0b, sp)
      00A1AC A3 00 0A         [ 2]  974 	cpw	x, #0x000a
      00A1AF 25 0F            [ 1]  975 	jrc	00125$
      00A1B1 4B 0F            [ 1]  976 	push	#0x0f
      00A1B3 4B 03            [ 1]  977 	push	#0x03
      00A1B5 5F               [ 1]  978 	clrw	x
      00A1B6 89               [ 2]  979 	pushw	x
      00A1B7 4B CA            [ 1]  980 	push	#<(___str_0+0)
      00A1B9 4B 82            [ 1]  981 	push	#((___str_0+0) >> 8)
      00A1BB CD 00 00         [ 4]  982 	call	_assert_failed
      00A1BE 5B 06            [ 2]  983 	addw	sp, #6
      00A1C0                        984 00125$:
                                    985 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 784: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00A1C0 AE 40 00         [ 2]  986 	ldw	x, #0x4000
      00A1C3 1F 03            [ 2]  987 	ldw	(0x03, sp), x
      00A1C5 5F               [ 1]  988 	clrw	x
      00A1C6                        989 00103$:
                                    990 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 788: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
      00A1C6 16 0B            [ 2]  991 	ldw	y, (0x0b, sp)
      00A1C8 17 07            [ 2]  992 	ldw	(0x07, sp), y
      00A1CA 90 5F            [ 1]  993 	clrw	y
      00A1CC 17 05            [ 2]  994 	ldw	(0x05, sp), y
      00A1CE 16 07            [ 2]  995 	ldw	y, (0x07, sp)
      00A1D0 A6 06            [ 1]  996 	ld	a, #0x06
      00A1D2                        997 00186$:
      00A1D2 90 58            [ 2]  998 	sllw	y
      00A1D4 09 06            [ 1]  999 	rlc	(0x06, sp)
      00A1D6 09 05            [ 1] 1000 	rlc	(0x05, sp)
      00A1D8 4A               [ 1] 1001 	dec	a
      00A1D9 26 F7            [ 1] 1002 	jrne	00186$
      00A1DB 72 F9 03         [ 2] 1003 	addw	y, (0x03, sp)
      00A1DE 9F               [ 1] 1004 	ld	a, xl
      00A1DF 19 06            [ 1] 1005 	adc	a, (0x06, sp)
      00A1E1 02               [ 1] 1006 	rlwa	x
      00A1E2 19 05            [ 1] 1007 	adc	a, (0x05, sp)
      00A1E4 95               [ 1] 1008 	ld	xh, a
      00A1E5 17 03            [ 2] 1009 	ldw	(0x03, sp), y
      00A1E7 1F 01            [ 2] 1010 	ldw	(0x01, sp), x
                                   1011 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 794: FLASH->CR2 |= FLASH_CR2_PRG;
      00A1E9 C6 50 5B         [ 1] 1012 	ld	a, 0x505b
                                   1013 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 791: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
      00A1EC 0D 0E            [ 1] 1014 	tnz	(0x0e, sp)
      00A1EE 26 0B            [ 1] 1015 	jrne	00105$
                                   1016 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 794: FLASH->CR2 |= FLASH_CR2_PRG;
      00A1F0 AA 01            [ 1] 1017 	or	a, #0x01
      00A1F2 C7 50 5B         [ 1] 1018 	ld	0x505b, a
                                   1019 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 795: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
      00A1F5 72 11 50 5C      [ 1] 1020 	bres	20572, #0
      00A1F9 20 09            [ 2] 1021 	jra	00134$
      00A1FB                       1022 00105$:
                                   1023 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 800: FLASH->CR2 |= FLASH_CR2_FPRG;
      00A1FB AA 10            [ 1] 1024 	or	a, #0x10
      00A1FD C7 50 5B         [ 1] 1025 	ld	0x505b, a
                                   1026 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 801: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
      00A200 72 19 50 5C      [ 1] 1027 	bres	20572, #4
                                   1028 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 805: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00A204                       1029 00134$:
      00A204 90 5F            [ 1] 1030 	clrw	y
      00A206                       1031 00108$:
                                   1032 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 807: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
      00A206 1E 03            [ 2] 1033 	ldw	x, (0x03, sp)
      00A208 1F 05            [ 2] 1034 	ldw	(0x05, sp), x
      00A20A 93               [ 1] 1035 	ldw	x, y
      00A20B 72 FB 05         [ 2] 1036 	addw	x, (0x05, sp)
      00A20E 1F 07            [ 2] 1037 	ldw	(0x07, sp), x
      00A210 93               [ 1] 1038 	ldw	x, y
      00A211 72 FB 0F         [ 2] 1039 	addw	x, (0x0f, sp)
      00A214 F6               [ 1] 1040 	ld	a, (x)
      00A215 1E 07            [ 2] 1041 	ldw	x, (0x07, sp)
      00A217 F7               [ 1] 1042 	ld	(x), a
                                   1043 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 805: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00A218 90 5C            [ 1] 1044 	incw	y
      00A21A 90 A3 00 40      [ 2] 1045 	cpw	y, #0x0040
      00A21E 25 E6            [ 1] 1046 	jrc	00108$
                                   1047 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_flash.c: 809: }
      00A220 5B 08            [ 2] 1048 	addw	sp, #8
      00A222 81               [ 4] 1049 	ret
                                   1050 	.area CODE
                                   1051 	.area CONST
                                   1052 	.area CONST
      0082CA                       1053 ___str_0:
      0082CA 43 3A                 1054 	.ascii "C:"
      0082CC 5C                    1055 	.db 0x5c
      0082CD 55 73 65 72 73        1056 	.ascii "Users"
      0082D2 5C                    1057 	.db 0x5c
      0082D3 41 64 6D 69 6E        1058 	.ascii "Admin"
      0082D8 5C                    1059 	.db 0x5c
      0082D9 2E 70 6C 61 74 66 6F  1060 	.ascii ".platformio"
             72 6D 69 6F
      0082E4 5C                    1061 	.db 0x5c
      0082E5 70 61 63 6B 61 67 65  1062 	.ascii "packages"
             73
      0082ED 5C                    1063 	.db 0x5c
      0082EE 66 72 61 6D 65 77 6F  1064 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      008301 5C                    1065 	.db 0x5c
      008302 4C 69 62 72 61 72 69  1066 	.ascii "Libraries"
             65 73
      00830B 5C                    1067 	.db 0x5c
      00830C 53 54 4D 38 53 5F 53  1068 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      008322 5C                    1069 	.db 0x5c
      008323 73 72 63              1070 	.ascii "src"
      008326 5C                    1071 	.db 0x5c
      008327 73 74 6D 38 73 5F 66  1072 	.ascii "stm8s_flash.c"
             6C 61 73 68 2E 63
      008334 00                    1073 	.db 0x00
                                   1074 	.area CODE
                                   1075 	.area INITIALIZER
                                   1076 	.area CABS (ABS)
