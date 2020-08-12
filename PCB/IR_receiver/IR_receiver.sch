EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "IR Receiver PCB"
Date "2019-08-05"
Rev "1"
Comp ""
Comment1 "Patrick Troester"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U1
U 1 1 5D4762DC
P 8700 3900
F 0 "U1" H 8300 3000 50  0000 C CNN
F 1 "ATmega32U4-AU" H 8550 2900 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 8700 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 8700 3900 50  0001 C CNN
	1    8700 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J1
U 1 1 5D4FB6E7
P 1200 2350
F 0 "J1" H 1257 2817 50  0000 C CNN
F 1 "USB_A" H 1257 2726 50  0000 C CNN
F 2 "Connector_USB:USB_A_Molex_67643_Horizontal" H 1350 2300 50  0001 C CNN
F 3 " ~" H 1350 2300 50  0001 C CNN
	1    1200 2350
	1    0    0    -1  
$EndComp
Text Notes 850  1050 0    197  ~ 0
USB-Interface
$Comp
L power:GND #PWR0101
U 1 1 5D4C6486
P 1100 2950
F 0 "#PWR0101" H 1100 2700 50  0001 C CNN
F 1 "GND" H 1105 2777 50  0000 C CNN
F 2 "" H 1100 2950 50  0001 C CNN
F 3 "" H 1100 2950 50  0001 C CNN
	1    1100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2750 1100 2850
Wire Wire Line
	1200 2750 1200 2850
Wire Wire Line
	1200 2850 1100 2850
Connection ~ 1100 2850
Wire Wire Line
	1100 2850 1100 2950
Text GLabel 2200 2350 2    50   Input ~ 0
RD+
Text GLabel 2200 2450 2    50   Input ~ 0
RD-
$Comp
L power:+5V #PWR0102
U 1 1 5D4D79C2
P 3550 2000
F 0 "#PWR0102" H 3550 1850 50  0001 C CNN
F 1 "+5V" H 3565 2173 50  0000 C CNN
F 2 "" H 3550 2000 50  0001 C CNN
F 3 "" H 3550 2000 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5D4D9400
P 2650 2350
F 0 "C1" H 2768 2396 50  0000 L CNN
F 1 "22u" H 2768 2305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 2688 2200 50  0001 C CNN
F 3 "~" H 2650 2350 50  0001 C CNN
	1    2650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D4D9CDF
P 3150 2350
F 0 "C2" H 3265 2396 50  0000 L CNN
F 1 "100n" H 3265 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3188 2200 50  0001 C CNN
F 3 "~" H 3150 2350 50  0001 C CNN
	1    3150 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D4DAA46
P 3550 2350
F 0 "R3" H 3620 2396 50  0000 L CNN
F 1 "10k" H 3620 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 2350 50  0001 C CNN
F 3 "~" H 3550 2350 50  0001 C CNN
	1    3550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2500 2650 2600
Wire Wire Line
	2650 2600 3150 2600
Wire Wire Line
	3550 2600 3550 2500
Wire Wire Line
	3150 2500 3150 2600
Wire Wire Line
	3550 2200 3550 2100
Wire Wire Line
	3150 2100 3150 2200
Wire Wire Line
	3550 2000 3550 2100
Connection ~ 3550 2100
Wire Wire Line
	2650 2200 2650 2150
$Comp
L Device:R R1
U 1 1 5D4EA18B
P 1800 2350
F 0 "R1" V 1700 2350 50  0000 C CNN
F 1 "22" V 1700 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1730 2350 50  0001 C CNN
F 3 "~" H 1800 2350 50  0001 C CNN
	1    1800 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D4EB00D
P 1800 2450
F 0 "R2" V 1700 2450 50  0000 C CNN
F 1 "22" V 1700 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1730 2450 50  0001 C CNN
F 3 "~" H 1800 2450 50  0001 C CNN
	1    1800 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 2350 1650 2350
Wire Wire Line
	1500 2450 1650 2450
Wire Wire Line
	2200 2450 2150 2450
