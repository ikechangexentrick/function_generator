EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L Connector:AudioJack2_SwitchT J?
U 1 1 63FA1048
P 2250 1450
AR Path="/63FA1048" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FA1048" Ref="J1"  Part="1" 
F 0 "J1" H 2070 1383 50  0000 R CNN
F 1 "clock" H 2070 1474 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 2250 1450 50  0001 C CNN
F 3 "~" H 2250 1450 50  0001 C CNN
	1    2250 1450
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FA104E
P 2250 2600
AR Path="/63FA104E" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FA104E" Ref="J2"  Part="1" 
F 0 "J2" H 2071 2533 50  0000 R CNN
F 1 "cv1" H 2071 2624 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 2250 2600 50  0001 C CNN
F 3 "~" H 2250 2600 50  0001 C CNN
	1    2250 2600
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FA1054
P 2250 3600
AR Path="/63FA1054" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FA1054" Ref="J3"  Part="1" 
F 0 "J3" H 2071 3533 50  0000 R CNN
F 1 "cv2" H 2071 3624 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 2250 3600 50  0001 C CNN
F 3 "~" H 2250 3600 50  0001 C CNN
	1    2250 3600
	1    0    0    1   
$EndComp
$Comp
L Device:Rotary_Encoder SW?
U 1 1 63FA105A
P 2600 4650
AR Path="/63FA105A" Ref="SW?"  Part="1" 
AR Path="/63F383DE/63FA105A" Ref="SW1"  Part="1" 
F 0 "SW1" V 2950 4700 50  0000 R CNN
F 1 "command" V 2850 4800 50  0000 R CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E_Vertical_H20mm" H 2450 4810 50  0001 C CNN
F 3 "~" H 2600 4910 50  0001 C CNN
	1    2600 4650
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 63FA1060
P 2600 5850
AR Path="/63FA1060" Ref="SW?"  Part="1" 
AR Path="/63F383DE/63FA1060" Ref="SW2"  Part="1" 
F 0 "SW2" H 2600 6135 50  0000 C CNN
F 1 "enter" H 2600 6044 50  0000 C CNN
F 2 "Attenuverter:push_button" H 2600 6050 50  0001 C CNN
F 3 "~" H 2600 6050 50  0001 C CNN
	1    2600 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63FA1066
P 2600 1900
AR Path="/63FA1066" Ref="D?"  Part="1" 
AR Path="/63F383DE/63FA1066" Ref="D1"  Part="1" 
F 0 "D1" V 2639 1782 50  0000 R CNN
F 1 "clock" V 2548 1782 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 2600 1900 50  0001 C CNN
F 3 "~" H 2600 1900 50  0001 C CNN
	1    2600 1900
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 63FA106C
P 3300 1450
AR Path="/63FA106C" Ref="Q?"  Part="1" 
AR Path="/63F383DE/63FA106C" Ref="Q1"  Part="1" 
F 0 "Q1" H 3490 1496 50  0000 L CNN
F 1 "2SC1815" H 3490 1405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3500 1375 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 3300 1450 50  0001 L CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63FA1072
P 2600 1600
AR Path="/63FA1072" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA1072" Ref="R1"  Part="1" 
F 0 "R1" H 2530 1554 50  0000 R CNN
F 1 "10k" H 2530 1645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2530 1600 50  0001 C CNN
F 3 "~" H 2600 1600 50  0001 C CNN
	1    2600 1600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FA1078
P 2600 2050
AR Path="/63FA1078" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA1078" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 2600 1800 50  0001 C CNN
F 1 "GND" H 2605 1877 50  0000 C CNN
F 2 "" H 2600 2050 50  0001 C CNN
F 3 "" H 2600 2050 50  0001 C CNN
	1    2600 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FA107E
P 2450 1550
AR Path="/63FA107E" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA107E" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2450 1300 50  0001 C CNN
F 1 "GND" H 2455 1377 50  0000 C CNN
F 2 "" H 2450 1550 50  0001 C CNN
F 3 "" H 2450 1550 50  0001 C CNN
	1    2450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1450 2600 1450
Connection ~ 2600 1450
Wire Wire Line
	2600 1450 2700 1450
$Comp
L Device:R R?
U 1 1 63FA1087
P 2850 1450
AR Path="/63FA1087" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA1087" Ref="R4"  Part="1" 
F 0 "R4" V 3057 1450 50  0000 C CNN
F 1 "100k" V 2966 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2780 1450 50  0001 C CNN
F 3 "~" H 2850 1450 50  0001 C CNN
	1    2850 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FA108D
P 3050 1800
AR Path="/63FA108D" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA108D" Ref="R6"  Part="1" 
F 0 "R6" H 3120 1846 50  0000 L CNN
F 1 "100k" H 3120 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2980 1800 50  0001 C CNN
F 3 "~" H 3050 1800 50  0001 C CNN
	1    3050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FA1093
