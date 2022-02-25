                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_rst
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _RST_GetFlagStatus
                                     13 	.globl _RST_ClearFlag
                                     14 ;--------------------------------------------------------
                                     15 ; ram data
                                     16 ;--------------------------------------------------------
                                     17 	.area DATA
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area INITIALIZED
                                     22 ;--------------------------------------------------------
                                     23 ; absolute external ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DABS (ABS)
                                     26 
                                     27 ; default segment ordering for linker
                                     28 	.area HOME
                                     29 	.area GSINIT
                                     30 	.area GSFINAL
                                     31 	.area CONST
                                     32 	.area INITIALIZER
                                     33 	.area CODE
                                     34 
                                     35 ;--------------------------------------------------------
                                     36 ; global & static initialisations
                                     37 ;--------------------------------------------------------
                                     38 	.area HOME
                                     39 	.area GSINIT
                                     40 	.area GSFINAL
                                     41 	.area GSINIT
                                     42 ;--------------------------------------------------------
                                     43 ; Home
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area HOME
                                     47 ;--------------------------------------------------------
                                     48 ; code
                                     49 ;--------------------------------------------------------
                                     50 	.area CODE
                                     51 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 54: FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
                                     52 ;	-----------------------------------------
                                     53 ;	 function RST_GetFlagStatus
                                     54 ;	-----------------------------------------
      00ACC3                         55 _RST_GetFlagStatus:
                                     56 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 57: assert_param(IS_RST_FLAG_OK(RST_Flag));
      00ACC3 7B 03            [ 1]   57 	ld	a, (0x03, sp)
      00ACC5 A1 10            [ 1]   58 	cp	a, #0x10
      00ACC7 27 26            [ 1]   59 	jreq	00104$
      00ACC9 7B 03            [ 1]   60 	ld	a, (0x03, sp)
      00ACCB A1 08            [ 1]   61 	cp	a, #0x08
      00ACCD 27 20            [ 1]   62 	jreq	00104$
      00ACCF 7B 03            [ 1]   63 	ld	a, (0x03, sp)
      00ACD1 A1 04            [ 1]   64 	cp	a, #0x04
      00ACD3 27 1A            [ 1]   65 	jreq	00104$
      00ACD5 7B 03            [ 1]   66 	ld	a, (0x03, sp)
      00ACD7 A1 02            [ 1]   67 	cp	a, #0x02
      00ACD9 27 14            [ 1]   68 	jreq	00104$
      00ACDB 7B 03            [ 1]   69 	ld	a, (0x03, sp)
      00ACDD 4A               [ 1]   70 	dec	a
      00ACDE 27 0F            [ 1]   71 	jreq	00104$
      00ACE0 4B 39            [ 1]   72 	push	#0x39
      00ACE2 5F               [ 1]   73 	clrw	x
      00ACE3 89               [ 2]   74 	pushw	x
      00ACE4 4B 00            [ 1]   75 	push	#0x00
      00ACE6 4B DB            [ 1]   76 	push	#<(___str_0+0)
      00ACE8 4B 84            [ 1]   77 	push	#((___str_0+0) >> 8)
      00ACEA CD 00 00         [ 4]   78 	call	_assert_failed
      00ACED 5B 06            [ 2]   79 	addw	sp, #6
      00ACEF                         80 00104$:
                                     81 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 60: return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
      00ACEF C6 50 B3         [ 1]   82 	ld	a, 0x50b3
      00ACF2 14 03            [ 1]   83 	and	a, (0x03, sp)
      00ACF4 26 02            [ 1]   84 	jrne	00117$
      00ACF6 5F               [ 1]   85 	clrw	x
      00ACF7 C5                      86 	.byte 0xc5
      00ACF8                         87 00117$:
      00ACF8 5F               [ 1]   88 	clrw	x
      00ACF9 5C               [ 1]   89 	incw	x
      00ACFA                         90 00118$:
      00ACFA 9F               [ 1]   91 	ld	a, xl
                                     92 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 61: }
      00ACFB 81               [ 4]   93 	ret
                                     94 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 69: void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
                                     95 ;	-----------------------------------------
                                     96 ;	 function RST_ClearFlag
                                     97 ;	-----------------------------------------
      00ACFC                         98 _RST_ClearFlag:
                                     99 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 72: assert_param(IS_RST_FLAG_OK(RST_Flag));
      00ACFC 7B 03            [ 1]  100 	ld	a, (0x03, sp)
      00ACFE A1 10            [ 1]  101 	cp	a, #0x10
      00AD00 27 26            [ 1]  102 	jreq	00104$
      00AD02 7B 03            [ 1]  103 	ld	a, (0x03, sp)
      00AD04 A1 08            [ 1]  104 	cp	a, #0x08
      00AD06 27 20            [ 1]  105 	jreq	00104$
      00AD08 7B 03            [ 1]  106 	ld	a, (0x03, sp)
      00AD0A A1 04            [ 1]  107 	cp	a, #0x04
      00AD0C 27 1A            [ 1]  108 	jreq	00104$
      00AD0E 7B 03            [ 1]  109 	ld	a, (0x03, sp)
      00AD10 A1 02            [ 1]  110 	cp	a, #0x02
      00AD12 27 14            [ 1]  111 	jreq	00104$
      00AD14 7B 03            [ 1]  112 	ld	a, (0x03, sp)
      00AD16 4A               [ 1]  113 	dec	a
      00AD17 27 0F            [ 1]  114 	jreq	00104$
      00AD19 4B 48            [ 1]  115 	push	#0x48
      00AD1B 5F               [ 1]  116 	clrw	x
      00AD1C 89               [ 2]  117 	pushw	x
      00AD1D 4B 00            [ 1]  118 	push	#0x00
      00AD1F 4B DB            [ 1]  119 	push	#<(___str_0+0)
      00AD21 4B 84            [ 1]  120 	push	#((___str_0+0) >> 8)
      00AD23 CD 00 00         [ 4]  121 	call	_assert_failed
      00AD26 5B 06            [ 2]  122 	addw	sp, #6
      00AD28                        123 00104$:
                                    124 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 74: RST->SR = (uint8_t)RST_Flag;
      00AD28 AE 50 B3         [ 2]  125 	ldw	x, #0x50b3
      00AD2B 7B 03            [ 1]  126 	ld	a, (0x03, sp)
      00AD2D F7               [ 1]  127 	ld	(x), a
                                    128 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 75: }
      00AD2E 81               [ 4]  129 	ret
                                    130 	.area CODE
                                    131 	.area CONST
                                    132 	.area CONST
      0084DB                        133 ___str_0:
      0084DB 43 3A                  134 	.ascii "C:"
      0084DD 5C                     135 	.db 0x5c
      0084DE 55 73 65 72 73         136 	.ascii "Users"
      0084E3 5C                     137 	.db 0x5c
      0084E4 41 64 6D 69 6E         138 	.ascii "Admin"
      0084E9 5C                     139 	.db 0x5c
      0084EA 2E 70 6C 61 74 66 6F   140 	.ascii ".platformio"
             72 6D 69 6F
      0084F5 5C                     141 	.db 0x5c
      0084F6 70 61 63 6B 61 67 65   142 	.ascii "packages"
             73
      0084FE 5C                     143 	.db 0x5c
      0084FF 66 72 61 6D 65 77 6F   144 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      008512 5C                     145 	.db 0x5c
      008513 4C 69 62 72 61 72 69   146 	.ascii "Libraries"
             65 73
      00851C 5C                     147 	.db 0x5c
      00851D 53 54 4D 38 53 5F 53   148 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      008533 5C                     149 	.db 0x5c
      008534 73 72 63               150 	.ascii "src"
      008537 5C                     151 	.db 0x5c
      008538 73 74 6D 38 73 5F 72   152 	.ascii "stm8s_rst.c"
             73 74 2E 63
      008543 00                     153 	.db 0x00
                                    154 	.area CODE
                                    155 	.area INITIALIZER
                                    156 	.area CABS (ABS)