$Comp
L Device:Polyfuse F1
U 1 1 5D4EF4A6
P 2650 1950
F 0 "F1" H 2738 1996 50  0000 L CNN
F 1 "Polyfuse" H 2738 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2700 1750 50  0001 L CNN
F 3 "~" H 2650 1950 50  0001 C CNN
	1    2650 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:Varistor RV2
U 1 1 5D4F056D
P 2150 2700
F 0 "RV2" H 2253 2746 50  0000 L CNN
F 1 "Varistor" H 2253 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2080 2700 50  0001 C CNN
F 3 "~" H 2150 2700 50  0001 C CNN
	1    2150 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:Varistor RV1
U 1 1 5D4F20B1
P 2000 2700
F 0 "RV1" H 1750 2750 50  0000 L CNN
F 1 "Varistor" H 1600 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1930 2700 50  0001 C CNN
F 3 "~" H 2000 2700 50  0001 C CNN
	1    2000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2550 2000 2350
Wire Wire Line
	1950 2350 2000 2350
Connection ~ 2000 2350
Wire Wire Line
	2000 2350 2200 2350
Wire Wire Line
	2150 2550 2150 2450
Connection ~ 2150 2450
Wire Wire Line
	2150 2450 1950 2450
Wire Wire Line
	2000 2850 2000 2900
Wire Wire Line
	2000 2900 2150 2900
Wire Wire Line
	2150 2900 2150 2850
$Comp
L power:GND #PWR0103
U 1 1 5D4F4F0A
P 2000 2950
F 0 "#PWR0103" H 2000 2700 50  0001 C CNN
F 1 "GND" H 2005 2777 50  0000 C CNN
F 2 "" H 2000 2950 50  0001 C CNN
F 3 "" H 2000 2950 50  0001 C CNN
	1    2000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2950 2000 2900
Connection ~ 2000 2900
$Comp
L power:+5V #PWR0104
U 1 1 5D4F5DAC
P 2650 1750
F 0 "#PWR0104" H 2650 1600 50  0001 C CNN
F 1 "+5V" H 2665 1923 50  0000 C CNN
F 2 "" H 2650 1750 50  0001 C CNN
F 3 "" H 2650 1750 50  0001 C CNN
	1    2650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1750 2650 1800
Wire Wire Line
	2650 2100 2650 2150
Connection ~ 2650 2150
Text GLabel 8000 3400 0    50   Input ~ 0
RD+
Text GLabel 8000 3500 0    50   Input ~ 0
RD-
Wire Wire Line
	8000 3400 8100 3400
Wire Wire Line
	8000 3500 8100 3500
Wire Wire Line
	3150 2100 3550 2100
Wire Wire Line
	3150 2600 3550 2600
Connection ~ 3150 2600
$Comp
L power:GND #PWR0105
U 1 1 5D4FB592
P 8650 5800
F 0 "#PWR0105" H 8650 5550 50  0001 C CNN
F 1 "GND" H 8655 5627 50  0000 C CNN
F 2 "" H 8650 5800 50  0001 C CNN
F 3 "" H 8650 5800 50  0001 C CNN
	1    8650 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5750 8600 5700
Wire Wire Line
	8650 5750 8600 5750
Wire Wire Line
	8650 5800 8650 5750
Wire Wire Line
	8650 5750 8700 5750
Wire Wire Line
	8700 5750 8700 5700
Connection ~ 8650 5750
Wire Wire Line
	6550 2500 6550 2550
Wire Wire Line
	6550 2850 6550 2900
Wire Wire Line
	8100 2800 7200 2800
Wire Wire Line
	7200 2800 7200 2900
Wire Wire Line
	6550 2900 7200 2900
Wire Wire Line
	7200 2600 7200 2500
Wire Wire Line
	6550 2500 7200 2500
Wire Wire Line
	7200 2600 8100 2600
$Comp
L power:GND #PWR0107
U 1 1 5D509391
P 5900 2700
F 0 "#PWR0107" H 5900 2450 50  0001 C CNN
F 1 "GND" V 5905 2572 50  0000 R CNN
F 2 "" H 5900 2700 50  0001 C CNN
F 3 "" H 5900 2700 50  0001 C CNN
	1    5900 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5D50AB29
