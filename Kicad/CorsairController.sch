EESchema Schematic File Version 4
LIBS:CorsairController-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
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
L Connector:Conn_01x03_Male J-A2
U 1 1 5D3A2B22
P 3600 5600
F 0 "J-A2" H 3600 5550 50  0000 R CNN
F 1 "Conn_01x03_Male" H 3600 5650 50  0000 R CNN
F 2 "footprints:PinHeader_1x03_P2.54mm_Vertical" H 3600 5600 50  0001 C CNN
F 3 "~" H 3600 5600 50  0001 C CNN
	1    3600 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J-PWR1
U 1 1 5D3A5580
P 6900 1600
F 0 "J-PWR1" V 6750 1500 50  0000 L CNN
F 1 "Conn_01x03_Male" V 6850 1500 50  0000 L CNN
F 2 "footprints:PinHeader_1x03_P2.54mm_Vertical" H 6900 1600 50  0001 C CNN
F 3 "~" H 6900 1600 50  0001 C CNN
	1    6900 1600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x05_Male J-UART1
U 1 1 5D3A7894
P 5800 1600
F 0 "J-UART1" V 5650 1400 50  0000 L CNN
F 1 "Conn_01x05_Male" V 5750 1400 50  0000 L CNN
F 2 "footprints:PinHeader_1x05_P2.54mm_Vertical" H 5800 1600 50  0001 C CNN
F 3 "~" H 5800 1600 50  0001 C CNN
	1    5800 1600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J-RGB1
U 1 1 5D3AD15A
P 3600 4600
F 0 "J-RGB1" H 3450 4450 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3250 4550 50  0000 C CNN
F 2 "footprints:PinHeader_1x04_P2.54mm_Vertical" H 3600 4600 50  0001 C CNN
F 3 "~" H 3600 4600 50  0001 C CNN
	1    3600 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J-F1
U 1 1 5D3AE865
P 3600 3100
F 0 "J-F1" H 3500 2950 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3250 3050 50  0000 C CNN
F 2 "footprints:FanPinHeader_1x04_P2.54mm_Vertical" H 3600 3100 50  0001 C CNN
F 3 "~" H 3600 3100 50  0001 C CNN
	1    3600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4500 4050 4500
Text Label 3850 4500 0    50   ~ 0
12V
Text Label 3850 4050 0    50   ~ 0
12V
Text Label 3850 3200 0    50   ~ 0
12V
Text Label 6200 2150 0    50   ~ 0
POWER_BUS
Entry Wire Line
	4050 4500 4150 4600
Text Label 7000 2050 1    50   ~ 0
12V
Text Label 6900 2050 1    50   ~ 0
5V
Text Label 6800 1900 3    50   ~ 0
GND
Entry Wire Line
	7000 2050 7100 2150
Entry Wire Line
	6900 2050 7000 2150
Entry Wire Line
	6800 2050 6900 2150
Wire Wire Line
	3800 5200 4050 5200
Wire Wire Line
	3800 5000 4050 5000
Wire Wire Line
	3800 5500 4050 5500
Wire Wire Line
	3800 5700 4050 5700
Text Label 3850 5700 0    50   ~ 0
GND
Text Label 3850 5200 0    50   ~ 0
GND
Text Label 3850 5500 0    50   ~ 0
12V
Text Label 3850 5000 0    50   ~ 0
12V
Entry Wire Line
	4050 5000 4150 5100
Entry Wire Line
	4050 5200 4150 5300
Entry Wire Line
	4050 5500 4150 5600
Entry Wire Line
	4050 5700 4150 5800
Text Label 5600 1900 3    50   ~ 0
GND
Wire Wire Line
	7000 2050 7000 1800
Wire Wire Line
	6900 2050 6900 1800
Wire Wire Line
	6800 2050 6800 1800
Wire Wire Line
	5600 1800 5600 2050
Wire Wire Line
	5900 1800 5900 2050
