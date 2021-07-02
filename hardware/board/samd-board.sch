EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_SAMD:ATSAMD21E17D-A U2
U 1 1 60DF4799
P 7900 5350
F 0 "U2" H 8530 5396 50  0000 L CNN
F 1 "ATSAMD21E17D-A" H 8530 5305 50  0000 L CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 8800 3500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAM_D21_DA1_Family_Data%20Sheet_DS40001882E.pdf" H 7900 5350 50  0001 C CNN
	1    7900 5350
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR04
U 1 1 60DF9172
P 2000 1300
F 0 "#PWR04" H 2000 1150 50  0001 C CNN
F 1 "VBUS" H 2000 1450 50  0000 C CNN
F 2 "" H 2000 1300 50  0001 C CNN
F 3 "" H 2000 1300 50  0001 C CNN
	1    2000 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J1
U 1 1 60DFB32C
P 1550 1600
F 0 "J1" H 1607 2067 50  0000 C CNN
F 1 "USB_B_Mini" H 1607 1976 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 1700 1550 50  0001 C CNN
F 3 "~" H 1700 1550 50  0001 C CNN
	1    1550 1600
	1    0    0    -1  
$EndComp
NoConn ~ 1450 2000
NoConn ~ 1850 1800
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J2
U 1 1 60DFDCEF
P 1550 3550
F 0 "J2" H 1250 4100 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 2550 3000 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 1550 3550 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 1200 2300 50  0001 C CNN
	1    1550 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60E07024
P 7900 7300
F 0 "#PWR0101" H 7900 7050 50  0001 C CNN
F 1 "GND" H 7900 7150 50  0000 C CNN
F 2 "" H 7900 7300 50  0001 C CNN
F 3 "" H 7900 7300 50  0001 C CNN
	1    7900 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60E0BDA8
P 7600 3250
F 0 "C3" H 7485 3204 50  0000 R CNN
F 1 "1u" H 7485 3295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7638 3100 50  0001 C CNN
F 3 "~" H 7600 3250 50  0001 C CNN
	1    7600 3250
	1    0    0    1   
$EndComp
Wire Wire Line
	7600 3400 7600 3450
Wire Wire Line
	7900 7300 7900 7250
Wire Wire Line
	7200 7050 7100 7050
Wire Wire Line
	7200 6850 7100 6850
Wire Wire Line
	7200 6750 7100 6750
Text GLabel 7100 7050 0    50   Input ~ 0
~RESET
Text GLabel 7100 6850 0    50   Input ~ 0
SWDIO
Text GLabel 7100 6750 0    50   Input ~ 0
SWCLK
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 60E1C72B
P 8000 1500
F 0 "FB1" V 7763 1500 50  0000 C CNN
F 1 "470R@100MHz" V 7854 1500 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7930 1500 50  0001 C CNN
F 3 "~" H 8000 1500 50  0001 C CNN
	1    8000 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 60E23669
P 6350 1950
F 0 "#PWR0105" H 6350 1700 50  0001 C CNN
F 1 "GND" H 6350 1800 50  0000 C CNN
F 2 "" H 6350 1950 50  0001 C CNN
F 3 "" H 6350 1950 50  0001 C CNN
	1    6350 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60E243A1
P 5700 1950
F 0 "#PWR0106" H 5700 1700 50  0001 C CNN
F 1 "GND" H 5700 1800 50  0000 C CNN
F 2 "" H 5700 1950 50  0001 C CNN
F 3 "" H 5700 1950 50  0001 C CNN
	1    5700 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60E2488E
P 6950 1950
F 0 "#PWR0107" H 6950 1700 50  0001 C CNN
F 1 "GND" H 6950 1800 50  0000 C CNN
F 2 "" H 6950 1950 50  0001 C CNN
F 3 "" H 6950 1950 50  0001 C CNN
	1    6950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1950 6350 1800
Wire Wire Line
	5050 1500 5700 1500
Wire Wire Line
	6650 1500 6950 1500
Wire Wire Line
	7550 1500 7550 1600
Wire Wire Line
	6950 1950 6950 1900
Wire Wire Line
	5700 1950 5700 1900