P 6200 2500
F 0 "C3" V 5948 2500 50  0000 C CNN
F 1 "22p" V 6039 2500 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 6238 2350 50  0001 C CNN
F 3 "~" H 6200 2500 50  0001 C CNN
	1    6200 2500
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5D50B7B4
P 6200 2900
F 0 "C4" V 6350 2900 50  0000 C CNN
F 1 "22p" V 6450 2900 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 6238 2750 50  0001 C CNN
F 3 "~" H 6200 2900 50  0001 C CNN
	1    6200 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 2500 6550 2500
Connection ~ 6550 2500
Wire Wire Line
	6350 2900 6550 2900
Connection ~ 6550 2900
Wire Wire Line
	6050 2500 6000 2500
Wire Wire Line
	6000 2500 6000 2700
Wire Wire Line
	6000 2900 6050 2900
Wire Wire Line
	5900 2700 6000 2700
Connection ~ 6000 2700
Wire Wire Line
	6000 2700 6000 2900
$Comp
L Switch:SW_Push SW1
U 1 1 5D5119E9
P 6350 1900
F 0 "SW1" H 6350 2185 50  0000 C CNN
F 1 "SW_Push" H 6350 2094 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_EVPBF" H 6350 2100 50  0001 C CNN
F 3 "~" H 6350 2100 50  0001 C CNN
	1    6350 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5D51329C
P 6050 1900
F 0 "#PWR0108" H 6050 1650 50  0001 C CNN
F 1 "GND" V 6055 1772 50  0000 R CNN
F 2 "" H 6050 1900 50  0001 C CNN
F 3 "" H 6050 1900 50  0001 C CNN
	1    6050 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 1900 6150 1900
$Comp
L power:+5V #PWR0109
U 1 1 5D5143A8
P 8000 3200
F 0 "#PWR0109" H 8000 3050 50  0001 C CNN
F 1 "+5V" V 8015 3328 50  0000 L CNN
F 2 "" H 8000 3200 50  0001 C CNN
F 3 "" H 8000 3200 50  0001 C CNN
	1    8000 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 3200 8100 3200
$Comp
L Device:C C8
U 1 1 5D516218
P 7900 3700
F 0 "C8" V 7950 3600 50  0000 C CNN
F 1 "1u" V 7850 3600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 7938 3550 50  0001 C CNN
F 3 "~" H 7900 3700 50  0001 C CNN
	1    7900 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 3700 8100 3700
$Comp
L power:GND #PWR0110
U 1 1 5D5186A2
P 7700 3700
F 0 "#PWR0110" H 7700 3450 50  0001 C CNN
F 1 "GND" V 7705 3572 50  0000 R CNN
F 2 "" H 7700 3700 50  0001 C CNN
F 3 "" H 7700 3700 50  0001 C CNN
	1    7700 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3700 7750 3700
$Comp
L power:GND #PWR0111
U 1 1 5D51AF52
P 7700 3000
F 0 "#PWR0111" H 7700 2750 50  0001 C CNN
F 1 "GND" V 7705 2872 50  0000 R CNN
F 2 "" H 7700 3000 50  0001 C CNN
F 3 "" H 7700 3000 50  0001 C CNN
	1    7700 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5D51B5D8
P 7900 3000
F 0 "C7" V 7850 3100 50  0000 C CNN
F 1 "100n" V 7950 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7938 2850 50  0001 C CNN
F 3 "~" H 7900 3000 50  0001 C CNN
	1    7900 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3000 7750 3000
Wire Wire Line
	8050 3000 8100 3000
Wire Wire Line
	8600 2100 8600 2000
Wire Wire Line
	8600 2000 8700 2000
Wire Wire Line
	8700 2000 8700 1900
Wire Wire Line
	8700 2000 8700 2100
Connection ~ 8700 2000
Wire Wire Line
	8800 2100 8800 2000
Wire Wire Line
	8800 2000 8700 2000