Wire Wire Line
	6000 1800 6000 2050
Text Label 5900 2050 1    50   ~ 0
5V
Text Label 6000 2050 1    50   ~ 0
12V
Entry Wire Line
	6000 2050 6100 2150
Entry Wire Line
	5900 2050 6000 2150
Entry Wire Line
	5600 2050 5700 2150
Text Label 5700 2050 1    50   ~ 0
RX
Text Label 5800 2050 1    50   ~ 0
TX
Text Label 9400 3050 0    50   ~ 0
TX
Text Label 9400 3150 0    50   ~ 0
RX
Text Label 3850 5100 0    50   ~ 0
A1
Text Label 3850 5600 0    50   ~ 0
A2
Text Label 9400 3650 0    50   ~ 0
A1
Text Label 9400 4050 0    50   ~ 0
A2
$Comp
L Transistor_FET:IRF3205 Q-F1
U 1 1 5D3D9FF8
P 7100 3200
F 0 "Q-F1" H 7305 3154 50  0000 L CNN
F 1 "IRF3205" H 6800 3350 50  0000 L CNN
F 2 "footprints:TO-220-3_Vertical" H 7350 3125 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 7100 3200 50  0001 L CNN
	1    7100 3200
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF3205 Q-F2
U 1 1 5D3E1F42
P 7100 4050
F 0 "Q-F2" H 7305 4004 50  0000 L CNN
F 1 "IRF3205" H 6800 4200 50  0000 L CNN
F 2 "footprints:TO-220-3_Vertical" H 7350 3975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 7100 4050 50  0001 L CNN
	1    7100 4050
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF3205 Q-R1
U 1 1 5D3E2E38
P 6100 4700
F 0 "Q-R1" H 6305 4654 50  0000 L CNN
F 1 "IRF3205" H 5800 4850 50  0000 L CNN
F 2 "footprints:TO-220-3_Vertical" H 6350 4625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6100 4700 50  0001 L CNN
	1    6100 4700
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF3205 Q-G1
U 1 1 5D3E8DAE
P 6100 5200
F 0 "Q-G1" H 6305 5154 50  0000 L CNN
F 1 "IRF3205" H 5800 5350 50  0000 L CNN
F 2 "footprints:TO-220-3_Vertical" H 6350 5125 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6100 5200 50  0001 L CNN
	1    6100 5200
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF3205 Q-B1
U 1 1 5D3E9ACD
P 6100 5700
F 0 "Q-B1" H 6305 5654 50  0000 L CNN
F 1 "IRF3205" H 5800 5850 50  0000 L CNN
F 2 "footprints:TO-220-3_Vertical" H 6350 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6100 5700 50  0001 L CNN
	1    6100 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 4500 4250 4500
Wire Wire Line
	6000 5000 4250 5000
Wire Wire Line
	6000 5500 4250 5500
Entry Wire Line
	4150 4400 4250 4500
Entry Wire Line
	4150 4900 4250 5000
Entry Wire Line
	4150 5400 4250 5500
Text Label 4500 5500 0    50   ~ 0
GND
Text Label 4500 5000 0    50   ~ 0
GND
Text Label 4500 4500 0    50   ~ 0
GND
Wire Wire Line
	6000 4900 5650 4900
Wire Wire Line
	5650 4900 5650 4600
Wire Wire Line
	5550 4700 3800 4700
Wire Wire Line
	6000 5900 5450 5900
Wire Wire Line
	5450 5900 5450 4800
Text Label 4500 4600 0    50   ~ 0
R-12V
Text Label 4500 4700 0    50   ~ 0
G-12V
Text Label 4500 4800 0    50   ~ 0
B-12V
Text Label 9400 3850 0    50   ~ 0
R-5V
Text Label 9400 4150 0    50   ~ 0
G-5V
Text Label 9400 4350 0    50   ~ 0
B-5V
Wire Wire Line
	9700 4150 9050 4150