P 3050 1950
AR Path="/63FA1093" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA1093" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 3050 1700 50  0001 C CNN
F 1 "GND" H 3055 1777 50  0000 C CNN
F 2 "" H 3050 1950 50  0001 C CNN
F 3 "" H 3050 1950 50  0001 C CNN
	1    3050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63FA1099
P 3400 1250
AR Path="/63FA1099" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA1099" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 3400 1100 50  0001 C CNN
F 1 "+3V3" H 3415 1423 50  0000 C CNN
F 2 "" H 3400 1250 50  0001 C CNN
F 3 "" H 3400 1250 50  0001 C CNN
	1    3400 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63FA109F
P 3400 1800
AR Path="/63FA109F" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA109F" Ref="R9"  Part="1" 
F 0 "R9" H 3470 1846 50  0000 L CNN
F 1 "100k" H 3470 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3330 1800 50  0001 C CNN
F 3 "~" H 3400 1800 50  0001 C CNN
	1    3400 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FA10A5
P 3400 1950
AR Path="/63FA10A5" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA10A5" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 3400 1700 50  0001 C CNN
F 1 "GND" H 3405 1777 50  0000 C CNN
F 2 "" H 3400 1950 50  0001 C CNN
F 3 "" H 3400 1950 50  0001 C CNN
	1    3400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1450 3050 1450
Wire Wire Line
	3050 1650 3050 1450
Connection ~ 3050 1450
Wire Wire Line
	3050 1450 3100 1450
Wire Wire Line
	3400 1650 3600 1650
Connection ~ 3400 1650
Text Label 3600 1650 0    50   ~ 0
clock
$Comp
L power:GND #PWR?
U 1 1 63FA10B2
P 2450 3700
AR Path="/63FA10B2" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA10B2" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2450 3450 50  0001 C CNN
F 1 "GND" H 2455 3527 50  0000 C CNN
F 2 "" H 2450 3700 50  0001 C CNN
F 3 "" H 2450 3700 50  0001 C CNN
	1    2450 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FA10B8
P 2450 2700
AR Path="/63FA10B8" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA10B8" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 2450 2450 50  0001 C CNN
F 1 "GND" H 2455 2527 50  0000 C CNN
F 2 "" H 2450 2700 50  0001 C CNN
F 3 "" H 2450 2700 50  0001 C CNN
	1    2450 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63FA10BE
P 2600 2600
AR Path="/63FA10BE" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA10BE" Ref="R2"  Part="1" 
F 0 "R2" V 2807 2600 50  0000 C CNN
F 1 "100k" V 2716 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2530 2600 50  0001 C CNN
F 3 "~" H 2600 2600 50  0001 C CNN
	1    2600 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FA10C4
P 2600 3600
AR Path="/63FA10C4" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA10C4" Ref="R3"  Part="1" 
F 0 "R3" V 2807 3600 50  0000 C CNN
F 1 "100k" V 2716 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2530 3600 50  0001 C CNN
F 3 "~" H 2600 3600 50  0001 C CNN
	1    2600 3600
	0    -1   -1   0   
$EndComp
NoConn ~ 2450 1350
NoConn ~ 2450 2500
NoConn ~ 2450 3500
$Comp
L Device:R R?
U 1 1 63FA10CD
P 2950 4800
AR Path="/63FA10CD" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA10CD" Ref="R5"  Part="1" 
F 0 "R5" H 2880 4754 50  0000 R CNN
F 1 "10k" H 2880 4845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2880 4800 50  0001 C CNN
F 3 "~" H 2950 4800 50  0001 C CNN
	1    2950 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63FA10D3
P 3300 4800
AR Path="/63FA10D3" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA10D3" Ref="R8"  Part="1" 
F 0 "R8" H 3230 4754 50  0000 R CNN
F 1 "10k" H 3230 4845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3230 4800 50  0001 C CNN
F 3 "~" H 3300 4800 50  0001 C CNN
	1    3300 4800
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63FA10D9
P 2950 4650
AR Path="/63FA10D9" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA10D9" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 2950 4500 50  0001 C CNN
F 1 "+3V3" H 2965 4823 50  0000 C CNN
F 2 "" H 2950 4650 50  0001 C CNN
F 3 "" H 2950 4650 50  0001 C CNN
	1    2950 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63FA10DF
P 3300 4650
AR Path="/63FA10DF" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA10DF" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 3300 4500 50  0001 C CNN
F 1 "+3V3" H 3315 4823 50  0000 C CNN
F 2 "" H 3300 4650 50  0001 C CNN
F 3 "" H 3300 4650 50  0001 C CNN
	1    3300 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63FA10E5
P 3600 4950
AR Path="/63FA10E5" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA10E5" Ref="R10"  Part="1" 
F 0 "R10" V 3807 4950 50  0000 C CNN
F 1 "10k" V 3716 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3530 4950 50  0001 C CNN
F 3 "~" H 3600 4950 50  0001 C CNN
	1    3600 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FA10EB