$Comp
L Device:C C9
U 1 1 5D5290AC
P 9050 2000
F 0 "C9" V 8798 2000 50  0000 C CNN
F 1 "1u" V 8889 2000 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 9088 1850 50  0001 C CNN
F 3 "~" H 9050 2000 50  0001 C CNN
	1    9050 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2000 8800 2000
Connection ~ 8800 2000
Wire Wire Line
	9300 2000 9200 2000
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 5D52DAE1
P 2000 4550
F 0 "J2" H 1720 4646 50  0000 R CNN
F 1 "AVR-ISP-6" H 1720 4555 50  0000 R CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_2x03_P2.00mm_Vertical" V 1750 4600 50  0001 C CNN
F 3 " ~" H 725 4000 50  0001 C CNN
	1    2000 4550
	-1   0    0    -1  
$EndComp
Text Notes 6350 900  0    197  ~ 0
Controller + Crystal
Text Notes 900  3700 0    197  ~ 0
ICSP Interface
$Comp
L power:GND #PWR0114
U 1 1 5D53B4E5
P 2100 5050
F 0 "#PWR0114" H 2100 4800 50  0001 C CNN
F 1 "GND" H 2105 4877 50  0000 C CNN
F 2 "" H 2100 5050 50  0001 C CNN
F 3 "" H 2100 5050 50  0001 C CNN
	1    2100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3950 2100 4050
Wire Wire Line
	2100 4950 2100 5050
Text GLabel 1300 4350 0    50   Input ~ 0
MISO
Text GLabel 1300 4450 0    50   Input ~ 0
MOSI
Text GLabel 1300 4550 0    50   Input ~ 0
SCK
Text GLabel 1300 4650 0    50   Input ~ 0
RST
Wire Wire Line
	1300 4350 1600 4350
Wire Wire Line
	1300 4450 1600 4450
Wire Wire Line
	1300 4550 1600 4550
Wire Wire Line
	1300 4650 1600 4650
$Comp
L Device:R R5
U 1 1 5D96ABC1
P 10150 3300
F 0 "R5" V 9943 3300 50  0000 C CNN
F 1 "1k" V 10034 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10080 3300 50  0001 C CNN
F 3 "~" H 10150 3300 50  0001 C CNN
	1    10150 3300
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D96B641
P 10600 3300
F 0 "D2" H 10593 3045 50  0000 C CNN
F 1 "LED" H 10593 3136 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 10600 3300 50  0001 C CNN
F 3 "~" H 10600 3300 50  0001 C CNN
	1    10600 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 3300 9300 3300
Wire Wire Line
	10300 3300 10450 3300
$Comp
L power:GND #PWR0115
U 1 1 5D52AE97
P 9300 2000
F 0 "#PWR0115" H 9300 1750 50  0001 C CNN
F 1 "GND" V 9305 1872 50  0000 R CNN
F 2 "" H 9300 2000 50  0001 C CNN
F 3 "" H 9300 2000 50  0001 C CNN
	1    9300 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5D972C69
P 10850 3300
F 0 "#PWR0116" H 10850 3050 50  0001 C CNN
F 1 "GND" V 10855 3172 50  0000 R CNN
F 2 "" H 10850 3300 50  0001 C CNN
F 3 "" H 10850 3300 50  0001 C CNN
	1    10850 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 3300 10850 3300
Wire Wire Line
	6550 1900 6750 1900
$Comp
L Device:D D1
U 1 1 5D980D26
P 6750 1650
F 0 "D1" V 6704 1729 50  0000 L CNN
F 1 "D" V 6795 1729 50  0000 L CNN
F 2 "Diode_THT:D_5W_P10.16mm_Horizontal" H 6750 1650 50  0001 C CNN
F 3 "~" H 6750 1650 50  0001 C CNN
	1    6750 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 1800 6750 1900
Connection ~ 6750 1900
$Comp
L Device:R R4
U 1 1 5D983430
P 7050 1650
F 0 "R4" H 7120 1696 50  0000 L CNN
F 1 "R" H 7120 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6980 1650 50  0001 C CNN
F 3 "~" H 7050 1650 50  0001 C CNN
	1    7050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1900 7050 1800