Wire Wire Line
	9700 4050 9150 4050
Wire Wire Line
	9700 3050 9350 3050
$Comp
L SparkFun-Boards:SPARKFUN_PRO_MICRO U1
U 1 1 5D3B1525
P 10150 3600
F 0 "U1" H 10150 4510 45  0000 C CNN
F 1 "SPARKFUN_PRO_MICRO" H 10150 4426 45  0000 C CNN
F 2 "Boards:SPARKFUN_PRO_MICRO" H 10150 4400 20  0001 C CNN
F 3 "" H 10150 3600 50  0001 C CNN
F 4 "XXX-00000" H 10150 4331 60  0000 C CNN "Field4"
	1    10150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3850 8850 3850
Wire Wire Line
	8950 4350 10600 4350
Wire Wire Line
	10600 4350 10600 4150
Text Label 6300 4700 0    50   ~ 0
R-5V
Text Label 6300 5200 0    50   ~ 0
G-5V
Text Label 6300 5700 0    50   ~ 0
B-5V
Wire Bus Line
	8550 2800 7700 2800
Text Label 6200 2800 0    50   ~ 0
FAN_BUS
Entry Wire Line
	7600 3200 7700 3300
Entry Wire Line
	7600 4050 7700 4150
Text Label 7300 3200 0    50   ~ 0
F1-5V
Text Label 7300 4050 0    50   ~ 0
F2-5V
Entry Wire Line
	8550 3450 8650 3550
Entry Wire Line
	8550 3650 8650 3750
Text Label 9400 3550 0    50   ~ 0
F2-5V
Text Label 9400 3750 0    50   ~ 0
F1-5V
Wire Wire Line
	9700 3450 8650 3450
Text Label 9400 3450 0    50   ~ 0
F2-T
Text Label 9400 3950 0    50   ~ 0
F1-T
$Comp
L Switch:SW_SPDT SW1
U 1 1 5D3C73AF
P 6150 3300
F 0 "SW1" H 6050 3400 50  0000 C CNN
F 1 "SW_SPDT" H 6150 3494 50  0000 C CNN
F 2 "footprints:PinHeader_1x03_P2.54mm_Vertical" H 6150 3300 50  0001 C CNN
F 3 "~" H 6150 3300 50  0001 C CNN
	1    6150 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW2
U 1 1 5D3CA2AB
P 6150 4150
F 0 "SW2" H 6050 4250 50  0000 C CNN
F 1 "SW_SPDT" H 6150 4344 50  0000 C CNN
F 2 "footprints:PinHeader_1x03_P2.54mm_Vertical" H 6150 4150 50  0001 C CNN
F 3 "~" H 6150 4150 50  0001 C CNN
	1    6150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3400 6350 3400
Wire Wire Line
	7000 4250 6350 4250
$Comp
L Connector:Conn_01x04_Male J-F2
U 1 1 5D3AAAFE
P 3600 3950
F 0 "J-F2" H 3500 3800 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3250 3900 50  0000 C CNN
F 2 "footprints:FanPinHeader_1x04_P2.54mm_Vertical" H 3600 3950 50  0001 C CNN
F 3 "~" H 3600 3950 50  0001 C CNN
	1    3600 3950
	1    0    0    -1  
$EndComp
Text Label 4500 4150 0    50   ~ 0
F2-GND
Wire Wire Line
	3800 4050 4050 4050
Entry Wire Line
	4050 4050 4150 4150
Wire Wire Line
	5450 4800 3800 4800
Wire Bus Line
	7700 2800 4950 2800
Connection ~ 7700 2800
Wire Wire Line
	7000 3000 7750 3000
Wire Wire Line
	7000 3850 7750 3850
Entry Wire Line
	7750 3000 7850 3100
Entry Wire Line
	7750 3850 7850 3950
Text Label 7300 3000 0    50   ~ 0
GND
Text Label 7300 3850 0    50   ~ 0
GND
Wire Wire Line
	3800 3000 4850 3000
