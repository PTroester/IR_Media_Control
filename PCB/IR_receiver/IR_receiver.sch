EESchema Schematic File Version 4
LIBS:IR_receiver-cache
EELAYER 29 0
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
L MCU_Microchip_ATmega:ATmega32U4-AU U?
U 1 1 5D4762DC
P 8700 3900
F 0 "U?" H 8300 3000 50  0000 C CNN
F 1 "ATmega32U4-AU" H 8550 2900 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 8700 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 8700 3900 50  0001 C CNN
	1    8700 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J?
U 1 1 5D4FB6E7
P 1200 2350
F 0 "J?" H 1257 2817 50  0000 C CNN
F 1 "USB_A" H 1257 2726 50  0000 C CNN
F 2 "" H 1350 2300 50  0001 C CNN
F 3 " ~" H 1350 2300 50  0001 C CNN
	1    1200 2350
	1    0    0    -1  
$EndComp
Text Notes 850  1050 0    197  ~ 0
USB-Interface
$Comp
L power:GND #PWR?
U 1 1 5D4C6486
P 1100 2950
F 0 "#PWR?" H 1100 2700 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5D4D79C2
P 3550 2000
F 0 "#PWR?" H 3550 1850 50  0001 C CNN
F 1 "+5V" H 3565 2173 50  0000 C CNN
F 2 "" H 3550 2000 50  0001 C CNN
F 3 "" H 3550 2000 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5D4D9400
P 2650 2350
F 0 "C?" H 2768 2396 50  0000 L CNN
F 1 "22u" H 2768 2305 50  0000 L CNN
F 2 "" H 2688 2200 50  0001 C CNN
F 3 "~" H 2650 2350 50  0001 C CNN
	1    2650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D4D9CDF
P 3150 2350
F 0 "C?" H 3265 2396 50  0000 L CNN
F 1 "100n" H 3265 2305 50  0000 L CNN
F 2 "" H 3188 2200 50  0001 C CNN
F 3 "~" H 3150 2350 50  0001 C CNN
	1    3150 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D4DAA46
P 3550 2350
F 0 "R?" H 3620 2396 50  0000 L CNN
F 1 "10k" H 3620 2305 50  0000 L CNN
F 2 "" V 3480 2350 50  0001 C CNN
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
Wire Wire Line
	2650 2150 1500 2150
$Comp
L Device:R R?
U 1 1 5D4EA18B
P 1800 2350
F 0 "R?" V 1700 2350 50  0000 C CNN
F 1 "22" V 1700 2250 50  0000 C CNN
F 2 "" V 1730 2350 50  0001 C CNN
F 3 "~" H 1800 2350 50  0001 C CNN
	1    1800 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D4EB00D
P 1800 2450
F 0 "R?" V 1700 2450 50  0000 C CNN
F 1 "22" V 1700 2550 50  0000 C CNN
F 2 "" V 1730 2450 50  0001 C CNN
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
L Device:Polyfuse F?
U 1 1 5D4EF4A6
P 2650 1950
F 0 "F?" H 2738 1996 50  0000 L CNN
F 1 "Polyfuse" H 2738 1905 50  0000 L CNN
F 2 "" H 2700 1750 50  0001 L CNN
F 3 "~" H 2650 1950 50  0001 C CNN
	1    2650 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:Varistor RV?
U 1 1 5D4F056D
P 2150 2700
F 0 "RV?" H 2253 2746 50  0000 L CNN
F 1 "Varistor" H 2253 2655 50  0000 L CNN
F 2 "" V 2080 2700 50  0001 C CNN
F 3 "~" H 2150 2700 50  0001 C CNN
	1    2150 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:Varistor RV?
U 1 1 5D4F20B1
P 2000 2700
F 0 "RV?" H 1750 2750 50  0000 L CNN
F 1 "Varistor" H 1600 2650 50  0000 L CNN
F 2 "" V 1930 2700 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5D4F4F0A
P 2000 2950
F 0 "#PWR?" H 2000 2700 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5D4F5DAC
P 2650 1750
F 0 "#PWR?" H 2650 1600 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5D4FB592
P 8650 5800
F 0 "#PWR?" H 8650 5550 50  0001 C CNN
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
$Comp
L Device:Crystal_GND24 Y?
U 1 1 5D4FF36E
P 6550 2700
F 0 "Y?" V 6400 2800 50  0000 L CNN
F 1 "Crystal_GND24" V 6700 2750 50  0000 L CNN
F 2 "" H 6550 2700 50  0001 C CNN
F 3 "~" H 6550 2700 50  0001 C CNN
	1    6550 2700
	0    1    1    0   
$EndComp
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
L power:GND #PWR?
U 1 1 5D50730B
P 6850 2700
F 0 "#PWR?" H 6850 2450 50  0001 C CNN
F 1 "GND" V 6855 2572 50  0000 R CNN
F 2 "" H 6850 2700 50  0001 C CNN
F 3 "" H 6850 2700 50  0001 C CNN
	1    6850 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 2700 6850 2700
$Comp
L power:GND #PWR?
U 1 1 5D509391
P 5900 2700
F 0 "#PWR?" H 5900 2450 50  0001 C CNN
F 1 "GND" V 5905 2572 50  0000 R CNN
F 2 "" H 5900 2700 50  0001 C CNN
F 3 "" H 5900 2700 50  0001 C CNN
	1    5900 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D50AB29
