;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _UART1_GetFlagStatus
	.globl _UART1_SendData8
	.globl _UART1_ReceiveData8
	.globl _UART1_HalfDuplexCmd
	.globl _UART1_Init
	.globl _UART1_DeInit
	.globl _GPIO_Init
	.globl _CLK_HSIPrescalerConfig
	.globl _TransferStatus2
	.globl _TransferStatus1
	.globl _RxCounter2
	.globl _TxCounter2
	.globl _RxCounter1
	.globl _TxCounter1
	.globl _NbrOfDataToRead2
	.globl _NbrOfDataToRead1
	.globl _RxBuffer2
	.globl _RxBuffer1
	.globl _TxBuffer2
	.globl _TxBuffer1
	.globl _Buffercmp
	.globl _assert_failed
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_TxBuffer1::
	.ds 57
_TxBuffer2::
	.ds 57
_RxBuffer1::
	.ds 56
_RxBuffer2::
	.ds 56
_NbrOfDataToRead1::
	.ds 1
_NbrOfDataToRead2::
	.ds 1
_TxCounter1::
	.ds 1
_RxCounter1::
	.ds 1
_TxCounter2::
	.ds 1
_RxCounter2::
	.ds 1
_TransferStatus1::
	.ds 1
_TransferStatus2::
	.ds 1
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int 0x000000 ; int15
	int 0x000000 ; int16
	int _UART1_TX_IRQHandler ; int17
	int _UART1_RX_IRQHandler ; int18
	int _I2C_IRQHandler ; int19
	int 0x000000 ; int20
	int 0x000000 ; int21
	int _ADC1_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	src\main.c: 76: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src\main.c: 79: GPIO_Config();
	call	_GPIO_Config
;	src\main.c: 82: CLK_Config();
	call	_CLK_Config
;	src\main.c: 85: UART_Config();  
	call	_UART_Config
;	src\main.c: 89: while (NbrOfDataToRead2--)
00104$:
	ld	a, _NbrOfDataToRead2+0
	dec	_NbrOfDataToRead2+0
	tnz	a
	jreq	00106$
;	src\main.c: 92: while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET)
00101$:
	push	#0x80
	push	#0x00
	call	_UART1_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	src\main.c: 96: UART1_SendData8(TxBuffer1[TxCounter1++]);
	ld	a, _TxCounter1+0
	inc	_TxCounter1+0
	clrw	x
	ld	xl, a
	ld	a, (_TxBuffer1+0, x)
	push	a
	call	_UART1_SendData8
	pop	a
	jra	00104$
00106$:
;	src\main.c: 107: TransferStatus1 = Buffercmp(TxBuffer1, RxBuffer2, TxBufferSize1);
	push	#0x38
	push	#0x00
	push	#<(_RxBuffer2+0)
	push	#((_RxBuffer2+0) >> 8)
	push	#<(_TxBuffer1+0)
	push	#((_TxBuffer1+0) >> 8)
	call	_Buffercmp
	addw	sp, #6
	ld	_TransferStatus1+0, a
;	src\main.c: 115: UART1_ReceiveData8();
	call	_UART1_ReceiveData8
;	src\main.c: 117: while (NbrOfDataToRead1--)
00110$:
	ld	a, _NbrOfDataToRead1+0
	dec	_NbrOfDataToRead1+0
	tnz	a
	jreq	00112$
;	src\main.c: 127: while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET)
00107$:
	push	#0x20
	push	#0x00
	call	_UART1_GetFlagStatus
	popw	x
	tnz	a
	jreq	00107$
;	src\main.c: 131: RxBuffer1[RxCounter1++] = UART1_ReceiveData8();
	ld	a, _RxCounter1+0
	inc	_RxCounter1+0
	clrw	x
	ld	xl, a
	addw	x, #(_RxBuffer1+0)
	pushw	x
	call	_UART1_ReceiveData8
	popw	x
	ld	(x), a
	jra	00110$
00112$:
;	src\main.c: 135: TransferStatus2 = Buffercmp(TxBuffer2, RxBuffer1, TxBufferSize2);
	push	#0x38
	push	#0x00
	push	#<(_RxBuffer1+0)
	push	#((_RxBuffer1+0) >> 8)
	push	#<(_TxBuffer2+0)
	push	#((_TxBuffer2+0) >> 8)
	call	_Buffercmp
	addw	sp, #6
	ld	_TransferStatus2+0, a
