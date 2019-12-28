EESchema Schematic File Version 4
LIBS:CorsairController-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4000 6900 2    50   Input ~ 0
AI0
Text GLabel 4000 6800 2    50   Input ~ 0
AI1
Text GLabel 4000 6700 2    50   Input ~ 0
AI2
Text GLabel 4000 6600 2    50   Input ~ 0
AI3
Text GLabel 4000 6500 2    50   Input ~ 0
AI4
Text GLabel 4000 6400 2    50   Input ~ 0
AI5
Wire Wire Line
	3600 6900 4000 6900
Wire Wire Line
	3600 6800 4000 6800
Wire Wire Line
	3600 6700 4000 6700
Wire Wire Line
	3600 6600 4000 6600
Wire Wire Line
	3600 6500 4000 6500
Wire Wire Line
	3600 6400 4000 6400
Text Label 2000 5000 2    50   ~ 0
D+
Text Label 2000 5100 2    50   ~ 0
D-
$Comp
L Device:C C3
U 1 1 5E135329
P 1500 5750
F 0 "C3" H 1615 5796 50  0000 L CNN
F 1 "1uF" H 1615 5705 50  0000 L CNN
F 2 "footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1538 5600 50  0001 C CNN
F 3 "~" H 1500 5750 50  0001 C CNN
	1    1500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5300 1500 5300
Wire Wire Line
	1500 5300 1500 5600
Text Label 2000 5300 2    50   ~ 0
UCAP
Wire Wire Line
	2000 5000 2400 5000
Wire Wire Line
	2400 5100 2000 5100
Wire Wire Line
	2400 4800 2000 4800
Wire Wire Line
	2900 3700 2900 3500
Wire Wire Line
	3000 3700 3000 3500
Wire Wire Line
	3100 3700 3100 3500
Text Label 2000 4800 2    50   ~ 0
UVCC
Text Label 2900 3500 1    50   ~ 0
UVCC
Text Label 3000 3500 1    50   ~ 0
VCC
Text Label 3100 3500 1    50   ~ 0
VCC
$Comp
L Device:R R1
U 1 1 5E13DA48
P 1500 3750
F 0 "R1" H 1570 3796 50  0000 L CNN
F 1 "10k" H 1570 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1430 3750 50  0001 C CNN
F 3 "~" H 1500 3750 50  0001 C CNN
	1    1500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4000 1500 4000
Wire Wire Line
	1500 4000 1500 3900
Wire Wire Line
	1500 3600 1500 3500
Wire Wire Line
	1500 5900 1500 6000
Text Label 2000 4000 2    50   ~ 0
RESET
Text GLabel 1500 4000 0    50   Input ~ 0
RESET
$Comp
L Device:C C5
U 1 1 5E140D13
P 1000 5750
F 0 "C5" H 1115 5796 50  0000 L CNN
F 1 "0.1uF" H 1115 5705 50  0000 L CNN
F 2 "footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1038 5600 50  0001 C CNN
F 3 "~" H 1000 5750 50  0001 C CNN
	1    1000 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1000 5900 1000 6000
Wire Wire Line
	1000 6000 1500 6000
Wire Wire Line
	1000 5600 1000 4600
Wire Wire Line
	1000 4600 2400 4600
Text Label 2000 4600 2    50   ~ 0
AREF
Text GLabel 4000 5400 2    50   Input ~ 0
D0
Text GLabel 4000 5500 2    50   Input ~ 0
D1
Text GLabel 4000 5300 2    50   Input ~ 0
D2
Text GLabel 4000 5200 2    50   Input ~ 0
D3
Text GLabel 4000 5600 2    50   Input ~ 0
D4
Text GLabel 4000 4900 2    50   Input ~ 0
D5
Text GLabel 4000 5900 2    50   Input ~ 0
D6
Wire Wire Line
	3600 4900 4000 4900
Wire Wire Line
	3600 5000 4000 5000
Wire Wire Line
	4000 5300 3600 5300
Wire Wire Line
	3600 5200 4000 5200
