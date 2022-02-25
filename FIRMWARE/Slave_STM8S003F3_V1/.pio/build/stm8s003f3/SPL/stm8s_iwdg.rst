                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_iwdg
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _IWDG_WriteAccessCmd
                                     13 	.globl _IWDG_SetPrescaler
                                     14 	.globl _IWDG_SetReload
                                     15 	.globl _IWDG_ReloadCounter
                                     16 	.globl _IWDG_Enable
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
                                     54 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 48: void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
                                     55 ;	-----------------------------------------
                                     56 ;	 function IWDG_WriteAccessCmd
                                     57 ;	-----------------------------------------
      00AC55                         58 _IWDG_WriteAccessCmd:
                                     59 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 51: assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
      00AC55 7B 03            [ 1]   60 	ld	a, (0x03, sp)
      00AC57 A1 55            [ 1]   61 	cp	a, #0x55
      00AC59 27 13            [ 1]   62 	jreq	00104$
      00AC5B 0D 03            [ 1]   63 	tnz	(0x03, sp)
      00AC5D 27 0F            [ 1]   64 	jreq	00104$
      00AC5F 4B 33            [ 1]   65 	push	#0x33
      00AC61 5F               [ 1]   66 	clrw	x
      00AC62 89               [ 2]   67 	pushw	x
      00AC63 4B 00            [ 1]   68 	push	#0x00
      00AC65 4B 71            [ 1]   69 	push	#<(___str_0+0)
      00AC67 4B 84            [ 1]   70 	push	#((___str_0+0) >> 8)
      00AC69 CD 00 00         [ 4]   71 	call	_assert_failed
      00AC6C 5B 06            [ 2]   72 	addw	sp, #6
      00AC6E                         73 00104$:
                                     74 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 53: IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
      00AC6E AE 50 E0         [ 2]   75 	ldw	x, #0x50e0
      00AC71 7B 03            [ 1]   76 	ld	a, (0x03, sp)
      00AC73 F7               [ 1]   77 	ld	(x), a
                                     78 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 54: }
      00AC74 81               [ 4]   79 	ret
                                     80 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 63: void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
                                     81 ;	-----------------------------------------
                                     82 ;	 function IWDG_SetPrescaler
                                     83 ;	-----------------------------------------
      00AC75                         84 _IWDG_SetPrescaler:
                                     85 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 66: assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
      00AC75 0D 03            [ 1]   86 	tnz	(0x03, sp)
      00AC77 27 32            [ 1]   87 	jreq	00104$
      00AC79 7B 03            [ 1]   88 	ld	a, (0x03, sp)
      00AC7B 4A               [ 1]   89 	dec	a
      00AC7C 27 2D            [ 1]   90 	jreq	00104$
      00AC7E 7B 03            [ 1]   91 	ld	a, (0x03, sp)
      00AC80 A1 02            [ 1]   92 	cp	a, #0x02
      00AC82 27 27            [ 1]   93 	jreq	00104$
      00AC84 7B 03            [ 1]   94 	ld	a, (0x03, sp)
      00AC86 A1 03            [ 1]   95 	cp	a, #0x03
      00AC88 27 21            [ 1]   96 	jreq	00104$
      00AC8A 7B 03            [ 1]   97 	ld	a, (0x03, sp)
      00AC8C A1 04            [ 1]   98 	cp	a, #0x04
      00AC8E 27 1B            [ 1]   99 	jreq	00104$
      00AC90 7B 03            [ 1]  100 	ld	a, (0x03, sp)
      00AC92 A1 05            [ 1]  101 	cp	a, #0x05
      00AC94 27 15            [ 1]  102 	jreq	00104$
      00AC96 7B 03            [ 1]  103 	ld	a, (0x03, sp)
      00AC98 A1 06            [ 1]  104 	cp	a, #0x06
      00AC9A 27 0F            [ 1]  105 	jreq	00104$
      00AC9C 4B 42            [ 1]  106 	push	#0x42
      00AC9E 5F               [ 1]  107 	clrw	x
      00AC9F 89               [ 2]  108 	pushw	x
      00ACA0 4B 00            [ 1]  109 	push	#0x00
      00ACA2 4B 71            [ 1]  110 	push	#<(___str_0+0)
      00ACA4 4B 84            [ 1]  111 	push	#((___str_0+0) >> 8)
      00ACA6 CD 00 00         [ 4]  112 	call	_assert_failed
      00ACA9 5B 06            [ 2]  113 	addw	sp, #6
      00ACAB                        114 00104$:
                                    115 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 68: IWDG->PR = (uint8_t)IWDG_Prescaler;
      00ACAB AE 50 E1         [ 2]  116 	ldw	x, #0x50e1
      00ACAE 7B 03            [ 1]  117 	ld	a, (0x03, sp)
      00ACB0 F7               [ 1]  118 	ld	(x), a
                                    119 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 69: }
      00ACB1 81               [ 4]  120 	ret
                                    121 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 78: void IWDG_SetReload(uint8_t IWDG_Reload)
                                    122 ;	-----------------------------------------
                                    123 ;	 function IWDG_SetReload
                                    124 ;	-----------------------------------------
      00ACB2                        125 _IWDG_SetReload:
                                    126 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 80: IWDG->RLR = IWDG_Reload;
      00ACB2 AE 50 E2         [ 2]  127 	ldw	x, #0x50e2
      00ACB5 7B 03            [ 1]  128 	ld	a, (0x03, sp)
      00ACB7 F7               [ 1]  129 	ld	(x), a
                                    130 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 81: }
      00ACB8 81               [ 4]  131 	ret
                                    132 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 89: void IWDG_ReloadCounter(void)
                                    133 ;	-----------------------------------------
                                    134 ;	 function IWDG_ReloadCounter
                                    135 ;	-----------------------------------------
      00ACB9                        136 _IWDG_ReloadCounter:
                                    137 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 91: IWDG->KR = IWDG_KEY_REFRESH;
      00ACB9 35 AA 50 E0      [ 1]  138 	mov	0x50e0+0, #0xaa
                                    139 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 92: }
      00ACBD 81               [ 4]  140 	ret
                                    141 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 99: void IWDG_Enable(void)
                                    142 ;	-----------------------------------------
                                    143 ;	 function IWDG_Enable
                                    144 ;	-----------------------------------------
      00ACBE                        145 _IWDG_Enable:
                                    146 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 101: IWDG->KR = IWDG_KEY_ENABLE;
      00ACBE 35 CC 50 E0      [ 1]  147 	mov	0x50e0+0, #0xcc
                                    148 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_iwdg.c: 102: }
      00ACC2 81               [ 4]  149 	ret
                                    150 	.area CODE
                                    151 	.area CONST
                                    152 	.area CONST
      008471                        153 ___str_0:
      008471 43 3A                  154 	.ascii "C:"
      008473 5C                     155 	.db 0x5c
      008474 55 73 65 72 73         156 	.ascii "Users"
      008479 5C                     157 	.db 0x5c
      00847A 41 64 6D 69 6E         158 	.ascii "Admin"
      00847F 5C                     159 	.db 0x5c
      008480 2E 70 6C 61 74 66 6F   160 	.ascii ".platformio"
             72 6D 69 6F
      00848B 5C                     161 	.db 0x5c
      00848C 70 61 63 6B 61 67 65   162 	.ascii "packages"
             73
      008494 5C                     163 	.db 0x5c
      008495 66 72 61 6D 65 77 6F   164 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0084A8 5C                     165 	.db 0x5c
      0084A9 4C 69 62 72 61 72 69   166 	.ascii "Libraries"
             65 73
      0084B2 5C                     167 	.db 0x5c
      0084B3 53 54 4D 38 53 5F 53   168 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0084C9 5C                     169 	.db 0x5c
      0084CA 73 72 63               170 	.ascii "src"
      0084CD 5C                     171 	.db 0x5c
      0084CE 73 74 6D 38 73 5F 69   172 	.ascii "stm8s_iwdg.c"
             77 64 67 2E 63
      0084DA 00                     173 	.db 0x00
                                    174 	.area CODE
                                    175 	.area INITIALIZER
                                    176 	.area CABS (ABS)