P 3150 5200
AR Path="/63FA10EB" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FA10EB" Ref="R7"  Part="1" 
F 0 "R7" V 3357 5200 50  0000 C CNN
F 1 "10k" V 3266 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3080 5200 50  0001 C CNN
F 3 "~" H 3150 5200 50  0001 C CNN
	1    3150 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 63FA10F1
P 3350 5350
AR Path="/63FA10F1" Ref="C?"  Part="1" 
AR Path="/63F383DE/63FA10F1" Ref="C1"  Part="1" 
F 0 "C1" H 3465 5396 50  0000 L CNN
F 1 "0.1u" H 3465 5305 50  0000 L CNN
F 2 "Attenuverter:C_Axial_L4.8mm_D2.0mm_P2.54mm_Horizontal" H 3388 5200 50  0001 C CNN
F 3 "~" H 3350 5350 50  0001 C CNN
	1    3350 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63FA10F7
P 3800 5350
AR Path="/63FA10F7" Ref="C?"  Part="1" 
AR Path="/63F383DE/63FA10F7" Ref="C2"  Part="1" 
F 0 "C2" H 3915 5396 50  0000 L CNN
F 1 "0.1u" H 3915 5305 50  0000 L CNN
F 2 "Attenuverter:C_Axial_L4.8mm_D2.0mm_P2.54mm_Horizontal" H 3838 5200 50  0001 C CNN
F 3 "~" H 3800 5350 50  0001 C CNN
	1    3800 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FA10FD
P 3800 5500
AR Path="/63FA10FD" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA10FD" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 3800 5250 50  0001 C CNN
F 1 "GND" H 3805 5327 50  0000 C CNN
F 2 "" H 3800 5500 50  0001 C CNN
F 3 "" H 3800 5500 50  0001 C CNN
	1    3800 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FA1103
P 3350 5500
AR Path="/63FA1103" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA1103" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 3350 5250 50  0001 C CNN
F 1 "GND" H 3355 5327 50  0000 C CNN
F 2 "" H 3350 5500 50  0001 C CNN
F 3 "" H 3350 5500 50  0001 C CNN
	1    3350 5500
	1    0    0    -1  
$EndComp
Connection ~ 3300 4950
Wire Wire Line
	3300 4950 3450 4950
$Comp
L power:GND #PWR?
U 1 1 63FA110B
P 2600 4950
AR Path="/63FA110B" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA110B" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 2600 4700 50  0001 C CNN
F 1 "GND" H 2605 4777 50  0000 C CNN
F 2 "" H 2600 4950 50  0001 C CNN
F 3 "" H 2600 4950 50  0001 C CNN
	1    2600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4950 2950 5200
Wire Wire Line
	2950 5200 3000 5200
Wire Wire Line
	2950 5200 2500 5200
Wire Wire Line
	2500 5200 2500 4950
Connection ~ 2950 5200
Wire Wire Line
	2700 4950 3300 4950
Wire Wire Line
	3750 4950 3800 4950
Wire Wire Line
	3300 5200 3350 5200
Connection ~ 3350 5200
Wire Wire Line
	3800 4950 3800 5200
Connection ~ 3800 4950
Wire Wire Line
	3800 4950 4000 4950
Wire Wire Line
	3350 5200 4000 5200
Text Label 4000 5200 0    50   ~ 0
RE1
Text Label 4000 4950 0    50   ~ 0
RE2
$Comp
L power:GND #PWR?
U 1 1 63FA1120
P 2400 5850
AR Path="/63FA1120" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA1120" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2400 5600 50  0001 C CNN
F 1 "GND" H 2405 5677 50  0000 C CNN
F 2 "" H 2400 5850 50  0001 C CNN
F 3 "" H 2400 5850 50  0001 C CNN
	1    2400 5850
	1    0    0    -1  
$EndComp
Text Label 2800 5850 0    50   ~ 0
button
$Comp
L Arduino_compatible:OLED_Display_SSD1306 U?
U 1 1 63FA1127
P 3600 6300
AR Path="/63FA1127" Ref="U?"  Part="1" 
AR Path="/63F383DE/63FA1127" Ref="U1"  Part="1" 
F 0 "U1" H 3500 6600 50  0000 L CNN
F 1 "OLED_Display_SSD1306" H 3150 6500 50  0000 L CNN
F 2 "Attenuverter:aki_OLED_0.96in" H 3600 6300 50  0001 C CNN
F 3 "" H 3600 6300 50  0001 C CNN
	1    3600 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63FA112D
P 3500 6750
AR Path="/63FA112D" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA112D" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 3500 6600 50  0001 C CNN
F 1 "+3V3" H 3515 6923 50  0000 C CNN
F 2 "" H 3500 6750 50  0001 C CNN
F 3 "" H 3500 6750 50  0001 C CNN
	1    3500 6750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FA1133