Wire Wire Line
	6750 1900 7050 1900
Connection ~ 7050 1900
Wire Wire Line
	6750 1500 6750 1450
Wire Wire Line
	6750 1450 6900 1450
Wire Wire Line
	7050 1450 7050 1500
Wire Wire Line
	6900 1350 6900 1450
Connection ~ 6900 1450
Wire Wire Line
	6900 1450 7050 1450
$Comp
L Device:C C5
U 1 1 5D98DA1F
P 7400 2200
F 0 "C5" V 7350 2300 50  0000 C CNN
F 1 "100n" V 7450 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7438 2050 50  0001 C CNN
F 3 "~" H 7400 2200 50  0001 C CNN
	1    7400 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5D98DE5E
P 7700 2200
F 0 "C6" V 7650 2300 50  0000 C CNN
F 1 "100n" V 7750 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7738 2050 50  0001 C CNN
F 3 "~" H 7700 2200 50  0001 C CNN
	1    7700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2400 7400 2400
Wire Wire Line
	7050 1900 7050 2400
Wire Wire Line
	7400 2350 7400 2400
Connection ~ 7400 2400
Wire Wire Line
	7400 2050 7400 1850
$Comp
L power:GND #PWR0118
U 1 1 5D9BA4E5
P 7550 1750
F 0 "#PWR0118" H 7550 1500 50  0001 C CNN
F 1 "GND" V 7555 1622 50  0000 R CNN
F 2 "" H 7550 1750 50  0001 C CNN
F 3 "" H 7550 1750 50  0001 C CNN
	1    7550 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 2400 7700 2400
Wire Wire Line
	7700 1850 7700 2050
Wire Wire Line
	7400 1850 7550 1850
Wire Wire Line
	7700 2350 7700 2400
Connection ~ 7700 2400
Wire Wire Line
	7700 2400 8100 2400
Wire Wire Line
	7550 1750 7550 1850
Connection ~ 7550 1850
Wire Wire Line
	7550 1850 7700 1850
$Comp
L Interface_Optical:TSDP341xx U2
U 1 1 5D9CCCF0
P 13650 1800
F 0 "U2" H 13184 1850 50  0000 R CNN
F 1 "TSDP341xx" H 13184 1759 50  0000 R CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 13600 1425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/82667/tsdp341.pdf" H 14300 2100 50  0001 C CNN
	1    13650 1800
	-1   0    0    -1  
$EndComp
$Comp
L Interface_Optical:TSDP341xx U3
U 1 1 5D9D3616
P 13650 2650
F 0 "U3" H 13184 2700 50  0000 R CNN
F 1 "TSDP341xx" H 13184 2609 50  0000 R CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 13600 2275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/82667/tsdp341.pdf" H 14300 2950 50  0001 C CNN
	1    13650 2650
	-1   0    0    -1  
$EndComp
$Comp
L Interface_Optical:TSDP341xx U4
U 1 1 5D9D430F
P 13650 3500
F 0 "U4" H 13184 3550 50  0000 R CNN
F 1 "TSDP341xx" H 13184 3459 50  0000 R CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 13600 3125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/82667/tsdp341.pdf" H 14300 3800 50  0001 C CNN
	1    13650 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5D9DE473
P 13100 2000
F 0 "#PWR0120" H 13100 1750 50  0001 C CNN
F 1 "GND" V 13105 1872 50  0000 R CNN
F 2 "" H 13100 2000 50  0001 C CNN
F 3 "" H 13100 2000 50  0001 C CNN
	1    13100 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	13100 2000 13250 2000
Wire Wire Line
	13100 1600 13250 1600
$Comp
L power:GND #PWR0122
U 1 1 5D9EF24A
P 13100 2850
F 0 "#PWR0122" H 13100 2600 50  0001 C CNN
F 1 "GND" V 13105 2722 50  0000 R CNN
F 2 "" H 13100 2850 50  0001 C CNN
F 3 "" H 13100 2850 50  0001 C CNN
	1    13100 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	13100 2850 13250 2850
Wire Wire Line
	13100 2450 13250 2450
