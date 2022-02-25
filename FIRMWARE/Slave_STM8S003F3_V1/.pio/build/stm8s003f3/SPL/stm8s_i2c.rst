                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_i2c
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _I2C_DeInit
                                     13 	.globl _I2C_Init
                                     14 	.globl _I2C_Cmd
                                     15 	.globl _I2C_GeneralCallCmd
                                     16 	.globl _I2C_GenerateSTART
                                     17 	.globl _I2C_GenerateSTOP
                                     18 	.globl _I2C_SoftwareResetCmd
                                     19 	.globl _I2C_StretchClockCmd
                                     20 	.globl _I2C_AcknowledgeConfig
                                     21 	.globl _I2C_ITConfig
                                     22 	.globl _I2C_FastModeDutyCycleConfig
                                     23 	.globl _I2C_ReceiveData
                                     24 	.globl _I2C_Send7bitAddress
                                     25 	.globl _I2C_SendData
                                     26 	.globl _I2C_CheckEvent
                                     27 	.globl _I2C_GetLastEvent
                                     28 	.globl _I2C_GetFlagStatus
                                     29 	.globl _I2C_ClearFlag
                                     30 	.globl _I2C_GetITStatus
                                     31 	.globl _I2C_ClearITPendingBit
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
                                     69 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 67: void I2C_DeInit(void)
                                     70 ;	-----------------------------------------
                                     71 ;	 function I2C_DeInit
                                     72 ;	-----------------------------------------
      00A388                         73 _I2C_DeInit:
                                     74 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 69: I2C->CR1 = I2C_CR1_RESET_VALUE;
      00A388 35 00 52 10      [ 1]   75 	mov	0x5210+0, #0x00
                                     76 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 70: I2C->CR2 = I2C_CR2_RESET_VALUE;
      00A38C 35 00 52 11      [ 1]   77 	mov	0x5211+0, #0x00
                                     78 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 71: I2C->FREQR = I2C_FREQR_RESET_VALUE;
      00A390 35 00 52 12      [ 1]   79 	mov	0x5212+0, #0x00
                                     80 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 72: I2C->OARL = I2C_OARL_RESET_VALUE;
      00A394 35 00 52 13      [ 1]   81 	mov	0x5213+0, #0x00
                                     82 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 73: I2C->OARH = I2C_OARH_RESET_VALUE;
      00A398 35 00 52 14      [ 1]   83 	mov	0x5214+0, #0x00
                                     84 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 74: I2C->ITR = I2C_ITR_RESET_VALUE;
      00A39C 35 00 52 1A      [ 1]   85 	mov	0x521a+0, #0x00
                                     86 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 75: I2C->CCRL = I2C_CCRL_RESET_VALUE;
      00A3A0 35 00 52 1B      [ 1]   87 	mov	0x521b+0, #0x00
                                     88 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 76: I2C->CCRH = I2C_CCRH_RESET_VALUE;
      00A3A4 35 00 52 1C      [ 1]   89 	mov	0x521c+0, #0x00
                                     90 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 77: I2C->TRISER = I2C_TRISER_RESET_VALUE;
      00A3A8 35 02 52 1D      [ 1]   91 	mov	0x521d+0, #0x02
                                     92 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 78: }
      00A3AC 81               [ 4]   93 	ret
                                     94 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 96: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
                                     95 ;	-----------------------------------------
                                     96 ;	 function I2C_Init
                                     97 ;	-----------------------------------------
      00A3AD                         98 _I2C_Init:
      00A3AD 52 07            [ 2]   99 	sub	sp, #7
                                    100 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 102: uint8_t tmpccrh = 0;
      00A3AF 0F 05            [ 1]  101 	clr	(0x05, sp)
                                    102 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 105: assert_param(IS_I2C_ACK_OK(Ack));
      00A3B1 0D 11            [ 1]  103 	tnz	(0x11, sp)
      00A3B3 27 1A            [ 1]  104 	jreq	00114$
      00A3B5 7B 11            [ 1]  105 	ld	a, (0x11, sp)
      00A3B7 4A               [ 1]  106 	dec	a
      00A3B8 27 15            [ 1]  107 	jreq	00114$
      00A3BA 7B 11            [ 1]  108 	ld	a, (0x11, sp)
      00A3BC A1 02            [ 1]  109 	cp	a, #0x02
      00A3BE 27 0F            [ 1]  110 	jreq	00114$
      00A3C0 4B 69            [ 1]  111 	push	#0x69
      00A3C2 5F               [ 1]  112 	clrw	x
      00A3C3 89               [ 2]  113 	pushw	x
      00A3C4 4B 00            [ 1]  114 	push	#0x00
      00A3C6 4B 9F            [ 1]  115 	push	#<(___str_0+0)
      00A3C8 4B 83            [ 1]  116 	push	#((___str_0+0) >> 8)
      00A3CA CD 00 00         [ 4]  117 	call	_assert_failed
      00A3CD 5B 06            [ 2]  118 	addw	sp, #6
      00A3CF                        119 00114$:
                                    120 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 106: assert_param(IS_I2C_ADDMODE_OK(AddMode));
      00A3CF 0D 12            [ 1]  121 	tnz	(0x12, sp)
      00A3D1 27 15            [ 1]  122 	jreq	00122$
      00A3D3 7B 12            [ 1]  123 	ld	a, (0x12, sp)
      00A3D5 A1 80            [ 1]  124 	cp	a, #0x80
      00A3D7 27 0F            [ 1]  125 	jreq	00122$
      00A3D9 4B 6A            [ 1]  126 	push	#0x6a
      00A3DB 5F               [ 1]  127 	clrw	x
      00A3DC 89               [ 2]  128 	pushw	x
      00A3DD 4B 00            [ 1]  129 	push	#0x00
      00A3DF 4B 9F            [ 1]  130 	push	#<(___str_0+0)
      00A3E1 4B 83            [ 1]  131 	push	#((___str_0+0) >> 8)
      00A3E3 CD 00 00         [ 4]  132 	call	_assert_failed
      00A3E6 5B 06            [ 2]  133 	addw	sp, #6
      00A3E8                        134 00122$:
                                    135 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 107: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
      00A3E8 1E 0E            [ 2]  136 	ldw	x, (0x0e, sp)
      00A3EA A3 03 FF         [ 2]  137 	cpw	x, #0x03ff
      00A3ED 23 0F            [ 2]  138 	jrule	00127$
      00A3EF 4B 6B            [ 1]  139 	push	#0x6b
      00A3F1 5F               [ 1]  140 	clrw	x
      00A3F2 89               [ 2]  141 	pushw	x
      00A3F3 4B 00            [ 1]  142 	push	#0x00
      00A3F5 4B 9F            [ 1]  143 	push	#<(___str_0+0)
      00A3F7 4B 83            [ 1]  144 	push	#((___str_0+0) >> 8)
      00A3F9 CD 00 00         [ 4]  145 	call	_assert_failed
      00A3FC 5B 06            [ 2]  146 	addw	sp, #6
      00A3FE                        147 00127$:
                                    148 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 108: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
      00A3FE 0D 10            [ 1]  149 	tnz	(0x10, sp)
      00A400 27 15            [ 1]  150 	jreq	00129$
      00A402 7B 10            [ 1]  151 	ld	a, (0x10, sp)
      00A404 A1 40            [ 1]  152 	cp	a, #0x40
      00A406 27 0F            [ 1]  153 	jreq	00129$
      00A408 4B 6C            [ 1]  154 	push	#0x6c
      00A40A 5F               [ 1]  155 	clrw	x
      00A40B 89               [ 2]  156 	pushw	x
      00A40C 4B 00            [ 1]  157 	push	#0x00
      00A40E 4B 9F            [ 1]  158 	push	#<(___str_0+0)
      00A410 4B 83            [ 1]  159 	push	#((___str_0+0) >> 8)
      00A412 CD 00 00         [ 4]  160 	call	_assert_failed
      00A415 5B 06            [ 2]  161 	addw	sp, #6
      00A417                        162 00129$:
                                    163 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 109: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
      00A417 7B 13            [ 1]  164 	ld	a, (0x13, sp)
      00A419 A1 01            [ 1]  165 	cp	a, #0x01
      00A41B 25 06            [ 1]  166 	jrc	00133$
      00A41D 7B 13            [ 1]  167 	ld	a, (0x13, sp)
      00A41F A1 10            [ 1]  168 	cp	a, #0x10
      00A421 23 0F            [ 2]  169 	jrule	00134$
      00A423                        170 00133$:
      00A423 4B 6D            [ 1]  171 	push	#0x6d
      00A425 5F               [ 1]  172 	clrw	x
      00A426 89               [ 2]  173 	pushw	x
      00A427 4B 00            [ 1]  174 	push	#0x00
      00A429 4B 9F            [ 1]  175 	push	#<(___str_0+0)
      00A42B 4B 83            [ 1]  176 	push	#((___str_0+0) >> 8)
      00A42D CD 00 00         [ 4]  177 	call	_assert_failed
      00A430 5B 06            [ 2]  178 	addw	sp, #6
      00A432                        179 00134$:
                                    180 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 110: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
      00A432 1E 0C            [ 2]  181 	ldw	x, (0x0c, sp)
      00A434 A3 00 01         [ 2]  182 	cpw	x, #0x0001
      00A437 7B 0B            [ 1]  183 	ld	a, (0x0b, sp)
      00A439 A2 00            [ 1]  184 	sbc	a, #0x00
      00A43B 7B 0A            [ 1]  185 	ld	a, (0x0a, sp)
      00A43D A2 00            [ 1]  186 	sbc	a, #0x00
      00A43F 25 0E            [ 1]  187 	jrc	00138$
      00A441 AE 1A 80         [ 2]  188 	ldw	x, #0x1a80
      00A444 13 0C            [ 2]  189 	cpw	x, (0x0c, sp)
      00A446 A6 06            [ 1]  190 	ld	a, #0x06
      00A448 12 0B            [ 1]  191 	sbc	a, (0x0b, sp)
      00A44A 4F               [ 1]  192 	clr	a
      00A44B 12 0A            [ 1]  193 	sbc	a, (0x0a, sp)
      00A44D 24 0F            [ 1]  194 	jrnc	00139$
      00A44F                        195 00138$:
      00A44F 4B 6E            [ 1]  196 	push	#0x6e
      00A451 5F               [ 1]  197 	clrw	x
      00A452 89               [ 2]  198 	pushw	x
      00A453 4B 00            [ 1]  199 	push	#0x00
      00A455 4B 9F            [ 1]  200 	push	#<(___str_0+0)
      00A457 4B 83            [ 1]  201 	push	#((___str_0+0) >> 8)
      00A459 CD 00 00         [ 4]  202 	call	_assert_failed
      00A45C 5B 06            [ 2]  203 	addw	sp, #6
      00A45E                        204 00139$:
                                    205 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 115: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
      00A45E C6 52 12         [ 1]  206 	ld	a, 0x5212
      00A461 A4 C0            [ 1]  207 	and	a, #0xc0
      00A463 C7 52 12         [ 1]  208 	ld	0x5212, a
                                    209 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 117: I2C->FREQR |= InputClockFrequencyMHz;
      00A466 C6 52 12         [ 1]  210 	ld	a, 0x5212
      00A469 1A 13            [ 1]  211 	or	a, (0x13, sp)
      00A46B C7 52 12         [ 1]  212 	ld	0x5212, a
                                    213 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 121: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      00A46E 72 11 52 10      [ 1]  214 	bres	21008, #0
                                    215 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 124: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
      00A472 C6 52 1C         [ 1]  216 	ld	a, 0x521c
      00A475 A4 30            [ 1]  217 	and	a, #0x30
      00A477 C7 52 1C         [ 1]  218 	ld	0x521c, a
                                    219 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 125: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
      00A47A C6 52 1B         [ 1]  220 	ld	a, 0x521b
      00A47D 35 00 52 1B      [ 1]  221 	mov	0x521b+0, #0x00
                                    222 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      00A481 5F               [ 1]  223 	clrw	x
      00A482 7B 13            [ 1]  224 	ld	a, (0x13, sp)
      00A484 97               [ 1]  225 	ld	xl, a
      00A485 90 5F            [ 1]  226 	clrw	y
      00A487 89               [ 2]  227 	pushw	x
      00A488 90 89            [ 2]  228 	pushw	y
      00A48A 4B 40            [ 1]  229 	push	#0x40
      00A48C 4B 42            [ 1]  230 	push	#0x42
      00A48E 4B 0F            [ 1]  231 	push	#0x0f
      00A490 4B 00            [ 1]  232 	push	#0x00
      00A492 CD DD 34         [ 4]  233 	call	__mullong
      00A495 5B 08            [ 2]  234 	addw	sp, #8
      00A497 1F 03            [ 2]  235 	ldw	(0x03, sp), x
      00A499 17 01            [ 2]  236 	ldw	(0x01, sp), y
                                    237 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 128: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
      00A49B AE 86 A0         [ 2]  238 	ldw	x, #0x86a0
      00A49E 13 0C            [ 2]  239 	cpw	x, (0x0c, sp)
      00A4A0 A6 01            [ 1]  240 	ld	a, #0x01
      00A4A2 12 0B            [ 1]  241 	sbc	a, (0x0b, sp)
      00A4A4 4F               [ 1]  242 	clr	a
      00A4A5 12 0A            [ 1]  243 	sbc	a, (0x0a, sp)
      00A4A7 24 7C            [ 1]  244 	jrnc	00109$
                                    245 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 131: tmpccrh = I2C_CCRH_FS;
      00A4A9 A6 80            [ 1]  246 	ld	a, #0x80
      00A4AB 6B 05            [ 1]  247 	ld	(0x05, sp), a
                                    248 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 133: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
      00A4AD 0D 10            [ 1]  249 	tnz	(0x10, sp)
      00A4AF 26 21            [ 1]  250 	jrne	00102$
                                    251 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 136: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
      00A4B1 1E 0C            [ 2]  252 	ldw	x, (0x0c, sp)
      00A4B3 89               [ 2]  253 	pushw	x
      00A4B4 1E 0C            [ 2]  254 	ldw	x, (0x0c, sp)
      00A4B6 89               [ 2]  255 	pushw	x
      00A4B7 4B 03            [ 1]  256 	push	#0x03
      00A4B9 5F               [ 1]  257 	clrw	x
      00A4BA 89               [ 2]  258 	pushw	x
      00A4BB 4B 00            [ 1]  259 	push	#0x00
      00A4BD CD DD 34         [ 4]  260 	call	__mullong
      00A4C0 5B 08            [ 2]  261 	addw	sp, #8
      00A4C2 89               [ 2]  262 	pushw	x
      00A4C3 90 89            [ 2]  263 	pushw	y
      00A4C5 1E 07            [ 2]  264 	ldw	x, (0x07, sp)
      00A4C7 89               [ 2]  265 	pushw	x
      00A4C8 1E 07            [ 2]  266 	ldw	x, (0x07, sp)
      00A4CA 89               [ 2]  267 	pushw	x
      00A4CB CD DC DA         [ 4]  268 	call	__divulong
      00A4CE 5B 08            [ 2]  269 	addw	sp, #8
      00A4D0 20 26            [ 2]  270 	jra	00103$
      00A4D2                        271 00102$:
                                    272 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 141: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
      00A4D2 1E 0C            [ 2]  273 	ldw	x, (0x0c, sp)
      00A4D4 89               [ 2]  274 	pushw	x
      00A4D5 1E 0C            [ 2]  275 	ldw	x, (0x0c, sp)
      00A4D7 89               [ 2]  276 	pushw	x
      00A4D8 4B 19            [ 1]  277 	push	#0x19
      00A4DA 5F               [ 1]  278 	clrw	x
      00A4DB 89               [ 2]  279 	pushw	x
      00A4DC 4B 00            [ 1]  280 	push	#0x00
      00A4DE CD DD 34         [ 4]  281 	call	__mullong
      00A4E1 5B 08            [ 2]  282 	addw	sp, #8
      00A4E3 9F               [ 1]  283 	ld	a, xl
      00A4E4 88               [ 1]  284 	push	a
      00A4E5 9E               [ 1]  285 	ld	a, xh
      00A4E6 88               [ 1]  286 	push	a
      00A4E7 90 89            [ 2]  287 	pushw	y
      00A4E9 1E 07            [ 2]  288 	ldw	x, (0x07, sp)
      00A4EB 89               [ 2]  289 	pushw	x
      00A4EC 1E 07            [ 2]  290 	ldw	x, (0x07, sp)
      00A4EE 89               [ 2]  291 	pushw	x
      00A4EF CD DC DA         [ 4]  292 	call	__divulong
      00A4F2 5B 08            [ 2]  293 	addw	sp, #8
                                    294 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 143: tmpccrh |= I2C_CCRH_DUTY;
      00A4F4 A6 C0            [ 1]  295 	ld	a, #0xc0
      00A4F6 6B 05            [ 1]  296 	ld	(0x05, sp), a
      00A4F8                        297 00103$:
                                    298 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 147: if (result < (uint16_t)0x01)
      00A4F8 A3 00 01         [ 2]  299 	cpw	x, #0x0001
      00A4FB 24 02            [ 1]  300 	jrnc	00105$
                                    301 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 150: result = (uint16_t)0x0001;
      00A4FD 5F               [ 1]  302 	clrw	x
      00A4FE 5C               [ 1]  303 	incw	x
      00A4FF                        304 00105$:
                                    305 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 156: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
      00A4FF 7B 13            [ 1]  306 	ld	a, (0x13, sp)
      00A501 6B 07            [ 1]  307 	ld	(0x07, sp), a
      00A503 0F 06            [ 1]  308 	clr	(0x06, sp)
      00A505 89               [ 2]  309 	pushw	x
      00A506 1E 08            [ 2]  310 	ldw	x, (0x08, sp)
      00A508 58               [ 2]  311 	sllw	x
      00A509 72 FB 08         [ 2]  312 	addw	x, (0x08, sp)
      00A50C 51               [ 1]  313 	exgw	x, y
      00A50D 85               [ 2]  314 	popw	x
      00A50E 89               [ 2]  315 	pushw	x
      00A50F 4B 0A            [ 1]  316 	push	#0x0a
      00A511 4B 00            [ 1]  317 	push	#0x00
      00A513 90 89            [ 2]  318 	pushw	y
      00A515 CD DD B0         [ 4]  319 	call	__divsint
      00A518 5B 04            [ 2]  320 	addw	sp, #4
      00A51A 1F 08            [ 2]  321 	ldw	(0x08, sp), x
      00A51C 85               [ 2]  322 	popw	x
      00A51D 7B 07            [ 1]  323 	ld	a, (0x07, sp)
      00A51F 4C               [ 1]  324 	inc	a
                                    325 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 157: I2C->TRISER = (uint8_t)tmpval;
      00A520 C7 52 1D         [ 1]  326 	ld	0x521d, a
      00A523 20 23            [ 2]  327 	jra	00110$
      00A525                        328 00109$:
                                    329 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 164: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
      00A525 1E 0C            [ 2]  330 	ldw	x, (0x0c, sp)
      00A527 16 0A            [ 2]  331 	ldw	y, (0x0a, sp)
      00A529 58               [ 2]  332 	sllw	x
      00A52A 90 59            [ 2]  333 	rlcw	y
      00A52C 89               [ 2]  334 	pushw	x
      00A52D 90 89            [ 2]  335 	pushw	y
      00A52F 1E 07            [ 2]  336 	ldw	x, (0x07, sp)
      00A531 89               [ 2]  337 	pushw	x
      00A532 1E 07            [ 2]  338 	ldw	x, (0x07, sp)
      00A534 89               [ 2]  339 	pushw	x
      00A535 CD DC DA         [ 4]  340 	call	__divulong
      00A538 5B 08            [ 2]  341 	addw	sp, #8
                                    342 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 167: if (result < (uint16_t)0x0004)
      00A53A A3 00 04         [ 2]  343 	cpw	x, #0x0004
      00A53D 24 03            [ 1]  344 	jrnc	00107$
                                    345 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 170: result = (uint16_t)0x0004;
      00A53F AE 00 04         [ 2]  346 	ldw	x, #0x0004
      00A542                        347 00107$:
                                    348 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 176: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
      00A542 7B 13            [ 1]  349 	ld	a, (0x13, sp)
      00A544 4C               [ 1]  350 	inc	a
      00A545 C7 52 1D         [ 1]  351 	ld	0x521d, a
      00A548                        352 00110$:
                                    353 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 181: I2C->CCRL = (uint8_t)result;
      00A548 9F               [ 1]  354 	ld	a, xl
      00A549 C7 52 1B         [ 1]  355 	ld	0x521b, a
                                    356 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 182: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
      00A54C 9E               [ 1]  357 	ld	a, xh
      00A54D A4 0F            [ 1]  358 	and	a, #0x0f
      00A54F 1A 05            [ 1]  359 	or	a, (0x05, sp)
      00A551 C7 52 1C         [ 1]  360 	ld	0x521c, a
                                    361 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 185: I2C->CR1 |= I2C_CR1_PE;
      00A554 72 10 52 10      [ 1]  362 	bset	21008, #0
                                    363 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 188: I2C_AcknowledgeConfig(Ack);
      00A558 7B 11            [ 1]  364 	ld	a, (0x11, sp)
      00A55A 88               [ 1]  365 	push	a
      00A55B CD A6 7F         [ 4]  366 	call	_I2C_AcknowledgeConfig
      00A55E 84               [ 1]  367 	pop	a
                                    368 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 191: I2C->OARL = (uint8_t)(OwnAddress);
      00A55F 7B 0F            [ 1]  369 	ld	a, (0x0f, sp)
      00A561 C7 52 13         [ 1]  370 	ld	0x5213, a
                                    371 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 192: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
      00A564 7B 12            [ 1]  372 	ld	a, (0x12, sp)
      00A566 AA 40            [ 1]  373 	or	a, #0x40
      00A568 6B 07            [ 1]  374 	ld	(0x07, sp), a
                                    375 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 193: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
      00A56A 4F               [ 1]  376 	clr	a
      00A56B 97               [ 1]  377 	ld	xl, a
      00A56C 7B 0E            [ 1]  378 	ld	a, (0x0e, sp)
      00A56E A4 03            [ 1]  379 	and	a, #0x03
      00A570 95               [ 1]  380 	ld	xh, a
      00A571 A6 80            [ 1]  381 	ld	a, #0x80
      00A573 62               [ 2]  382 	div	x, a
      00A574 9F               [ 1]  383 	ld	a, xl
      00A575 1A 07            [ 1]  384 	or	a, (0x07, sp)
      00A577 C7 52 14         [ 1]  385 	ld	0x5214, a
                                    386 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 194: }
      00A57A 5B 07            [ 2]  387 	addw	sp, #7
      00A57C 81               [ 4]  388 	ret
                                    389 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 202: void I2C_Cmd(FunctionalState NewState)
                                    390 ;	-----------------------------------------
                                    391 ;	 function I2C_Cmd
                                    392 ;	-----------------------------------------
      00A57D                        393 _I2C_Cmd:
                                    394 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 205: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A57D 0D 03            [ 1]  395 	tnz	(0x03, sp)
      00A57F 27 14            [ 1]  396 	jreq	00107$
      00A581 7B 03            [ 1]  397 	ld	a, (0x03, sp)
      00A583 4A               [ 1]  398 	dec	a
      00A584 27 0F            [ 1]  399 	jreq	00107$
      00A586 4B CD            [ 1]  400 	push	#0xcd
      00A588 5F               [ 1]  401 	clrw	x
      00A589 89               [ 2]  402 	pushw	x
      00A58A 4B 00            [ 1]  403 	push	#0x00
      00A58C 4B 9F            [ 1]  404 	push	#<(___str_0+0)
      00A58E 4B 83            [ 1]  405 	push	#((___str_0+0) >> 8)
      00A590 CD 00 00         [ 4]  406 	call	_assert_failed
      00A593 5B 06            [ 2]  407 	addw	sp, #6
      00A595                        408 00107$:
                                    409 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      00A595 C6 52 10         [ 1]  410 	ld	a, 0x5210
                                    411 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 207: if (NewState != DISABLE)
      00A598 0D 03            [ 1]  412 	tnz	(0x03, sp)
      00A59A 27 06            [ 1]  413 	jreq	00102$
                                    414 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 210: I2C->CR1 |= I2C_CR1_PE;
      00A59C AA 01            [ 1]  415 	or	a, #0x01
      00A59E C7 52 10         [ 1]  416 	ld	0x5210, a
      00A5A1 81               [ 4]  417 	ret
      00A5A2                        418 00102$:
                                    419 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 215: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
      00A5A2 A4 FE            [ 1]  420 	and	a, #0xfe
      00A5A4 C7 52 10         [ 1]  421 	ld	0x5210, a
                                    422 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 217: }
      00A5A7 81               [ 4]  423 	ret
                                    424 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 225: void I2C_GeneralCallCmd(FunctionalState NewState)
                                    425 ;	-----------------------------------------
                                    426 ;	 function I2C_GeneralCallCmd
                                    427 ;	-----------------------------------------
      00A5A8                        428 _I2C_GeneralCallCmd:
                                    429 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 228: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A5A8 0D 03            [ 1]  430 	tnz	(0x03, sp)
      00A5AA 27 14            [ 1]  431 	jreq	00107$
      00A5AC 7B 03            [ 1]  432 	ld	a, (0x03, sp)
      00A5AE 4A               [ 1]  433 	dec	a
      00A5AF 27 0F            [ 1]  434 	jreq	00107$
      00A5B1 4B E4            [ 1]  435 	push	#0xe4
      00A5B3 5F               [ 1]  436 	clrw	x
      00A5B4 89               [ 2]  437 	pushw	x
      00A5B5 4B 00            [ 1]  438 	push	#0x00
      00A5B7 4B 9F            [ 1]  439 	push	#<(___str_0+0)
      00A5B9 4B 83            [ 1]  440 	push	#((___str_0+0) >> 8)
      00A5BB CD 00 00         [ 4]  441 	call	_assert_failed
      00A5BE 5B 06            [ 2]  442 	addw	sp, #6
      00A5C0                        443 00107$:
                                    444 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      00A5C0 C6 52 10         [ 1]  445 	ld	a, 0x5210
                                    446 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 230: if (NewState != DISABLE)
      00A5C3 0D 03            [ 1]  447 	tnz	(0x03, sp)
      00A5C5 27 06            [ 1]  448 	jreq	00102$
                                    449 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 233: I2C->CR1 |= I2C_CR1_ENGC;
      00A5C7 AA 40            [ 1]  450 	or	a, #0x40
      00A5C9 C7 52 10         [ 1]  451 	ld	0x5210, a
      00A5CC 81               [ 4]  452 	ret
      00A5CD                        453 00102$:
                                    454 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 238: I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
      00A5CD A4 BF            [ 1]  455 	and	a, #0xbf
      00A5CF C7 52 10         [ 1]  456 	ld	0x5210, a
                                    457 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 240: }
      00A5D2 81               [ 4]  458 	ret
                                    459 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 250: void I2C_GenerateSTART(FunctionalState NewState)
                                    460 ;	-----------------------------------------
                                    461 ;	 function I2C_GenerateSTART
                                    462 ;	-----------------------------------------
      00A5D3                        463 _I2C_GenerateSTART:
                                    464 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 253: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A5D3 0D 03            [ 1]  465 	tnz	(0x03, sp)
      00A5D5 27 14            [ 1]  466 	jreq	00107$
      00A5D7 7B 03            [ 1]  467 	ld	a, (0x03, sp)
      00A5D9 4A               [ 1]  468 	dec	a
      00A5DA 27 0F            [ 1]  469 	jreq	00107$
      00A5DC 4B FD            [ 1]  470 	push	#0xfd
      00A5DE 5F               [ 1]  471 	clrw	x
      00A5DF 89               [ 2]  472 	pushw	x
      00A5E0 4B 00            [ 1]  473 	push	#0x00
      00A5E2 4B 9F            [ 1]  474 	push	#<(___str_0+0)
      00A5E4 4B 83            [ 1]  475 	push	#((___str_0+0) >> 8)
      00A5E6 CD 00 00         [ 4]  476 	call	_assert_failed
      00A5E9 5B 06            [ 2]  477 	addw	sp, #6
      00A5EB                        478 00107$:
                                    479 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      00A5EB C6 52 11         [ 1]  480 	ld	a, 0x5211
                                    481 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 255: if (NewState != DISABLE)
      00A5EE 0D 03            [ 1]  482 	tnz	(0x03, sp)
      00A5F0 27 06            [ 1]  483 	jreq	00102$
                                    484 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 258: I2C->CR2 |= I2C_CR2_START;
      00A5F2 AA 01            [ 1]  485 	or	a, #0x01
      00A5F4 C7 52 11         [ 1]  486 	ld	0x5211, a
      00A5F7 81               [ 4]  487 	ret
      00A5F8                        488 00102$:
                                    489 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 263: I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
      00A5F8 A4 FE            [ 1]  490 	and	a, #0xfe
      00A5FA C7 52 11         [ 1]  491 	ld	0x5211, a
                                    492 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 265: }
      00A5FD 81               [ 4]  493 	ret
                                    494 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 273: void I2C_GenerateSTOP(FunctionalState NewState)
                                    495 ;	-----------------------------------------
                                    496 ;	 function I2C_GenerateSTOP
                                    497 ;	-----------------------------------------
      00A5FE                        498 _I2C_GenerateSTOP:
                                    499 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 276: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A5FE 0D 03            [ 1]  500 	tnz	(0x03, sp)
      00A600 27 14            [ 1]  501 	jreq	00107$
      00A602 7B 03            [ 1]  502 	ld	a, (0x03, sp)
      00A604 4A               [ 1]  503 	dec	a
      00A605 27 0F            [ 1]  504 	jreq	00107$
      00A607 4B 14            [ 1]  505 	push	#0x14
      00A609 4B 01            [ 1]  506 	push	#0x01
      00A60B 5F               [ 1]  507 	clrw	x
      00A60C 89               [ 2]  508 	pushw	x
      00A60D 4B 9F            [ 1]  509 	push	#<(___str_0+0)
      00A60F 4B 83            [ 1]  510 	push	#((___str_0+0) >> 8)
      00A611 CD 00 00         [ 4]  511 	call	_assert_failed
      00A614 5B 06            [ 2]  512 	addw	sp, #6
      00A616                        513 00107$:
                                    514 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      00A616 C6 52 11         [ 1]  515 	ld	a, 0x5211
                                    516 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 278: if (NewState != DISABLE)
      00A619 0D 03            [ 1]  517 	tnz	(0x03, sp)
      00A61B 27 06            [ 1]  518 	jreq	00102$
                                    519 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 281: I2C->CR2 |= I2C_CR2_STOP;
      00A61D AA 02            [ 1]  520 	or	a, #0x02
      00A61F C7 52 11         [ 1]  521 	ld	0x5211, a
      00A622 81               [ 4]  522 	ret
      00A623                        523 00102$:
                                    524 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 286: I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
      00A623 A4 FD            [ 1]  525 	and	a, #0xfd
      00A625 C7 52 11         [ 1]  526 	ld	0x5211, a
                                    527 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 288: }
      00A628 81               [ 4]  528 	ret
                                    529 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 296: void I2C_SoftwareResetCmd(FunctionalState NewState)
                                    530 ;	-----------------------------------------
                                    531 ;	 function I2C_SoftwareResetCmd
                                    532 ;	-----------------------------------------
      00A629                        533 _I2C_SoftwareResetCmd:
                                    534 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 299: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A629 0D 03            [ 1]  535 	tnz	(0x03, sp)
      00A62B 27 14            [ 1]  536 	jreq	00107$
      00A62D 7B 03            [ 1]  537 	ld	a, (0x03, sp)
      00A62F 4A               [ 1]  538 	dec	a
      00A630 27 0F            [ 1]  539 	jreq	00107$
      00A632 4B 2B            [ 1]  540 	push	#0x2b
      00A634 4B 01            [ 1]  541 	push	#0x01
      00A636 5F               [ 1]  542 	clrw	x
      00A637 89               [ 2]  543 	pushw	x
      00A638 4B 9F            [ 1]  544 	push	#<(___str_0+0)
      00A63A 4B 83            [ 1]  545 	push	#((___str_0+0) >> 8)
      00A63C CD 00 00         [ 4]  546 	call	_assert_failed
      00A63F 5B 06            [ 2]  547 	addw	sp, #6
      00A641                        548 00107$:
                                    549 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      00A641 C6 52 11         [ 1]  550 	ld	a, 0x5211
                                    551 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 301: if (NewState != DISABLE)
      00A644 0D 03            [ 1]  552 	tnz	(0x03, sp)
      00A646 27 06            [ 1]  553 	jreq	00102$
                                    554 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 304: I2C->CR2 |= I2C_CR2_SWRST;
      00A648 AA 80            [ 1]  555 	or	a, #0x80
      00A64A C7 52 11         [ 1]  556 	ld	0x5211, a
      00A64D 81               [ 4]  557 	ret
      00A64E                        558 00102$:
                                    559 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 309: I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
      00A64E A4 7F            [ 1]  560 	and	a, #0x7f
      00A650 C7 52 11         [ 1]  561 	ld	0x5211, a
                                    562 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 311: }
      00A653 81               [ 4]  563 	ret
                                    564 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 320: void I2C_StretchClockCmd(FunctionalState NewState)
                                    565 ;	-----------------------------------------
                                    566 ;	 function I2C_StretchClockCmd
                                    567 ;	-----------------------------------------
      00A654                        568 _I2C_StretchClockCmd:
                                    569 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 323: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A654 0D 03            [ 1]  570 	tnz	(0x03, sp)
      00A656 27 14            [ 1]  571 	jreq	00107$
      00A658 7B 03            [ 1]  572 	ld	a, (0x03, sp)
      00A65A 4A               [ 1]  573 	dec	a
      00A65B 27 0F            [ 1]  574 	jreq	00107$
      00A65D 4B 43            [ 1]  575 	push	#0x43
      00A65F 4B 01            [ 1]  576 	push	#0x01
      00A661 5F               [ 1]  577 	clrw	x
      00A662 89               [ 2]  578 	pushw	x
      00A663 4B 9F            [ 1]  579 	push	#<(___str_0+0)
      00A665 4B 83            [ 1]  580 	push	#((___str_0+0) >> 8)
      00A667 CD 00 00         [ 4]  581 	call	_assert_failed
      00A66A 5B 06            [ 2]  582 	addw	sp, #6
      00A66C                        583 00107$:
                                    584 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      00A66C C6 52 10         [ 1]  585 	ld	a, 0x5210
                                    586 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 325: if (NewState != DISABLE)
      00A66F 0D 03            [ 1]  587 	tnz	(0x03, sp)
      00A671 27 06            [ 1]  588 	jreq	00102$
                                    589 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 328: I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
      00A673 A4 7F            [ 1]  590 	and	a, #0x7f
      00A675 C7 52 10         [ 1]  591 	ld	0x5210, a
      00A678 81               [ 4]  592 	ret
      00A679                        593 00102$:
                                    594 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 334: I2C->CR1 |= I2C_CR1_NOSTRETCH;
      00A679 AA 80            [ 1]  595 	or	a, #0x80
      00A67B C7 52 10         [ 1]  596 	ld	0x5210, a
                                    597 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 336: }
      00A67E 81               [ 4]  598 	ret
                                    599 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 345: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
                                    600 ;	-----------------------------------------
                                    601 ;	 function I2C_AcknowledgeConfig
                                    602 ;	-----------------------------------------
      00A67F                        603 _I2C_AcknowledgeConfig:
      00A67F 88               [ 1]  604 	push	a
                                    605 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 348: assert_param(IS_I2C_ACK_OK(Ack));
      00A680 7B 04            [ 1]  606 	ld	a, (0x04, sp)
      00A682 4A               [ 1]  607 	dec	a
      00A683 26 05            [ 1]  608 	jrne	00143$
      00A685 A6 01            [ 1]  609 	ld	a, #0x01
      00A687 6B 01            [ 1]  610 	ld	(0x01, sp), a
      00A689 C5                     611 	.byte 0xc5
      00A68A                        612 00143$:
      00A68A 0F 01            [ 1]  613 	clr	(0x01, sp)
      00A68C                        614 00144$:
      00A68C 0D 04            [ 1]  615 	tnz	(0x04, sp)
      00A68E 27 19            [ 1]  616 	jreq	00110$
      00A690 0D 01            [ 1]  617 	tnz	(0x01, sp)
      00A692 26 15            [ 1]  618 	jrne	00110$
      00A694 7B 04            [ 1]  619 	ld	a, (0x04, sp)
      00A696 A1 02            [ 1]  620 	cp	a, #0x02
      00A698 27 0F            [ 1]  621 	jreq	00110$
      00A69A 4B 5C            [ 1]  622 	push	#0x5c
      00A69C 4B 01            [ 1]  623 	push	#0x01
      00A69E 5F               [ 1]  624 	clrw	x
      00A69F 89               [ 2]  625 	pushw	x
      00A6A0 4B 9F            [ 1]  626 	push	#<(___str_0+0)
      00A6A2 4B 83            [ 1]  627 	push	#((___str_0+0) >> 8)
      00A6A4 CD 00 00         [ 4]  628 	call	_assert_failed
      00A6A7 5B 06            [ 2]  629 	addw	sp, #6
      00A6A9                        630 00110$:
                                    631 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      00A6A9 C6 52 11         [ 1]  632 	ld	a, 0x5211
                                    633 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 350: if (Ack == I2C_ACK_NONE)
      00A6AC 0D 04            [ 1]  634 	tnz	(0x04, sp)
      00A6AE 26 07            [ 1]  635 	jrne	00105$
                                    636 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      00A6B0 A4 FB            [ 1]  637 	and	a, #0xfb
      00A6B2 C7 52 11         [ 1]  638 	ld	0x5211, a
      00A6B5 20 1B            [ 2]  639 	jra	00107$
      00A6B7                        640 00105$:
                                    641 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 358: I2C->CR2 |= I2C_CR2_ACK;
      00A6B7 AA 04            [ 1]  642 	or	a, #0x04
      00A6B9 C7 52 11         [ 1]  643 	ld	0x5211, a
                                    644 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 353: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
      00A6BC C6 52 11         [ 1]  645 	ld	a, 0x5211
      00A6BF 97               [ 1]  646 	ld	xl, a
                                    647 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 360: if (Ack == I2C_ACK_CURR)
      00A6C0 7B 01            [ 1]  648 	ld	a, (0x01, sp)
      00A6C2 27 08            [ 1]  649 	jreq	00102$
                                    650 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 363: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
      00A6C4 9F               [ 1]  651 	ld	a, xl
      00A6C5 A4 F7            [ 1]  652 	and	a, #0xf7
      00A6C7 C7 52 11         [ 1]  653 	ld	0x5211, a
      00A6CA 20 06            [ 2]  654 	jra	00107$
      00A6CC                        655 00102$:
                                    656 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 368: I2C->CR2 |= I2C_CR2_POS;
      00A6CC 9F               [ 1]  657 	ld	a, xl
      00A6CD AA 08            [ 1]  658 	or	a, #0x08
      00A6CF C7 52 11         [ 1]  659 	ld	0x5211, a
      00A6D2                        660 00107$:
                                    661 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 371: }
      00A6D2 84               [ 1]  662 	pop	a
      00A6D3 81               [ 4]  663 	ret
                                    664 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 381: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
                                    665 ;	-----------------------------------------
                                    666 ;	 function I2C_ITConfig
                                    667 ;	-----------------------------------------
      00A6D4                        668 _I2C_ITConfig:
      00A6D4 88               [ 1]  669 	push	a
                                    670 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 384: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
      00A6D5 7B 04            [ 1]  671 	ld	a, (0x04, sp)
      00A6D7 4A               [ 1]  672 	dec	a
      00A6D8 27 33            [ 1]  673 	jreq	00107$
      00A6DA 7B 04            [ 1]  674 	ld	a, (0x04, sp)
      00A6DC A1 02            [ 1]  675 	cp	a, #0x02
      00A6DE 27 2D            [ 1]  676 	jreq	00107$
      00A6E0 7B 04            [ 1]  677 	ld	a, (0x04, sp)
      00A6E2 A1 04            [ 1]  678 	cp	a, #0x04
      00A6E4 27 27            [ 1]  679 	jreq	00107$
      00A6E6 7B 04            [ 1]  680 	ld	a, (0x04, sp)
      00A6E8 A1 03            [ 1]  681 	cp	a, #0x03
      00A6EA 27 21            [ 1]  682 	jreq	00107$
      00A6EC 7B 04            [ 1]  683 	ld	a, (0x04, sp)
      00A6EE A1 05            [ 1]  684 	cp	a, #0x05
      00A6F0 27 1B            [ 1]  685 	jreq	00107$
      00A6F2 7B 04            [ 1]  686 	ld	a, (0x04, sp)
      00A6F4 A1 06            [ 1]  687 	cp	a, #0x06
      00A6F6 27 15            [ 1]  688 	jreq	00107$
      00A6F8 7B 04            [ 1]  689 	ld	a, (0x04, sp)
      00A6FA A1 07            [ 1]  690 	cp	a, #0x07
      00A6FC 27 0F            [ 1]  691 	jreq	00107$
      00A6FE 4B 80            [ 1]  692 	push	#0x80
      00A700 4B 01            [ 1]  693 	push	#0x01
      00A702 5F               [ 1]  694 	clrw	x
      00A703 89               [ 2]  695 	pushw	x
      00A704 4B 9F            [ 1]  696 	push	#<(___str_0+0)
      00A706 4B 83            [ 1]  697 	push	#((___str_0+0) >> 8)
      00A708 CD 00 00         [ 4]  698 	call	_assert_failed
      00A70B 5B 06            [ 2]  699 	addw	sp, #6
      00A70D                        700 00107$:
                                    701 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 385: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A70D 0D 05            [ 1]  702 	tnz	(0x05, sp)
      00A70F 27 14            [ 1]  703 	jreq	00127$
      00A711 7B 05            [ 1]  704 	ld	a, (0x05, sp)
      00A713 4A               [ 1]  705 	dec	a
      00A714 27 0F            [ 1]  706 	jreq	00127$
      00A716 4B 81            [ 1]  707 	push	#0x81
      00A718 4B 01            [ 1]  708 	push	#0x01
      00A71A 5F               [ 1]  709 	clrw	x
      00A71B 89               [ 2]  710 	pushw	x
      00A71C 4B 9F            [ 1]  711 	push	#<(___str_0+0)
      00A71E 4B 83            [ 1]  712 	push	#((___str_0+0) >> 8)
      00A720 CD 00 00         [ 4]  713 	call	_assert_failed
      00A723 5B 06            [ 2]  714 	addw	sp, #6
      00A725                        715 00127$:
                                    716 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      00A725 C6 52 1A         [ 1]  717 	ld	a, 0x521a
                                    718 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 387: if (NewState != DISABLE)
      00A728 0D 05            [ 1]  719 	tnz	(0x05, sp)
      00A72A 27 07            [ 1]  720 	jreq	00102$
                                    721 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 390: I2C->ITR |= (uint8_t)I2C_IT;
      00A72C 1A 04            [ 1]  722 	or	a, (0x04, sp)
      00A72E C7 52 1A         [ 1]  723 	ld	0x521a, a
      00A731 20 0C            [ 2]  724 	jra	00104$
      00A733                        725 00102$:
                                    726 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 395: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
      00A733 88               [ 1]  727 	push	a
      00A734 7B 05            [ 1]  728 	ld	a, (0x05, sp)
      00A736 43               [ 1]  729 	cpl	a
      00A737 6B 02            [ 1]  730 	ld	(0x02, sp), a
      00A739 84               [ 1]  731 	pop	a
      00A73A 14 01            [ 1]  732 	and	a, (0x01, sp)
      00A73C C7 52 1A         [ 1]  733 	ld	0x521a, a
      00A73F                        734 00104$:
                                    735 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 397: }
      00A73F 84               [ 1]  736 	pop	a
      00A740 81               [ 4]  737 	ret
                                    738 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 405: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
                                    739 ;	-----------------------------------------
                                    740 ;	 function I2C_FastModeDutyCycleConfig
                                    741 ;	-----------------------------------------
      00A741                        742 _I2C_FastModeDutyCycleConfig:
                                    743 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 408: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
      00A741 7B 03            [ 1]  744 	ld	a, (0x03, sp)
      00A743 A0 40            [ 1]  745 	sub	a, #0x40
      00A745 26 02            [ 1]  746 	jrne	00127$
      00A747 4C               [ 1]  747 	inc	a
      00A748 21                     748 	.byte 0x21
      00A749                        749 00127$:
      00A749 4F               [ 1]  750 	clr	a
      00A74A                        751 00128$:
      00A74A 0D 03            [ 1]  752 	tnz	(0x03, sp)
      00A74C 27 14            [ 1]  753 	jreq	00107$
      00A74E 4D               [ 1]  754 	tnz	a
      00A74F 26 11            [ 1]  755 	jrne	00107$
      00A751 88               [ 1]  756 	push	a
      00A752 4B 98            [ 1]  757 	push	#0x98
      00A754 4B 01            [ 1]  758 	push	#0x01
      00A756 5F               [ 1]  759 	clrw	x
      00A757 89               [ 2]  760 	pushw	x
      00A758 4B 9F            [ 1]  761 	push	#<(___str_0+0)
      00A75A 4B 83            [ 1]  762 	push	#((___str_0+0) >> 8)
      00A75C CD 00 00         [ 4]  763 	call	_assert_failed
      00A75F 5B 06            [ 2]  764 	addw	sp, #6
      00A761 84               [ 1]  765 	pop	a
      00A762                        766 00107$:
                                    767 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      00A762 AE 52 1C         [ 2]  768 	ldw	x, #0x521c
      00A765 88               [ 1]  769 	push	a
      00A766 F6               [ 1]  770 	ld	a, (x)
      00A767 97               [ 1]  771 	ld	xl, a
      00A768 84               [ 1]  772 	pop	a
                                    773 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 410: if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
      00A769 4D               [ 1]  774 	tnz	a
      00A76A 27 07            [ 1]  775 	jreq	00102$
                                    776 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 413: I2C->CCRH |= I2C_CCRH_DUTY;
      00A76C 9F               [ 1]  777 	ld	a, xl
      00A76D AA 40            [ 1]  778 	or	a, #0x40
      00A76F C7 52 1C         [ 1]  779 	ld	0x521c, a
      00A772 81               [ 4]  780 	ret
      00A773                        781 00102$:
                                    782 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 418: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
      00A773 9F               [ 1]  783 	ld	a, xl
      00A774 A4 BF            [ 1]  784 	and	a, #0xbf
      00A776 C7 52 1C         [ 1]  785 	ld	0x521c, a
                                    786 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 420: }
      00A779 81               [ 4]  787 	ret
                                    788 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 427: uint8_t I2C_ReceiveData(void)
                                    789 ;	-----------------------------------------
                                    790 ;	 function I2C_ReceiveData
                                    791 ;	-----------------------------------------
      00A77A                        792 _I2C_ReceiveData:
                                    793 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 430: return ((uint8_t)I2C->DR);
      00A77A C6 52 16         [ 1]  794 	ld	a, 0x5216
                                    795 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 431: }
      00A77D 81               [ 4]  796 	ret
                                    797 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 440: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
                                    798 ;	-----------------------------------------
                                    799 ;	 function I2C_Send7bitAddress
                                    800 ;	-----------------------------------------
      00A77E                        801 _I2C_Send7bitAddress:
                                    802 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 443: assert_param(IS_I2C_ADDRESS_OK(Address));
      00A77E 7B 03            [ 1]  803 	ld	a, (0x03, sp)
      00A780 44               [ 1]  804 	srl	a
      00A781 24 0F            [ 1]  805 	jrnc	00104$
      00A783 4B BB            [ 1]  806 	push	#0xbb
      00A785 4B 01            [ 1]  807 	push	#0x01
      00A787 5F               [ 1]  808 	clrw	x
      00A788 89               [ 2]  809 	pushw	x
      00A789 4B 9F            [ 1]  810 	push	#<(___str_0+0)
      00A78B 4B 83            [ 1]  811 	push	#((___str_0+0) >> 8)
      00A78D CD 00 00         [ 4]  812 	call	_assert_failed
      00A790 5B 06            [ 2]  813 	addw	sp, #6
      00A792                        814 00104$:
                                    815 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 444: assert_param(IS_I2C_DIRECTION_OK(Direction));
      00A792 0D 04            [ 1]  816 	tnz	(0x04, sp)
      00A794 27 14            [ 1]  817 	jreq	00106$
      00A796 7B 04            [ 1]  818 	ld	a, (0x04, sp)
      00A798 4A               [ 1]  819 	dec	a
      00A799 27 0F            [ 1]  820 	jreq	00106$
      00A79B 4B BC            [ 1]  821 	push	#0xbc
      00A79D 4B 01            [ 1]  822 	push	#0x01
      00A79F 5F               [ 1]  823 	clrw	x
      00A7A0 89               [ 2]  824 	pushw	x
      00A7A1 4B 9F            [ 1]  825 	push	#<(___str_0+0)
      00A7A3 4B 83            [ 1]  826 	push	#((___str_0+0) >> 8)
      00A7A5 CD 00 00         [ 4]  827 	call	_assert_failed
      00A7A8 5B 06            [ 2]  828 	addw	sp, #6
      00A7AA                        829 00106$:
                                    830 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 447: Address &= (uint8_t)0xFE;
      00A7AA 04 03            [ 1]  831 	srl	(0x03, sp)
      00A7AC 08 03            [ 1]  832 	sll	(0x03, sp)
                                    833 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 450: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
      00A7AE 7B 03            [ 1]  834 	ld	a, (0x03, sp)
      00A7B0 1A 04            [ 1]  835 	or	a, (0x04, sp)
      00A7B2 C7 52 16         [ 1]  836 	ld	0x5216, a
                                    837 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 451: }
      00A7B5 81               [ 4]  838 	ret
                                    839 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 458: void I2C_SendData(uint8_t Data)
                                    840 ;	-----------------------------------------
                                    841 ;	 function I2C_SendData
                                    842 ;	-----------------------------------------
      00A7B6                        843 _I2C_SendData:
                                    844 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 461: I2C->DR = Data;
      00A7B6 AE 52 16         [ 2]  845 	ldw	x, #0x5216
      00A7B9 7B 03            [ 1]  846 	ld	a, (0x03, sp)
      00A7BB F7               [ 1]  847 	ld	(x), a
                                    848 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 462: }
      00A7BC 81               [ 4]  849 	ret
                                    850 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 578: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
                                    851 ;	-----------------------------------------
                                    852 ;	 function I2C_CheckEvent
                                    853 ;	-----------------------------------------
      00A7BD                        854 _I2C_CheckEvent:
      00A7BD 52 06            [ 2]  855 	sub	sp, #6
                                    856 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 580: __IO uint16_t lastevent = 0x00;
      00A7BF 5F               [ 1]  857 	clrw	x
      00A7C0 1F 01            [ 2]  858 	ldw	(0x01, sp), x
                                    859 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 586: assert_param(IS_I2C_EVENT_OK(I2C_Event));
      00A7C2 1E 09            [ 2]  860 	ldw	x, (0x09, sp)
      00A7C4 A3 00 04         [ 2]  861 	cpw	x, #0x0004
      00A7C7 26 03            [ 1]  862 	jrne	00247$
      00A7C9 A6 01            [ 1]  863 	ld	a, #0x01
      00A7CB 21                     864 	.byte 0x21
      00A7CC                        865 00247$:
      00A7CC 4F               [ 1]  866 	clr	a
      00A7CD                        867 00248$:
      00A7CD A3 06 82         [ 2]  868 	cpw	x, #0x0682
      00A7D0 27 5E            [ 1]  869 	jreq	00110$
      00A7D2 A3 02 02         [ 2]  870 	cpw	x, #0x0202
      00A7D5 27 59            [ 1]  871 	jreq	00110$
      00A7D7 A3 12 00         [ 2]  872 	cpw	x, #0x1200
      00A7DA 27 54            [ 1]  873 	jreq	00110$
      00A7DC A3 02 40         [ 2]  874 	cpw	x, #0x0240
      00A7DF 27 4F            [ 1]  875 	jreq	00110$
      00A7E1 A3 03 50         [ 2]  876 	cpw	x, #0x0350
      00A7E4 27 4A            [ 1]  877 	jreq	00110$
      00A7E6 A3 06 84         [ 2]  878 	cpw	x, #0x0684
      00A7E9 27 45            [ 1]  879 	jreq	00110$
      00A7EB A3 07 94         [ 2]  880 	cpw	x, #0x0794
      00A7EE 27 40            [ 1]  881 	jreq	00110$
      00A7F0 4D               [ 1]  882 	tnz	a
      00A7F1 26 3D            [ 1]  883 	jrne	00110$
      00A7F3 A3 00 10         [ 2]  884 	cpw	x, #0x0010
      00A7F6 27 38            [ 1]  885 	jreq	00110$
      00A7F8 A3 03 01         [ 2]  886 	cpw	x, #0x0301
      00A7FB 27 33            [ 1]  887 	jreq	00110$
      00A7FD A3 07 82         [ 2]  888 	cpw	x, #0x0782
      00A800 27 2E            [ 1]  889 	jreq	00110$
      00A802 A3 03 02         [ 2]  890 	cpw	x, #0x0302
      00A805 27 29            [ 1]  891 	jreq	00110$
      00A807 A3 03 40         [ 2]  892 	cpw	x, #0x0340
      00A80A 27 24            [ 1]  893 	jreq	00110$
      00A80C A3 07 84         [ 2]  894 	cpw	x, #0x0784
      00A80F 27 1F            [ 1]  895 	jreq	00110$
      00A811 A3 07 80         [ 2]  896 	cpw	x, #0x0780
      00A814 27 1A            [ 1]  897 	jreq	00110$
      00A816 A3 03 08         [ 2]  898 	cpw	x, #0x0308
      00A819 27 15            [ 1]  899 	jreq	00110$
      00A81B 88               [ 1]  900 	push	a
      00A81C 89               [ 2]  901 	pushw	x
      00A81D 4B 4A            [ 1]  902 	push	#0x4a
      00A81F 4B 02            [ 1]  903 	push	#0x02
      00A821 4B 00            [ 1]  904 	push	#0x00
      00A823 4B 00            [ 1]  905 	push	#0x00
      00A825 4B 9F            [ 1]  906 	push	#<(___str_0+0)
      00A827 4B 83            [ 1]  907 	push	#((___str_0+0) >> 8)
      00A829 CD 00 00         [ 4]  908 	call	_assert_failed
      00A82C 5B 06            [ 2]  909 	addw	sp, #6
      00A82E 85               [ 2]  910 	popw	x
      00A82F 84               [ 1]  911 	pop	a
      00A830                        912 00110$:
                                    913 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 588: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
      00A830 4D               [ 1]  914 	tnz	a
      00A831 27 0D            [ 1]  915 	jreq	00102$
                                    916 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 590: lastevent = I2C->SR2 & I2C_SR2_AF;
      00A833 C6 52 18         [ 1]  917 	ld	a, 0x5218
      00A836 A4 04            [ 1]  918 	and	a, #0x04
      00A838 90 5F            [ 1]  919 	clrw	y
      00A83A 90 97            [ 1]  920 	ld	yl, a
      00A83C 17 01            [ 2]  921 	ldw	(0x01, sp), y
      00A83E 20 1A            [ 2]  922 	jra	00103$
      00A840                        923 00102$:
                                    924 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 594: flag1 = I2C->SR1;
      00A840 C6 52 17         [ 1]  925 	ld	a, 0x5217
      00A843 6B 06            [ 1]  926 	ld	(0x06, sp), a
                                    927 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 595: flag2 = I2C->SR3;
      00A845 C6 52 19         [ 1]  928 	ld	a, 0x5219
                                    929 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 596: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
      00A848 90 95            [ 1]  930 	ld	yh, a
      00A84A 0F 04            [ 1]  931 	clr	(0x04, sp)
      00A84C 7B 06            [ 1]  932 	ld	a, (0x06, sp)
      00A84E 0F 05            [ 1]  933 	clr	(0x05, sp)
      00A850 1A 04            [ 1]  934 	or	a, (0x04, sp)
      00A852 90 02            [ 1]  935 	rlwa	y
      00A854 1A 05            [ 1]  936 	or	a, (0x05, sp)
      00A856 90 95            [ 1]  937 	ld	yh, a
      00A858 17 01            [ 2]  938 	ldw	(0x01, sp), y
      00A85A                        939 00103$:
                                    940 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 599: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
      00A85A 9F               [ 1]  941 	ld	a, xl
      00A85B 14 02            [ 1]  942 	and	a, (0x02, sp)
      00A85D 6B 06            [ 1]  943 	ld	(0x06, sp), a
      00A85F 9E               [ 1]  944 	ld	a, xh
      00A860 14 01            [ 1]  945 	and	a, (0x01, sp)
      00A862 6B 05            [ 1]  946 	ld	(0x05, sp), a
      00A864 13 05            [ 2]  947 	cpw	x, (0x05, sp)
      00A866 26 03            [ 1]  948 	jrne	00105$
                                    949 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 602: status = SUCCESS;
      00A868 A6 01            [ 1]  950 	ld	a, #0x01
                                    951 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 607: status = ERROR;
      00A86A 21                     952 	.byte 0x21
      00A86B                        953 00105$:
      00A86B 4F               [ 1]  954 	clr	a
      00A86C                        955 00106$:
                                    956 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 611: return status;
                                    957 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 612: }
      00A86C 5B 06            [ 2]  958 	addw	sp, #6
      00A86E 81               [ 4]  959 	ret
                                    960 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 628: I2C_Event_TypeDef I2C_GetLastEvent(void)
                                    961 ;	-----------------------------------------
                                    962 ;	 function I2C_GetLastEvent
                                    963 ;	-----------------------------------------
      00A86F                        964 _I2C_GetLastEvent:
      00A86F 52 04            [ 2]  965 	sub	sp, #4
                                    966 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 630: __IO uint16_t lastevent = 0;
      00A871 5F               [ 1]  967 	clrw	x
      00A872 1F 01            [ 2]  968 	ldw	(0x01, sp), x
                                    969 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 634: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
      00A874 C6 52 18         [ 1]  970 	ld	a, 0x5218
      00A877 A5 04            [ 1]  971 	bcp	a, #0x04
      00A879 27 07            [ 1]  972 	jreq	00102$
                                    973 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 636: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
      00A87B AE 00 04         [ 2]  974 	ldw	x, #0x0004
      00A87E 1F 01            [ 2]  975 	ldw	(0x01, sp), x
      00A880 20 13            [ 2]  976 	jra	00103$
      00A882                        977 00102$:
                                    978 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 641: flag1 = I2C->SR1;
      00A882 C6 52 17         [ 1]  979 	ld	a, 0x5217
      00A885 5F               [ 1]  980 	clrw	x
      00A886 97               [ 1]  981 	ld	xl, a
      00A887 1F 03            [ 2]  982 	ldw	(0x03, sp), x
                                    983 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 642: flag2 = I2C->SR3;
      00A889 C6 52 19         [ 1]  984 	ld	a, 0x5219
                                    985 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 645: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
      00A88C 95               [ 1]  986 	ld	xh, a
      00A88D 7B 04            [ 1]  987 	ld	a, (0x04, sp)
      00A88F 02               [ 1]  988 	rlwa	x
      00A890 1A 03            [ 1]  989 	or	a, (0x03, sp)
      00A892 95               [ 1]  990 	ld	xh, a
      00A893 1F 01            [ 2]  991 	ldw	(0x01, sp), x
      00A895                        992 00103$:
                                    993 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 648: return (I2C_Event_TypeDef)lastevent;
      00A895 1E 01            [ 2]  994 	ldw	x, (0x01, sp)
                                    995 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 649: }
      00A897 5B 04            [ 2]  996 	addw	sp, #4
      00A899 81               [ 4]  997 	ret
                                    998 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 679: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
                                    999 ;	-----------------------------------------
                                   1000 ;	 function I2C_GetFlagStatus
                                   1001 ;	-----------------------------------------
      00A89A                       1002 _I2C_GetFlagStatus:
      00A89A 88               [ 1] 1003 	push	a
                                   1004 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 681: uint8_t tempreg = 0;
      00A89B 0F 01            [ 1] 1005 	clr	(0x01, sp)
                                   1006 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 686: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
      00A89D 1E 04            [ 2] 1007 	ldw	x, (0x04, sp)
      00A89F A3 01 80         [ 2] 1008 	cpw	x, #0x0180
      00A8A2 27 5E            [ 1] 1009 	jreq	00112$
      00A8A4 A3 01 40         [ 2] 1010 	cpw	x, #0x0140
      00A8A7 27 59            [ 1] 1011 	jreq	00112$
      00A8A9 A3 01 10         [ 2] 1012 	cpw	x, #0x0110
      00A8AC 27 54            [ 1] 1013 	jreq	00112$
      00A8AE A3 01 08         [ 2] 1014 	cpw	x, #0x0108
      00A8B1 27 4F            [ 1] 1015 	jreq	00112$
      00A8B3 A3 01 04         [ 2] 1016 	cpw	x, #0x0104
      00A8B6 27 4A            [ 1] 1017 	jreq	00112$
      00A8B8 A3 01 02         [ 2] 1018 	cpw	x, #0x0102
      00A8BB 27 45            [ 1] 1019 	jreq	00112$
      00A8BD A3 01 01         [ 2] 1020 	cpw	x, #0x0101
      00A8C0 27 40            [ 1] 1021 	jreq	00112$
      00A8C2 A3 02 20         [ 2] 1022 	cpw	x, #0x0220
      00A8C5 27 3B            [ 1] 1023 	jreq	00112$
      00A8C7 A3 02 08         [ 2] 1024 	cpw	x, #0x0208
      00A8CA 27 36            [ 1] 1025 	jreq	00112$
      00A8CC A3 02 04         [ 2] 1026 	cpw	x, #0x0204
      00A8CF 27 31            [ 1] 1027 	jreq	00112$
      00A8D1 A3 02 02         [ 2] 1028 	cpw	x, #0x0202
      00A8D4 27 2C            [ 1] 1029 	jreq	00112$
      00A8D6 A3 02 01         [ 2] 1030 	cpw	x, #0x0201
      00A8D9 27 27            [ 1] 1031 	jreq	00112$
      00A8DB A3 03 10         [ 2] 1032 	cpw	x, #0x0310
      00A8DE 27 22            [ 1] 1033 	jreq	00112$
      00A8E0 A3 03 04         [ 2] 1034 	cpw	x, #0x0304
      00A8E3 27 1D            [ 1] 1035 	jreq	00112$
      00A8E5 A3 03 02         [ 2] 1036 	cpw	x, #0x0302
      00A8E8 27 18            [ 1] 1037 	jreq	00112$
      00A8EA A3 03 01         [ 2] 1038 	cpw	x, #0x0301
      00A8ED 27 13            [ 1] 1039 	jreq	00112$
      00A8EF 89               [ 2] 1040 	pushw	x
      00A8F0 4B AE            [ 1] 1041 	push	#0xae
      00A8F2 4B 02            [ 1] 1042 	push	#0x02
      00A8F4 4B 00            [ 1] 1043 	push	#0x00
      00A8F6 4B 00            [ 1] 1044 	push	#0x00
      00A8F8 4B 9F            [ 1] 1045 	push	#<(___str_0+0)
      00A8FA 4B 83            [ 1] 1046 	push	#((___str_0+0) >> 8)
      00A8FC CD 00 00         [ 4] 1047 	call	_assert_failed
      00A8FF 5B 06            [ 2] 1048 	addw	sp, #6
      00A901 85               [ 2] 1049 	popw	x
      00A902                       1050 00112$:
                                   1051 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 689: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
      00A902 9E               [ 1] 1052 	ld	a, xh
      00A903 5F               [ 1] 1053 	clrw	x
                                   1054 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 691: switch (regindex)
      00A904 A1 01            [ 1] 1055 	cp	a, #0x01
      00A906 27 0A            [ 1] 1056 	jreq	00101$
      00A908 A1 02            [ 1] 1057 	cp	a, #0x02
      00A90A 27 0D            [ 1] 1058 	jreq	00102$
      00A90C A1 03            [ 1] 1059 	cp	a, #0x03
      00A90E 27 10            [ 1] 1060 	jreq	00103$
      00A910 20 13            [ 2] 1061 	jra	00105$
                                   1062 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 694: case 0x01:
      00A912                       1063 00101$:
                                   1064 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 695: tempreg = (uint8_t)I2C->SR1;
      00A912 C6 52 17         [ 1] 1065 	ld	a, 0x5217
      00A915 6B 01            [ 1] 1066 	ld	(0x01, sp), a
                                   1067 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 696: break;
      00A917 20 0C            [ 2] 1068 	jra	00105$
                                   1069 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 699: case 0x02:
      00A919                       1070 00102$:
                                   1071 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 700: tempreg = (uint8_t)I2C->SR2;
      00A919 C6 52 18         [ 1] 1072 	ld	a, 0x5218
      00A91C 6B 01            [ 1] 1073 	ld	(0x01, sp), a
                                   1074 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 701: break;
      00A91E 20 05            [ 2] 1075 	jra	00105$
                                   1076 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 704: case 0x03:
      00A920                       1077 00103$:
                                   1078 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 705: tempreg = (uint8_t)I2C->SR3;
      00A920 C6 52 19         [ 1] 1079 	ld	a, 0x5219
      00A923 6B 01            [ 1] 1080 	ld	(0x01, sp), a
                                   1081 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 710: }
      00A925                       1082 00105$:
                                   1083 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 713: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
      00A925 7B 05            [ 1] 1084 	ld	a, (0x05, sp)
      00A927 14 01            [ 1] 1085 	and	a, (0x01, sp)
      00A929 27 03            [ 1] 1086 	jreq	00107$
                                   1087 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 716: bitstatus = SET;
      00A92B A6 01            [ 1] 1088 	ld	a, #0x01
                                   1089 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 721: bitstatus = RESET;
      00A92D 21                    1090 	.byte 0x21
      00A92E                       1091 00107$:
      00A92E 4F               [ 1] 1092 	clr	a
      00A92F                       1093 00108$:
                                   1094 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 724: return bitstatus;
                                   1095 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 725: }
      00A92F 5B 01            [ 2] 1096 	addw	sp, #1
      00A931 81               [ 4] 1097 	ret
                                   1098 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 759: void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
                                   1099 ;	-----------------------------------------
                                   1100 ;	 function I2C_ClearFlag
                                   1101 ;	-----------------------------------------
      00A932                       1102 _I2C_ClearFlag:
                                   1103 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 763: assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
      00A932 1E 03            [ 2] 1104 	ldw	x, (0x03, sp)
      00A934 9E               [ 1] 1105 	ld	a, xh
      00A935 A5 FD            [ 1] 1106 	bcp	a, #0xfd
      00A937 26 03            [ 1] 1107 	jrne	00103$
      00A939 5D               [ 2] 1108 	tnzw	x
      00A93A 26 13            [ 1] 1109 	jrne	00104$
      00A93C                       1110 00103$:
      00A93C 89               [ 2] 1111 	pushw	x
      00A93D 4B FB            [ 1] 1112 	push	#0xfb
      00A93F 4B 02            [ 1] 1113 	push	#0x02
      00A941 4B 00            [ 1] 1114 	push	#0x00
      00A943 4B 00            [ 1] 1115 	push	#0x00
      00A945 4B 9F            [ 1] 1116 	push	#<(___str_0+0)
      00A947 4B 83            [ 1] 1117 	push	#((___str_0+0) >> 8)
      00A949 CD 00 00         [ 4] 1118 	call	_assert_failed
      00A94C 5B 06            [ 2] 1119 	addw	sp, #6
      00A94E 85               [ 2] 1120 	popw	x
      00A94F                       1121 00104$:
                                   1122 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 766: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
      00A94F 4F               [ 1] 1123 	clr	a
      00A950 95               [ 1] 1124 	ld	xh, a
                                   1125 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 768: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
      00A951 53               [ 2] 1126 	cplw	x
      00A952 9F               [ 1] 1127 	ld	a, xl
      00A953 C7 52 18         [ 1] 1128 	ld	0x5218, a
                                   1129 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 769: }
      00A956 81               [ 4] 1130 	ret
                                   1131 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 791: ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1132 ;	-----------------------------------------
                                   1133 ;	 function I2C_GetITStatus
                                   1134 ;	-----------------------------------------
      00A957                       1135 _I2C_GetITStatus:
      00A957 52 04            [ 2] 1136 	sub	sp, #4
                                   1137 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 794: __IO uint8_t enablestatus = 0;
      00A959 0F 03            [ 1] 1138 	clr	(0x03, sp)
                                   1139 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 798: assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
      00A95B 1E 07            [ 2] 1140 	ldw	x, (0x07, sp)
      00A95D A3 16 80         [ 2] 1141 	cpw	x, #0x1680
      00A960 27 4A            [ 1] 1142 	jreq	00115$
      00A962 A3 16 40         [ 2] 1143 	cpw	x, #0x1640
      00A965 27 45            [ 1] 1144 	jreq	00115$
      00A967 A3 12 10         [ 2] 1145 	cpw	x, #0x1210
      00A96A 27 40            [ 1] 1146 	jreq	00115$
      00A96C A3 12 08         [ 2] 1147 	cpw	x, #0x1208
      00A96F 27 3B            [ 1] 1148 	jreq	00115$
      00A971 A3 12 04         [ 2] 1149 	cpw	x, #0x1204
      00A974 27 36            [ 1] 1150 	jreq	00115$
      00A976 A3 12 02         [ 2] 1151 	cpw	x, #0x1202
      00A979 27 31            [ 1] 1152 	jreq	00115$
      00A97B A3 12 01         [ 2] 1153 	cpw	x, #0x1201
      00A97E 27 2C            [ 1] 1154 	jreq	00115$
      00A980 A3 22 20         [ 2] 1155 	cpw	x, #0x2220
      00A983 27 27            [ 1] 1156 	jreq	00115$
      00A985 A3 21 08         [ 2] 1157 	cpw	x, #0x2108
      00A988 27 22            [ 1] 1158 	jreq	00115$
      00A98A A3 21 04         [ 2] 1159 	cpw	x, #0x2104
      00A98D 27 1D            [ 1] 1160 	jreq	00115$
      00A98F A3 21 02         [ 2] 1161 	cpw	x, #0x2102
      00A992 27 18            [ 1] 1162 	jreq	00115$
      00A994 A3 21 01         [ 2] 1163 	cpw	x, #0x2101
      00A997 27 13            [ 1] 1164 	jreq	00115$
      00A999 89               [ 2] 1165 	pushw	x
      00A99A 4B 1E            [ 1] 1166 	push	#0x1e
      00A99C 4B 03            [ 1] 1167 	push	#0x03
      00A99E 4B 00            [ 1] 1168 	push	#0x00
      00A9A0 4B 00            [ 1] 1169 	push	#0x00
      00A9A2 4B 9F            [ 1] 1170 	push	#<(___str_0+0)
      00A9A4 4B 83            [ 1] 1171 	push	#((___str_0+0) >> 8)
      00A9A6 CD 00 00         [ 4] 1172 	call	_assert_failed
      00A9A9 5B 06            [ 2] 1173 	addw	sp, #6
      00A9AB 85               [ 2] 1174 	popw	x
      00A9AC                       1175 00115$:
                                   1176 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 800: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
      00A9AC 0F 02            [ 1] 1177 	clr	(0x02, sp)
      00A9AE 9E               [ 1] 1178 	ld	a, xh
      00A9AF A4 07            [ 1] 1179 	and	a, #0x07
      00A9B1 6B 04            [ 1] 1180 	ld	(0x04, sp), a
                                   1181 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 803: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
      00A9B3 C6 52 1A         [ 1] 1182 	ld	a, 0x521a
      00A9B6 14 04            [ 1] 1183 	and	a, (0x04, sp)
      00A9B8 6B 03            [ 1] 1184 	ld	(0x03, sp), a
                                   1185 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      00A9BA 4F               [ 1] 1186 	clr	a
      00A9BB 02               [ 1] 1187 	rlwa	x
      00A9BC A4 30            [ 1] 1188 	and	a, #0x30
      00A9BE 95               [ 1] 1189 	ld	xh, a
                                   1190 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      00A9BF 7B 08            [ 1] 1191 	ld	a, (0x08, sp)
      00A9C1 6B 04            [ 1] 1192 	ld	(0x04, sp), a
                                   1193 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 805: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
      00A9C3 A3 01 00         [ 2] 1194 	cpw	x, #0x0100
      00A9C6 26 12            [ 1] 1195 	jrne	00110$
                                   1196 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 808: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      00A9C8 C6 52 17         [ 1] 1197 	ld	a, 0x5217
      00A9CB 14 04            [ 1] 1198 	and	a, (0x04, sp)
      00A9CD 27 08            [ 1] 1199 	jreq	00102$
      00A9CF 0D 03            [ 1] 1200 	tnz	(0x03, sp)
      00A9D1 27 04            [ 1] 1201 	jreq	00102$
                                   1202 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 811: bitstatus = SET;
      00A9D3 A6 01            [ 1] 1203 	ld	a, #0x01
      00A9D5 20 12            [ 2] 1204 	jra	00111$
      00A9D7                       1205 00102$:
                                   1206 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 816: bitstatus = RESET;
      00A9D7 4F               [ 1] 1207 	clr	a
      00A9D8 20 0F            [ 2] 1208 	jra	00111$
      00A9DA                       1209 00110$:
                                   1210 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 822: if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
      00A9DA C6 52 18         [ 1] 1211 	ld	a, 0x5218
      00A9DD 14 04            [ 1] 1212 	and	a, (0x04, sp)
      00A9DF 27 07            [ 1] 1213 	jreq	00106$
      00A9E1 0D 03            [ 1] 1214 	tnz	(0x03, sp)
      00A9E3 27 03            [ 1] 1215 	jreq	00106$
                                   1216 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 825: bitstatus = SET;
      00A9E5 A6 01            [ 1] 1217 	ld	a, #0x01
                                   1218 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 830: bitstatus = RESET;
      00A9E7 21                    1219 	.byte 0x21
      00A9E8                       1220 00106$:
      00A9E8 4F               [ 1] 1221 	clr	a
      00A9E9                       1222 00111$:
                                   1223 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 834: return  bitstatus;
                                   1224 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 835: }
      00A9E9 5B 04            [ 2] 1225 	addw	sp, #4
      00A9EB 81               [ 4] 1226 	ret
                                   1227 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 871: void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
                                   1228 ;	-----------------------------------------
                                   1229 ;	 function I2C_ClearITPendingBit
                                   1230 ;	-----------------------------------------
      00A9EC                       1231 _I2C_ClearITPendingBit:
                                   1232 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 876: assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
      00A9EC 1E 03            [ 2] 1233 	ldw	x, (0x03, sp)
      00A9EE A3 22 20         [ 2] 1234 	cpw	x, #0x2220
      00A9F1 27 27            [ 1] 1235 	jreq	00104$
      00A9F3 A3 21 08         [ 2] 1236 	cpw	x, #0x2108
      00A9F6 27 22            [ 1] 1237 	jreq	00104$
      00A9F8 A3 21 04         [ 2] 1238 	cpw	x, #0x2104
      00A9FB 27 1D            [ 1] 1239 	jreq	00104$
      00A9FD A3 21 02         [ 2] 1240 	cpw	x, #0x2102
      00AA00 27 18            [ 1] 1241 	jreq	00104$
      00AA02 A3 21 01         [ 2] 1242 	cpw	x, #0x2101
      00AA05 27 13            [ 1] 1243 	jreq	00104$
      00AA07 89               [ 2] 1244 	pushw	x
      00AA08 4B 6C            [ 1] 1245 	push	#0x6c
      00AA0A 4B 03            [ 1] 1246 	push	#0x03
      00AA0C 4B 00            [ 1] 1247 	push	#0x00
      00AA0E 4B 00            [ 1] 1248 	push	#0x00
      00AA10 4B 9F            [ 1] 1249 	push	#<(___str_0+0)
      00AA12 4B 83            [ 1] 1250 	push	#((___str_0+0) >> 8)
      00AA14 CD 00 00         [ 4] 1251 	call	_assert_failed
      00AA17 5B 06            [ 2] 1252 	addw	sp, #6
      00AA19 85               [ 2] 1253 	popw	x
      00AA1A                       1254 00104$:
                                   1255 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 879: flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
      00AA1A 4F               [ 1] 1256 	clr	a
      00AA1B 95               [ 1] 1257 	ld	xh, a
                                   1258 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 882: I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
      00AA1C 53               [ 2] 1259 	cplw	x
      00AA1D 9F               [ 1] 1260 	ld	a, xl
      00AA1E C7 52 18         [ 1] 1261 	ld	0x5218, a
                                   1262 ;	C:\Users\Admin\.platformio\packages\framework-ststm8spl\Libraries\STM8S_StdPeriph_Driver\src\stm8s_i2c.c: 883: }
      00AA21 81               [ 4] 1263 	ret
                                   1264 	.area CODE
                                   1265 	.area CONST
                                   1266 	.area CONST
      00839F                       1267 ___str_0:
      00839F 43 3A                 1268 	.ascii "C:"
      0083A1 5C                    1269 	.db 0x5c
      0083A2 55 73 65 72 73        1270 	.ascii "Users"
      0083A7 5C                    1271 	.db 0x5c
      0083A8 41 64 6D 69 6E        1272 	.ascii "Admin"
      0083AD 5C                    1273 	.db 0x5c
      0083AE 2E 70 6C 61 74 66 6F  1274 	.ascii ".platformio"
             72 6D 69 6F
      0083B9 5C                    1275 	.db 0x5c
      0083BA 70 61 63 6B 61 67 65  1276 	.ascii "packages"
             73
      0083C2 5C                    1277 	.db 0x5c
      0083C3 66 72 61 6D 65 77 6F  1278 	.ascii "framework-ststm8spl"
             72 6B 2D 73 74 73 74
             6D 38 73 70 6C
      0083D6 5C                    1279 	.db 0x5c
      0083D7 4C 69 62 72 61 72 69  1280 	.ascii "Libraries"
             65 73
      0083E0 5C                    1281 	.db 0x5c
      0083E1 53 54 4D 38 53 5F 53  1282 	.ascii "STM8S_StdPeriph_Driver"
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72
      0083F7 5C                    1283 	.db 0x5c
      0083F8 73 72 63              1284 	.ascii "src"
      0083FB 5C                    1285 	.db 0x5c
      0083FC 73 74 6D 38 73 5F 69  1286 	.ascii "stm8s_i2c.c"
             32 63 2E 63
      008407 00                    1287 	.db 0x00
                                   1288 	.area CODE
                                   1289 	.area INITIALIZER
                                   1290 	.area CABS (ABS)