Wire Wire Line
	4000 5400 3600 5400
Wire Wire Line
	3600 5500 4000 5500
Wire Wire Line
	4000 5600 3600 5600
Text GLabel 4000 6200 2    50   Input ~ 0
D7
Text GLabel 4000 4400 2    50   Input ~ 0
D8
Text GLabel 4000 4500 2    50   Input ~ 0
D9
Text GLabel 4000 4600 2    50   Input ~ 0
D10
Text GLabel 4000 4700 2    50   Input ~ 0
D11
Text GLabel 4000 5800 2    50   Input ~ 0
D12
Text GLabel 4000 5000 2    50   Input ~ 0
D13
Wire Wire Line
	3600 4400 4000 4400
Wire Wire Line
	4000 4500 3600 4500
Wire Wire Line
	3600 4600 4000 4600
Wire Wire Line
	4000 4700 3600 4700
Wire Wire Line
	3600 5800 4000 5800
Wire Wire Line
	4000 5900 3600 5900
Wire Wire Line
	3600 6200 4000 6200
Wire Wire Line
	3000 7300 3000 7500
Wire Wire Line
	3000 7500 2900 7500
Wire Wire Line
	2900 7500 2900 7300
Text GLabel 3000 7500 2    50   Input ~ 0
GND
Text GLabel 3100 3500 2    50   Input ~ 0
VCC
Wire Wire Line
	3700 5700 3600 5700
Text Label 2900 7500 1    50   ~ 0
GND
Text Label 1000 6000 3    50   ~ 0
GND
Text Label 1500 3500 0    50   ~ 0
VCC
Wire Wire Line
	3600 4000 3700 4000
Text GLabel 4000 4100 2    50   Input ~ 0
D15
Text GLabel 4000 4200 2    50   Input ~ 0
D16
Text GLabel 4000 4300 2    50   Input ~ 0
D14
Text Label 3700 4100 0    50   ~ 0
SCK
Text Label 3700 4200 0    50   ~ 0
MOSI
Text Label 3700 4300 0    50   ~ 0
MISO
Wire Wire Line
	3600 4100 4000 4100
Wire Wire Line
	4000 4200 3600 4200
Wire Wire Line
	3600 4300 4000 4300
Text Label 3700 4400 0    50   ~ 0
D8
Text Label 3700 4500 0    50   ~ 0
D9#,A8
Text Label 3700 4600 0    50   ~ 0
D10#
Text Label 3700 4700 0    50   ~ 0
D11#
Text Label 3700 5400 0    50   ~ 0
D0,RXI
Text Label 3700 5500 0    50   ~ 0
D1,TXO
Text Label 3700 5300 0    50   ~ 0
D2
Text Label 3700 5200 0    50   ~ 0
D3#
Text Label 3700 5600 0    50   ~ 0
D4,A6
Text Label 3700 4900 0    50   ~ 0
D5#
Text Label 3700 5900 0    50   ~ 0
D6#,A7
Text Label 3700 6200 0    50   ~ 0
D7
Text Label 3700 5800 0    50   ~ 0
D12,A10
Text Label 3700 5000 0    50   ~ 0
D13#
Text Label 3700 4000 0    50   ~ 0
D17,RX_LED
Text Label 3700 5700 0    50   ~ 0
GREEN_LED
Text Label 3700 6100 0    50   ~ 0
GND
Wire Wire Line
	3600 6100 3700 6100
$Comp
L Device:C C7
U 1 1 5DF85536
P 1750 2500
F 0 "C7" V 1498 2500 50  0000 C CNN
F 1 "22pF" V 1589 2500 50  0000 C CNN
F 2 "footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1788 2350 50  0001 C CNN
F 3 "~" H 1750 2500 50  0001 C CNN
	1    1750 2500
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 5DF87109
P 1750 3000
F 0 "C8" V 1498 3000 50  0000 C CNN
F 1 "22pF" V 1589 3000 50  0000 C CNN
F 2 "footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1788 2850 50  0001 C CNN
F 3 "~" H 1750 3000 50  0001 C CNN
	1    1750 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 3000 2500 3000