$Comp
L power:GND #PWR0124
U 1 1 5D9F2F21
P 13100 3700
F 0 "#PWR0124" H 13100 3450 50  0001 C CNN
F 1 "GND" V 13105 3572 50  0000 R CNN
F 2 "" H 13100 3700 50  0001 C CNN
F 3 "" H 13100 3700 50  0001 C CNN
	1    13100 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	13100 3700 13250 3700
Wire Wire Line
	13100 3300 13250 3300
Text GLabel 13150 1800 0    50   Input ~ 0
IR1
Wire Wire Line
	13150 1800 13250 1800
Text GLabel 13150 3500 0    50   Input ~ 0
IR3
Wire Wire Line
	13150 2650 13250 2650
Wire Wire Line
	13150 3500 13250 3500
Text GLabel 9500 2700 2    50   Input ~ 0
MISO
Text GLabel 9500 2600 2    50   Input ~ 0
MOSI
Text GLabel 9500 2500 2    50   Input ~ 0
SCK
Text GLabel 6700 2050 0    50   Input ~ 0
RST
Wire Wire Line
	6700 2050 6750 2050
Wire Wire Line
	6750 2050 6750 1900
Wire Wire Line
	9300 2500 9500 2500
Wire Wire Line
	9300 2600 9500 2600
Wire Wire Line
	9500 2700 9300 2700
Text Notes 12500 1050 0    197  ~ 0
IR Receivers
$Comp
L Device:R R7
U 1 1 5DA672F1
P 10150 4500
F 0 "R7" V 9943 4500 50  0000 C CNN
F 1 "10k" V 10034 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10080 4500 50  0001 C CNN
F 3 "~" H 10150 4500 50  0001 C CNN
	1    10150 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	10450 4500 10300 4500
Wire Wire Line
	10000 4500 9300 4500
$Comp
L Device:R R6
U 1 1 5DA75A20
P 10150 3400
F 0 "R6" V 9943 3400 50  0000 C CNN
F 1 "1k" V 10034 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10080 3400 50  0001 C CNN
F 3 "~" H 10150 3400 50  0001 C CNN
	1    10150 3400
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5DA75A26
P 10600 3400
F 0 "D3" H 10593 3145 50  0000 C CNN
F 1 "LED" H 10593 3236 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 10600 3400 50  0001 C CNN
F 3 "~" H 10600 3400 50  0001 C CNN
	1    10600 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 3400 9300 3400
Wire Wire Line
	10300 3400 10450 3400
$Comp
L power:GND #PWR0126
U 1 1 5DA75A2E
P 10850 3400
F 0 "#PWR0126" H 10850 3150 50  0001 C CNN
F 1 "GND" V 10855 3272 50  0000 R CNN
F 2 "" H 10850 3400 50  0001 C CNN
F 3 "" H 10850 3400 50  0001 C CNN
	1    10850 3400
	0    -1   1    0   
$EndComp
Wire Wire Line
	10750 3400 10850 3400
Text Notes 9000 5150 1    50   ~ 0
Analog
$Comp
L Interface_Optical:TSDP341xx U5
U 1 1 5DA85EA8
P 13650 4350
F 0 "U5" H 13184 4400 50  0000 R CNN
F 1 "TSDP341xx" H 13184 4309 50  0000 R CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 13600 3975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/82667/tsdp341.pdf" H 14300 4650 50  0001 C CNN
	1    13650 4350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5DA85EB4
P 13100 4550
F 0 "#PWR0128" H 13100 4300 50  0001 C CNN
F 1 "GND" V 13105 4422 50  0000 R CNN
F 2 "" H 13100 4550 50  0001 C CNN
F 3 "" H 13100 4550 50  0001 C CNN
	1    13100 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	13100 4550 13250 4550
Wire Wire Line
	13100 4150 13250 4150
Text GLabel 13150 4350 0    50   Input ~ 0
IR4
Wire Wire Line
	13150 4350 13250 4350
