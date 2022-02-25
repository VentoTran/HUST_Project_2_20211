;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module stm8s_itc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ITC_GetCPUCC
	.globl _ITC_DeInit
	.globl _ITC_GetSoftIntStatus
	.globl _ITC_GetSoftwarePriority
	.globl _ITC_SetSoftwarePriority
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
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 50: uint8_t ITC_GetCPUCC(void)
;	-----------------------------------------
;	 function ITC_GetCPUCC
;	-----------------------------------------
_ITC_GetCPUCC:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 59: __asm__("push cc");
	push	cc
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 60: __asm__("pop a");
	pop	a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 65: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 83: void ITC_DeInit(void)
;	-----------------------------------------
;	 function ITC_DeInit
;	-----------------------------------------
_ITC_DeInit:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 85: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
	mov	0x7f70+0, #0xff
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 86: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
	mov	0x7f71+0, #0xff
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 87: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
	mov	0x7f72+0, #0xff
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 88: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
	mov	0x7f73+0, #0xff
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 89: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
	mov	0x7f74+0, #0xff
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 90: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
	mov	0x7f75+0, #0xff
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 91: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
	mov	0x7f76+0, #0xff
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 92: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
	mov	0x7f77+0, #0xff
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 93: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 100: uint8_t ITC_GetSoftIntStatus(void)
;	-----------------------------------------
;	 function ITC_GetSoftIntStatus
;	-----------------------------------------
_ITC_GetSoftIntStatus:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 102: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
	call	_ITC_GetCPUCC
	and	a, #0x28
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 103: }
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 110: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
;	-----------------------------------------
;	 function ITC_GetSoftwarePriority
;	-----------------------------------------
_ITC_GetSoftwarePriority:
	sub	sp, #4
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 112: uint8_t Value = 0;
	clr	(0x01, sp)
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 116: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
	ld	a, (0x07, sp)
	cp	a, #0x18
	jrugt	00138$
	clr	(0x02, sp)
	jra	00139$
00138$:
	ld	a, #0x01
	ld	(0x02, sp), a
00139$:
	tnz	(0x02, sp)
	jreq	00127$
	push	#0x74
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00127$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 119: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
	ld	a, (0x07, sp)
	and	a, #0x03
	sll	a
	ld	(0x03, sp), a
	ld	a, #0x03
	ld	(0x04, sp), a
	ld	a, (0x03, sp)
	jreq	00142$
00141$:
	sll	(0x04, sp)
	dec	a
	jrne	00141$
00142$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 121: switch (IrqNum)
	ld	a, (0x02, sp)
	jrne	00123$
	clrw	x
	ld	a, (0x07, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00144$, x)
	jp	(x)
00144$:
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00123$
	.dw	#00123$
	.dw	#00110$
	.dw	#00110$
	.dw	#00114$
	.dw	#00114$
	.dw	#00114$
	.dw	#00114$
	.dw	#00118$
	.dw	#00118$
	.dw	#00118$
	.dw	#00118$
	.dw	#00123$
	.dw	#00123$
	.dw	#00120$
	.dw	#00120$
	.dw	#00121$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 126: case ITC_IRQ_PORTA:
00104$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 127: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
	ld	a, 0x7f70
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 128: break;
	jra	00123$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 133: case ITC_IRQ_PORTE:
00108$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
	ld	a, 0x7f71
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 135: break;
	jra	00123$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 145: case ITC_IRQ_TIM1_OVF:
00110$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 146: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
	ld	a, 0x7f72
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 147: break;
	jra	00123$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 157: case ITC_IRQ_TIM3_OVF:
00114$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 158: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
	ld	a, 0x7f73
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 159: break;
	jra	00123$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 171: case ITC_IRQ_I2C:
00118$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 172: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
	ld	a, 0x7f74
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 173: break;
	jra	00123$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 192: case ITC_IRQ_TIM4_OVF:
00120$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 194: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
	ld	a, 0x7f75
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 195: break;
	jra	00123$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 197: case ITC_IRQ_EEPROM_EEC:
00121$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 198: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
	ld	a, 0x7f76
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 203: }
00123$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 205: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
	ld	a, (0x01, sp)
	push	a
	ld	a, (0x04, sp)
	jreq	00146$
00145$:
	srl	(1, sp)
	dec	a
	jrne	00145$
00146$:
	pop	a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 207: return((ITC_PriorityLevel_TypeDef)Value);
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 208: }
	addw	sp, #4
	ret
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 223: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
;	-----------------------------------------
;	 function ITC_SetSoftwarePriority
;	-----------------------------------------
_ITC_SetSoftwarePriority:
	sub	sp, #3
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 229: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
	ld	a, (0x06, sp)
	cp	a, #0x18
	jrugt	00176$
	clr	(0x01, sp)
	jra	00177$
00176$:
	ld	a, #0x01
	ld	(0x01, sp), a
