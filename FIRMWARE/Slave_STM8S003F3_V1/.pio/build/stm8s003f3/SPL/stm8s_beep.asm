;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module stm8s_beep
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _BEEP_DeInit
	.globl _BEEP_Init
	.globl _BEEP_Cmd
	.globl _BEEP_LSICalibrationConfig
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
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 54: void BEEP_DeInit(void)
;	-----------------------------------------
;	 function BEEP_DeInit
;	-----------------------------------------
_BEEP_DeInit:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 56: BEEP->CSR = BEEP_CSR_RESET_VALUE;
	mov	0x50f3+0, #0x1f
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 57: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 67: void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
;	-----------------------------------------
;	 function BEEP_Init
;	-----------------------------------------
_BEEP_Init:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 70: assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
	tnz	(0x03, sp)
	jreq	00106$
	ld	a, (0x03, sp)
	cp	a, #0x40
	jreq	00106$
	ld	a, (0x03, sp)
	cp	a, #0x80
	jreq	00106$
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00106$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 73: if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
	ld	a, 0x50f3
	and	a, #0x1f
	cp	a, #0x1f
	jrne	00102$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 75: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
	ld	a, 0x50f3
	and	a, #0xe0
	ld	0x50f3, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 76: BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
	ld	a, 0x50f3
	or	a, #0x0b
	ld	0x50f3, a
00102$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 80: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
	ld	a, 0x50f3
	and	a, #0x3f
	ld	0x50f3, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 81: BEEP->CSR |= (uint8_t)(BEEP_Frequency);
	ld	a, 0x50f3
	or	a, (0x03, sp)
	ld	0x50f3, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 82: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 91: void BEEP_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function BEEP_Cmd
;	-----------------------------------------
_BEEP_Cmd:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
	ld	a, 0x50f3
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 93: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
	or	a, #0x20
	ld	0x50f3, a
	ret
00102$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 101: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
	and	a, #0xdf
	ld	0x50f3, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 103: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 118: void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
;	-----------------------------------------
;	 function BEEP_LSICalibrationConfig
;	-----------------------------------------
_BEEP_LSICalibrationConfig:
	sub	sp, #7
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 124: assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
	ldw	x, (0x0c, sp)
	cpw	x, #0xadb0
	ld	a, (0x0b, sp)
	sbc	a, #0x01
	ld	a, (0x0a, sp)
	sbc	a, #0x00
	jrc	00106$
	ldw	x, #0x49f0
	cpw	x, (0x0c, sp)
	ld	a, #0x02
	sbc	a, (0x0b, sp)
	clr	a
	sbc	a, (0x0a, sp)
	jrnc	00107$
00106$:
	push	#0x7c
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 126: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
	push	#0xe8
	push	#0x03
	clrw	x
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	exgw	x, y
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 130: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
	ld	a, 0x50f3
	and	a, #0xe0
	ld	0x50f3, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 132: A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
	ldw	x, y
	srlw	x
	srlw	x
	srlw	x
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 134: if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
	ldw	(0x01, sp), x
	ldw	(0x06, sp), x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x03, sp), x
	subw	y, (0x03, sp)
	ldw	x, (0x06, sp)
	sllw	x
	incw	x
	pushw	x
	pushw	y
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 130: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
	call	__mulint
	addw	sp, #4
	ldw	(0x05, sp), x
	ld	a, 0x50f3
	ld	(0x07, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 136: BEEP->CSR |= (uint8_t)(A - 2U);
	ld	a, (0x02, sp)
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 134: if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
	ldw	x, (0x03, sp)
	cpw	x, (0x05, sp)
	jrc	00102$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 136: BEEP->CSR |= (uint8_t)(A - 2U);
	sub	a, #0x02
	or	a, (0x07, sp)
	ld	0x50f3, a
	jra	00104$
00102$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 140: BEEP->CSR |= (uint8_t)(A - 1U);
	dec	a
	or	a, (0x07, sp)
	ld	0x50f3, a
00104$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_beep.c: 142: }
	addw	sp, #7
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
	.ascii "stm8s_beep.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