Wire Wire Line
	2500 3000 2500 2900
Wire Wire Line
	2500 2600 2500 2500
Wire Wire Line
	2500 2500 1900 2500
Wire Wire Line
	1600 2500 1500 2500
Wire Wire Line
	1500 2500 1500 3000
Wire Wire Line
	1500 3000 1600 3000
Text Label 1500 2500 2    50   ~ 0
GND
Text Label 2500 2500 1    50   ~ 0
XTAL1
Text Label 2500 3000 2    50   ~ 0
XTAL2
Text Label 2000 4400 2    50   ~ 0
XTAL2
Text Label 2000 4200 2    50   ~ 0
XTAL1
Wire Wire Line
	2000 4200 2400 4200
Wire Wire Line
	2400 4400 2000 4400
$Comp
L Connector:USB_B_Micro J-USB1
U 1 1 5DF9B9DE
P 1300 1200
F 0 "J-USB1" H 1357 1667 50  0000 C CNN
F 1 "USB_B_Micro" H 1357 1576 50  0000 C CNN
F 2 "footprints:USB_Micro-B" H 1450 1150 50  0001 C CNN
F 3 "~" H 1450 1150 50  0001 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1000 2000 1000
Wire Wire Line
	1200 1600 1200 1700
Wire Wire Line
	1200 1700 1300 1700
Wire Wire Line
	1300 1700 1300 1600
NoConn ~ 1600 1400
Text Label 1200 1700 3    50   ~ 0
GND
Text Label 2500 1200 0    50   ~ 0
D+
Text Label 2500 1300 0    50   ~ 0
D-
Text Label 2000 1000 2    50   ~ 0
UVCC
$Comp
L Device:R R2
U 1 1 5DFA8690
P 2250 1200
F 0 "R2" V 2043 1200 50  0000 C CNN
F 1 "22" V 2134 1200 50  0000 C CNN
F 2 "footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 1200 50  0001 C CNN
F 3 "~" H 2250 1200 50  0001 C CNN
	1    2250 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5DFA9136
P 2250 1300
F 0 "R3" V 2150 1300 50  0000 C CNN
F 1 "22" V 2050 1300 50  0000 C CNN
F 2 "footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 1300 50  0001 C CNN
F 3 "~" H 2250 1300 50  0001 C CNN
	1    2250 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 1200 2100 1200
Wire Wire Line
	2100 1300 1600 1300
Wire Wire Line
	2400 1200 2500 1200
Wire Wire Line
	2400 1300 2500 1300
$Comp
L Device:Polyfuse F1
U 1 1 5DFB9580
P 7250 1000
F 0 "F1" V 7025 1000 50  0000 C CNN
F 1 "Polyfuse" V 7116 1000 50  0000 C CNN
F 2 "footprints:Fuse_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7300 800 50  0001 L CNN
F 3 "~" H 7250 1000 50  0001 C CNN
	1    7250 1000
	0    1    1    0   
$EndComp
Text Label 7000 1000 2    50   ~ 0
UVCC
Wire Wire Line
	7000 1000 7100 1000
Wire Wire Line
	8550 1600 8650 1600
Text Label 8250 2500 2    50   ~ 0
GND
Text GLabel 7400 2000 0    50   Input ~ 0
RAW
Wire Wire Line
	7400 2000 7550 2000
$Comp
L Device:C C1
U 1 1 5DFE9A37
P 7550 2250
F 0 "C1" V 7298 2250 50  0000 C CNN
F 1 "10uF" V 7389 2250 50  0000 C CNN
F 2 "footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7588 2100 50  0001 C CNN
F 3 "~" H 7550 2250 50  0001 C CNN
	1    7550 2250
	1    0    0    1   
$EndComp
Wire Wire Line
	7550 2100 7550 2000
Connection ~ 7550 2000
Wire Wire Line
	7550 2400 7550 2500