00177$:
	tnz	(0x01, sp)
	jreq	00127$
	push	#0xe5
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00127$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 230: assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
	ld	a, (0x07, sp)
	cp	a, #0x02
	jreq	00129$
	ld	a, (0x07, sp)
	dec	a
	jreq	00129$
	tnz	(0x07, sp)
	jreq	00129$
	ld	a, (0x07, sp)
	cp	a, #0x03
	jreq	00129$
	push	#0xe6
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00129$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 233: assert_param(IS_ITC_INTERRUPTS_DISABLED);
	call	_ITC_GetSoftIntStatus
	cp	a, #0x28
	jreq	00140$
	push	#0xe9
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00140$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 237: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
	ld	a, (0x06, sp)
	clrw	x
	and	a, #0x03
	ld	xl, a
	sllw	x
	ld	a, #0x03
	push	a
	ld	a, xl
	tnz	a
	jreq	00193$
00192$:
	sll	(1, sp)
	dec	a
	jrne	00192$
00193$:
	pop	a
	cpl	a
	ld	(0x02, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 240: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
	ld	a, (0x07, sp)
	push	a
	ld	a, xl
	tnz	a
	jreq	00195$
00194$:
	sll	(1, sp)
	dec	a
	jrne	00194$
00195$:
	pop	a
	ld	(0x03, sp), a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 242: switch (IrqNum)
	ld	a, (0x01, sp)
	jreq	00196$
	jp	00124$
00196$:
	clrw	x
	ld	a, (0x06, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00197$, x)
	jp	(x)
00197$:
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00124$
	.dw	#00124$
	.dw	#00110$
	.dw	#00110$
	.dw	#00114$
	.dw	#00114$
	.dw	#00114$
	.dw	#00114$
	.dw	#00118$
	.dw	#00118$
	.dw	#00118$
	.dw	#00118$
	.dw	#00124$
	.dw	#00124$
	.dw	#00120$
	.dw	#00120$
	.dw	#00121$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 247: case ITC_IRQ_PORTA:
00104$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 248: ITC->ISPR1 &= Mask;
	ld	a, 0x7f70
	and	a, (0x02, sp)
	ld	0x7f70, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 249: ITC->ISPR1 |= NewPriority;
	ld	a, 0x7f70
	or	a, (0x03, sp)
	ld	0x7f70, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 250: break;
	jra	00124$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 255: case ITC_IRQ_PORTE:
00108$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 256: ITC->ISPR2 &= Mask;
	ld	a, 0x7f71
	and	a, (0x02, sp)
	ld	0x7f71, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 257: ITC->ISPR2 |= NewPriority;
	ld	a, 0x7f71
	or	a, (0x03, sp)
	ld	0x7f71, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 258: break;
	jra	00124$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 268: case ITC_IRQ_TIM1_OVF:
00110$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 269: ITC->ISPR3 &= Mask;
	ld	a, 0x7f72
	and	a, (0x02, sp)
	ld	0x7f72, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 270: ITC->ISPR3 |= NewPriority;
	ld	a, 0x7f72
	or	a, (0x03, sp)
	ld	0x7f72, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 271: break;
	jra	00124$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 281: case ITC_IRQ_TIM3_OVF:
00114$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 282: ITC->ISPR4 &= Mask;
	ld	a, 0x7f73
	and	a, (0x02, sp)
	ld	0x7f73, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 283: ITC->ISPR4 |= NewPriority;
	ld	a, 0x7f73
	or	a, (0x03, sp)
	ld	0x7f73, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 284: break;
	jra	00124$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 296: case ITC_IRQ_I2C:
00118$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 297: ITC->ISPR5 &= Mask;
	ld	a, 0x7f74
	and	a, (0x02, sp)
	ld	0x7f74, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 298: ITC->ISPR5 |= NewPriority;
	ld	a, 0x7f74
	or	a, (0x03, sp)
	ld	0x7f74, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 299: break;
	jra	00124$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 321: case ITC_IRQ_TIM4_OVF:
00120$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 323: ITC->ISPR6 &= Mask;
	ld	a, 0x7f75
	and	a, (0x02, sp)
	ld	0x7f75, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 324: ITC->ISPR6 |= NewPriority;
	ld	a, 0x7f75
	or	a, (0x03, sp)
	ld	0x7f75, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 325: break;
	jra	00124$
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 327: case ITC_IRQ_EEPROM_EEC:
00121$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 328: ITC->ISPR7 &= Mask;
	ld	a, 0x7f76
	and	a, (0x02, sp)
	ld	0x7f76, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 329: ITC->ISPR7 |= NewPriority;
	ld	a, 0x7f76
	or	a, (0x03, sp)
	ld	0x7f76, a
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 334: }
00124$:
;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_itc.c: 335: }
	addw	sp, #3
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
	.ascii "stm8s_itc.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
