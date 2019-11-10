EESchema Schematic File Version 4
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
L Device:Q_NMOS_GDSD Q1
U 1 1 5DC8947E
P 4900 3250
F 0 "Q1" H 5188 3296 50  0000 L CNN
F 1 "Q_NMOS_GDSD" H 5188 3205 50  0000 L CNN
F 2 "footprints:SOT-223" H 5100 3350 50  0001 C CNN
F 3 "~" H 4900 3250 50  0001 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3450 5000 3500
Wire Wire Line
	5100 3050 5100 3000
Wire Wire Line
	5100 3000 5000 3000
Wire Wire Line
	5000 3050 5000 3000
Text Label 4500 3250 2    50   ~ 0
GATE
Text Label 4500 3500 2    50   ~ 0
GND
Text Label 4500 3000 2    50   ~ 0
OUT
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5DC93F27
P 2800 2800
F 0 "J1" H 2908 3181 50  0000 C CNN
F 1 "Conn_01x05_Male" H 2908 3090 50  0000 C CNN
F 2 "footprints:PinHeader_1x05_P2.54mm_Vertical" H 2800 2800 50  0001 C CNN
F 3 "~" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3000 5000 3000
Connection ~ 5000 3000
Wire Wire Line
	4500 3250 4700 3250
Wire Wire Line
	4500 3500 5000 3500
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 5DC9550A
P 2800 3700
F 0 "J2" H 2908 4081 50  0000 C CNN
F 1 "Conn_01x05_Male" H 2908 3990 50  0000 C CNN
F 2 "footprints:PinHeader_1x05_P2.54mm_Vertical" H 2800 3700 50  0001 C CNN
F 3 "~" H 2800 3700 50  0001 C CNN
	1    2800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2600 3500 2600
Wire Wire Line
	3000 2700 3500 2700
Wire Wire Line
	3500 2700 3500 2600
Wire Wire Line
	3000 3000 3500 3000
Wire Wire Line
	3500 3000 3500 2900
Wire Wire Line
	3000 2900 3500 2900
Wire Wire Line
	3000 3500 3500 3500
Wire Wire Line
	3500 3500 3500 3600
Wire Wire Line
	3500 3600 3000 3600
Wire Wire Line
	3000 3900 3500 3900
Wire Wire Line
	3500 3900 3500 3800
Wire Wire Line
	3500 3800 3000 3800
Text Label 3500 3800 2    50   ~ 0
GND
Text Label 3500 3500 2    50   ~ 0
OUT
Text Label 3500 2900 2    50   ~ 0
GND
Text Label 3500 2600 2    50   ~ 0
GATE
NoConn ~ 3000 2800
NoConn ~ 3000 3700
$EndSCHEMATC