P 3300 6750
AR Path="/63FA1133" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FA1133" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 3300 6500 50  0001 C CNN
F 1 "GND" H 3305 6577 50  0000 C CNN
F 2 "" H 3300 6750 50  0001 C CNN
F 3 "" H 3300 6750 50  0001 C CNN
	1    3300 6750
	1    0    0    -1  
$EndComp
Text Label 3700 6750 3    50   ~ 0
display_scl
Text Label 3900 6750 3    50   ~ 0
display_sda
Text Label 2750 2600 0    50   ~ 0
cv_1_in
Text Label 2750 3600 0    50   ~ 0
cv_2_in
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FB5D6C
P 5850 1600
AR Path="/63FB5D6C" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FB5D6C" Ref="J4"  Part="1" 
F 0 "J4" H 5670 1533 50  0000 R CNN
F 1 "out1" H 5670 1624 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 5850 1600 50  0001 C CNN
F 3 "~" H 5850 1600 50  0001 C CNN
	1    5850 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63FB5D72
P 5500 1600
AR Path="/63FB5D72" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FB5D72" Ref="R15"  Part="1" 
F 0 "R15" V 5707 1600 50  0000 C CNN
F 1 "1k" V 5616 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 1600 50  0001 C CNN
F 3 "~" H 5500 1600 50  0001 C CNN
	1    5500 1600
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FB5D78
P 5650 1700
AR Path="/63FB5D78" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FB5D78" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 5650 1450 50  0001 C CNN
F 1 "GND" H 5655 1527 50  0000 C CNN
F 2 "" H 5650 1700 50  0001 C CNN
F 3 "" H 5650 1700 50  0001 C CNN
	1    5650 1700
	1    0    0    -1  
$EndComp
Text Label 5350 1600 2    50   ~ 0
out_1
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FB5D7F
P 5850 3000
AR Path="/63FB5D7F" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FB5D7F" Ref="J5"  Part="1" 
F 0 "J5" H 5670 2933 50  0000 R CNN
F 1 "out2" H 5670 3024 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 5850 3000 50  0001 C CNN
F 3 "~" H 5850 3000 50  0001 C CNN
	1    5850 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63FB5D85
P 5500 3000
AR Path="/63FB5D85" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FB5D85" Ref="R16"  Part="1" 
F 0 "R16" V 5707 3000 50  0000 C CNN
F 1 "1k" V 5616 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 3000 50  0001 C CNN
F 3 "~" H 5500 3000 50  0001 C CNN
	1    5500 3000
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FB5D8B
P 5650 3100
AR Path="/63FB5D8B" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FB5D8B" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 5650 2850 50  0001 C CNN
F 1 "GND" H 5655 2927 50  0000 C CNN
F 2 "" H 5650 3100 50  0001 C CNN
F 3 "" H 5650 3100 50  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
Text Label 5350 3000 2    50   ~ 0
out_2
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FB5D92
P 5850 4400
AR Path="/63FB5D92" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FB5D92" Ref="J6"  Part="1" 
F 0 "J6" H 5670 4333 50  0000 R CNN
F 1 "out3" H 5670 4424 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 5850 4400 50  0001 C CNN
F 3 "~" H 5850 4400 50  0001 C CNN
	1    5850 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63FB5D98
P 5500 4400
AR Path="/63FB5D98" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FB5D98" Ref="R17"  Part="1" 
F 0 "R17" V 5707 4400 50  0000 C CNN
F 1 "1k" V 5616 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 4400 50  0001 C CNN
F 3 "~" H 5500 4400 50  0001 C CNN
	1    5500 4400
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FB5D9E
P 5650 4500
AR Path="/63FB5D9E" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FB5D9E" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 5650 4250 50  0001 C CNN
F 1 "GND" H 5655 4327 50  0000 C CNN
F 2 "" H 5650 4500 50  0001 C CNN
F 3 "" H 5650 4500 50  0001 C CNN
	1    5650 4500
	1    0    0    -1  
$EndComp
Text Label 5350 4400 2    50   ~ 0
out_3
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FB5DA5
P 5850 5800
AR Path="/63FB5DA5" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FB5DA5" Ref="J7"  Part="1" 
F 0 "J7" H 5670 5733 50  0000 R CNN
F 1 "out4" H 5670 5824 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 5850 5800 50  0001 C CNN
F 3 "~" H 5850 5800 50  0001 C CNN
	1    5850 5800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63FB5DAB
P 5500 5800
AR Path="/63FB5DAB" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FB5DAB" Ref="R18"  Part="1" 
F 0 "R18" V 5707 5800 50  0000 C CNN
F 1 "1k" V 5616 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 5800 50  0001 C CNN
F 3 "~" H 5500 5800 50  0001 C CNN
	1    5500 5800
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FB5DB1
P 5650 5900
AR Path="/63FB5DB1" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FB5DB1" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 5650 5650 50  0001 C CNN
F 1 "GND" H 5655 5727 50  0000 C CNN
F 2 "" H 5650 5900 50  0001 C CNN
F 3 "" H 5650 5900 50  0001 C CNN
	1    5650 5900
	1    0    0    -1  
