                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_spi
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _SPI_DeInit
                                     13 	.globl _SPI_Init
                                     14 	.globl _SPI_Cmd
                                     15 	.globl _SPI_ITConfig
                                     16 	.globl _SPI_SendData
                                     17 	.globl _SPI_ReceiveData
                                     18 	.globl _SPI_NSSInternalSoftwareCmd
                                     19 	.globl _SPI_TransmitCRC
                                     20 	.globl _SPI_CalculateCRCCmd
                                     21 	.globl _SPI_GetCRC
                                     22 	.globl _SPI_ResetCRC
                                     23 	.globl _SPI_GetCRCPolynomial
                                     24 	.globl _SPI_BiDirectionalLineConfig
                                     25 	.globl _SPI_GetFlagStatus
                                     26 	.globl _SPI_ClearFlag
                                     27 	.globl _SPI_GetITStatus
                                     28 	.globl _SPI_ClearITPendingBit
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DATA
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area INITIALIZED
                                     37 ;--------------------------------------------------------
                                     38 ; absolute external ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DABS (ABS)
                                     41 
                                     42 ; default segment ordering for linker
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area CONST
                                     47 	.area INITIALIZER
                                     48 	.area CODE
                                     49 
                                     50 ;--------------------------------------------------------
                                     51 ; global & static initialisations
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area GSINIT
                                     55 	.area GSFINAL
                                     56 	.area GSINIT
                                     57 ;--------------------------------------------------------
                                     58 ; Home
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area HOME
                                     62 ;--------------------------------------------------------
                                     63 ; code
                                     64 ;--------------------------------------------------------
                                     65 	.area CODE
                                     66 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 50: void SPI_DeInit(void)
                                     67 ;	-----------------------------------------
                                     68 ;	 function SPI_DeInit
                                     69 ;	-----------------------------------------
      00AD2F                         70 _SPI_DeInit:
                                     71 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
      00AD2F 35 00 52 00      [ 1]   72 	mov	0x5200+0, #0x00
                                     73 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
      00AD33 35 00 52 01      [ 1]   74 	mov	0x5201+0, #0x00
                                     75 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
      00AD37 35 00 52 02      [ 1]   76 	mov	0x5202+0, #0x00
                                     77 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
      00AD3B 35 02 52 03      [ 1]   78 	mov	0x5203+0, #0x02
                                     79 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
      00AD3F 35 07 52 05      [ 1]   80 	mov	0x5205+0, #0x07
                                     81 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 57: }
      00AD43 81               [ 4]   82 	ret
                                     83 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 78: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
                                     84 ;	-----------------------------------------
                                     85 ;	 function SPI_Init
                                     86 ;	-----------------------------------------
      00AD44                         87 _SPI_Init:
      00AD44 89               [ 2]   88 	pushw	x
                                     89 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 81: assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
      00AD45 0D 05            [ 1]   90 	tnz	(0x05, sp)
      00AD47 27 15            [ 1]   91 	jreq	00107$
      00AD49 7B 05            [ 1]   92 	ld	a, (0x05, sp)
      00AD4B A1 80            [ 1]   93 	cp	a, #0x80
      00AD4D 27 0F            [ 1]   94 	jreq	00107$
      00AD4F 4B 51            [ 1]   95 	push	#0x51
      00AD51 5F               [ 1]   96 	clrw	x
      00AD52 89               [ 2]   97 	pushw	x
      00AD53 4B 00            [ 1]   98 	push	#0x00
      00AD55 4B 44            [ 1]   99 	push	#<(___str_0+0)
      00AD57 4B 85            [ 1]  100 	push	#((___str_0+0) >> 8)
      00AD59 CD 00 00         [ 4]  101 	call	_assert_failed
      00AD5C 5B 06            [ 2]  102 	addw	sp, #6
      00AD5E                        103 00107$:
                                    104 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 82: assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
      00AD5E 0D 06            [ 1]  105 	tnz	(0x06, sp)
      00AD60 27 39            [ 1]  106 	jreq	00112$
      00AD62 7B 06            [ 1]  107 	ld	a, (0x06, sp)
      00AD64 A1 08            [ 1]  108 	cp	a, #0x08
      00AD66 27 33            [ 1]  109 	jreq	00112$
      00AD68 7B 06            [ 1]  110 	ld	a, (0x06, sp)
      00AD6A A1 10            [ 1]  111 	cp	a, #0x10
      00AD6C 27 2D            [ 1]  112 	jreq	00112$
      00AD6E 7B 06            [ 1]  113 	ld	a, (0x06, sp)
      00AD70 A1 18            [ 1]  114 	cp	a, #0x18
      00AD72 27 27            [ 1]  115 	jreq	00112$
      00AD74 7B 06            [ 1]  116 	ld	a, (0x06, sp)
      00AD76 A1 20            [ 1]  117 	cp	a, #0x20
      00AD78 27 21            [ 1]  118 	jreq	00112$
      00AD7A 7B 06            [ 1]  119 	ld	a, (0x06, sp)
      00AD7C A1 28            [ 1]  120 	cp	a, #0x28
      00AD7E 27 1B            [ 1]  121 	jreq	00112$
      00AD80 7B 06            [ 1]  122 	ld	a, (0x06, sp)
      00AD82 A1 30            [ 1]  123 	cp	a, #0x30
      00AD84 27 15            [ 1]  124 	jreq	00112$
      00AD86 7B 06            [ 1]  125 	ld	a, (0x06, sp)
      00AD88 A1 38            [ 1]  126 	cp	a, #0x38
      00AD8A 27 0F            [ 1]  127 	jreq	00112$
      00AD8C 4B 52            [ 1]  128 	push	#0x52
      00AD8E 5F               [ 1]  129 	clrw	x
      00AD8F 89               [ 2]  130 	pushw	x
      00AD90 4B 00            [ 1]  131 	push	#0x00
      00AD92 4B 44            [ 1]  132 	push	#<(___str_0+0)
      00AD94 4B 85            [ 1]  133 	push	#((___str_0+0) >> 8)
      00AD96 CD 00 00         [ 4]  134 	call	_assert_failed
      00AD99 5B 06            [ 2]  135 	addw	sp, #6
      00AD9B                        136 00112$:
                                    137 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 83: assert_param(IS_SPI_MODE_OK(Mode));
      00AD9B 7B 07            [ 1]  138 	ld	a, (0x07, sp)
      00AD9D A1 04            [ 1]  139 	cp	a, #0x04
      00AD9F 26 05            [ 1]  140 	jrne	00314$
      00ADA1 A6 01            [ 1]  141 	ld	a, #0x01
      00ADA3 6B 01            [ 1]  142 	ld	(0x01, sp), a
      00ADA5 C5                     143 	.byte 0xc5
      00ADA6                        144 00314$:
      00ADA6 0F 01            [ 1]  145 	clr	(0x01, sp)
      00ADA8                        146 00315$:
      00ADA8 0D 01            [ 1]  147 	tnz	(0x01, sp)
      00ADAA 26 13            [ 1]  148 	jrne	00135$
      00ADAC 0D 07            [ 1]  149 	tnz	(0x07, sp)
      00ADAE 27 0F            [ 1]  150 	jreq	00135$
      00ADB0 4B 53            [ 1]  151 	push	#0x53
      00ADB2 5F               [ 1]  152 	clrw	x
      00ADB3 89               [ 2]  153 	pushw	x
      00ADB4 4B 00            [ 1]  154 	push	#0x00
      00ADB6 4B 44            [ 1]  155 	push	#<(___str_0+0)
      00ADB8 4B 85            [ 1]  156 	push	#((___str_0+0) >> 8)
      00ADBA CD 00 00         [ 4]  157 	call	_assert_failed
      00ADBD 5B 06            [ 2]  158 	addw	sp, #6
      00ADBF                        159 00135$:
                                    160 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 84: assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
      00ADBF 0D 08            [ 1]  161 	tnz	(0x08, sp)
      00ADC1 27 15            [ 1]  162 	jreq	00140$
      00ADC3 7B 08            [ 1]  163 	ld	a, (0x08, sp)
      00ADC5 A1 02            [ 1]  164 	cp	a, #0x02
      00ADC7 27 0F            [ 1]  165 	jreq	00140$
      00ADC9 4B 54            [ 1]  166 	push	#0x54
      00ADCB 5F               [ 1]  167 	clrw	x
      00ADCC 89               [ 2]  168 	pushw	x
      00ADCD 4B 00            [ 1]  169 	push	#0x00
      00ADCF 4B 44            [ 1]  170 	push	#<(___str_0+0)
      00ADD1 4B 85            [ 1]  171 	push	#((___str_0+0) >> 8)
      00ADD3 CD 00 00         [ 4]  172 	call	_assert_failed
      00ADD6 5B 06            [ 2]  173 	addw	sp, #6
      00ADD8                        174 00140$:
                                    175 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 85: assert_param(IS_SPI_PHASE_OK(ClockPhase));
      00ADD8 0D 09            [ 1]  176 	tnz	(0x09, sp)
      00ADDA 27 14            [ 1]  177 	jreq	00145$
      00ADDC 7B 09            [ 1]  178 	ld	a, (0x09, sp)
      00ADDE 4A               [ 1]  179 	dec	a
      00ADDF 27 0F            [ 1]  180 	jreq	00145$
      00ADE1 4B 55            [ 1]  181 	push	#0x55
      00ADE3 5F               [ 1]  182 	clrw	x
      00ADE4 89               [ 2]  183 	pushw	x
      00ADE5 4B 00            [ 1]  184 	push	#0x00
      00ADE7 4B 44            [ 1]  185 	push	#<(___str_0+0)
      00ADE9 4B 85            [ 1]  186 	push	#((___str_0+0) >> 8)
      00ADEB CD 00 00         [ 4]  187 	call	_assert_failed
      00ADEE 5B 06            [ 2]  188 	addw	sp, #6
      00ADF0                        189 00145$:
                                    190 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 86: assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
      00ADF0 0D 0A            [ 1]  191 	tnz	(0x0a, sp)
      00ADF2 27 21            [ 1]  192 	jreq	00150$
      00ADF4 7B 0A            [ 1]  193 	ld	a, (0x0a, sp)
      00ADF6 A1 04            [ 1]  194 	cp	a, #0x04
      00ADF8 27 1B            [ 1]  195 	jreq	00150$
      00ADFA 7B 0A            [ 1]  196 	ld	a, (0x0a, sp)
      00ADFC A1 80            [ 1]  197 	cp	a, #0x80
      00ADFE 27 15            [ 1]  198 	jreq	00150$
      00AE00 7B 0A            [ 1]  199 	ld	a, (0x0a, sp)
      00AE02 A1 C0            [ 1]  200 	cp	a, #0xc0
      00AE04 27 0F            [ 1]  201 	jreq	00150$
      00AE06 4B 56            [ 1]  202 	push	#0x56
      00AE08 5F               [ 1]  203 	clrw	x
      00AE09 89               [ 2]  204 	pushw	x
      00AE0A 4B 00            [ 1]  205 	push	#0x00
      00AE0C 4B 44            [ 1]  206 	push	#<(___str_0+0)
      00AE0E 4B 85            [ 1]  207 	push	#((___str_0+0) >> 8)
      00AE10 CD 00 00         [ 4]  208 	call	_assert_failed
      00AE13 5B 06            [ 2]  209 	addw	sp, #6
      00AE15                        210 00150$:
                                    211 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 87: assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
      00AE15 7B 0B            [ 1]  212 	ld	a, (0x0b, sp)
      00AE17 A1 02            [ 1]  213 	cp	a, #0x02
      00AE19 27 13            [ 1]  214 	jreq	00161$
      00AE1B 0D 0B            [ 1]  215 	tnz	(0x0b, sp)
      00AE1D 27 0F            [ 1]  216 	jreq	00161$
      00AE1F 4B 57            [ 1]  217 	push	#0x57
      00AE21 5F               [ 1]  218 	clrw	x
      00AE22 89               [ 2]  219 	pushw	x
      00AE23 4B 00            [ 1]  220 	push	#0x00
      00AE25 4B 44            [ 1]  221 	push	#<(___str_0+0)
      00AE27 4B 85            [ 1]  222 	push	#((___str_0+0) >> 8)
      00AE29 CD 00 00         [ 4]  223 	call	_assert_failed
      00AE2C 5B 06            [ 2]  224 	addw	sp, #6
      00AE2E                        225 00161$:
                                    226 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 88: assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
      00AE2E 0D 0C            [ 1]  227 	tnz	(0x0c, sp)
      00AE30 26 0F            [ 1]  228 	jrne	00166$
      00AE32 4B 58            [ 1]  229 	push	#0x58
      00AE34 5F               [ 1]  230 	clrw	x
      00AE35 89               [ 2]  231 	pushw	x
      00AE36 4B 00            [ 1]  232 	push	#0x00
      00AE38 4B 44            [ 1]  233 	push	#<(___str_0+0)
      00AE3A 4B 85            [ 1]  234 	push	#((___str_0+0) >> 8)
      00AE3C CD 00 00         [ 4]  235 	call	_assert_failed
      00AE3F 5B 06            [ 2]  236 	addw	sp, #6
      00AE41                        237 00166$:
                                    238 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 91: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
      00AE41 7B 05            [ 1]  239 	ld	a, (0x05, sp)
      00AE43 1A 06            [ 1]  240 	or	a, (0x06, sp)
      00AE45 6B 02            [ 1]  241 	ld	(0x02, sp), a
                                    242 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 92: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
      00AE47 7B 08            [ 1]  243 	ld	a, (0x08, sp)
      00AE49 1A 09            [ 1]  244 	or	a, (0x09, sp)
      00AE4B 1A 02            [ 1]  245 	or	a, (0x02, sp)
      00AE4D C7 52 00         [ 1]  246 	ld	0x5200, a
                                    247 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 95: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
      00AE50 7B 0A            [ 1]  248 	ld	a, (0x0a, sp)
      00AE52 1A 0B            [ 1]  249 	or	a, (0x0b, sp)
      00AE54 C7 52 01         [ 1]  250 	ld	0x5201, a
                                    251 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      00AE57 C6 52 01         [ 1]  252 	ld	a, 0x5201
      00AE5A 97               [ 1]  253 	ld	xl, a
                                    254 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 97: if (Mode == SPI_MODE_MASTER)
      00AE5B 7B 01            [ 1]  255 	ld	a, (0x01, sp)
      00AE5D 27 08            [ 1]  256 	jreq	00102$
                                    257 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      00AE5F 9F               [ 1]  258 	ld	a, xl
      00AE60 AA 01            [ 1]  259 	or	a, #0x01
      00AE62 C7 52 01         [ 1]  260 	ld	0x5201, a
      00AE65 20 06            [ 2]  261 	jra	00103$
      00AE67                        262 00102$:
                                    263 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 103: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
      00AE67 9F               [ 1]  264 	ld	a, xl
      00AE68 A4 FE            [ 1]  265 	and	a, #0xfe
      00AE6A C7 52 01         [ 1]  266 	ld	0x5201, a
      00AE6D                        267 00103$:
                                    268 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 107: SPI->CR1 |= (uint8_t)(Mode);
      00AE6D C6 52 00         [ 1]  269 	ld	a, 0x5200
      00AE70 1A 07            [ 1]  270 	or	a, (0x07, sp)
      00AE72 C7 52 00         [ 1]  271 	ld	0x5200, a
                                    272 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 110: SPI->CRCPR = (uint8_t)CRCPolynomial;
      00AE75 AE 52 05         [ 2]  273 	ldw	x, #0x5205
      00AE78 7B 0C            [ 1]  274 	ld	a, (0x0c, sp)
      00AE7A F7               [ 1]  275 	ld	(x), a
                                    276 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 111: }
      00AE7B 85               [ 2]  277 	popw	x
      00AE7C 81               [ 4]  278 	ret
                                    279 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 119: void SPI_Cmd(FunctionalState NewState)
                                    280 ;	-----------------------------------------
                                    281 ;	 function SPI_Cmd
                                    282 ;	-----------------------------------------
      00AE7D                        283 _SPI_Cmd:
                                    284 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 122: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AE7D 0D 03            [ 1]  285 	tnz	(0x03, sp)
      00AE7F 27 14            [ 1]  286 	jreq	00107$
      00AE81 7B 03            [ 1]  287 	ld	a, (0x03, sp)
      00AE83 4A               [ 1]  288 	dec	a
      00AE84 27 0F            [ 1]  289 	jreq	00107$
      00AE86 4B 7A            [ 1]  290 	push	#0x7a
      00AE88 5F               [ 1]  291 	clrw	x
      00AE89 89               [ 2]  292 	pushw	x
      00AE8A 4B 00            [ 1]  293 	push	#0x00
      00AE8C 4B 44            [ 1]  294 	push	#<(___str_0+0)
      00AE8E 4B 85            [ 1]  295 	push	#((___str_0+0) >> 8)
      00AE90 CD 00 00         [ 4]  296 	call	_assert_failed
      00AE93 5B 06            [ 2]  297 	addw	sp, #6
      00AE95                        298 00107$:
                                    299 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
      00AE95 C6 52 00         [ 1]  300 	ld	a, 0x5200
                                    301 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 124: if (NewState != DISABLE)
      00AE98 0D 03            [ 1]  302 	tnz	(0x03, sp)
      00AE9A 27 06            [ 1]  303 	jreq	00102$
                                    304 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
      00AE9C AA 40            [ 1]  305 	or	a, #0x40
      00AE9E C7 52 00         [ 1]  306 	ld	0x5200, a
      00AEA1 81               [ 4]  307 	ret
      00AEA2                        308 00102$:
                                    309 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 130: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
      00AEA2 A4 BF            [ 1]  310 	and	a, #0xbf
      00AEA4 C7 52 00         [ 1]  311 	ld	0x5200, a
                                    312 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 132: }
      00AEA7 81               [ 4]  313 	ret
                                    314 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 141: void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
                                    315 ;	-----------------------------------------
                                    316 ;	 function SPI_ITConfig
                                    317 ;	-----------------------------------------
      00AEA8                        318 _SPI_ITConfig:
      00AEA8 88               [ 1]  319 	push	a
                                    320 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 145: assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
      00AEA9 7B 04            [ 1]  321 	ld	a, (0x04, sp)
      00AEAB A1 17            [ 1]  322 	cp	a, #0x17
      00AEAD 27 21            [ 1]  323 	jreq	00107$
      00AEAF 7B 04            [ 1]  324 	ld	a, (0x04, sp)
      00AEB1 A1 06            [ 1]  325 	cp	a, #0x06
      00AEB3 27 1B            [ 1]  326 	jreq	00107$
      00AEB5 7B 04            [ 1]  327 	ld	a, (0x04, sp)
      00AEB7 A1 05            [ 1]  328 	cp	a, #0x05
      00AEB9 27 15            [ 1]  329 	jreq	00107$
      00AEBB 7B 04            [ 1]  330 	ld	a, (0x04, sp)
      00AEBD A1 34            [ 1]  331 	cp	a, #0x34
      00AEBF 27 0F            [ 1]  332 	jreq	00107$
      00AEC1 4B 91            [ 1]  333 	push	#0x91
      00AEC3 5F               [ 1]  334 	clrw	x
      00AEC4 89               [ 2]  335 	pushw	x
      00AEC5 4B 00            [ 1]  336 	push	#0x00
      00AEC7 4B 44            [ 1]  337 	push	#<(___str_0+0)
      00AEC9 4B 85            [ 1]  338 	push	#((___str_0+0) >> 8)
      00AECB CD 00 00         [ 4]  339 	call	_assert_failed
      00AECE 5B 06            [ 2]  340 	addw	sp, #6
      00AED0                        341 00107$:
                                    342 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AED0 0D 05            [ 1]  343 	tnz	(0x05, sp)
      00AED2 27 14            [ 1]  344 	jreq	00118$
      00AED4 7B 05            [ 1]  345 	ld	a, (0x05, sp)
      00AED6 4A               [ 1]  346 	dec	a
      00AED7 27 0F            [ 1]  347 	jreq	00118$
      00AED9 4B 92            [ 1]  348 	push	#0x92
      00AEDB 5F               [ 1]  349 	clrw	x
      00AEDC 89               [ 2]  350 	pushw	x
      00AEDD 4B 00            [ 1]  351 	push	#0x00
      00AEDF 4B 44            [ 1]  352 	push	#<(___str_0+0)
      00AEE1 4B 85            [ 1]  353 	push	#((___str_0+0) >> 8)
      00AEE3 CD 00 00         [ 4]  354 	call	_assert_failed
      00AEE6 5B 06            [ 2]  355 	addw	sp, #6
      00AEE8                        356 00118$:
                                    357 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 149: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
      00AEE8 7B 04            [ 1]  358 	ld	a, (0x04, sp)
      00AEEA A4 0F            [ 1]  359 	and	a, #0x0f
      00AEEC 97               [ 1]  360 	ld	xl, a
      00AEED A6 01            [ 1]  361 	ld	a, #0x01
      00AEEF 88               [ 1]  362 	push	a
      00AEF0 9F               [ 1]  363 	ld	a, xl
      00AEF1 4D               [ 1]  364 	tnz	a
      00AEF2 27 05            [ 1]  365 	jreq	00174$
      00AEF4                        366 00173$:
      00AEF4 08 01            [ 1]  367 	sll	(1, sp)
      00AEF6 4A               [ 1]  368 	dec	a
      00AEF7 26 FB            [ 1]  369 	jrne	00173$
      00AEF9                        370 00174$:
      00AEF9 84               [ 1]  371 	pop	a
                                    372 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 153: SPI->ICR |= itpos; /* Enable interrupt*/
      00AEFA AE 52 02         [ 2]  373 	ldw	x, #0x5202
      00AEFD 88               [ 1]  374 	push	a
      00AEFE F6               [ 1]  375 	ld	a, (x)
      00AEFF 6B 02            [ 1]  376 	ld	(0x02, sp), a
      00AF01 84               [ 1]  377 	pop	a
                                    378 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 151: if (NewState != DISABLE)
      00AF02 0D 05            [ 1]  379 	tnz	(0x05, sp)
      00AF04 27 07            [ 1]  380 	jreq	00102$
                                    381 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 153: SPI->ICR |= itpos; /* Enable interrupt*/
      00AF06 1A 01            [ 1]  382 	or	a, (0x01, sp)
      00AF08 C7 52 02         [ 1]  383 	ld	0x5202, a
      00AF0B 20 06            [ 2]  384 	jra	00104$
      00AF0D                        385 00102$:
                                    386 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 157: SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
      00AF0D 43               [ 1]  387 	cpl	a
      00AF0E 14 01            [ 1]  388 	and	a, (0x01, sp)
      00AF10 C7 52 02         [ 1]  389 	ld	0x5202, a
      00AF13                        390 00104$:
                                    391 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 159: }
      00AF13 84               [ 1]  392 	pop	a
      00AF14 81               [ 4]  393 	ret
                                    394 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 166: void SPI_SendData(uint8_t Data)
                                    395 ;	-----------------------------------------
                                    396 ;	 function SPI_SendData
                                    397 ;	-----------------------------------------
      00AF15                        398 _SPI_SendData:
                                    399 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 168: SPI->DR = Data; /* Write in the DR register the data to be sent*/
      00AF15 AE 52 04         [ 2]  400 	ldw	x, #0x5204
      00AF18 7B 03            [ 1]  401 	ld	a, (0x03, sp)
      00AF1A F7               [ 1]  402 	ld	(x), a
                                    403 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 169: }
      00AF1B 81               [ 4]  404 	ret
                                    405 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 176: uint8_t SPI_ReceiveData(void)
                                    406 ;	-----------------------------------------
                                    407 ;	 function SPI_ReceiveData
                                    408 ;	-----------------------------------------
      00AF1C                        409 _SPI_ReceiveData:
                                    410 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 178: return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
      00AF1C C6 52 04         [ 1]  411 	ld	a, 0x5204
                                    412 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 179: }
      00AF1F 81               [ 4]  413 	ret
                                    414 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 187: void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
                                    415 ;	-----------------------------------------
                                    416 ;	 function SPI_NSSInternalSoftwareCmd
                                    417 ;	-----------------------------------------
      00AF20                        418 _SPI_NSSInternalSoftwareCmd:
                                    419 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 190: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AF20 0D 03            [ 1]  420 	tnz	(0x03, sp)
      00AF22 27 14            [ 1]  421 	jreq	00107$
      00AF24 7B 03            [ 1]  422 	ld	a, (0x03, sp)
      00AF26 4A               [ 1]  423 	dec	a
      00AF27 27 0F            [ 1]  424 	jreq	00107$
      00AF29 4B BE            [ 1]  425 	push	#0xbe
      00AF2B 5F               [ 1]  426 	clrw	x
      00AF2C 89               [ 2]  427 	pushw	x
      00AF2D 4B 00            [ 1]  428 	push	#0x00
      00AF2F 4B 44            [ 1]  429 	push	#<(___str_0+0)
      00AF31 4B 85            [ 1]  430 	push	#((___str_0+0) >> 8)
      00AF33 CD 00 00         [ 4]  431 	call	_assert_failed
      00AF36 5B 06            [ 2]  432 	addw	sp, #6
      00AF38                        433 00107$:
                                    434 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 194: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
      00AF38 C6 52 01         [ 1]  435 	ld	a, 0x5201
                                    436 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 192: if (NewState != DISABLE)
      00AF3B 0D 03            [ 1]  437 	tnz	(0x03, sp)
      00AF3D 27 06            [ 1]  438 	jreq	00102$
                                    439 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 194: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
      00AF3F AA 01            [ 1]  440 	or	a, #0x01
      00AF41 C7 52 01         [ 1]  441 	ld	0x5201, a
      00AF44 81               [ 4]  442 	ret
      00AF45                        443 00102$:
                                    444 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 198: SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
      00AF45 A4 FE            [ 1]  445 	and	a, #0xfe
      00AF47 C7 52 01         [ 1]  446 	ld	0x5201, a
                                    447 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 200: }
      00AF4A 81               [ 4]  448 	ret
                                    449 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 207: void SPI_TransmitCRC(void)
                                    450 ;	-----------------------------------------
                                    451 ;	 function SPI_TransmitCRC
                                    452 ;	-----------------------------------------
      00AF4B                        453 _SPI_TransmitCRC:
                                    454 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 209: SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
      00AF4B 72 18 52 01      [ 1]  455 	bset	20993, #4
                                    456 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 210: }
      00AF4F 81               [ 4]  457 	ret
                                    458 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 218: void SPI_CalculateCRCCmd(FunctionalState NewState)
                                    459 ;	-----------------------------------------
                                    460 ;	 function SPI_CalculateCRCCmd
                                    461 ;	-----------------------------------------
      00AF50                        462 _SPI_CalculateCRCCmd:
                                    463 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 221: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AF50 0D 03            [ 1]  464 	tnz	(0x03, sp)
      00AF52 27 14            [ 1]  465 	jreq	00107$
      00AF54 7B 03            [ 1]  466 	ld	a, (0x03, sp)
      00AF56 4A               [ 1]  467 	dec	a
      00AF57 27 0F            [ 1]  468 	jreq	00107$
      00AF59 4B DD            [ 1]  469 	push	#0xdd
      00AF5B 5F               [ 1]  470 	clrw	x
      00AF5C 89               [ 2]  471 	pushw	x
      00AF5D 4B 00            [ 1]  472 	push	#0x00
      00AF5F 4B 44            [ 1]  473 	push	#<(___str_0+0)
      00AF61 4B 85            [ 1]  474 	push	#((___str_0+0) >> 8)
      00AF63 CD 00 00         [ 4]  475 	call	_assert_failed
      00AF66 5B 06            [ 2]  476 	addw	sp, #6
      00AF68                        477 00107$:
                                    478 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 225: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
      00AF68 C6 52 01         [ 1]  479 	ld	a, 0x5201
                                    480 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 223: if (NewState != DISABLE)
      00AF6B 0D 03            [ 1]  481 	tnz	(0x03, sp)
      00AF6D 27 06            [ 1]  482 	jreq	00102$
                                    483 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 225: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
      00AF6F AA 20            [ 1]  484 	or	a, #0x20
      00AF71 C7 52 01         [ 1]  485 	ld	0x5201, a
      00AF74 81               [ 4]  486 	ret
      00AF75                        487 00102$:
                                    488 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 229: SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
      00AF75 A4 DF            [ 1]  489 	and	a, #0xdf
      00AF77 C7 52 01         [ 1]  490 	ld	0x5201, a
                                    491 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 231: }
      00AF7A 81               [ 4]  492 	ret
                                    493 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 238: uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
                                    494 ;	-----------------------------------------
                                    495 ;	 function SPI_GetCRC
                                    496 ;	-----------------------------------------
      00AF7B                        497 _SPI_GetCRC:
                                    498 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 243: assert_param(IS_SPI_CRC_OK(SPI_CRC));
      00AF7B 7B 03            [ 1]  499 	ld	a, (0x03, sp)
      00AF7D 4A               [ 1]  500 	dec	a
      00AF7E 27 13            [ 1]  501 	jreq	00107$
      00AF80 0D 03            [ 1]  502 	tnz	(0x03, sp)
      00AF82 27 0F            [ 1]  503 	jreq	00107$
      00AF84 4B F3            [ 1]  504 	push	#0xf3
      00AF86 5F               [ 1]  505 	clrw	x
      00AF87 89               [ 2]  506 	pushw	x
      00AF88 4B 00            [ 1]  507 	push	#0x00
      00AF8A 4B 44            [ 1]  508 	push	#<(___str_0+0)
      00AF8C 4B 85            [ 1]  509 	push	#((___str_0+0) >> 8)
      00AF8E CD 00 00         [ 4]  510 	call	_assert_failed
      00AF91 5B 06            [ 2]  511 	addw	sp, #6
      00AF93                        512 00107$:
                                    513 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 245: if (SPI_CRC != SPI_CRC_RX)
      00AF93 0D 03            [ 1]  514 	tnz	(0x03, sp)
      00AF95 27 04            [ 1]  515 	jreq	00102$
                                    516 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 247: crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
      00AF97 C6 52 07         [ 1]  517 	ld	a, 0x5207
      00AF9A 81               [ 4]  518 	ret
      00AF9B                        519 00102$:
                                    520 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 251: crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
      00AF9B C6 52 06         [ 1]  521 	ld	a, 0x5206
                                    522 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 255: return crcreg;
                                    523 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 256: }
      00AF9E 81               [ 4]  524 	ret
                                    525 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 263: void SPI_ResetCRC(void)
                                    526 ;	-----------------------------------------
                                    527 ;	 function SPI_ResetCRC
                                    528 ;	-----------------------------------------
      00AF9F                        529 _SPI_ResetCRC:
                                    530 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 267: SPI_CalculateCRCCmd(ENABLE);
      00AF9F 4B 01            [ 1]  531 	push	#0x01
      00AFA1 CD AF 50         [ 4]  532 	call	_SPI_CalculateCRCCmd
      00AFA4 84               [ 1]  533 	pop	a
                                    534 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 270: SPI_Cmd(ENABLE);
      00AFA5 4B 01            [ 1]  535 	push	#0x01
      00AFA7 CD AE 7D         [ 4]  536 	call	_SPI_Cmd
      00AFAA 84               [ 1]  537 	pop	a
                                    538 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 271: }
      00AFAB 81               [ 4]  539 	ret
                                    540 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 278: uint8_t SPI_GetCRCPolynomial(void)
                                    541 ;	-----------------------------------------
                                    542 ;	 function SPI_GetCRCPolynomial
                                    543 ;	-----------------------------------------
      00AFAC                        544 _SPI_GetCRCPolynomial:
                                    545 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 280: return SPI->CRCPR; /* Return the CRC polynomial register */
      00AFAC C6 52 05         [ 1]  546 	ld	a, 0x5205
                                    547 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 281: }
      00AFAF 81               [ 4]  548 	ret
                                    549 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 288: void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
                                    550 ;	-----------------------------------------
                                    551 ;	 function SPI_BiDirectionalLineConfig
                                    552 ;	-----------------------------------------
      00AFB0                        553 _SPI_BiDirectionalLineConfig:
                                    554 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 291: assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
      00AFB0 0D 03            [ 1]  555 	tnz	(0x03, sp)
      00AFB2 27 14            [ 1]  556 	jreq	00107$
      00AFB4 7B 03            [ 1]  557 	ld	a, (0x03, sp)
      00AFB6 4A               [ 1]  558 	dec	a
      00AFB7 27 0F            [ 1]  559 	jreq	00107$
      00AFB9 4B 23            [ 1]  560 	push	#0x23
      00AFBB 4B 01            [ 1]  561 	push	#0x01
      00AFBD 5F               [ 1]  562 	clrw	x
      00AFBE 89               [ 2]  563 	pushw	x
      00AFBF 4B 44            [ 1]  564 	push	#<(___str_0+0)
      00AFC1 4B 85            [ 1]  565 	push	#((___str_0+0) >> 8)
      00AFC3 CD 00 00         [ 4]  566 	call	_assert_failed
      00AFC6 5B 06            [ 2]  567 	addw	sp, #6
      00AFC8                        568 00107$:
                                    569 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 295: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
      00AFC8 C6 52 01         [ 1]  570 	ld	a, 0x5201
                                    571 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 293: if (SPI_Direction != SPI_DIRECTION_RX)
      00AFCB 0D 03            [ 1]  572 	tnz	(0x03, sp)
      00AFCD 27 06            [ 1]  573 	jreq	00102$
                                    574 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 295: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
      00AFCF AA 40            [ 1]  575 	or	a, #0x40
      00AFD1 C7 52 01         [ 1]  576 	ld	0x5201, a
      00AFD4 81               [ 4]  577 	ret
      00AFD5                        578 00102$:
                                    579 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 299: SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
      00AFD5 A4 BF            [ 1]  580 	and	a, #0xbf
      00AFD7 C7 52 01         [ 1]  581 	ld	0x5201, a
                                    582 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 301: }
      00AFDA 81               [ 4]  583 	ret
                                    584 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 311: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
                                    585 ;	-----------------------------------------
                                    586 ;	 function SPI_GetFlagStatus
                                    587 ;	-----------------------------------------
      00AFDB                        588 _SPI_GetFlagStatus:
                                    589 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 315: assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
      00AFDB 7B 03            [ 1]  590 	ld	a, (0x03, sp)
      00AFDD A1 40            [ 1]  591 	cp	a, #0x40
      00AFDF 27 32            [ 1]  592 	jreq	00107$
      00AFE1 7B 03            [ 1]  593 	ld	a, (0x03, sp)
      00AFE3 A1 20            [ 1]  594 	cp	a, #0x20
      00AFE5 27 2C            [ 1]  595 	jreq	00107$
      00AFE7 7B 03            [ 1]  596 	ld	a, (0x03, sp)
      00AFE9 A1 10            [ 1]  597 	cp	a, #0x10
      00AFEB 27 26            [ 1]  598 	jreq	00107$
      00AFED 7B 03            [ 1]  599 	ld	a, (0x03, sp)
      00AFEF A1 08            [ 1]  600 	cp	a, #0x08
      00AFF1 27 20            [ 1]  601 	jreq	00107$
      00AFF3 7B 03            [ 1]  602 	ld	a, (0x03, sp)
      00AFF5 A1 02            [ 1]  603 	cp	a, #0x02
      00AFF7 27 1A            [ 1]  604 	jreq	00107$
      00AFF9 7B 03            [ 1]  605 	ld	a, (0x03, sp)
      00AFFB 4A               [ 1]  606 	dec	a
      00AFFC 27 15            [ 1]  607 	jreq	00107$
      00AFFE 7B 03            [ 1]  608 	ld	a, (0x03, sp)
      00B000 A1 80            [ 1]  609 	cp	a, #0x80
      00B002 27 0F            [ 1]  610 	jreq	00107$
      00B004 4B 3B            [ 1]  611 	push	#0x3b
      00B006 4B 01            [ 1]  612 	push	#0x01
      00B008 5F               [ 1]  613 	clrw	x
      00B009 89               [ 2]  614 	pushw	x
      00B00A 4B 44            [ 1]  615 	push	#<(___str_0+0)
      00B00C 4B 85            [ 1]  616 	push	#((___str_0+0) >> 8)
      00B00E CD 00 00         [ 4]  617 	call	_assert_failed
      00B011 5B 06            [ 2]  618 	addw	sp, #6
      00B013                        619 00107$:
                                    620 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 318: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
      00B013 C6 52 03         [ 1]  621 	ld	a, 0x5203
      00B016 14 03            [ 1]  622 	and	a, (0x03, sp)
      00B018 27 03            [ 1]  623 	jreq	00102$
                                    624 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 320: status = SET; /* SPI_FLAG is set */
      00B01A A6 01            [ 1]  625 	ld	a, #0x01
      00B01C 81               [ 4]  626 	ret
      00B01D                        627 00102$:
                                    628 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 324: status = RESET; /* SPI_FLAG is reset*/
      00B01D 4F               [ 1]  629 	clr	a
                                    630 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 328: return status;
                                    631 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 329: }
      00B01E 81               [ 4]  632 	ret
                                    633 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 346: void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
                                    634 ;	-----------------------------------------
                                    635 ;	 function SPI_ClearFlag
                                    636 ;	-----------------------------------------
      00B01F                        637 _SPI_ClearFlag:
                                    638 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 348: assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
      00B01F 7B 03            [ 1]  639 	ld	a, (0x03, sp)
      00B021 A1 10            [ 1]  640 	cp	a, #0x10
      00B023 27 15            [ 1]  641 	jreq	00104$
      00B025 7B 03            [ 1]  642 	ld	a, (0x03, sp)
      00B027 A1 08            [ 1]  643 	cp	a, #0x08
      00B029 27 0F            [ 1]  644 	jreq	00104$
      00B02B 4B 5C            [ 1]  645 	push	#0x5c
      00B02D 4B 01            [ 1]  646 	push	#0x01
      00B02F 5F               [ 1]  647 	clrw	x
      00B030 89               [ 2]  648 	pushw	x
      00B031 4B 44            [ 1]  649 	push	#<(___str_0+0)
      00B033 4B 85            [ 1]  650 	push	#((___str_0+0) >> 8)
      00B035 CD 00 00         [ 4]  651 	call	_assert_failed
      00B038 5B 06            [ 2]  652 	addw	sp, #6
      00B03A                        653 00104$:
                                    654 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 350: SPI->SR = (uint8_t)(~SPI_FLAG);
      00B03A 7B 03            [ 1]  655 	ld	a, (0x03, sp)
      00B03C 43               [ 1]  656 	cpl	a
      00B03D C7 52 03         [ 1]  657 	ld	0x5203, a
                                    658 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 351: }
      00B040 81               [ 4]  659 	ret
                                    660 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 366: ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
                                    661 ;	-----------------------------------------
                                    662 ;	 function SPI_GetITStatus
                                    663 ;	-----------------------------------------
      00B041                        664 _SPI_GetITStatus:
      00B041 89               [ 2]  665 	pushw	x
                                    666 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 373: assert_param(IS_SPI_GET_IT_OK(SPI_IT));
      00B042 7B 05            [ 1]  667 	ld	a, (0x05, sp)
      00B044 A1 65            [ 1]  668 	cp	a, #0x65
      00B046 27 2D            [ 1]  669 	jreq	00108$
      00B048 7B 05            [ 1]  670 	ld	a, (0x05, sp)
      00B04A A1 55            [ 1]  671 	cp	a, #0x55
      00B04C 27 27            [ 1]  672 	jreq	00108$
      00B04E 7B 05            [ 1]  673 	ld	a, (0x05, sp)
      00B050 A1 45            [ 1]  674 	cp	a, #0x45
      00B052 27 21            [ 1]  675 	jreq	00108$
      00B054 7B 05            [ 1]  676 	ld	a, (0x05, sp)
      00B056 A1 34            [ 1]  677 	cp	a, #0x34
      00B058 27 1B            [ 1]  678 	jreq	00108$
      00B05A 7B 05            [ 1]  679 	ld	a, (0x05, sp)
      00B05C A1 17            [ 1]  680 	cp	a, #0x17
      00B05E 27 15            [ 1]  681 	jreq	00108$
      00B060 7B 05            [ 1]  682 	ld	a, (0x05, sp)
      00B062 A1 06            [ 1]  683 	cp	a, #0x06
      00B064 27 0F            [ 1]  684 	jreq	00108$
      00B066 4B 75            [ 1]  685 	push	#0x75
      00B068 4B 01            [ 1]  686 	push	#0x01
      00B06A 5F               [ 1]  687 	clrw	x
      00B06B 89               [ 2]  688 	pushw	x
      00B06C 4B 44            [ 1]  689 	push	#<(___str_0+0)
      00B06E 4B 85            [ 1]  690 	push	#((___str_0+0) >> 8)
      00B070 CD 00 00         [ 4]  691 	call	_assert_failed
      00B073 5B 06            [ 2]  692 	addw	sp, #6
      00B075                        693 00108$:
                                    694 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 375: itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
      00B075 7B 05            [ 1]  695 	ld	a, (0x05, sp)
      00B077 A4 0F            [ 1]  696 	and	a, #0x0f
      00B079 88               [ 1]  697 	push	a
      00B07A A6 01            [ 1]  698 	ld	a, #0x01
      00B07C 6B 02            [ 1]  699 	ld	(0x02, sp), a
      00B07E 84               [ 1]  700 	pop	a
      00B07F 4D               [ 1]  701 	tnz	a
      00B080 27 05            [ 1]  702 	jreq	00183$
      00B082                        703 00182$:
      00B082 08 01            [ 1]  704 	sll	(0x01, sp)
      00B084 4A               [ 1]  705 	dec	a
      00B085 26 FB            [ 1]  706 	jrne	00182$
      00B087                        707 00183$:
                                    708 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 378: itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
      00B087 7B 05            [ 1]  709 	ld	a, (0x05, sp)
      00B089 4E               [ 1]  710 	swap	a
      00B08A A4 0F            [ 1]  711 	and	a, #0x0f
                                    712 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 380: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      00B08C 88               [ 1]  713 	push	a
      00B08D A6 01            [ 1]  714 	ld	a, #0x01
      00B08F 6B 03            [ 1]  715 	ld	(0x03, sp), a
      00B091 84               [ 1]  716 	pop	a
      00B092 4D               [ 1]  717 	tnz	a
      00B093 27 05            [ 1]  718 	jreq	00185$
      00B095                        719 00184$:
      00B095 08 02            [ 1]  720 	sll	(0x02, sp)
      00B097 4A               [ 1]  721 	dec	a
      00B098 26 FB            [ 1]  722 	jrne	00184$
      00B09A                        723 00185$:
                                    724 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 382: enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
      00B09A C6 52 03         [ 1]  725 	ld	a, 0x5203
      00B09D 14 02            [ 1]  726 	and	a, (0x02, sp)
      00B09F 97               [ 1]  727 	ld	xl, a
                                    728 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 384: if (((SPI->ICR & itpos) != RESET) && enablestatus)
      00B0A0 C6 52 02         [ 1]  729 	ld	a, 0x5202
      00B0A3 14 01            [ 1]  730 	and	a, (0x01, sp)
      00B0A5 27 07            [ 1]  731 	jreq	00102$
      00B0A7 9F               [ 1]  732 	ld	a, xl
      00B0A8 4D               [ 1]  733 	tnz	a
      00B0A9 27 03            [ 1]  734 	jreq	00102$
                                    735 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 387: pendingbitstatus = SET;
      00B0AB A6 01            [ 1]  736 	ld	a, #0x01
                                    737 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 392: pendingbitstatus = RESET;
      00B0AD 21                     738 	.byte 0x21
      00B0AE                        739 00102$:
      00B0AE 4F               [ 1]  740 	clr	a
      00B0AF                        741 00103$:
                                    742 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 395: return  pendingbitstatus;
                                    743 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 396: }
      00B0AF 85               [ 2]  744 	popw	x
      00B0B0 81               [ 4]  745 	ret
                                    746 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 412: void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
                                    747 ;	-----------------------------------------
                                    748 ;	 function SPI_ClearITPendingBit
                                    749 ;	-----------------------------------------
      00B0B1                        750 _SPI_ClearITPendingBit:
                                    751 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 415: assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
      00B0B1 7B 03            [ 1]  752 	ld	a, (0x03, sp)
      00B0B3 A1 45            [ 1]  753 	cp	a, #0x45
      00B0B5 27 15            [ 1]  754 	jreq	00104$
      00B0B7 7B 03            [ 1]  755 	ld	a, (0x03, sp)
      00B0B9 A1 34            [ 1]  756 	cp	a, #0x34
      00B0BB 27 0F            [ 1]  757 	jreq	00104$
      00B0BD 4B 9F            [ 1]  758 	push	#0x9f
      00B0BF 4B 01            [ 1]  759 	push	#0x01
      00B0C1 5F               [ 1]  760 	clrw	x
      00B0C2 89               [ 2]  761 	pushw	x
      00B0C3 4B 44            [ 1]  762 	push	#<(___str_0+0)
      00B0C5 4B 85            [ 1]  763 	push	#((___str_0+0) >> 8)
      00B0C7 CD 00 00         [ 4]  764 	call	_assert_failed
      00B0CA 5B 06            [ 2]  765 	addw	sp, #6
      00B0CC                        766 00104$:
                                    767 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 420: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
      00B0CC 7B 03            [ 1]  768 	ld	a, (0x03, sp)
      00B0CE A4 F0            [ 1]  769 	and	a, #0xf0
      00B0D0 4E               [ 1]  770 	swap	a
      00B0D1 A4 0F            [ 1]  771 	and	a, #0x0f
      00B0D3 97               [ 1]  772 	ld	xl, a
      00B0D4 A6 01            [ 1]  773 	ld	a, #0x01
      00B0D6 88               [ 1]  774 	push	a
      00B0D7 9F               [ 1]  775 	ld	a, xl
      00B0D8 4D               [ 1]  776 	tnz	a
      00B0D9 27 05            [ 1]  777 	jreq	00125$
      00B0DB                        778 00124$:
      00B0DB 08 01            [ 1]  779 	sll	(1, sp)
      00B0DD 4A               [ 1]  780 	dec	a
      00B0DE 26 FB            [ 1]  781 	jrne	00124$
      00B0E0                        782 00125$:
      00B0E0 84               [ 1]  783 	pop	a
                                    784 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 422: SPI->SR = (uint8_t)(~itpos);
      00B0E1 43               [ 1]  785 	cpl	a
      00B0E2 C7 52 03         [ 1]  786 	ld	0x5203, a
                                    787 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_spi.c: 424: }
      00B0E5 81               [ 4]  788 	ret
                                    789 	.area CODE
                                    790 	.area CONST
                                    791 	.area CONST
      008544                        792 ___str_0:
      008544 43 3A                  793 	.ascii "C:"
      008546 5C                     794 	.db 0x5c
      008547 55 73 65 72 73         795 	.ascii "Users"
      00854C 5C                     796 	.db 0x5c
      00854D 41 64 6D 69 6E         797 	.ascii "Admin"
      008552 5C                     798 	.db 0x5c
      008553 2E 70 6C 61 74 66 6F   799 	.ascii ".platformio"
             72 6D 69 6F
      00855E 5C                     800 	.db 0x5c
      00855F 70 61 63 6B 61 67 65   801 	.ascii "packages"
             73
      008567 5C                     802 	.db 0x5c
      008568 66 72 61 6D 65 77 6F   803 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      00857B 5C                     804 	.db 0x5c
      00857C 4C 69 62 72 61 72 69   805 	.ascii "Libraries"
             65 73
      008585 5C                     806 	.db 0x5c
      008586 53 54 4D 38 53 5F 53   807 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      00859C 5C                     808 	.db 0x5c
      00859D 73 72 63               809 	.ascii "src"
      0085A0 5C                     810 	.db 0x5c
      0085A1 73 74 6D 38 73 5F 73   811 	.ascii "stm8s_spi.c"
             70 69 2E 63
      0085AC 00                     812 	.db 0x00
                                    813 	.area CODE
                                    814 	.area INITIALIZER
                                    815 	.area CABS (ABS)