;	src\main.c: 141: while (1)
00114$:
	jra	00114$
;	src\main.c: 143: }
	ret
;	src\main.c: 150: static void CLK_Config(void)
;	-----------------------------------------
;	 function CLK_Config
;	-----------------------------------------
_CLK_Config:
;	src\main.c: 154: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	push	#0x00
	call	_CLK_HSIPrescalerConfig
	pop	a
;	src\main.c: 155: }
	ret
;	src\main.c: 162: static void GPIO_Config(void)
;	-----------------------------------------
;	 function GPIO_Config
;	-----------------------------------------
_GPIO_Config:
;	src\main.c: 165: GPIO_Init(GPIOA, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_FAST);
	push	#0xb0
	push	#0x20
	push	#0x00
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	src\main.c: 166: }
	ret
;	src\main.c: 173: static void UART_Config(void)
;	-----------------------------------------
;	 function UART_Config
;	-----------------------------------------
_UART_Config:
;	src\main.c: 182: UART1_DeInit();
	call	_UART1_DeInit
;	src\main.c: 183: UART1_Init((uint32_t)230400, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO,
	push	#0x0c
	push	#0x80
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x84
	push	#0x03
	push	#0x00
	call	_UART1_Init
	addw	sp, #9
;	src\main.c: 191: UART1_HalfDuplexCmd(ENABLE);
	push	#0x01
	call	_UART1_HalfDuplexCmd
	pop	a
;	src\main.c: 192: }
	ret
;	src\main.c: 205: TestStatus Buffercmp(uint8_t* pBuffer1, uint8_t* pBuffer2, uint16_t BufferLength)
;	-----------------------------------------
;	 function Buffercmp
;	-----------------------------------------
_Buffercmp:
	sub	sp, #6
;	src\main.c: 207: while (BufferLength--)
	ldw	y, (0x09, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x05, sp), y
	ldw	y, (0x0d, sp)
00103$:
	ldw	(0x01, sp), y
	decw	y
	ldw	x, (0x01, sp)
	jreq	00105$
;	src\main.c: 209: if (*pBuffer1 != *pBuffer2)
	ldw	x, (0x03, sp)
	ld	a, (x)
	ldw	x, (0x05, sp)
	push	a
	ld	a, (x)
	ld	(0x03, sp), a
	pop	a
	cp	a, (0x02, sp)
	jreq	00102$
;	src\main.c: 211: return FAILED;
	clr	a
	jra	00106$
00102$:
;	src\main.c: 214: pBuffer1++;
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
;	src\main.c: 215: pBuffer2++;
	ldw	x, (0x05, sp)
	incw	x
	ldw	(0x05, sp), x
	jra	00103$
00105$:
;	src\main.c: 218: return PASSED;
	ld	a, #0x01
00106$:
;	src\main.c: 219: }
	addw	sp, #6
	ret
;	src\main.c: 229: void assert_failed(uint8_t* file, uint32_t line)
;	-----------------------------------------
;	 function assert_failed
;	-----------------------------------------
_assert_failed:
;	src\main.c: 235: while (1)
00102$:
	jra	00102$
;	src\main.c: 239: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__TxBuffer1:
	.ascii "HalfDuplex Example: UART1 -> UART3 using HalfDuplex mode"
	.db 0x00
__xinit__TxBuffer2:
	.ascii "HalfDuplex Example: UART3 -> UART1 using HalfDuplex mode"
	.db 0x00
__xinit__RxBuffer1:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__RxBuffer2:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__NbrOfDataToRead1:
	.db #0x38	; 56	'8'
__xinit__NbrOfDataToRead2:
	.db #0x38	; 56	'8'
__xinit__TxCounter1:
	.db #0x00	; 0
__xinit__RxCounter1:
	.db #0x00	; 0
__xinit__TxCounter2:
	.db #0x00	; 0
__xinit__RxCounter2:
	.db #0x00	; 0
__xinit__TransferStatus1:
	.db #0x00	; 0
__xinit__TransferStatus2:
	.db #0x00	; 0
	.area CABS (ABS)