$EndComp
Text Label 5350 5800 2    50   ~ 0
out_4
$Comp
L Device:LED D?
U 1 1 63FB5DB8
P 5350 2050
AR Path="/63FB5DB8" Ref="D?"  Part="1" 
AR Path="/63F383DE/63FB5DB8" Ref="D2"  Part="1" 
F 0 "D2" V 5389 1932 50  0000 R CNN
F 1 "out1" V 5298 1932 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 5350 2050 50  0001 C CNN
F 3 "~" H 5350 2050 50  0001 C CNN
	1    5350 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FB5DBE
P 5350 1750
AR Path="/63FB5DBE" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FB5DBE" Ref="R11"  Part="1" 
F 0 "R11" H 5280 1704 50  0000 R CNN
F 1 "10k" H 5280 1795 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5280 1750 50  0001 C CNN
F 3 "~" H 5350 1750 50  0001 C CNN
	1    5350 1750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FB5DC4
P 5350 2200
AR Path="/63FB5DC4" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FB5DC4" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5350 1950 50  0001 C CNN
F 1 "GND" H 5355 2027 50  0000 C CNN
F 2 "" H 5350 2200 50  0001 C CNN
F 3 "" H 5350 2200 50  0001 C CNN
	1    5350 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63FB5DCA
P 5350 3450
AR Path="/63FB5DCA" Ref="D?"  Part="1" 
AR Path="/63F383DE/63FB5DCA" Ref="D3"  Part="1" 
F 0 "D3" V 5389 3332 50  0000 R CNN
F 1 "out2" V 5298 3332 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 5350 3450 50  0001 C CNN
F 3 "~" H 5350 3450 50  0001 C CNN
	1    5350 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FB5DD0
P 5350 3150
AR Path="/63FB5DD0" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FB5DD0" Ref="R12"  Part="1" 
F 0 "R12" H 5280 3104 50  0000 R CNN
F 1 "10k" H 5280 3195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5280 3150 50  0001 C CNN
F 3 "~" H 5350 3150 50  0001 C CNN
	1    5350 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FB5DD6
P 5350 3600
AR Path="/63FB5DD6" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FB5DD6" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 5350 3350 50  0001 C CNN
F 1 "GND" H 5355 3427 50  0000 C CNN
F 2 "" H 5350 3600 50  0001 C CNN
F 3 "" H 5350 3600 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63FB5DDC
P 5350 4850
AR Path="/63FB5DDC" Ref="D?"  Part="1" 
AR Path="/63F383DE/63FB5DDC" Ref="D4"  Part="1" 
F 0 "D4" V 5389 4732 50  0000 R CNN
F 1 "out3" V 5298 4732 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 5350 4850 50  0001 C CNN
F 3 "~" H 5350 4850 50  0001 C CNN
	1    5350 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FB5DE2
P 5350 4550
AR Path="/63FB5DE2" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FB5DE2" Ref="R13"  Part="1" 
F 0 "R13" H 5280 4504 50  0000 R CNN
F 1 "10k" H 5280 4595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5280 4550 50  0001 C CNN
F 3 "~" H 5350 4550 50  0001 C CNN
	1    5350 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FB5DE8
P 5350 5000
AR Path="/63FB5DE8" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FB5DE8" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 5350 4750 50  0001 C CNN
F 1 "GND" H 5355 4827 50  0000 C CNN
F 2 "" H 5350 5000 50  0001 C CNN
F 3 "" H 5350 5000 50  0001 C CNN
	1    5350 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63FB5DEE
P 5350 6250
AR Path="/63FB5DEE" Ref="D?"  Part="1" 
AR Path="/63F383DE/63FB5DEE" Ref="D5"  Part="1" 
F 0 "D5" V 5389 6132 50  0000 R CNN
F 1 "out4" V 5298 6132 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 5350 6250 50  0001 C CNN
F 3 "~" H 5350 6250 50  0001 C CNN
	1    5350 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FB5DF4
P 5350 5950
AR Path="/63FB5DF4" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FB5DF4" Ref="R14"  Part="1" 
F 0 "R14" H 5280 5904 50  0000 R CNN
F 1 "10k" H 5280 5995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5280 5950 50  0001 C CNN
F 3 "~" H 5350 5950 50  0001 C CNN
	1    5350 5950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FB5DFA
P 5350 6400
AR Path="/63FB5DFA" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FB5DFA" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 5350 6150 50  0001 C CNN
F 1 "GND" H 5355 6227 50  0000 C CNN
F 2 "" H 5350 6400 50  0001 C CNN
F 3 "" H 5350 6400 50  0001 C CNN
	1    5350 6400
	1    0    0    -1  
