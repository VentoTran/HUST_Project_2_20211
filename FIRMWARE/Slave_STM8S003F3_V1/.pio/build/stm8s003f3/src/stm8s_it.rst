                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TRAP_IRQHandler
                                     12 	.globl _TLI_IRQHandler
                                     13 	.globl _AWU_IRQHandler
                                     14 	.globl _CLK_IRQHandler
                                     15 	.globl _EXTI_PORTA_IRQHandler
                                     16 	.globl _EXTI_PORTB_IRQHandler
                                     17 	.globl _EXTI_PORTC_IRQHandler
                                     18 	.globl _EXTI_PORTD_IRQHandler
                                     19 	.globl _EXTI_PORTE_IRQHandler
                                     20 	.globl _SPI_IRQHandler
                                     21 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     22 	.globl _TIM1_CAP_COM_IRQHandler
                                     23 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     24 	.globl _TIM2_CAP_COM_IRQHandler
                                     25 	.globl _UART1_TX_IRQHandler
                                     26 	.globl _UART1_RX_IRQHandler
                                     27 	.globl _I2C_IRQHandler
                                     28 	.globl _ADC1_IRQHandler
                                     29 	.globl _TIM4_UPD_OVF_IRQHandler
                                     30 	.globl _EEPROM_EEC_IRQHandler
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DATA
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area INITIALIZED
                                     39 ;--------------------------------------------------------
                                     40 ; absolute external ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DABS (ABS)
                                     43 
                                     44 ; default segment ordering for linker
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area CONST
                                     49 	.area INITIALIZER
                                     50 	.area CODE
                                     51 
                                     52 ;--------------------------------------------------------
                                     53 ; global & static initialisations
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
                                     56 	.area GSINIT
                                     57 	.area GSFINAL
                                     58 	.area GSINIT
                                     59 ;--------------------------------------------------------
                                     60 ; Home
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area HOME
                                     64 ;--------------------------------------------------------
                                     65 ; code
                                     66 ;--------------------------------------------------------
                                     67 	.area CODE
                                     68 ;	src\stm8s_it.c: 73: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     69 ;	-----------------------------------------
                                     70 ;	 function TRAP_IRQHandler
                                     71 ;	-----------------------------------------
      00DCAD                         72 _TRAP_IRQHandler:
                                     73 ;	src\stm8s_it.c: 78: }
      00DCAD 80               [11]   74 	iret
                                     75 ;	src\stm8s_it.c: 87: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     76 ;	-----------------------------------------
                                     77 ;	 function TLI_IRQHandler
                                     78 ;	-----------------------------------------
      00DCAE                         79 _TLI_IRQHandler:
                                     80 ;	src\stm8s_it.c: 92: }
      00DCAE 80               [11]   81 	iret
                                     82 ;	src\stm8s_it.c: 100: INTERRUPT_HANDLER(AWU_IRQHandler, 1)	
                                     83 ;	-----------------------------------------
                                     84 ;	 function AWU_IRQHandler
                                     85 ;	-----------------------------------------
      00DCAF                         86 _AWU_IRQHandler:
                                     87 ;	src\stm8s_it.c: 105: }
      00DCAF 80               [11]   88 	iret
                                     89 ;	src\stm8s_it.c: 113: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                     90 ;	-----------------------------------------
                                     91 ;	 function CLK_IRQHandler
                                     92 ;	-----------------------------------------
      00DCB0                         93 _CLK_IRQHandler:
                                     94 ;	src\stm8s_it.c: 118: }
      00DCB0 80               [11]   95 	iret
                                     96 ;	src\stm8s_it.c: 126: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                     97 ;	-----------------------------------------
                                     98 ;	 function EXTI_PORTA_IRQHandler
                                     99 ;	-----------------------------------------
      00DCB1                        100 _EXTI_PORTA_IRQHandler:
                                    101 ;	src\stm8s_it.c: 131: }
      00DCB1 80               [11]  102 	iret
                                    103 ;	src\stm8s_it.c: 138: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    104 ;	-----------------------------------------
                                    105 ;	 function EXTI_PORTB_IRQHandler
                                    106 ;	-----------------------------------------
      00DCB2                        107 _EXTI_PORTB_IRQHandler:
                                    108 ;	src\stm8s_it.c: 143: }
      00DCB2 80               [11]  109 	iret
                                    110 ;	src\stm8s_it.c: 151: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    111 ;	-----------------------------------------
                                    112 ;	 function EXTI_PORTC_IRQHandler
                                    113 ;	-----------------------------------------
      00DCB3                        114 _EXTI_PORTC_IRQHandler:
                                    115 ;	src\stm8s_it.c: 156: }
      00DCB3 80               [11]  116 	iret
                                    117 ;	src\stm8s_it.c: 164: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    118 ;	-----------------------------------------
                                    119 ;	 function EXTI_PORTD_IRQHandler
                                    120 ;	-----------------------------------------
      00DCB4                        121 _EXTI_PORTD_IRQHandler:
                                    122 ;	src\stm8s_it.c: 169: }
      00DCB4 80               [11]  123 	iret
                                    124 ;	src\stm8s_it.c: 177: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    125 ;	-----------------------------------------
                                    126 ;	 function EXTI_PORTE_IRQHandler
                                    127 ;	-----------------------------------------
      00DCB5                        128 _EXTI_PORTE_IRQHandler:
                                    129 ;	src\stm8s_it.c: 182: }
      00DCB5 80               [11]  130 	iret
                                    131 ;	src\stm8s_it.c: 232: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    132 ;	-----------------------------------------
                                    133 ;	 function SPI_IRQHandler
                                    134 ;	-----------------------------------------
      00DCB6                        135 _SPI_IRQHandler:
                                    136 ;	src\stm8s_it.c: 237: }
      00DCB6 80               [11]  137 	iret
                                    138 ;	src\stm8s_it.c: 245: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    139 ;	-----------------------------------------
                                    140 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    141 ;	-----------------------------------------
      00DCB7                        142 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                                    143 ;	src\stm8s_it.c: 250: }
      00DCB7 80               [11]  144 	iret
                                    145 ;	src\stm8s_it.c: 258: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    146 ;	-----------------------------------------
                                    147 ;	 function TIM1_CAP_COM_IRQHandler
                                    148 ;	-----------------------------------------
      00DCB8                        149 _TIM1_CAP_COM_IRQHandler:
                                    150 ;	src\stm8s_it.c: 263: }
      00DCB8 80               [11]  151 	iret
                                    152 ;	src\stm8s_it.c: 298: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    153 ;	-----------------------------------------
                                    154 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    155 ;	-----------------------------------------
      00DCB9                        156 _TIM2_UPD_OVF_BRK_IRQHandler:
                                    157 ;	src\stm8s_it.c: 303: }
      00DCB9 80               [11]  158 	iret
                                    159 ;	src\stm8s_it.c: 311: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    160 ;	-----------------------------------------
                                    161 ;	 function TIM2_CAP_COM_IRQHandler
                                    162 ;	-----------------------------------------
      00DCBA                        163 _TIM2_CAP_COM_IRQHandler:
                                    164 ;	src\stm8s_it.c: 316: }
      00DCBA 80               [11]  165 	iret
                                    166 ;	src\stm8s_it.c: 356: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
                                    167 ;	-----------------------------------------
                                    168 ;	 function UART1_TX_IRQHandler
                                    169 ;	-----------------------------------------
      00DCBB                        170 _UART1_TX_IRQHandler:
                                    171 ;	src\stm8s_it.c: 361: }
      00DCBB 80               [11]  172 	iret
                                    173 ;	src\stm8s_it.c: 369: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    174 ;	-----------------------------------------
                                    175 ;	 function UART1_RX_IRQHandler
                                    176 ;	-----------------------------------------
      00DCBC                        177 _UART1_RX_IRQHandler:
                                    178 ;	src\stm8s_it.c: 374: }
      00DCBC 80               [11]  179 	iret
                                    180 ;	src\stm8s_it.c: 383: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    181 ;	-----------------------------------------
                                    182 ;	 function I2C_IRQHandler
                                    183 ;	-----------------------------------------
      00DCBD                        184 _I2C_IRQHandler:
                                    185 ;	src\stm8s_it.c: 388: }
      00DCBD 80               [11]  186 	iret
                                    187 ;	src\stm8s_it.c: 465: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
                                    188 ;	-----------------------------------------
                                    189 ;	 function ADC1_IRQHandler
                                    190 ;	-----------------------------------------
      00DCBE                        191 _ADC1_IRQHandler:
                                    192 ;	src\stm8s_it.c: 470: }
      00DCBE 80               [11]  193 	iret
                                    194 ;	src\stm8s_it.c: 493: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    195 ;	-----------------------------------------
                                    196 ;	 function TIM4_UPD_OVF_IRQHandler
                                    197 ;	-----------------------------------------
      00DCBF                        198 _TIM4_UPD_OVF_IRQHandler:
                                    199 ;	src\stm8s_it.c: 498: }
      00DCBF 80               [11]  200 	iret
                                    201 ;	src\stm8s_it.c: 507: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    202 ;	-----------------------------------------
                                    203 ;	 function EEPROM_EEC_IRQHandler
                                    204 ;	-----------------------------------------
      00DCC0                        205 _EEPROM_EEC_IRQHandler:
                                    206 ;	src\stm8s_it.c: 512: }
      00DCC0 80               [11]  207 	iret
                                    208 	.area CODE
                                    209 	.area CONST
                                    210 	.area INITIALIZER
                                    211 	.area CABS (ABS)