$Comp
L Device:Crystal Y1
U 1 1 60E28C7A
P 6100 5400
F 0 "Y1" H 6100 5250 50  0000 C CNN
F 1 "8MHz" H 6100 5550 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm_HandSoldering" H 6100 5400 50  0001 C CNN
F 3 "~" H 6100 5400 50  0001 C CNN
	1    6100 5400
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:Housing N1
U 1 1 60E2C29B
P 14800 1450
F 0 "N1" H 14953 1484 50  0000 L CNN
F 1 "Housing" H 14953 1393 50  0000 L CNN
F 2 "Assorted:Template_Breadboard" H 14850 1500 50  0001 C CNN
F 3 "~" H 14850 1500 50  0001 C CNN
	1    14800 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Male J3
U 1 1 60E3140B
P 12550 4600
F 0 "J3" H 12658 5481 50  0000 C CNN
F 1 "Conn_01x16_Male" H 12658 5390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 12550 4600 50  0001 C CNN
F 3 "~" H 12550 4600 50  0001 C CNN
	1    12550 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Male J4
U 1 1 60E32F50
P 11950 4600
F 0 "J4" H 12058 5481 50  0000 C CNN
F 1 "Conn_01x16_Male" H 12058 5390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 11950 4600 50  0001 C CNN
F 3 "~" H 11950 4600 50  0001 C CNN
	1    11950 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 6250 7100 6250
Wire Wire Line
	7200 6150 7100 6150
$Comp
L Regulator_Linear:AZ1117-3.3 U1
U 1 1 60E3D161
P 6350 1500
F 0 "U1" H 6350 1742 50  0000 C CNN
F 1 "AZ1117-3.3" H 6350 1651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6350 1750 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 6350 1500 50  0001 C CNN
	1    6350 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 60E3E6BC
P 6350 5650
F 0 "C7" H 6450 5700 50  0000 L CNN
F 1 "22p" H 6450 5600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6388 5500 50  0001 C CNN
F 3 "~" H 6350 5650 50  0001 C CNN
	1    6350 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60E3FF70
P 5850 5650
F 0 "C5" H 5600 5700 50  0000 L CNN
F 1 "22p" H 5600 5600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5888 5500 50  0001 C CNN
F 3 "~" H 5850 5650 50  0001 C CNN
	1    5850 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60E406DC
P 6350 5850
F 0 "#PWR0102" H 6350 5600 50  0001 C CNN
F 1 "GND" H 6350 5700 50  0000 C CNN
F 2 "" H 6350 5850 50  0001 C CNN
F 3 "" H 6350 5850 50  0001 C CNN
	1    6350 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60E41061
P 5850 5850
F 0 "#PWR0103" H 5850 5600 50  0001 C CNN
F 1 "GND" H 5850 5700 50  0000 C CNN
F 2 "" H 5850 5850 50  0001 C CNN
F 3 "" H 5850 5850 50  0001 C CNN
	1    5850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5400 5850 5400
Wire Wire Line
	5850 5400 5850 5500
Wire Wire Line
	5850 5850 5850 5800
Wire Wire Line
	6350 5500 6350 5400
Wire Wire Line
	6350 5400 6250 5400
Wire Wire Line
	6350 5850 6350 5800
Connection ~ 5850 5400
Connection ~ 6350 5400
Wire Wire Line
	7200 5350 7100 5350
Wire Wire Line
	7200 5450 7100 5450
Wire Wire Line
	7200 5550 7100 5550
Wire Wire Line
	7100 5650 7200 5650
Wire Wire Line
	7200 5950 7100 5950
Wire Wire Line
	7200 6050 7100 6050
Wire Wire Line
	7200 4850 7100 4850
Wire Wire Line
	7200 3750 7100 3750
Wire Wire Line
	7200 3850 7100 3850
Wire Wire Line
	7200 3950 7100 3950
Wire Wire Line
	7200 4050 7100 4050
Wire Wire Line
	7200 4150 7100 4150
Wire Wire Line
	7200 4250 7100 4250
Wire Wire Line
	7200 4350 7100 4350
Wire Wire Line
	7200 4450 7100 4450
Wire Wire Line
	7200 4550 7100 4550
Wire Wire Line
	7200 4650 7100 4650
Wire Wire Line
	7100 4750 7200 4750
Wire Wire Line
	7200 6450 7100 6450
Wire Wire Line
	7200 6550 7100 6550
Text GLabel 7100 6250 0    50   Input ~ 0
USB_D+
Text GLabel 7100 6150 0    50   Input ~ 0
USB_D-
Wire Wire Line
	5850 5150 5850 5400