$EndComp
NoConn ~ 5650 1500
NoConn ~ 5650 2900
NoConn ~ 5650 4300
NoConn ~ 5650 5700
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FCC7B9
P 7100 1600
AR Path="/63FCC7B9" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FCC7B9" Ref="J8"  Part="1" 
F 0 "J8" H 6920 1533 50  0000 R CNN
F 1 "out5" H 6920 1624 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 7100 1600 50  0001 C CNN
F 3 "~" H 7100 1600 50  0001 C CNN
	1    7100 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63FCC7BF
P 6750 1600
AR Path="/63FCC7BF" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FCC7BF" Ref="R23"  Part="1" 
F 0 "R23" V 6957 1600 50  0000 C CNN
F 1 "1k" V 6866 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6680 1600 50  0001 C CNN
F 3 "~" H 6750 1600 50  0001 C CNN
	1    6750 1600
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FCC7C5
P 6900 1700
AR Path="/63FCC7C5" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FCC7C5" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 6900 1450 50  0001 C CNN
F 1 "GND" H 6905 1527 50  0000 C CNN
F 2 "" H 6900 1700 50  0001 C CNN
F 3 "" H 6900 1700 50  0001 C CNN
	1    6900 1700
	1    0    0    -1  
$EndComp
Text Label 6600 1600 2    50   ~ 0
out_5
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FCC7CC
P 7100 3000
AR Path="/63FCC7CC" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FCC7CC" Ref="J9"  Part="1" 
F 0 "J9" H 6920 2933 50  0000 R CNN
F 1 "out6" H 6920 3024 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 7100 3000 50  0001 C CNN
F 3 "~" H 7100 3000 50  0001 C CNN
	1    7100 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63FCC7D2
P 6750 3000
AR Path="/63FCC7D2" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FCC7D2" Ref="R24"  Part="1" 
F 0 "R24" V 6957 3000 50  0000 C CNN
F 1 "1k" V 6866 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6680 3000 50  0001 C CNN
F 3 "~" H 6750 3000 50  0001 C CNN
	1    6750 3000
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FCC7D8
P 6900 3100
AR Path="/63FCC7D8" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FCC7D8" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 6900 2850 50  0001 C CNN
F 1 "GND" H 6905 2927 50  0000 C CNN
F 2 "" H 6900 3100 50  0001 C CNN
F 3 "" H 6900 3100 50  0001 C CNN
	1    6900 3100
	1    0    0    -1  
$EndComp
Text Label 6600 3000 2    50   ~ 0
out_6
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FCC7DF
P 7100 4400
AR Path="/63FCC7DF" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FCC7DF" Ref="J10"  Part="1" 
F 0 "J10" H 6920 4333 50  0000 R CNN
F 1 "out7" H 6920 4424 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 7100 4400 50  0001 C CNN
F 3 "~" H 7100 4400 50  0001 C CNN
	1    7100 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63FCC7E5
P 6750 4400
AR Path="/63FCC7E5" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FCC7E5" Ref="R25"  Part="1" 
F 0 "R25" V 6957 4400 50  0000 C CNN
F 1 "1k" V 6866 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6680 4400 50  0001 C CNN
F 3 "~" H 6750 4400 50  0001 C CNN
	1    6750 4400
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FCC7EB
P 6900 4500
AR Path="/63FCC7EB" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FCC7EB" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 6900 4250 50  0001 C CNN
F 1 "GND" H 6905 4327 50  0000 C CNN
F 2 "" H 6900 4500 50  0001 C CNN
F 3 "" H 6900 4500 50  0001 C CNN
	1    6900 4500
	1    0    0    -1  
$EndComp
Text Label 6600 4400 2    50   ~ 0
out_7
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 63FCC7F2
P 7100 5800
AR Path="/63FCC7F2" Ref="J?"  Part="1" 
AR Path="/63F383DE/63FCC7F2" Ref="J11"  Part="1" 
F 0 "J11" H 6920 5733 50  0000 R CNN
F 1 "out8" H 6920 5824 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 7100 5800 50  0001 C CNN
F 3 "~" H 7100 5800 50  0001 C CNN
	1    7100 5800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63FCC7F8
P 6750 5800
AR Path="/63FCC7F8" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FCC7F8" Ref="R26"  Part="1" 
F 0 "R26" V 6957 5800 50  0000 C CNN
F 1 "1k" V 6866 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6680 5800 50  0001 C CNN
F 3 "~" H 6750 5800 50  0001 C CNN
	1    6750 5800
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FCC7FE
P 6900 5900
AR Path="/63FCC7FE" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FCC7FE" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 6900 5650 50  0001 C CNN
F 1 "GND" H 6905 5727 50  0000 C CNN
F 2 "" H 6900 5900 50  0001 C CNN
F 3 "" H 6900 5900 50  0001 C CNN
	1    6900 5900
	1    0    0    -1  