Wire Wire Line
	3800 3200 4050 3200
Entry Wire Line
	4050 3200 4150 3300
Wire Wire Line
	3800 3100 4850 3100
Text Label 3850 3100 0    50   ~ 0
F1-T
Text Label 3850 3000 0    50   ~ 0
F1-5V
Text Label 3850 3950 0    50   ~ 0
F2-T
Text Label 3850 3850 0    50   ~ 0
F2-5V
Entry Wire Line
	4850 3000 4950 3100
Entry Wire Line
	4850 3100 4950 3200
Text Label 4500 3300 0    50   ~ 0
F1-GND
Wire Wire Line
	7300 3200 7600 3200
Wire Wire Line
	7300 4050 7600 4050
Wire Wire Line
	7000 3850 6350 3850
Wire Wire Line
	6350 3850 6350 4050
Connection ~ 7000 3850
Wire Wire Line
	6350 3200 6350 3000
Wire Wire Line
	6350 3000 7000 3000
Connection ~ 7000 3000
$Comp
L Switch:SW_Push_Dual SW3
U 1 1 5D47FE3D
P 10150 2150
F 0 "SW3" H 10150 2435 50  0000 C CNN
F 1 "SW_Push" H 10150 2344 50  0000 C CNN
F 2 "footprints:ESE-20C423" H 10150 2350 50  0001 C CNN
F 3 "~" H 10150 2350 50  0001 C CNN
	1    10150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 2350 10700 3250
Wire Wire Line
	10700 3250 10600 3250
Entry Wire Line
	7400 2150 7500 2250
Text Label 8150 2350 0    50   ~ 0
5V
NoConn ~ 10600 3050
NoConn ~ 10600 3350
NoConn ~ 10600 3450
NoConn ~ 10600 3550
NoConn ~ 10600 3650
NoConn ~ 10600 3750
NoConn ~ 10600 3850
NoConn ~ 10600 3950
NoConn ~ 10600 4050
Wire Wire Line
	9700 3350 9600 3350
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D4AC0F2
P 7750 1800
F 0 "#FLG0101" H 7750 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 7750 1973 50  0000 C CNN
F 2 "" H 7750 1800 50  0001 C CNN
F 3 "~" H 7750 1800 50  0001 C CNN
	1    7750 1800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D4AC954
P 7650 1800
F 0 "#FLG0102" H 7650 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 7650 1973 50  0000 C CNN
F 2 "" H 7650 1800 50  0001 C CNN
F 3 "~" H 7650 1800 50  0001 C CNN
	1    7650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1800 7750 2050
Text Label 7650 2050 1    50   ~ 0
5V
Text Label 7550 2050 1    50   ~ 0
12V
Text Label 7750 2050 1    50   ~ 0
GND
NoConn ~ 10350 2150
NoConn ~ 9950 2150
Text Label 6350 3400 0    50   ~ 0
F1-12V
Text Label 6350 4250 0    50   ~ 0
F2-12V
Entry Wire Line
	7500 2150 7600 2250
Wire Wire Line
	7600 2250 9600 2250
Wire Wire Line
	9600 2250 9600 2450
Text Label 8150 2250 0    50   ~ 0
GND
Text Label 10450 2350 0    50   ~ 0
RESET
Wire Wire Line
	9700 3250 9600 3250
Connection ~ 9600 3250
Wire Wire Line
	9600 3250 9600 3350
Wire Wire Line
	10600 3150 10800 3150
Wire Wire Line
	10800 3150 10800 2450
Wire Wire Line
	10800 2450 10150 2450
Connection ~ 9600 2450
Wire Wire Line
	9600 2450 9600 3250
Wire Wire Line
	8650 3750 9700 3750
Entry Wire Line
	8550 3350 8650 3450
Entry Wire Line
	8550 3850 8650 3950
Wire Wire Line
	8950 5700 8950 4350