Wire Wire Line
	5850 5150 7200 5150
Wire Wire Line
	7200 5250 6350 5250
Wire Wire Line
	6350 5250 6350 5400
Text Label 7100 6450 2    50   ~ 0
PA27
Text Label 7100 6550 2    50   ~ 0
PA28
Text Label 7100 5950 2    50   ~ 0
PA22
Text Label 7100 6050 2    50   ~ 0
PA23
Text Label 7100 5350 2    50   ~ 0
PA16
Text Label 7100 5450 2    50   ~ 0
PA17
Text Label 7100 5550 2    50   ~ 0
PA18
Text Label 7100 5650 2    50   ~ 0
PA19
$Comp
L Device:C C8
U 1 1 60E7BC6B
P 8950 1750
F 0 "C8" H 8835 1796 50  0000 R CNN
F 1 "1u" H 8835 1705 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8988 1600 50  0001 C CNN
F 3 "~" H 8950 1750 50  0001 C CNN
	1    8950 1750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60E7CAB0
P 8450 1750
F 0 "C6" H 8335 1796 50  0000 R CNN
F 1 "100n" H 8335 1705 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8488 1600 50  0001 C CNN
F 3 "~" H 8450 1750 50  0001 C CNN
	1    8450 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8450 1600 8450 1500
Wire Wire Line
	8450 1500 8100 1500
Wire Wire Line
	7900 1500 7550 1500
Connection ~ 7550 1500
Wire Wire Line
	8950 1600 8950 1500
Wire Wire Line
	8950 1500 8450 1500
Connection ~ 8450 1500
Wire Wire Line
	8450 1400 8450 1500
Wire Wire Line
	7550 1400 7550 1500
$Comp
L power:GND #PWR0108
U 1 1 60E8A701
P 8450 1950
F 0 "#PWR0108" H 8450 1700 50  0001 C CNN
F 1 "GND" H 8450 1800 50  0000 C CNN
F 2 "" H 8450 1950 50  0001 C CNN
F 3 "" H 8450 1950 50  0001 C CNN
	1    8450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 60E8AA89
P 8950 1950
F 0 "#PWR0109" H 8950 1700 50  0001 C CNN
F 1 "GND" H 8950 1800 50  0000 C CNN
F 2 "" H 8950 1950 50  0001 C CNN
F 3 "" H 8950 1950 50  0001 C CNN
	1    8950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1950 8450 1900
Wire Wire Line
	8950 1950 8950 1900
$Comp
L power:+3.3V #PWR0111
U 1 1 60E90A32
P 7550 1400
F 0 "#PWR0111" H 7550 1250 50  0001 C CNN
F 1 "+3.3V" H 7550 1550 50  0000 C CNN
F 2 "" H 7550 1400 50  0001 C CNN
F 3 "" H 7550 1400 50  0001 C CNN
	1    7550 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0112
U 1 1 60E91E7A
P 8450 1400
F 0 "#PWR0112" H 8450 1250 50  0001 C CNN
F 1 "+3.3VA" H 8450 1550 50  0000 C CNN
F 2 "" H 8450 1400 50  0001 C CNN
F 3 "" H 8450 1400 50  0001 C CNN
	1    8450 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60E937B3
P 2650 6450
F 0 "D1" H 2650 6600 50  0000 C CNN
F 1 "LED" H 2650 6300 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2650 6450 50  0001 C CNN
F 3 "~" H 2650 6450 50  0001 C CNN
	1    2650 6450
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60E9446D
P 3250 6450
F 0 "SW1" H 3250 6650 50  0000 C CNN
F 1 "SW_Push" H 3250 6350 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 3250 6650 50  0001 C CNN
F 3 "~" H 3250 6650 50  0001 C CNN
	1    3250 6450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 60E95E68
P 1550 2050
F 0 "#PWR0114" H 1550 1800 50  0001 C CNN
F 1 "GND" H 1550 1900 50  0000 C CNN
F 2 "" H 1550 2050 50  0001 C CNN
F 3 "" H 1550 2050 50  0001 C CNN
	1    1550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2050 1550 2000
$Comp
L Device:C C9
U 1 1 60EA408F
P 7550 1750
F 0 "C9" H 7435 1796 50  0000 R CNN
F 1 "100n" H 7435 1705 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7588 1600 50  0001 C CNN
F 3 "~" H 7550 1750 50  0001 C CNN
	1    7550 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 1600 6950 1500
