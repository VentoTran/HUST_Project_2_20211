;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module stm8s_awu
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TBR_Array
	.globl _APR_Array
	.globl _assert_failed
	.globl _AWU_DeInit
	.globl _AWU_Init
	.globl _AWU_Cmd
	.globl _AWU_LSICalibrationConfig
	.globl _AWU_IdleModeEnable
	.globl _AWU_GetFlagStatus
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
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 73: void AWU_DeInit(void)
;	-----------------------------------------
;	 function AWU_DeInit
;	-----------------------------------------
_AWU_DeInit:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 75: AWU->CSR = AWU_CSR_RESET_VALUE;
	mov	0x50f0+0, #0x00
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 76: AWU->APR = AWU_APR_RESET_VALUE;
	mov	0x50f1+0, #0x3f
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 77: AWU->TBR = AWU_TBR_RESET_VALUE;
	mov	0x50f2+0, #0x00
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 78: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 88: void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
;	-----------------------------------------
;	 function AWU_Init
;	-----------------------------------------
_AWU_Init:
	push	a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 91: assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
	tnz	(0x04, sp)
	jreq	00104$
	ld	a, (0x04, sp)
	dec	a
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x03
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x05
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x06
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x07
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x09
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x0a
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x0b
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x0c
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x0d
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x0e
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x0f
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x10
	jreq	00104$
	push	#0x5b
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 94: AWU->CSR |= AWU_CSR_AWUEN;
	bset	20720, #4
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 97: AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
	ld	a, 0x50f2
	and	a, #0xf0
	ld	0x50f2, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 98: AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
	ld	a, 0x50f2
	ld	(0x01, sp), a
	clrw	x
	ld	a, (0x04, sp)
	ld	xl, a
	addw	x, #(_TBR_Array+0)
	ld	a, (x)
	or	a, (0x01, sp)
	ld	0x50f2, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 101: AWU->APR &= (uint8_t)(~AWU_APR_APR);
	ld	a, 0x50f1
	and	a, #0xc0
	ld	0x50f1, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 102: AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
	ld	a, 0x50f1
	ld	(0x01, sp), a
	clrw	x
	ld	a, (0x04, sp)
	ld	xl, a
	ld	a, (_APR_Array+0, x)
	or	a, (0x01, sp)
	ld	0x50f1, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 103: }
	pop	a
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 112: void AWU_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function AWU_Cmd
;	-----------------------------------------
_AWU_Cmd:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 117: AWU->CSR |= AWU_CSR_AWUEN;
	ld	a, 0x50f0
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 114: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 117: AWU->CSR |= AWU_CSR_AWUEN;
	or	a, #0x10
	ld	0x50f0, a
	ret
00102$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 122: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
	and	a, #0xef
	ld	0x50f0, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 124: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 139: void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
;	-----------------------------------------
;	 function AWU_LSICalibrationConfig
;	-----------------------------------------
_AWU_LSICalibrationConfig:
	sub	sp, #6
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 145: assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
	ldw	x, (0x0b, sp)
	cpw	x, #0xadb0
	ld	a, (0x0a, sp)
	sbc	a, #0x01
	ld	a, (0x09, sp)
	sbc	a, #0x00
	jrc	00106$
	ldw	x, #0x49f0
	cpw	x, (0x0b, sp)
	ld	a, #0x02
	sbc	a, (0x0a, sp)
	clr	a
	sbc	a, (0x09, sp)
	jrnc	00107$
00106$:
	push	#0x91
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 147: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
	push	#0xe8
	push	#0x03
	clrw	x
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 151: A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
	ldw	y, x
	srlw	x
	srlw	x
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
	ldw	(0x01, sp), x
	ldw	(0x03, sp), x
	sll	(0x04, sp)
	rlc	(0x03, sp)
	sll	(0x04, sp)
	rlc	(0x03, sp)
	subw	y, (0x03, sp)
	sllw	x
	incw	x
	pushw	x
	pushw	y
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
	call	__mulint
	addw	sp, #4
	ldw	(0x05, sp), x
	ld	a, (0x02, sp)
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
	ldw	x, (0x03, sp)
	cpw	x, (0x05, sp)
	jrc	00102$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
	sub	a, #0x02
	ld	0x50f1, a
	jra	00104$
00102$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 159: AWU->APR = (uint8_t)(A - 1U);
	dec	a
	ld	0x50f1, a
00104$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 161: }
	addw	sp, #6
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 168: void AWU_IdleModeEnable(void)
;	-----------------------------------------
;	 function AWU_IdleModeEnable
;	-----------------------------------------
_AWU_IdleModeEnable:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 171: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
	bres	20720, #4
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 174: AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
	mov	0x50f2+0, #0xf0
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 175: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 183: FlagStatus AWU_GetFlagStatus(void)
;	-----------------------------------------
;	 function AWU_GetFlagStatus
;	-----------------------------------------
_AWU_GetFlagStatus:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 185: return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
	ld	a, 0x50f0
	bcp	a, #0x20
	jrne	00103$
	clrw	x
	.byte 0xc5
00103$:
	clrw	x
	incw	x
00104$:
	ld	a, xl
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_awu.c: 186: }
	ret
	.area CODE
	.area CONST
_APR_Array:
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x3d	; 61
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x3e	; 62
_TBR_Array:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0f	; 15
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
	.ascii "stm8s_awu.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