Wire Wire Line
	6300 5700 8950 5700
Wire Wire Line
	6000 5400 5550 5400
Wire Wire Line
	5550 4700 5550 5400
Wire Wire Line
	9050 5200 9050 4150
Wire Wire Line
	6300 5200 9050 5200
$Comp
L power:GND #PWR0101
U 1 1 5D4BC2AA
P 10150 2450
F 0 "#PWR0101" H 10150 2200 50  0001 C CNN
F 1 "GND" H 10155 2277 50  0000 C CNN
F 2 "" H 10150 2450 50  0001 C CNN
F 3 "" H 10150 2450 50  0001 C CNN
	1    10150 2450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5D4B5915
P 7550 1800
F 0 "#FLG0103" H 7550 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 7550 1973 50  0000 C CNN
F 2 "" H 7550 1800 50  0001 C CNN
F 3 "~" H 7550 1800 50  0001 C CNN
	1    7550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4700 6950 4700
Wire Wire Line
	6950 4700 6950 5100
Wire Wire Line
	6950 5100 8850 5100
Wire Wire Line
	8850 5100 8850 3850
Wire Wire Line
	8650 3950 9700 3950
Wire Wire Line
	8650 3550 9700 3550
Wire Wire Line
	9150 4050 9150 6000
Wire Wire Line
	9150 6000 4250 6000
Wire Wire Line
	4250 6000 4250 5600
Wire Wire Line
	8750 3650 8750 6100
Wire Wire Line
	8750 6100 4350 6100
Wire Wire Line
	4350 6100 4350 5100
Wire Wire Line
	8750 3650 9700 3650
Wire Wire Line
	9350 3050 9350 2450
Wire Wire Line
	9350 2450 5800 2450
Wire Wire Line
	5800 1800 5800 2450
Wire Wire Line
	9250 3150 9250 2550
Wire Wire Line
	9250 2550 5700 2550
Wire Wire Line
	9250 3150 9700 3150
Entry Wire Line
	4850 3950 4950 4050
Entry Wire Line
	4850 3850 4950 3950
Wire Wire Line
	3800 3850 4850 3850
Wire Wire Line
	3800 3950 4850 3950
Entry Wire Line
	7750 2050 7850 2150
Entry Wire Line
	7650 2050 7750 2150
Entry Wire Line
	7550 2050 7650 2150
Wire Wire Line
	7650 1800 7650 2050
Wire Wire Line
	7550 2050 7550 1800
Connection ~ 10150 2450
Wire Wire Line
	10150 2450 9600 2450
Wire Wire Line
	7500 2350 9950 2350
Wire Wire Line
	7500 2250 7500 2350
Wire Wire Line
	10350 2350 10700 2350
$Comp
L Connector:Conn_01x03_Male J-A1
U 1 1 5D3A4B03
P 3600 5100
F 0 "J-A1" H 3600 5050 50  0000 R CNN
F 1 "Conn_01x03_Male" H 3600 5150 50  0000 R CNN
F 2 "footprints:PinHeader_1x03_P2.54mm_Vertical" H 3600 5100 50  0001 C CNN
F 3 "~" H 3600 5100 50  0001 C CNN
	1    3600 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female H2
U 1 1 5D5374A4
P 1500 3500
F 0 "H2" H 1600 3546 50  0000 L CNN
F 1 "MountingHole" H 1600 3455 50  0000 L CNN
F 2 "footprints:MountingHole_3.2mm_M3_Pad" H 1500 3500 50  0001 C CNN
F 3 "~" H 1500 3500 50  0001 C CNN
	1    1500 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female H3
U 1 1 5D537E45
P 1500 4000
F 0 "H3" H 1600 4046 50  0000 L CNN
F 1 "MountingHole" H 1600 3955 50  0000 L CNN
F 2 "footprints:MountingHole_3.2mm_M3_Pad" H 1500 4000 50  0001 C CNN
F 3 "~" H 1500 4000 50  0001 C CNN
	1    1500 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female H4