$Comp
L power:GND #PWR0115
U 1 1 60EA409A
P 7550 1950
F 0 "#PWR0115" H 7550 1700 50  0001 C CNN
F 1 "GND" H 7550 1800 50  0000 C CNN
F 2 "" H 7550 1950 50  0001 C CNN
F 3 "" H 7550 1950 50  0001 C CNN
	1    7550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1950 7550 1900
Connection ~ 6950 1500
Wire Wire Line
	6950 1500 7550 1500
Text Label 7100 3750 2    50   ~ 0
PA00
Text Label 7100 3850 2    50   ~ 0
PA01
Text Label 7100 3950 2    50   ~ 0
PA02
Text Label 7100 4050 2    50   ~ 0
PA03
Text Label 7100 4150 2    50   ~ 0
PA04
Text Label 7100 4250 2    50   ~ 0
PA05
Text Label 7100 4350 2    50   ~ 0
PA06
Text Label 7100 4450 2    50   ~ 0
PA07
Text Label 7100 4550 2    50   ~ 0
PA08
Text Label 7100 4650 2    50   ~ 0
PA09
Text Label 7100 4750 2    50   ~ 0
PA10
Text Label 7100 4850 2    50   ~ 0
PA11
$Comp
L power:+3.3V #PWR0116
U 1 1 60EC0C40
P 1550 2900
F 0 "#PWR0116" H 1550 2750 50  0001 C CNN
F 1 "+3.3V" H 1550 3050 50  0000 C CNN
F 2 "" H 1550 2900 50  0001 C CNN
F 3 "" H 1550 2900 50  0001 C CNN
	1    1550 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 60EC1E2A
P 1550 4250
F 0 "#PWR0117" H 1550 4000 50  0001 C CNN
F 1 "GND" H 1550 4100 50  0000 C CNN
F 2 "" H 1550 4250 50  0001 C CNN
F 3 "" H 1550 4250 50  0001 C CNN
	1    1550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4150 1550 4200
Wire Wire Line
	1550 4200 1450 4200
Wire Wire Line
	1450 4200 1450 4150
Wire Wire Line
	1550 4200 1550 4250
Connection ~ 1550 4200
Wire Wire Line
	1550 2950 1550 2900
Wire Wire Line
	2050 3250 2150 3250
Wire Wire Line
	2050 3450 2150 3450
Wire Wire Line
	2050 3550 2150 3550
Text GLabel 2150 3450 2    50   Output ~ 0
SWCLK
Text GLabel 2150 3550 2    50   Output ~ 0
SWDIO
Text GLabel 2150 3250 2    50   Output ~ 0
~RESET
NoConn ~ 2050 3650
NoConn ~ 2050 3750
$Comp
L Device:R R1
U 1 1 60E00D9F
P 2650 6050
F 0 "R1" H 2720 6096 50  0000 L CNN
F 1 "1k5" H 2720 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2580 6050 50  0001 C CNN
F 3 "~" H 2650 6050 50  0001 C CNN
	1    2650 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5900 2650 5800
Wire Wire Line
	2650 6200 2650 6300
Wire Wire Line
	2650 6600 2650 6700
$Comp
L power:GND #PWR0118
U 1 1 60F052CE
P 2650 6700
F 0 "#PWR0118" H 2650 6450 50  0001 C CNN
F 1 "GND" H 2650 6550 50  0000 C CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "" H 2650 6700 50  0001 C CNN
	1    2650 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 60F0774F
P 3250 6700
F 0 "#PWR0119" H 3250 6450 50  0001 C CNN
F 1 "GND" H 3250 6550 50  0000 C CNN
F 2 "" H 3250 6700 50  0001 C CNN
F 3 "" H 3250 6700 50  0001 C CNN
	1    3250 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6700 3250 6650
$Comp
L Device:R R3
U 1 1 60F099CB
P 3250 6050
F 0 "R3" H 3320 6096 50  0000 L CNN
F 1 "1k5" H 3320 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3180 6050 50  0001 C CNN
F 3 "~" H 3250 6050 50  0001 C CNN
	1    3250 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6250 3250 6200
Wire Wire Line
	3250 5900 3250 5800
