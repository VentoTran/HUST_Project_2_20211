                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_wwdg
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _WWDG_Init
                                     13 	.globl _WWDG_SetCounter
                                     14 	.globl _WWDG_GetCounter
                                     15 	.globl _WWDG_SWReset
                                     16 	.globl _WWDG_SetWindowValue
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
                                     54 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 53: void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
                                     55 ;	-----------------------------------------
                                     56 ;	 function WWDG_Init
                                     57 ;	-----------------------------------------
      00DB4A                         58 _WWDG_Init:
                                     59 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 56: assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
      00DB4A 7B 04            [ 1]   60 	ld	a, (0x04, sp)
      00DB4C A1 7F            [ 1]   61 	cp	a, #0x7f
      00DB4E 23 0F            [ 2]   62 	jrule	00104$
      00DB50 4B 38            [ 1]   63 	push	#0x38
      00DB52 5F               [ 1]   64 	clrw	x
      00DB53 89               [ 2]   65 	pushw	x
      00DB54 4B 00            [ 1]   66 	push	#0x00
      00DB56 4B 56            [ 1]   67 	push	#<(___str_0+0)
      00DB58 4B 87            [ 1]   68 	push	#((___str_0+0) >> 8)
      00DB5A CD 00 00         [ 4]   69 	call	_assert_failed
      00DB5D 5B 06            [ 2]   70 	addw	sp, #6
      00DB5F                         71 00104$:
                                     72 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 58: WWDG->WR = WWDG_WR_RESET_VALUE;
      00DB5F 35 7F 50 D2      [ 1]   73 	mov	0x50d2+0, #0x7f
                                     74 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 59: WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
      00DB63 7B 03            [ 1]   75 	ld	a, (0x03, sp)
      00DB65 AA C0            [ 1]   76 	or	a, #0xc0
      00DB67 C7 50 D1         [ 1]   77 	ld	0x50d1, a
                                     78 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 60: WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
      00DB6A 7B 04            [ 1]   79 	ld	a, (0x04, sp)
      00DB6C AA 40            [ 1]   80 	or	a, #0x40
      00DB6E A4 7F            [ 1]   81 	and	a, #0x7f
      00DB70 C7 50 D2         [ 1]   82 	ld	0x50d2, a
                                     83 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 61: }
      00DB73 81               [ 4]   84 	ret
                                     85 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 69: void WWDG_SetCounter(uint8_t Counter)
                                     86 ;	-----------------------------------------
                                     87 ;	 function WWDG_SetCounter
                                     88 ;	-----------------------------------------
      00DB74                         89 _WWDG_SetCounter:
                                     90 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 72: assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
      00DB74 7B 03            [ 1]   91 	ld	a, (0x03, sp)
      00DB76 A1 7F            [ 1]   92 	cp	a, #0x7f
      00DB78 23 0F            [ 2]   93 	jrule	00104$
      00DB7A 4B 48            [ 1]   94 	push	#0x48
      00DB7C 5F               [ 1]   95 	clrw	x
      00DB7D 89               [ 2]   96 	pushw	x
      00DB7E 4B 00            [ 1]   97 	push	#0x00
      00DB80 4B 56            [ 1]   98 	push	#<(___str_0+0)
      00DB82 4B 87            [ 1]   99 	push	#((___str_0+0) >> 8)
      00DB84 CD 00 00         [ 4]  100 	call	_assert_failed
      00DB87 5B 06            [ 2]  101 	addw	sp, #6
      00DB89                        102 00104$:
                                    103 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 76: WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
      00DB89 7B 03            [ 1]  104 	ld	a, (0x03, sp)
      00DB8B A4 7F            [ 1]  105 	and	a, #0x7f
      00DB8D C7 50 D1         [ 1]  106 	ld	0x50d1, a
                                    107 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 77: }
      00DB90 81               [ 4]  108 	ret
                                    109 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 86: uint8_t WWDG_GetCounter(void)
                                    110 ;	-----------------------------------------
                                    111 ;	 function WWDG_GetCounter
                                    112 ;	-----------------------------------------
      00DB91                        113 _WWDG_GetCounter:
                                    114 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 88: return(WWDG->CR);
      00DB91 C6 50 D1         [ 1]  115 	ld	a, 0x50d1
                                    116 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 89: }
      00DB94 81               [ 4]  117 	ret
                                    118 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 96: void WWDG_SWReset(void)
                                    119 ;	-----------------------------------------
                                    120 ;	 function WWDG_SWReset
                                    121 ;	-----------------------------------------
      00DB95                        122 _WWDG_SWReset:
                                    123 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 98: WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
      00DB95 35 80 50 D1      [ 1]  124 	mov	0x50d1+0, #0x80
                                    125 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 99: }
      00DB99 81               [ 4]  126 	ret
                                    127 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 108: void WWDG_SetWindowValue(uint8_t WindowValue)
                                    128 ;	-----------------------------------------
                                    129 ;	 function WWDG_SetWindowValue
                                    130 ;	-----------------------------------------
      00DB9A                        131 _WWDG_SetWindowValue:
                                    132 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 111: assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
      00DB9A 7B 03            [ 1]  133 	ld	a, (0x03, sp)
      00DB9C A1 7F            [ 1]  134 	cp	a, #0x7f
      00DB9E 23 0F            [ 2]  135 	jrule	00104$
      00DBA0 4B 6F            [ 1]  136 	push	#0x6f
      00DBA2 5F               [ 1]  137 	clrw	x
      00DBA3 89               [ 2]  138 	pushw	x
      00DBA4 4B 00            [ 1]  139 	push	#0x00
      00DBA6 4B 56            [ 1]  140 	push	#<(___str_0+0)
      00DBA8 4B 87            [ 1]  141 	push	#((___str_0+0) >> 8)
      00DBAA CD 00 00         [ 4]  142 	call	_assert_failed
      00DBAD 5B 06            [ 2]  143 	addw	sp, #6
      00DBAF                        144 00104$:
                                    145 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 113: WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
      00DBAF 7B 03            [ 1]  146 	ld	a, (0x03, sp)
      00DBB1 AA 40            [ 1]  147 	or	a, #0x40
      00DBB3 A4 7F            [ 1]  148 	and	a, #0x7f
      00DBB5 C7 50 D2         [ 1]  149 	ld	0x50d2, a
                                    150 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_wwdg.c: 114: }
      00DBB8 81               [ 4]  151 	ret
                                    152 	.area CODE
                                    153 	.area CONST
                                    154 	.area CONST
      008756                        155 ___str_0:
      008756 43 3A                  156 	.ascii "C:"
      008758 5C                     157 	.db 0x5c
      008759 55 73 65 72 73         158 	.ascii "Users"
      00875E 5C                     159 	.db 0x5c
      00875F 41 64 6D 69 6E         160 	.ascii "Admin"
      008764 5C                     161 	.db 0x5c
      008765 2E 70 6C 61 74 66 6F   162 	.ascii ".platformio"
             72 6D 69 6F
      008770 5C                     163 	.db 0x5c
      008771 70 61 63 6B 61 67 65   164 	.ascii "packages"
             73
      008779 5C                     165 	.db 0x5c
      00877A 66 72 61 6D 65 77 6F   166 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00878D 5C                     167 	.db 0x5c
      00878E 4C 69 62 72 61 72 69   168 	.ascii "Libraries"
             65 73
      008797 5C                     169 	.db 0x5c
      008798 53 54 4D 38 53 5F 53   170 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0087AE 5C                     171 	.db 0x5c
      0087AF 73 72 63               172 	.ascii "src"
      0087B2 5C                     173 	.db 0x5c
      0087B3 73 74 6D 38 73 5F 77   174 	.ascii "stm8s_wwdg.c"
             77 64 67 2E 63
      0087BF 00                     175 	.db 0x00
                                    176 	.area CODE
                                    177 	.area INITIALIZER
                                    178 	.area CABS (ABS)