$EndComp
Text Label 6600 5800 2    50   ~ 0
out_8
$Comp
L Device:LED D?
U 1 1 63FCC805
P 6600 2050
AR Path="/63FCC805" Ref="D?"  Part="1" 
AR Path="/63F383DE/63FCC805" Ref="D6"  Part="1" 
F 0 "D6" V 6639 1932 50  0000 R CNN
F 1 "out5" V 6548 1932 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 6600 2050 50  0001 C CNN
F 3 "~" H 6600 2050 50  0001 C CNN
	1    6600 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FCC80B
P 6600 1750
AR Path="/63FCC80B" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FCC80B" Ref="R19"  Part="1" 
F 0 "R19" H 6530 1704 50  0000 R CNN
F 1 "10k" H 6530 1795 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6530 1750 50  0001 C CNN
F 3 "~" H 6600 1750 50  0001 C CNN
	1    6600 1750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FCC811
P 6600 2200
AR Path="/63FCC811" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FCC811" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 6600 1950 50  0001 C CNN
F 1 "GND" H 6605 2027 50  0000 C CNN
F 2 "" H 6600 2200 50  0001 C CNN
F 3 "" H 6600 2200 50  0001 C CNN
	1    6600 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63FCC817
P 6600 3450
AR Path="/63FCC817" Ref="D?"  Part="1" 
AR Path="/63F383DE/63FCC817" Ref="D7"  Part="1" 
F 0 "D7" V 6639 3332 50  0000 R CNN
F 1 "out6" V 6548 3332 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 6600 3450 50  0001 C CNN
F 3 "~" H 6600 3450 50  0001 C CNN
	1    6600 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FCC81D
P 6600 3150
AR Path="/63FCC81D" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FCC81D" Ref="R20"  Part="1" 
F 0 "R20" H 6530 3104 50  0000 R CNN
F 1 "10k" H 6530 3195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6530 3150 50  0001 C CNN
F 3 "~" H 6600 3150 50  0001 C CNN
	1    6600 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FCC823
P 6600 3600
AR Path="/63FCC823" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FCC823" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 6600 3350 50  0001 C CNN
F 1 "GND" H 6605 3427 50  0000 C CNN
F 2 "" H 6600 3600 50  0001 C CNN
F 3 "" H 6600 3600 50  0001 C CNN
	1    6600 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63FCC829
P 6600 4850
AR Path="/63FCC829" Ref="D?"  Part="1" 
AR Path="/63F383DE/63FCC829" Ref="D8"  Part="1" 
F 0 "D8" V 6639 4732 50  0000 R CNN
F 1 "out7" V 6548 4732 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 6600 4850 50  0001 C CNN
F 3 "~" H 6600 4850 50  0001 C CNN
	1    6600 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FCC82F
P 6600 4550
AR Path="/63FCC82F" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FCC82F" Ref="R21"  Part="1" 
F 0 "R21" H 6530 4504 50  0000 R CNN
F 1 "10k" H 6530 4595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6530 4550 50  0001 C CNN
F 3 "~" H 6600 4550 50  0001 C CNN
	1    6600 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FCC835
P 6600 5000
AR Path="/63FCC835" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FCC835" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 6600 4750 50  0001 C CNN
F 1 "GND" H 6605 4827 50  0000 C CNN
F 2 "" H 6600 5000 50  0001 C CNN
F 3 "" H 6600 5000 50  0001 C CNN
	1    6600 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63FCC83B
P 6600 6250
AR Path="/63FCC83B" Ref="D?"  Part="1" 
AR Path="/63F383DE/63FCC83B" Ref="D9"  Part="1" 
F 0 "D9" V 6639 6132 50  0000 R CNN
F 1 "out8" V 6548 6132 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 6600 6250 50  0001 C CNN
F 3 "~" H 6600 6250 50  0001 C CNN
	1    6600 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63FCC841
P 6600 5950
AR Path="/63FCC841" Ref="R?"  Part="1" 
AR Path="/63F383DE/63FCC841" Ref="R22"  Part="1" 
F 0 "R22" H 6530 5904 50  0000 R CNN
F 1 "10k" H 6530 5995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6530 5950 50  0001 C CNN
F 3 "~" H 6600 5950 50  0001 C CNN
	1    6600 5950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FCC847
P 6600 6400
AR Path="/63FCC847" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/63FCC847" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 6600 6150 50  0001 C CNN
F 1 "GND" H 6605 6227 50  0000 C CNN
F 2 "" H 6600 6400 50  0001 C CNN
F 3 "" H 6600 6400 50  0001 C CNN
	1    6600 6400
	1    0    0    -1  