P 6200 2500
F 0 "C?" V 5948 2500 50  0000 C CNN
F 1 "22p" V 6039 2500 50  0000 C CNN
F 2 "" H 6238 2350 50  0001 C CNN
F 3 "~" H 6200 2500 50  0001 C CNN
	1    6200 2500
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D50B7B4
P 6200 2900
F 0 "C?" V 6350 2900 50  0000 C CNN
F 1 "22p" V 6450 2900 50  0000 C CNN
F 2 "" H 6238 2750 50  0001 C CNN
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
Wire Wire Line
	6000 2700 6350 2700
$Comp
L Switch:SW_Push SW?
U 1 1 5D5119E9
P 7800 2400
F 0 "SW?" H 7800 2685 50  0000 C CNN
F 1 "SW_Push" H 7800 2594 50  0000 C CNN
F 2 "" H 7800 2600 50  0001 C CNN
F 3 "~" H 7800 2600 50  0001 C CNN
	1    7800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2400 8100 2400
$Comp
L power:GND #PWR?
U 1 1 5D51329C
P 7500 2400
F 0 "#PWR?" H 7500 2150 50  0001 C CNN
F 1 "GND" V 7505 2272 50  0000 R CNN
F 2 "" H 7500 2400 50  0001 C CNN
F 3 "" H 7500 2400 50  0001 C CNN
	1    7500 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2400 7600 2400
$Comp
L power:+5V #PWR?
U 1 1 5D5143A8
P 8000 3200
F 0 "#PWR?" H 8000 3050 50  0001 C CNN
F 1 "+5V" V 8015 3328 50  0000 L CNN
F 2 "" H 8000 3200 50  0001 C CNN
F 3 "" H 8000 3200 50  0001 C CNN
	1    8000 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 3200 8100 3200
$Comp
L Device:C C?
U 1 1 5D516218
P 7900 3700
F 0 "C?" V 7950 3600 50  0000 C CNN
F 1 "1u" V 7850 3600 50  0000 C CNN
F 2 "" H 7938 3550 50  0001 C CNN
F 3 "~" H 7900 3700 50  0001 C CNN
	1    7900 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 3700 8100 3700
$Comp
L power:GND #PWR?
U 1 1 5D5186A2
P 7700 3700
F 0 "#PWR?" H 7700 3450 50  0001 C CNN
F 1 "GND" V 7705 3572 50  0000 R CNN
F 2 "" H 7700 3700 50  0001 C CNN
F 3 "" H 7700 3700 50  0001 C CNN
	1    7700 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3700 7750 3700
$Comp
L power:GND #PWR?
U 1 1 5D51AF52
P 7700 3000
F 0 "#PWR?" H 7700 2750 50  0001 C CNN
F 1 "GND" V 7705 2872 50  0000 R CNN
F 2 "" H 7700 3000 50  0001 C CNN
F 3 "" H 7700 3000 50  0001 C CNN
	1    7700 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D51B5D8
P 7900 3000
F 0 "C?" V 7850 3100 50  0000 C CNN
F 1 "100n" V 7950 3150 50  0000 C CNN
F 2 "" H 7938 2850 50  0001 C CNN
F 3 "~" H 7900 3000 50  0001 C CNN
	1    7900 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3000 7750 3000
Wire Wire Line
	8050 3000 8100 3000
$Comp
L power:+5V #PWR?
U 1 1 5D51FDE7
P 8700 1900
F 0 "#PWR?" H 8700 1750 50  0001 C CNN
F 1 "+5V" H 8715 2073 50  0000 C CNN
F 2 "" H 8700 1900 50  0001 C CNN
F 3 "" H 8700 1900 50  0001 C CNN
	1    8700 1900
	1    0    0    -1  
$EndComp
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
L Device:C C?
U 1 1 5D5290AC
P 9050 2000
F 0 "C?" V 8798 2000 50  0000 C CNN
F 1 "1u" V 8889 2000 50  0000 C CNN
F 2 "" H 9088 1850 50  0001 C CNN
F 3 "~" H 9050 2000 50  0001 C CNN
	1    9050 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2000 8800 2000
Connection ~ 8800 2000
$Comp
L power:GND #PWR?
U 1 1 5D52AE97
P 9300 2000
F 0 "#PWR?" H 9300 1750 50  0001 C CNN
F 1 "GND" V 9305 1872 50  0000 R CNN
F 2 "" H 9300 2000 50  0001 C CNN
F 3 "" H 9300 2000 50  0001 C CNN
	1    9300 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 2000 9200 2000
$Comp
L Connector:AVR-ISP-6 J?
U 1 1 5D52DAE1
P 2000 4550
F 0 "J?" H 1720 4646 50  0000 R CNN
F 1 "AVR-ISP-6" H 1720 4555 50  0000 R CNN
F 2 "" V 1750 4600 50  0001 C CNN
F 3 " ~" H 725 4000 50  0001 C CNN
	1    2000 4550
	-1   0    0    -1  
$EndComp
Text Notes 6200 1400 0    197  ~ 0
Controller + Crystal
Text Notes 900  3700 0    197  ~ 0
ICSP Interface
$Comp
L power:+5V #PWR?
U 1 1 5D53AEA0
P 2100 3950
F 0 "#PWR?" H 2100 3800 50  0001 C CNN
F 1 "+5V" H 2115 4123 50  0000 C CNN
F 2 "" H 2100 3950 50  0001 C CNN
F 3 "" H 2100 3950 50  0001 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D53B4E5
P 2100 5050
F 0 "#PWR?" H 2100 4800 50  0001 C CNN
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
$EndSCHEMATC