Text Label 2650 5800 1    50   ~ 0
PA27
Text Label 3250 5800 1    50   ~ 0
PA28
Wire Wire Line
	1850 1400 2000 1400
Wire Wire Line
	2000 1400 2000 1300
Wire Wire Line
	1850 1700 2000 1700
Text GLabel 2000 1600 2    50   Output ~ 0
USB_D+
Text GLabel 2000 1700 2    50   Output ~ 0
USB_D-
$Comp
L Device:CP C4
U 1 1 60E2170E
P 6950 1750
F 0 "C4" H 7050 1800 50  0000 L CNN
F 1 "47u 10V" H 7050 1700 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 6988 1600 50  0001 C CNN
F 3 "~" H 6950 1750 50  0001 C CNN
	1    6950 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 60E0012F
P 5700 1750
F 0 "C2" H 5550 1800 50  0000 R CNN
F 1 "10u 10V" H 5550 1700 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 5738 1600 50  0001 C CNN
F 3 "~" H 5700 1750 50  0001 C CNN
	1    5700 1750
	1    0    0    -1  
$EndComp
Connection ~ 5050 1500
$Comp
L power:VBUS #PWR0121
U 1 1 60F89305
P 5050 1100
F 0 "#PWR0121" H 5050 950 50  0001 C CNN
F 1 "VBUS" H 5050 1250 50  0000 C CNN
F 2 "" H 5050 1100 50  0001 C CNN
F 3 "" H 5050 1100 50  0001 C CNN
	1    5050 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 1400 5050 1500
$Comp
L Device:D_Schottky D3
U 1 1 60F9EB10
P 5050 1250
F 0 "D3" V 5100 1150 50  0000 R CNN
F 1 "D_Schottky" V 5000 1150 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 5050 1250 50  0001 C CNN
F 3 "~" H 5050 1250 50  0001 C CNN
	1    5050 1250
	0    1    -1   0   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 60F9F9DE
P 4400 1250
F 0 "D2" V 4450 1100 50  0000 C CNN
F 1 "D_Schottky" V 4350 950 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 4400 1250 50  0001 C CNN
F 3 "~" H 4400 1250 50  0001 C CNN
	1    4400 1250
	0    1    -1   0   
$EndComp
$Comp
L power:VDC #PWR0122
U 1 1 60FF8B49
P 4400 1100
F 0 "#PWR0122" H 4400 1000 50  0001 C CNN
F 1 "VDC" H 4400 1250 50  0000 C CNN
F 2 "" H 4400 1100 50  0001 C CNN
F 3 "" H 4400 1100 50  0001 C CNN
	1    4400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1500 4400 1500
Wire Wire Line
	4400 1500 4400 1400
$Comp
L power:VCC #PWR0123
U 1 1 6101754D
P 5700 1100
F 0 "#PWR0123" H 5700 950 50  0001 C CNN
F 1 "VCC" H 5715 1273 50  0000 C CNN
F 2 "" H 5700 1100 50  0001 C CNN
F 3 "" H 5700 1100 50  0001 C CNN
	1    5700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1100 5700 1500
Connection ~ 5700 1500
Wire Wire Line
	5700 1500 6050 1500
Wire Wire Line
	5700 1600 5700 1500
$Comp
L power:+3.3V #PWR0113
U 1 1 60E92D18
P 7800 3100
F 0 "#PWR0113" H 7800 2950 50  0001 C CNN
F 1 "+3.3V" H 7800 3250 50  0000 C CNN
F 2 "" H 7800 3100 50  0001 C CNN
F 3 "" H 7800 3100 50  0001 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0110
U 1 1 60E9019A
P 8200 3100
F 0 "#PWR0110" H 8200 2950 50  0001 C CNN
F 1 "+3.3VA" H 8200 3250 50  0000 C CNN
F 2 "" H 8200 3100 50  0001 C CNN
F 3 "" H 8200 3100 50  0001 C CNN
	1    8200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3100 8200 3450
Wire Wire Line
	7800 3100 7800 3450
$Comp
L power:GND #PWR0104
U 1 1 60E0AA47
P 7600 3100
F 0 "#PWR0104" H 7600 2850 50  0001 C CNN
F 1 "GND" H 7600 2950 50  0000 C CNN
F 2 "" H 7600 3100 50  0001 C CNN
F 3 "" H 7600 3100 50  0001 C CNN
	1    7600 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 1600 2000 1600
$EndSCHEMATC