$EndComp
NoConn ~ 6900 5700
NoConn ~ 6900 4300
NoConn ~ 6900 2900
NoConn ~ 6900 1500
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J12
U 1 1 64130EE2
P 8950 2300
F 0 "J12" H 9000 2917 50  0000 C CNN
F 1 "interface_to_mid" H 9000 2826 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical" H 8950 2300 50  0001 C CNN
F 3 "~" H 8950 2300 50  0001 C CNN
	1    8950 2300
	1    0    0    -1  
$EndComp
Text Label 9300 2500 0    50   ~ 0
out_1
Text Label 9300 2600 0    50   ~ 0
out_2
Text Label 8700 2600 2    50   ~ 0
out_3
Text Label 8700 2500 2    50   ~ 0
out_4
Text Label 9300 2700 0    50   ~ 0
out_5
Text Label 9300 2800 0    50   ~ 0
out_6
Text Label 8700 2800 2    50   ~ 0
out_7
Text Label 8700 2700 2    50   ~ 0
out_8
Text Label 9250 1900 0    50   ~ 0
display_sda
Text Label 8750 1900 2    50   ~ 0
display_scl
Text Label 9250 2200 0    50   ~ 0
clock
Text Label 9250 2100 0    50   ~ 0
cv_1_in
Text Label 8750 2200 2    50   ~ 0
cv_2_in
Text Label 9250 2000 0    50   ~ 0
RE1
Text Label 8750 2000 2    50   ~ 0
RE2
Text Label 8750 2100 2    50   ~ 0
button
$Comp
L power:GND #PWR?
U 1 1 641415B0
P 8750 2400
AR Path="/641415B0" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/641415B0" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 8750 2150 50  0001 C CNN
F 1 "GND" V 8755 2272 50  0000 R CNN
F 2 "" H 8750 2400 50  0001 C CNN
F 3 "" H 8750 2400 50  0001 C CNN
	1    8750 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64141CAE
P 9250 2400
AR Path="/64141CAE" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/64141CAE" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 9250 2150 50  0001 C CNN
F 1 "GND" V 9255 2272 50  0000 R CNN
F 2 "" H 9250 2400 50  0001 C CNN
F 3 "" H 9250 2400 50  0001 C CNN
	1    9250 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 64142240
P 9250 2300
AR Path="/64142240" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/64142240" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 9250 2150 50  0001 C CNN
F 1 "+3V3" V 9265 2428 50  0000 L CNN
F 2 "" H 9250 2300 50  0001 C CNN
F 3 "" H 9250 2300 50  0001 C CNN
	1    9250 2300
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 64142F95
P 8750 2300
AR Path="/64142F95" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/64142F95" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 8750 2150 50  0001 C CNN
F 1 "+3V3" V 8765 2428 50  0000 L CNN
F 2 "" H 8750 2300 50  0001 C CNN
F 3 "" H 8750 2300 50  0001 C CNN
	1    8750 2300
	0    -1   -1   0   
$EndComp
Text HLabel 9700 1900 2    50   Input ~ 0
display_sda
Text HLabel 8300 2200 0    50   Input ~ 0
cv_2_in
Text HLabel 9700 2100 2    50   Input ~ 0
cv_1_in
Text HLabel 9700 2200 2    50   Input ~ 0
clock
Text HLabel 9700 2500 2    50   Input ~ 0
out_1
Text HLabel 9700 2600 2    50   Input ~ 0
out_2
Text HLabel 8300 2600 0    50   Input ~ 0
out_3
Text HLabel 8300 2500 0    50   Input ~ 0
out_4
Text HLabel 8300 1900 0    50   Input ~ 0
display_scl
Text HLabel 9700 2000 2    50   Input ~ 0
RE1
Text HLabel 8300 2000 0    50   Input ~ 0
RE2
Text HLabel 8300 2100 0    50   Input ~ 0
button
Text HLabel 8300 2700 0    50   Input ~ 0
out_8
Text HLabel 8300 2800 0    50   Input ~ 0
out_7
Text HLabel 9700 2800 2    50   Input ~ 0
out_6
Text HLabel 9700 2700 2    50   Input ~ 0
out_5
Wire Wire Line
	9700 1900 9250 1900
Wire Wire Line
	9250 2000 9700 2000
Wire Wire Line
	9700 2100 9250 2100
Wire Wire Line
	9250 2200 9700 2200
Wire Wire Line
	9250 2500 9700 2500
Wire Wire Line
	9250 2600 9700 2600
Wire Wire Line
	9250 2700 9700 2700
Wire Wire Line
	9250 2800 9700 2800
Wire Wire Line
	8750 2800 8300 2800
Wire Wire Line
	8300 2700 8750 2700
Wire Wire Line
	8300 2600 8750 2600
Wire Wire Line
	8300 2500 8750 2500
Wire Wire Line
	8300 2200 8750 2200
Wire Wire Line
	8300 2100 8750 2100
Wire Wire Line
	8300 2000 8750 2000
Wire Wire Line
	8300 1900 8750 1900
$EndSCHEMATC