Wire Wire Line
	7550 2500 7850 2500
$Comp
L Device:C C4
U 1 1 5DFF3341
P 4000 3250
F 0 "C4" V 3748 3250 50  0000 C CNN
F 1 "1uF" V 3839 3250 50  0000 C CNN
F 2 "footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4038 3100 50  0001 C CNN
F 3 "~" H 4000 3250 50  0001 C CNN
	1    4000 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5DFF4101
P 8650 2250
F 0 "C2" V 8398 2250 50  0000 C CNN
F 1 "10uF" V 8489 2250 50  0000 C CNN
F 2 "footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8688 2100 50  0001 C CNN
F 3 "~" H 8650 2250 50  0001 C CNN
	1    8650 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 5DFF2A8F
P 4500 3250
F 0 "C6" V 4248 3250 50  0000 C CNN
F 1 "0.1uF" V 4339 3250 50  0000 C CNN
F 2 "footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4538 3100 50  0001 C CNN
F 3 "~" H 4500 3250 50  0001 C CNN
	1    4500 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 2100 8650 1700
Connection ~ 8650 1600
Wire Wire Line
	8650 2400 8650 2500
Text Label 8650 1000 2    50   ~ 0
VCC
Wire Wire Line
	8650 1000 8650 1600
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U1
U 1 1 5DEEFC68
P 3000 5500
F 0 "U1" H 3000 5500 50  0000 C CNN
F 1 "ATmega32U4-AU" V 2600 4200 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 3000 5500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 3000 5500 50  0001 C CNN
	1    3000 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5DF098C2
P 2500 2750
F 0 "Y1" V 2454 2994 50  0000 L CNN
F 1 "Crystal_GND24" V 2545 2994 50  0000 L CNN
F 2 "footprints:Crystal_SMD_SeikoEpson_TSX3225-4Pin_3.2x2.5mm" H 2500 2750 50  0001 C CNN
F 3 "~" H 2500 2750 50  0001 C CNN
	1    2500 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2750 2300 2000
Wire Wire Line
	2300 2000 1500 2000
Wire Wire Line
	1500 2000 1500 2500
Connection ~ 1500 2500
Wire Wire Line
	2700 2750 2700 2000
Wire Wire Line
	2700 2000 2300 2000
Connection ~ 2300 2000
Wire Wire Line
	7550 1600 7550 2000
$Comp
L Symbols:SPX1117 U2
U 1 1 5DF42BC0
P 8200 1550
F 0 "U2" H 8200 1725 50  0000 C CNN
F 1 "SPX1117" H 8200 1634 50  0000 C CNN
F 2 "footprints:SOT-223" H 8200 1550 50  0001 C CNN
F 3 "" H 8200 1550 50  0001 C CNN
	1    8200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1600 7550 1600
Wire Wire Line
	7850 1700 7850 2500
Connection ~ 7850 2500
Wire Wire Line
	7850 2500 8650 2500
Wire Wire Line
	8550 1700 8650 1700
Connection ~ 8650 1700
Wire Wire Line
	8650 1700 8650 1600
Text Label 5000 3500 2    50   ~ 0
GND
Text Label 5000 3000 2    50   ~ 0
VCC
Wire Wire Line
	5000 3000 4500 3000
Wire Wire Line
	4500 3000 4500 3100
Wire Wire Line
	5000 3500 4500 3500
Wire Wire Line
	4000 3500 4000 3400
Wire Wire Line
	4000 3100 4000 3000
Wire Wire Line
	4000 3000 4500 3000
Connection ~ 4500 3000
Wire Wire Line
	4500 3400 4500 3500
Connection ~ 4500 3500
Wire Wire Line
	4500 3500 4000 3500
NoConn ~ 3700 5700
NoConn ~ 3700 4000
Wire Wire Line
	7400 1000 8650 1000
Text Label 1700 1200 0    50   ~ 0
D+USB
Text Label 1700 1300 0    50   ~ 0
D-USB
$EndSCHEMATC