U 1 1 5D5380F2
P 1500 4500
F 0 "H4" H 1600 4546 50  0000 L CNN
F 1 "MountingHole" H 1600 4455 50  0000 L CNN
F 2 "footprints:MountingHole_3.2mm_M3_Pad" H 1500 4500 50  0001 C CNN
F 3 "~" H 1500 4500 50  0001 C CNN
	1    1500 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female H1
U 1 1 5D538581
P 1500 3000
F 0 "H1" H 1600 3046 50  0000 L CNN
F 1 "MountingHole" H 1600 2955 50  0000 L CNN
F 2 "footprints:MountingHole_3.2mm_M3_Pad" H 1500 3000 50  0001 C CNN
F 3 "~" H 1500 3000 50  0001 C CNN
	1    1500 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J-ARGB1
U 1 1 5D54F115
P 3600 6100
F 0 "J-ARGB1" H 3450 5950 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3250 6050 50  0000 C CNN
F 2 "footprints:PinHeader_1x04_P2.54mm_Vertical" H 3600 6100 50  0001 C CNN
F 3 "~" H 3600 6100 50  0001 C CNN
	1    3600 6100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J-ARGB2
U 1 1 5D54FB51
P 3600 6550
F 0 "J-ARGB2" H 3450 6400 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3250 6500 50  0000 C CNN
F 2 "footprints:PinHeader_1x04_P2.54mm_Vertical" H 3600 6550 50  0001 C CNN
F 3 "~" H 3600 6550 50  0001 C CNN
	1    3600 6550
	1    0    0    -1  
$EndComp
Entry Wire Line
	4050 6750 4150 6850
Entry Wire Line
	4050 6300 4150 6400
Entry Wire Line
	4050 6000 4150 6100
Entry Wire Line
	4050 6450 4150 6550
Wire Wire Line
	4050 6450 3800 6450
Wire Wire Line
	4050 6750 3800 6750
Wire Wire Line
	4050 6300 3800 6300
Wire Wire Line
	4050 6000 3800 6000
Text Label 3850 6000 0    50   ~ 0
5V
Text Label 3850 6450 0    50   ~ 0
5V
Text Label 3850 6750 0    50   ~ 0
GND
Text Label 3850 6300 0    50   ~ 0
GND
Connection ~ 4350 6100
Wire Wire Line
	4250 6550 4250 6000
Connection ~ 4250 6000
NoConn ~ 3800 6200
NoConn ~ 3800 6650
Text Label 3850 6550 0    50   ~ 0
A2
Text Label 3850 6100 0    50   ~ 0
A1
Wire Wire Line
	1300 4500 1300 4000
Wire Wire Line
	1300 3500 1300 4000
Connection ~ 1300 4000
Wire Wire Line
	1300 3500 1300 3000
Connection ~ 1300 3500
Entry Wire Line
	4050 2700 4150 2800
Wire Wire Line
	4050 2700 1300 2700
Wire Wire Line
	1300 2700 1300 3000
Connection ~ 1300 3000
Text Label 2250 2700 0    50   ~ 0
GND
Wire Wire Line
	3800 3300 5950 3300
Wire Bus Line
	7850 2150 7850 3950
Wire Wire Line
	3800 4150 5950 4150
Wire Bus Line
	7700 2800 7700 4150
Wire Wire Line
	5700 1800 5700 2550
Wire Wire Line
	3800 5600 4250 5600
Wire Wire Line
	3800 5100 4350 5100
Wire Wire Line
	3800 4600 5650 4600
Wire Wire Line
	3800 6100 4350 6100
Wire Wire Line
	3800 6550 4250 6550
Wire Bus Line
	4950 2800 4950 4050
Wire Bus Line
	8550 2800 8550 3850
Wire Bus Line
	4150 2150 7850 2150
Wire Bus Line
	4150 2150 4150 6850
$EndSCHEMATC