Text GLabel 9550 3600 2    50   Input ~ 0
IR1
Text GLabel 13150 2650 0    50   Input ~ 0
IR2
Text GLabel 9550 3700 2    50   Input ~ 0
IR2
Text GLabel 9550 3800 2    50   Input ~ 0
IR3
Text GLabel 9550 3900 2    50   Input ~ 0
IR4
Wire Wire Line
	9300 3600 9550 3600
Wire Wire Line
	9300 3700 9550 3700
Wire Wire Line
	9300 3800 9550 3800
Wire Wire Line
	9300 3900 9550 3900
NoConn ~ 9300 2400
NoConn ~ 9300 2800
NoConn ~ 9300 2900
NoConn ~ 9300 3000
NoConn ~ 9300 3100
NoConn ~ 9300 4000
NoConn ~ 9300 4100
NoConn ~ 9300 4200
NoConn ~ 9300 4300
NoConn ~ 9300 4600
NoConn ~ 9300 4800
NoConn ~ 9300 4900
NoConn ~ 9300 5000
NoConn ~ 9300 5100
NoConn ~ 9300 5200
NoConn ~ 9300 5300
$Comp
L power:GND #PWR0125
U 1 1 5F39FB99
P 10450 4500
F 0 "#PWR0125" H 10450 4250 50  0001 C CNN
F 1 "GND" V 10455 4372 50  0000 R CNN
F 2 "" H 10450 4500 50  0001 C CNN
F 3 "" H 10450 4500 50  0001 C CNN
	1    10450 4500
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5F3A3EB2
P 8700 1900
F 0 "#PWR0112" H 8700 1750 50  0001 C CNN
F 1 "+5V" H 8715 2073 50  0000 C CNN
F 2 "" H 8700 1900 50  0001 C CNN
F 3 "" H 8700 1900 50  0001 C CNN
	1    8700 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 5F3A3F78
P 6900 1350
F 0 "#PWR0117" H 6900 1200 50  0001 C CNN
F 1 "+5V" H 6915 1523 50  0000 C CNN
F 2 "" H 6900 1350 50  0001 C CNN
F 3 "" H 6900 1350 50  0001 C CNN
	1    6900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 5F3A522F
P 13100 1600
F 0 "#PWR0119" H 13100 1450 50  0001 C CNN
F 1 "+5V" V 13115 1728 50  0000 L CNN
F 2 "" H 13100 1600 50  0001 C CNN
F 3 "" H 13100 1600 50  0001 C CNN
	1    13100 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 5F3A57A5
P 13100 2450
F 0 "#PWR0121" H 13100 2300 50  0001 C CNN
F 1 "+5V" V 13115 2578 50  0000 L CNN
F 2 "" H 13100 2450 50  0001 C CNN
F 3 "" H 13100 2450 50  0001 C CNN
	1    13100 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5F3A5FE5
P 13100 3300
F 0 "#PWR0123" H 13100 3150 50  0001 C CNN
F 1 "+5V" V 13115 3428 50  0000 L CNN
F 2 "" H 13100 3300 50  0001 C CNN
F 3 "" H 13100 3300 50  0001 C CNN
	1    13100 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 5F3A637C
P 13100 4150
F 0 "#PWR0127" H 13100 4000 50  0001 C CNN
F 1 "+5V" V 13115 4278 50  0000 L CNN
F 2 "" H 13100 4150 50  0001 C CNN
F 3 "" H 13100 4150 50  0001 C CNN
	1    13100 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5F3A6EEA
P 2100 3950
F 0 "#PWR0113" H 2100 3800 50  0001 C CNN
F 1 "+5V" H 2115 4123 50  0000 C CNN
F 2 "" H 2100 3950 50  0001 C CNN
F 3 "" H 2100 3950 50  0001 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2150 2650 2150
$Comp
L Device:Crystal Y1
U 1 1 5F3C6831
P 6550 2700
F 0 "Y1" V 6504 2831 50  0000 L CNN
F 1 "Crystal" V 6595 2831 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 6550 2700 50  0001 C CNN
F 3 "~" H 6550 2700 50  0001 C CNN
	1    6550 2700
	0    1    1    0   
$EndComp
$EndSCHEMATC
