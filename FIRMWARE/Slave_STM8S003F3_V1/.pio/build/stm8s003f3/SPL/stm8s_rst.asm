;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module stm8s_rst
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _RST_GetFlagStatus
	.globl _RST_ClearFlag
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 54: FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
;	-----------------------------------------
;	 function RST_GetFlagStatus
;	-----------------------------------------
_RST_GetFlagStatus:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 57: assert_param(IS_RST_FLAG_OK(RST_Flag));
	ld	a, (0x03, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00104$
	ld	a, (0x03, sp)
	dec	a
	jreq	00104$
	push	#0x39
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 60: return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
	ld	a, 0x50b3
	and	a, (0x03, sp)
	jrne	00117$
	clrw	x
	.byte 0xc5
00117$:
	clrw	x
	incw	x
00118$:
	ld	a, xl
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 61: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 69: void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
;	-----------------------------------------
;	 function RST_ClearFlag
;	-----------------------------------------
_RST_ClearFlag:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 72: assert_param(IS_RST_FLAG_OK(RST_Flag));
	ld	a, (0x03, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00104$
	ld	a, (0x03, sp)
	dec	a
	jreq	00104$
	push	#0x48
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 74: RST->SR = (uint8_t)RST_Flag;
	ldw	x, #0x50b3
	ld	a, (0x03, sp)
	ld	(x), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_rst.c: 75: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	.ascii "C:"
	.db 0x5c
	.ascii "Users"
	.db 0x5c
	.ascii "Admin"
	.db 0x5c
	.ascii ".platformio"
	.db 0x5c
	.ascii "packages"
	.db 0x5c
	.ascii "framework-ststm8spl"
	.db 0x5c
	.ascii "Libraries"
	.db 0x5c
	.ascii "STM8S_StdPeriph_Driver"
	.db 0x5c
	.ascii "src"
	.db 0x5c
	.ascii "stm8s_rst.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
