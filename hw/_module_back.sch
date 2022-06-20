EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Amplifier_Operational:TL074 U?
U 5 1 63FEBB49
P 1050 7100
AR Path="/63FEBB49" Ref="U?"  Part="5" 
AR Path="/63F3B749/63FEBB49" Ref="U7"  Part="5" 
F 0 "U7" H 900 7600 50  0000 L CNN
F 1 "TL074" H 850 7500 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1000 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1100 7300 50  0001 C CNN
	5    1050 7100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 63FEBB4F
P 1550 7100
AR Path="/63FEBB4F" Ref="U?"  Part="5" 
AR Path="/63F3B749/63FEBB4F" Ref="U8"  Part="5" 
F 0 "U8" H 1400 7600 50  0000 L CNN
F 1 "TL074" H 1350 7500 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1500 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1600 7300 50  0001 C CNN
	5    1550 7100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 63FEBB55
P 2050 7100
AR Path="/63FEBB55" Ref="U?"  Part="3" 
AR Path="/63F3B749/63FEBB55" Ref="U9"  Part="3" 
F 0 "U9" H 1900 7600 50  0000 L CNN
F 1 "TL072" H 1850 7500 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2050 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2050 7100 50  0001 C CNN
	3    2050 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63FEBB5B
P 2150 7150
AR Path="/63FEBB5B" Ref="C?"  Part="1" 
AR Path="/63F3B749/63FEBB5B" Ref="C13"  Part="1" 
F 0 "C13" H 2265 7196 50  0000 L CNN
F 1 "0.1u" H 2265 7105 50  0000 L CNN
F 2 "Attenuverter:C_Axial_L4.8mm_D2.0mm_P2.54mm_Horizontal" H 2188 7000 50  0001 C CNN
F 3 "~" H 2150 7150 50  0001 C CNN
	1    2150 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63FEBB61
P 1600 7150
AR Path="/63FEBB61" Ref="C?"  Part="1" 
AR Path="/63F3B749/63FEBB61" Ref="C12"  Part="1" 
F 0 "C12" H 1715 7196 50  0000 L CNN
F 1 "0.1u" H 1715 7105 50  0000 L CNN
F 2 "Attenuverter:C_Axial_L4.8mm_D2.0mm_P2.54mm_Horizontal" H 1638 7000 50  0001 C CNN
F 3 "~" H 1600 7150 50  0001 C CNN
	1    1600 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63FEBB67
P 1100 7150
AR Path="/63FEBB67" Ref="C?"  Part="1" 
AR Path="/63F3B749/63FEBB67" Ref="C11"  Part="1" 
F 0 "C11" H 1215 7196 50  0000 L CNN
F 1 "0.1u" H 1215 7105 50  0000 L CNN
F 2 "Attenuverter:C_Axial_L4.8mm_D2.0mm_P2.54mm_Horizontal" H 1138 7000 50  0001 C CNN
F 3 "~" H 1100 7150 50  0001 C CNN
	1    1100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6800 1100 6800
Wire Wire Line
	2150 6800 2150 7000
Connection ~ 1450 6800
Wire Wire Line
	1450 6800 1600 6800
Connection ~ 1950 6800
Wire Wire Line
	1950 6800 2150 6800
Wire Wire Line
	2150 7300 2150 7400
Wire Wire Line
	2150 7400 1950 7400
Connection ~ 1450 7400
Wire Wire Line
	1450 7400 1100 7400
Connection ~ 1950 7400
Wire Wire Line
	1950 7400 1600 7400
Wire Wire Line
	1100 7300 1100 7400
Connection ~ 1100 7400
Wire Wire Line
	1100 7400 950  7400
Wire Wire Line
	1100 7000 1100 6800
Connection ~ 1100 6800
Wire Wire Line
	1100 6800 1450 6800
Wire Wire Line
	1600 7000 1600 6800
Connection ~ 1600 6800
Wire Wire Line
	1600 6800 1950 6800
Wire Wire Line
	1600 7300 1600 7400
Connection ~ 1600 7400
Wire Wire Line
	1600 7400 1450 7400
$Comp
L power:+12V #PWR?
U 1 1 63FEBB85
P 2150 6800
AR Path="/63FEBB85" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBB85" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 2150 6650 50  0001 C CNN
F 1 "+12V" V 2165 6928 50  0000 L CNN
F 2 "" H 2150 6800 50  0001 C CNN
F 3 "" H 2150 6800 50  0001 C CNN
	1    2150 6800
	0    1    1    0   
$EndComp
Connection ~ 2150 6800
$Comp
L power:-12V #PWR?
U 1 1 63FEBB8C
P 2150 7400
AR Path="/63FEBB8C" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBB8C" Ref="#PWR088"  Part="1" 
F 0 "#PWR088" H 2150 7500 50  0001 C CNN
F 1 "-12V" V 2165 7528 50  0000 L CNN
F 2 "" H 2150 7400 50  0001 C CNN
F 3 "" H 2150 7400 50  0001 C CNN
	1    2150 7400
	0    1    1    0   
$EndComp
Connection ~ 2150 7400
$Comp
L power:PWR_FLAG #FLG?
U 1 1 63FEBB93
P 2700 7150
AR Path="/63FEBB93" Ref="#FLG?"  Part="1" 
AR Path="/63F3B749/63FEBB93" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2700 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 7323 50  0000 C CNN
F 2 "" H 2700 7150 50  0001 C CNN
F 3 "~" H 2700 7150 50  0001 C CNN
	1    2700 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 63FEBB99
P 3000 7000
AR Path="/63FEBB99" Ref="C?"  Part="1" 
AR Path="/63F3B749/63FEBB99" Ref="C14"  Part="1" 
F 0 "C14" H 3118 7046 50  0000 L CNN
F 1 "100u" H 3118 6955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3038 6850 50  0001 C CNN
F 3 "~" H 3000 7000 50  0001 C CNN
	1    3000 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 63FEBB9F
P 3000 7300
AR Path="/63FEBB9F" Ref="C?"  Part="1" 
AR Path="/63F3B749/63FEBB9F" Ref="C15"  Part="1" 
F 0 "C15" H 3118 7346 50  0000 L CNN
F 1 "100u" H 3118 7255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3038 7150 50  0001 C CNN
F 3 "~" H 3000 7300 50  0001 C CNN
	1    3000 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 63FEBBA5
P 3000 6850
AR Path="/63FEBBA5" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBBA5" Ref="#PWR091"  Part="1" 
F 0 "#PWR091" H 3000 6700 50  0001 C CNN
F 1 "+12V" H 3015 7023 50  0000 C CNN
F 2 "" H 3000 6850 50  0001 C CNN
F 3 "" H 3000 6850 50  0001 C CNN
	1    3000 6850
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 63FEBBAB
P 3000 7450
AR Path="/63FEBBAB" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBBAB" Ref="#PWR092"  Part="1" 
F 0 "#PWR092" H 3000 7550 50  0001 C CNN
F 1 "-12V" H 3015 7623 50  0000 C CNN
F 2 "" H 3000 7450 50  0001 C CNN
F 3 "" H 3000 7450 50  0001 C CNN
	1    3000 7450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FEBBB1
P 2700 7150
AR Path="/63FEBBB1" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBBB1" Ref="#PWR090"  Part="1" 
F 0 "#PWR090" H 2700 6900 50  0001 C CNN
F 1 "GND" H 2705 6977 50  0000 C CNN
F 2 "" H 2700 7150 50  0001 C CNN
F 3 "" H 2700 7150 50  0001 C CNN
	1    2700 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7150 3000 7150
Connection ~ 3000 7150
Connection ~ 2700 7150
$Comp
L power:PWR_FLAG #FLG?
U 1 1 63FEBBBA
P 3000 6850
AR Path="/63FEBBBA" Ref="#FLG?"  Part="1" 
AR Path="/63F3B749/63FEBBBA" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 3000 6925 50  0001 C CNN
F 1 "PWR_FLAG" V 3000 6978 50  0000 L CNN
F 2 "" H 3000 6850 50  0001 C CNN
F 3 "~" H 3000 6850 50  0001 C CNN
	1    3000 6850
	0    1    1    0   
$EndComp
Connection ~ 3000 6850
$Comp
L power:PWR_FLAG #FLG?
U 1 1 63FEBBC1
P 3000 7450
AR Path="/63FEBBC1" Ref="#FLG?"  Part="1" 
AR Path="/63F3B749/63FEBBC1" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 3000 7525 50  0001 C CNN
F 1 "PWR_FLAG" V 3000 7578 50  0000 L CNN
F 2 "" H 3000 7450 50  0001 C CNN
F 3 "~" H 3000 7450 50  0001 C CNN
	1    3000 7450
	0    1    1    0   
$EndComp
Connection ~ 3000 7450
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 63FEBBC8
P 1900 5850
AR Path="/63FEBBC8" Ref="J?"  Part="1" 
AR Path="/63F3B749/63FEBBC8" Ref="J18"  Part="1" 
F 0 "J18" H 1950 6267 50  0000 C CNN
F 1 "power_bus" H 1950 6176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1900 5850 50  0001 C CNN
F 3 "~" H 1900 5850 50  0001 C CNN
	1    1900 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 63FEBBD4
P 2600 6050
AR Path="/63FEBBD4" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBBD4" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 2600 5900 50  0001 C CNN
F 1 "+12V" V 2615 6178 50  0000 L CNN
F 2 "" H 2600 6050 50  0001 C CNN
F 3 "" H 2600 6050 50  0001 C CNN
	1    2600 6050
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 63FEBBE0
P 2600 5650
AR Path="/63FEBBE0" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBBE0" Ref="#PWR099"  Part="1" 
F 0 "#PWR099" H 2600 5750 50  0001 C CNN
F 1 "-12V" V 2615 5778 50  0000 L CNN
F 2 "" H 2600 5650 50  0001 C CNN
F 3 "" H 2600 5650 50  0001 C CNN
	1    2600 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FEBBE6
P 1700 5850
AR Path="/63FEBBE6" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBBE6" Ref="#PWR097"  Part="1" 
F 0 "#PWR097" H 1700 5600 50  0001 C CNN
F 1 "GND" V 1705 5722 50  0000 R CNN
F 2 "" H 1700 5850 50  0001 C CNN
F 3 "" H 1700 5850 50  0001 C CNN
	1    1700 5850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63FEBBEC
P 2200 5850
AR Path="/63FEBBEC" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBBEC" Ref="#PWR0100"  Part="1" 
F 0 "#PWR0100" H 2200 5600 50  0001 C CNN
F 1 "GND" V 2205 5722 50  0000 R CNN
F 2 "" H 2200 5850 50  0001 C CNN
F 3 "" H 2200 5850 50  0001 C CNN
	1    2200 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 5750 1700 5850
Connection ~ 1700 5850
Wire Wire Line
	1700 5850 1700 5950
Wire Wire Line
	2200 5750 2200 5850
Connection ~ 2200 5850
Wire Wire Line
	2200 5850 2200 5950
$Comp
L Regulator_Linear:LM78L05_TO92 U?
U 1 1 63FEBBF8
P 5400 7050
AR Path="/63FEBBF8" Ref="U?"  Part="1" 
AR Path="/63F3B749/63FEBBF8" Ref="U10"  Part="1" 
F 0 "U10" H 5400 7292 50  0000 C CNN
F 1 "LM2950G-3.3" H 5400 7201 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 5400 7275 50  0001 C CIN
F 3 "https://www.onsemi.com/pub/Collateral/MC78L06A-D.pdf" H 5400 7000 50  0001 C CNN
	1    5400 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 63FEBBFE
P 4950 7200
AR Path="/63FEBBFE" Ref="C?"  Part="1" 
AR Path="/63F3B749/63FEBBFE" Ref="C16"  Part="1" 
F 0 "C16" H 5068 7246 50  0000 L CNN
F 1 "10u" H 5068 7155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4988 7050 50  0001 C CNN
F 3 "~" H 4950 7200 50  0001 C CNN
	1    4950 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 63FEBC04
P 5750 7200
AR Path="/63FEBC04" Ref="C?"  Part="1" 
AR Path="/63F3B749/63FEBC04" Ref="C17"  Part="1" 
F 0 "C17" H 5868 7246 50  0000 L CNN
F 1 "10u" H 5868 7155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5788 7050 50  0001 C CNN
F 3 "~" H 5750 7200 50  0001 C CNN
	1    5750 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 7350 5400 7350
Connection ~ 5400 7350
Wire Wire Line
	5400 7350 5750 7350
$Comp
L power:GND #PWR?
U 1 1 63FEBC0D
P 5400 7350
AR Path="/63FEBC0D" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBC0D" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 5400 7100 50  0001 C CNN
F 1 "GND" H 5405 7177 50  0000 C CNN
F 2 "" H 5400 7350 50  0001 C CNN
F 3 "" H 5400 7350 50  0001 C CNN
	1    5400 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 63FEBC13
P 4950 7050
AR Path="/63FEBC13" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBC13" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 4950 6900 50  0001 C CNN
F 1 "+12V" H 4965 7223 50  0000 C CNN
F 2 "" H 4950 7050 50  0001 C CNN
F 3 "" H 4950 7050 50  0001 C CNN
	1    4950 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63FEBC19
P 5800 7050
AR Path="/63FEBC19" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/63FEBC19" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 5800 6900 50  0001 C CNN
F 1 "+3V3" H 5815 7223 50  0000 C CNN
F 2 "" H 5800 7050 50  0001 C CNN
F 3 "" H 5800 7050 50  0001 C CNN
	1    5800 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 7050 4950 7050
Connection ~ 4950 7050
Wire Wire Line
	5700 7050 5750 7050
Connection ~ 5750 7050
Wire Wire Line
	5750 7050 5800 7050
$Comp
L power:PWR_FLAG #FLG?
U 1 1 63FEBC24
P 5800 7050
AR Path="/63FEBC24" Ref="#FLG?"  Part="1" 
AR Path="/63F3B749/63FEBC24" Ref="#FLG04"  Part="1" 
F 0 "#FLG04" H 5800 7125 50  0001 C CNN
F 1 "PWR_FLAG" V 5800 7178 50  0000 L CNN
F 2 "" H 5800 7050 50  0001 C CNN
F 3 "~" H 5800 7050 50  0001 C CNN
	1    5800 7050
	0    1    1    0   
$EndComp
Connection ~ 5800 7050
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 64038AB7
P 6750 1000
AR Path="/64038AB7" Ref="U?"  Part="1" 
AR Path="/63F3B749/64038AB7" Ref="U7"  Part="1" 
F 0 "U7" H 6750 1367 50  0000 C CNN
F 1 "TL074" H 6750 1276 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6700 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6800 1200 50  0001 C CNN
	1    6750 1000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 64038ABD
P 6750 2400
AR Path="/64038ABD" Ref="U?"  Part="2" 
AR Path="/63F3B749/64038ABD" Ref="U7"  Part="2" 
F 0 "U7" H 6750 2767 50  0000 C CNN
F 1 "TL074" H 6750 2676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6700 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6800 2600 50  0001 C CNN
	2    6750 2400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 64038AC3
P 6750 3800
AR Path="/64038AC3" Ref="U?"  Part="3" 
AR Path="/63F3B749/64038AC3" Ref="U7"  Part="3" 
F 0 "U7" H 6750 4167 50  0000 C CNN
F 1 "TL074" H 6750 4076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6700 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6800 4000 50  0001 C CNN
	3    6750 3800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 64038AC9
P 6750 5200
AR Path="/64038AC9" Ref="U?"  Part="4" 
AR Path="/63F3B749/64038AC9" Ref="U7"  Part="4" 
F 0 "U7" H 6750 5567 50  0000 C CNN
F 1 "TL074" H 6750 5476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6700 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6800 5400 50  0001 C CNN
	4    6750 5200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 64038ACF
P 9600 1000
AR Path="/64038ACF" Ref="U?"  Part="1" 
AR Path="/63F3B749/64038ACF" Ref="U8"  Part="1" 
F 0 "U8" H 9600 1367 50  0000 C CNN
F 1 "TL074" H 9600 1276 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9550 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9650 1200 50  0001 C CNN
	1    9600 1000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 64038AD5
P 9600 2400
AR Path="/64038AD5" Ref="U?"  Part="2" 
AR Path="/63F3B749/64038AD5" Ref="U8"  Part="2" 
F 0 "U8" H 9600 2767 50  0000 C CNN
F 1 "TL074" H 9600 2676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9550 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9650 2600 50  0001 C CNN
	2    9600 2400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 64038ADB
P 9600 3800
AR Path="/64038ADB" Ref="U?"  Part="3" 
AR Path="/63F3B749/64038ADB" Ref="U8"  Part="3" 
F 0 "U8" H 9600 4167 50  0000 C CNN
F 1 "TL074" H 9600 4076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9550 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9650 4000 50  0001 C CNN
	3    9600 3800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 64038AE1
P 9600 5200
AR Path="/64038AE1" Ref="U?"  Part="4" 
AR Path="/63F3B749/64038AE1" Ref="U8"  Part="4" 
F 0 "U8" H 9600 5567 50  0000 C CNN
F 1 "TL074" H 9600 5476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9550 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9650 5400 50  0001 C CNN
	4    9600 5200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 64038AE7
P 5800 1650
AR Path="/64038AE7" Ref="Q?"  Part="1" 
AR Path="/63F3B749/64038AE7" Ref="Q2"  Part="1" 
F 0 "Q2" H 5990 1696 50  0000 L CNN
F 1 "2SC1815" H 5990 1605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6000 1575 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 5800 1650 50  0001 L CNN
	1    5800 1650
	1    0    0    -1  
$EndComp
Text Label 5150 1650 2    50   ~ 0
polarity_1
$Comp
L Device:R R?
U 1 1 64038AEE
P 5300 1650
AR Path="/64038AEE" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038AEE" Ref="R31"  Part="1" 
F 0 "R31" V 5507 1650 50  0000 C CNN
F 1 "1k" V 5416 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5230 1650 50  0001 C CNN
F 3 "~" H 5300 1650 50  0001 C CNN
	1    5300 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 64038AF4
P 5500 1800
AR Path="/64038AF4" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038AF4" Ref="R35"  Part="1" 
F 0 "R35" H 5430 1754 50  0000 R CNN
F 1 "100k" H 5430 1845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 1800 50  0001 C CNN
F 3 "~" H 5500 1800 50  0001 C CNN
	1    5500 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 64038AFA
P 5900 1200
AR Path="/64038AFA" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038AFA" Ref="R39"  Part="1" 
F 0 "R39" H 5830 1154 50  0000 R CNN
F 1 "4.7k" H 5830 1245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5830 1200 50  0001 C CNN
F 3 "~" H 5900 1200 50  0001 C CNN
	1    5900 1200
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 64038B00
P 6150 1400
AR Path="/64038B00" Ref="D?"  Part="1" 
AR Path="/63F3B749/64038B00" Ref="D14"  Part="1" 
F 0 "D14" H 6150 1183 50  0000 C CNN
F 1 "1N4148" H 6150 1274 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 6150 1225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6150 1400 50  0001 C CNN
	1    6150 1400
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 64038B06
P 5900 1050
AR Path="/64038B06" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038B06" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 5900 900 50  0001 C CNN
F 1 "+12V" H 5915 1223 50  0000 C CNN
F 2 "" H 5900 1050 50  0001 C CNN
F 3 "" H 5900 1050 50  0001 C CNN
	1    5900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1650 5500 1650
Connection ~ 5500 1650
Wire Wire Line
	5500 1650 5600 1650
Wire Wire Line
	5900 1850 5900 1950
$Comp
L power:GND #PWR?
U 1 1 64038B10
P 5500 1950
AR Path="/64038B10" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038B10" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 5500 1700 50  0001 C CNN
F 1 "GND" H 5505 1777 50  0000 C CNN
F 2 "" H 5500 1950 50  0001 C CNN
F 3 "" H 5500 1950 50  0001 C CNN
	1    5500 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64038B16
P 5900 1950
AR Path="/64038B16" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038B16" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 5900 1700 50  0001 C CNN
F 1 "GND" H 5905 1777 50  0000 C CNN
F 2 "" H 5900 1950 50  0001 C CNN
F 3 "" H 5900 1950 50  0001 C CNN
	1    5900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1350 5900 1400
Wire Wire Line
	5900 1400 6000 1400
Connection ~ 5900 1400
Wire Wire Line
	5900 1400 5900 1450
$Comp
L Device:R R?
U 1 1 64038B20
P 6450 1600
AR Path="/64038B20" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038B20" Ref="R43"  Part="1" 
F 0 "R43" H 6380 1646 50  0000 R CNN
F 1 "1k" H 6380 1555 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6380 1600 50  0001 C CNN
F 3 "~" H 6450 1600 50  0001 C CNN
	1    6450 1600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64038B26
P 6750 1400
AR Path="/64038B26" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038B26" Ref="R47"  Part="1" 
F 0 "R47" V 6957 1400 50  0000 C CNN
F 1 "2k" V 6866 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6680 1400 50  0001 C CNN
F 3 "~" H 6750 1400 50  0001 C CNN
	1    6750 1400
	0    1    -1   0   
$EndComp
Wire Wire Line
	6300 1400 6450 1400
Wire Wire Line
	6450 1400 6450 1450
Connection ~ 6450 1400
Wire Wire Line
	6450 1400 6600 1400
Wire Wire Line
	6900 1400 7050 1400
Wire Wire Line
	7050 1400 7050 1000
Wire Wire Line
	7050 1000 7100 1000
Connection ~ 7050 1000
Wire Wire Line
	6450 1100 6450 1400
Text Label 6450 900  2    50   ~ 0
dac_1_a
Text Label 7100 1000 0    50   ~ 0
out_1
$Comp
L power:GND #PWR?
U 1 1 64038B37
P 6450 1750
AR Path="/64038B37" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038B37" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 6450 1500 50  0001 C CNN
F 1 "GND" H 6455 1577 50  0000 C CNN
F 2 "" H 6450 1750 50  0001 C CNN
F 3 "" H 6450 1750 50  0001 C CNN
	1    6450 1750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 64038B3D
P 5800 3050
AR Path="/64038B3D" Ref="Q?"  Part="1" 
AR Path="/63F3B749/64038B3D" Ref="Q3"  Part="1" 
F 0 "Q3" H 5990 3096 50  0000 L CNN
F 1 "2SC1815" H 5990 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6000 2975 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 5800 3050 50  0001 L CNN
	1    5800 3050
	1    0    0    -1  
$EndComp
Text Label 5150 3050 2    50   ~ 0
polarity_2
$Comp
L Device:R R?
U 1 1 64038B44
P 5300 3050
AR Path="/64038B44" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038B44" Ref="R32"  Part="1" 
F 0 "R32" V 5507 3050 50  0000 C CNN
F 1 "1k" V 5416 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5230 3050 50  0001 C CNN
F 3 "~" H 5300 3050 50  0001 C CNN
	1    5300 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 64038B4A
P 5500 3200
AR Path="/64038B4A" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038B4A" Ref="R36"  Part="1" 
F 0 "R36" H 5430 3154 50  0000 R CNN
F 1 "100k" H 5430 3245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 3200 50  0001 C CNN
F 3 "~" H 5500 3200 50  0001 C CNN
	1    5500 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 64038B50
P 5900 2600
AR Path="/64038B50" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038B50" Ref="R40"  Part="1" 
F 0 "R40" H 5830 2554 50  0000 R CNN
F 1 "4.7k" H 5830 2645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5830 2600 50  0001 C CNN
F 3 "~" H 5900 2600 50  0001 C CNN
	1    5900 2600
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 64038B56
P 6150 2800
AR Path="/64038B56" Ref="D?"  Part="1" 
AR Path="/63F3B749/64038B56" Ref="D15"  Part="1" 
F 0 "D15" H 6150 2583 50  0000 C CNN
F 1 "1N4148" H 6150 2674 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 6150 2625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6150 2800 50  0001 C CNN
	1    6150 2800
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 64038B5C
P 5900 2450
AR Path="/64038B5C" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038B5C" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 5900 2300 50  0001 C CNN
F 1 "+12V" H 5915 2623 50  0000 C CNN
F 2 "" H 5900 2450 50  0001 C CNN
F 3 "" H 5900 2450 50  0001 C CNN
	1    5900 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3050 5500 3050
Connection ~ 5500 3050
Wire Wire Line
	5500 3050 5600 3050
Wire Wire Line
	5900 3250 5900 3350
$Comp
L power:GND #PWR?
U 1 1 64038B66
P 5500 3350
AR Path="/64038B66" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038B66" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 5500 3100 50  0001 C CNN
F 1 "GND" H 5505 3177 50  0000 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64038B6C
P 5900 3350
AR Path="/64038B6C" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038B6C" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 5900 3100 50  0001 C CNN
F 1 "GND" H 5905 3177 50  0000 C CNN
F 2 "" H 5900 3350 50  0001 C CNN
F 3 "" H 5900 3350 50  0001 C CNN
	1    5900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2750 5900 2800
Wire Wire Line
	5900 2800 6000 2800
Connection ~ 5900 2800
Wire Wire Line
	5900 2800 5900 2850
$Comp
L Device:R R?
U 1 1 64038B76
P 6450 3000
AR Path="/64038B76" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038B76" Ref="R44"  Part="1" 
F 0 "R44" H 6380 3046 50  0000 R CNN
F 1 "1k" H 6380 2955 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6380 3000 50  0001 C CNN
F 3 "~" H 6450 3000 50  0001 C CNN
	1    6450 3000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64038B7C
P 6750 2800
AR Path="/64038B7C" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038B7C" Ref="R48"  Part="1" 
F 0 "R48" V 6957 2800 50  0000 C CNN
F 1 "2k" V 6866 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6680 2800 50  0001 C CNN
F 3 "~" H 6750 2800 50  0001 C CNN
	1    6750 2800
	0    1    -1   0   
$EndComp
Wire Wire Line
	6300 2800 6450 2800
Wire Wire Line
	6450 2800 6450 2850
Connection ~ 6450 2800
Wire Wire Line
	6450 2800 6600 2800
Wire Wire Line
	6900 2800 7050 2800
Wire Wire Line
	7050 2800 7050 2400
Wire Wire Line
	7050 2400 7100 2400
Wire Wire Line
	6450 2500 6450 2800
Text Label 6450 2300 2    50   ~ 0
dac_1_b
Text Label 7100 2400 0    50   ~ 0
out_2
$Comp
L power:GND #PWR?
U 1 1 64038B8C
P 6450 3150
AR Path="/64038B8C" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038B8C" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 6450 2900 50  0001 C CNN
F 1 "GND" H 6455 2977 50  0000 C CNN
F 2 "" H 6450 3150 50  0001 C CNN
F 3 "" H 6450 3150 50  0001 C CNN
	1    6450 3150
	1    0    0    -1  
$EndComp
Connection ~ 7050 2400
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 64038B93
P 5800 4450
AR Path="/64038B93" Ref="Q?"  Part="1" 
AR Path="/63F3B749/64038B93" Ref="Q4"  Part="1" 
F 0 "Q4" H 5990 4496 50  0000 L CNN
F 1 "2SC1815" H 5990 4405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6000 4375 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 5800 4450 50  0001 L CNN
	1    5800 4450
	1    0    0    -1  
$EndComp
Text Label 5150 4450 2    50   ~ 0
polarity_3
$Comp
L Device:R R?
U 1 1 64038B9A
P 5300 4450
AR Path="/64038B9A" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038B9A" Ref="R33"  Part="1" 
F 0 "R33" V 5507 4450 50  0000 C CNN
F 1 "1k" V 5416 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5230 4450 50  0001 C CNN
F 3 "~" H 5300 4450 50  0001 C CNN
	1    5300 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 64038BA0
P 5500 4600
AR Path="/64038BA0" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038BA0" Ref="R37"  Part="1" 
F 0 "R37" H 5430 4554 50  0000 R CNN
F 1 "100k" H 5430 4645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 4600 50  0001 C CNN
F 3 "~" H 5500 4600 50  0001 C CNN
	1    5500 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 64038BA6
P 5900 4000
AR Path="/64038BA6" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038BA6" Ref="R41"  Part="1" 
F 0 "R41" H 5830 3954 50  0000 R CNN
F 1 "4.7k" H 5830 4045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5830 4000 50  0001 C CNN
F 3 "~" H 5900 4000 50  0001 C CNN
	1    5900 4000
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 64038BAC
P 6150 4200
AR Path="/64038BAC" Ref="D?"  Part="1" 
AR Path="/63F3B749/64038BAC" Ref="D16"  Part="1" 
F 0 "D16" H 6150 3983 50  0000 C CNN
F 1 "1N4148" H 6150 4074 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 6150 4025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6150 4200 50  0001 C CNN
	1    6150 4200
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 64038BB2
P 5900 3850
AR Path="/64038BB2" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038BB2" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5900 3700 50  0001 C CNN
F 1 "+12V" H 5915 4023 50  0000 C CNN
F 2 "" H 5900 3850 50  0001 C CNN
F 3 "" H 5900 3850 50  0001 C CNN
	1    5900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4450 5500 4450
Connection ~ 5500 4450
Wire Wire Line
	5500 4450 5600 4450
Wire Wire Line
	5900 4650 5900 4750
$Comp
L power:GND #PWR?
U 1 1 64038BBC
P 5500 4750
AR Path="/64038BBC" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038BBC" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 5500 4500 50  0001 C CNN
F 1 "GND" H 5505 4577 50  0000 C CNN
F 2 "" H 5500 4750 50  0001 C CNN
F 3 "" H 5500 4750 50  0001 C CNN
	1    5500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64038BC2
P 5900 4750
AR Path="/64038BC2" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038BC2" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5900 4500 50  0001 C CNN
F 1 "GND" H 5905 4577 50  0000 C CNN
F 2 "" H 5900 4750 50  0001 C CNN
F 3 "" H 5900 4750 50  0001 C CNN
	1    5900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4150 5900 4200
Wire Wire Line
	5900 4200 6000 4200
Connection ~ 5900 4200
Wire Wire Line
	5900 4200 5900 4250
$Comp
L Device:R R?
U 1 1 64038BCC
P 6450 4400
AR Path="/64038BCC" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038BCC" Ref="R45"  Part="1" 
F 0 "R45" H 6380 4446 50  0000 R CNN
F 1 "1k" H 6380 4355 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6380 4400 50  0001 C CNN
F 3 "~" H 6450 4400 50  0001 C CNN
	1    6450 4400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64038BD2
P 6750 4200
AR Path="/64038BD2" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038BD2" Ref="R49"  Part="1" 
F 0 "R49" V 6957 4200 50  0000 C CNN
F 1 "2k" V 6866 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6680 4200 50  0001 C CNN
F 3 "~" H 6750 4200 50  0001 C CNN
	1    6750 4200
	0    1    -1   0   
$EndComp
Wire Wire Line
	6300 4200 6450 4200
Wire Wire Line
	6450 4200 6450 4250
Connection ~ 6450 4200
Wire Wire Line
	6450 4200 6600 4200
Wire Wire Line
	6900 4200 7050 4200
Wire Wire Line
	7050 4200 7050 3800
Wire Wire Line
	7050 3800 7100 3800
Wire Wire Line
	6450 3900 6450 4200
Text Label 6450 3700 2    50   ~ 0
dac_2_a
Text Label 7100 3800 0    50   ~ 0
out_3
$Comp
L power:GND #PWR?
U 1 1 64038BE2
P 6450 4550
AR Path="/64038BE2" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038BE2" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 6450 4300 50  0001 C CNN
F 1 "GND" H 6455 4377 50  0000 C CNN
F 2 "" H 6450 4550 50  0001 C CNN
F 3 "" H 6450 4550 50  0001 C CNN
	1    6450 4550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 64038BE8
P 5800 5850
AR Path="/64038BE8" Ref="Q?"  Part="1" 
AR Path="/63F3B749/64038BE8" Ref="Q5"  Part="1" 
F 0 "Q5" H 5990 5896 50  0000 L CNN
F 1 "2SC1815" H 5990 5805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6000 5775 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 5800 5850 50  0001 L CNN
	1    5800 5850
	1    0    0    -1  
$EndComp
Text Label 5150 5850 2    50   ~ 0
polarity_4
$Comp
L Device:R R?
U 1 1 64038BEF
P 5300 5850
AR Path="/64038BEF" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038BEF" Ref="R34"  Part="1" 
F 0 "R34" V 5507 5850 50  0000 C CNN
F 1 "1k" V 5416 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5230 5850 50  0001 C CNN
F 3 "~" H 5300 5850 50  0001 C CNN
	1    5300 5850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 64038BF5
P 5500 6000
AR Path="/64038BF5" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038BF5" Ref="R38"  Part="1" 
F 0 "R38" H 5430 5954 50  0000 R CNN
F 1 "100k" H 5430 6045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 6000 50  0001 C CNN
F 3 "~" H 5500 6000 50  0001 C CNN
	1    5500 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 64038BFB
P 5900 5400
AR Path="/64038BFB" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038BFB" Ref="R42"  Part="1" 
F 0 "R42" H 5830 5354 50  0000 R CNN
F 1 "4.7k" H 5830 5445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5830 5400 50  0001 C CNN
F 3 "~" H 5900 5400 50  0001 C CNN
	1    5900 5400
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 64038C01
P 6150 5600
AR Path="/64038C01" Ref="D?"  Part="1" 
AR Path="/63F3B749/64038C01" Ref="D17"  Part="1" 
F 0 "D17" H 6150 5383 50  0000 C CNN
F 1 "1N4148" H 6150 5474 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 6150 5425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6150 5600 50  0001 C CNN
	1    6150 5600
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 64038C07
P 5900 5250
AR Path="/64038C07" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038C07" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 5900 5100 50  0001 C CNN
F 1 "+12V" H 5915 5423 50  0000 C CNN
F 2 "" H 5900 5250 50  0001 C CNN
F 3 "" H 5900 5250 50  0001 C CNN
	1    5900 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5850 5500 5850
Connection ~ 5500 5850
Wire Wire Line
	5500 5850 5600 5850
Wire Wire Line
	5900 6050 5900 6150
$Comp
L power:GND #PWR?
U 1 1 64038C11
P 5500 6150
AR Path="/64038C11" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038C11" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 5500 5900 50  0001 C CNN
F 1 "GND" H 5505 5977 50  0000 C CNN
F 2 "" H 5500 6150 50  0001 C CNN
F 3 "" H 5500 6150 50  0001 C CNN
	1    5500 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64038C17
P 5900 6150
AR Path="/64038C17" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038C17" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 5900 5900 50  0001 C CNN
F 1 "GND" H 5905 5977 50  0000 C CNN
F 2 "" H 5900 6150 50  0001 C CNN
F 3 "" H 5900 6150 50  0001 C CNN
	1    5900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5550 5900 5600
Wire Wire Line
	5900 5600 6000 5600
Connection ~ 5900 5600
Wire Wire Line
	5900 5600 5900 5650
$Comp
L Device:R R?
U 1 1 64038C21
P 6450 5800
AR Path="/64038C21" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038C21" Ref="R46"  Part="1" 
F 0 "R46" H 6380 5846 50  0000 R CNN
F 1 "1k" H 6380 5755 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6380 5800 50  0001 C CNN
F 3 "~" H 6450 5800 50  0001 C CNN
	1    6450 5800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64038C27
P 6750 5600
AR Path="/64038C27" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038C27" Ref="R50"  Part="1" 
F 0 "R50" V 6957 5600 50  0000 C CNN
F 1 "2k" V 6866 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6680 5600 50  0001 C CNN
F 3 "~" H 6750 5600 50  0001 C CNN
	1    6750 5600
	0    1    -1   0   
$EndComp
Wire Wire Line
	6300 5600 6450 5600
Wire Wire Line
	6450 5600 6450 5650
Connection ~ 6450 5600
Wire Wire Line
	6450 5600 6600 5600
Wire Wire Line
	6900 5600 7050 5600
Wire Wire Line
	7050 5600 7050 5200
Wire Wire Line
	7050 5200 7100 5200
Wire Wire Line
	6450 5300 6450 5600
Text Label 6450 5100 2    50   ~ 0
dac_2_b
Text Label 7100 5200 0    50   ~ 0
out_4
$Comp
L power:GND #PWR?
U 1 1 64038C37
P 6450 5950
AR Path="/64038C37" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038C37" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 6450 5700 50  0001 C CNN
F 1 "GND" H 6455 5777 50  0000 C CNN
F 2 "" H 6450 5950 50  0001 C CNN
F 3 "" H 6450 5950 50  0001 C CNN
	1    6450 5950
	1    0    0    -1  
$EndComp
Connection ~ 7050 3800
Connection ~ 7050 5200
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 64038C3F
P 8650 1650
AR Path="/64038C3F" Ref="Q?"  Part="1" 
AR Path="/63F3B749/64038C3F" Ref="Q6"  Part="1" 
F 0 "Q6" H 8840 1696 50  0000 L CNN
F 1 "2SC1815" H 8840 1605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8850 1575 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 8650 1650 50  0001 L CNN
	1    8650 1650
	1    0    0    -1  
$EndComp
Text Label 8000 1650 2    50   ~ 0
polarity_5
$Comp
L Device:R R?
U 1 1 64038C46
P 8150 1650
AR Path="/64038C46" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038C46" Ref="R51"  Part="1" 
F 0 "R51" V 8357 1650 50  0000 C CNN
F 1 "1k" V 8266 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8080 1650 50  0001 C CNN
F 3 "~" H 8150 1650 50  0001 C CNN
	1    8150 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 64038C4C
P 8350 1800
AR Path="/64038C4C" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038C4C" Ref="R55"  Part="1" 
F 0 "R55" H 8280 1754 50  0000 R CNN
F 1 "100k" H 8280 1845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8280 1800 50  0001 C CNN
F 3 "~" H 8350 1800 50  0001 C CNN
	1    8350 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 64038C52
P 8750 1200
AR Path="/64038C52" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038C52" Ref="R59"  Part="1" 
F 0 "R59" H 8680 1154 50  0000 R CNN
F 1 "4.7k" H 8680 1245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8680 1200 50  0001 C CNN
F 3 "~" H 8750 1200 50  0001 C CNN
	1    8750 1200
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 64038C58
P 9000 1400
AR Path="/64038C58" Ref="D?"  Part="1" 
AR Path="/63F3B749/64038C58" Ref="D18"  Part="1" 
F 0 "D18" H 9000 1183 50  0000 C CNN
F 1 "1N4148" H 9000 1274 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 9000 1225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9000 1400 50  0001 C CNN
	1    9000 1400
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 64038C5E
P 8750 1050
AR Path="/64038C5E" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038C5E" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 8750 900 50  0001 C CNN
F 1 "+12V" H 8765 1223 50  0000 C CNN
F 2 "" H 8750 1050 50  0001 C CNN
F 3 "" H 8750 1050 50  0001 C CNN
	1    8750 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1650 8350 1650
Connection ~ 8350 1650
Wire Wire Line
	8350 1650 8450 1650
Wire Wire Line
	8750 1850 8750 1950
$Comp
L power:GND #PWR?
U 1 1 64038C68
P 8350 1950
AR Path="/64038C68" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038C68" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 8350 1700 50  0001 C CNN
F 1 "GND" H 8355 1777 50  0000 C CNN
F 2 "" H 8350 1950 50  0001 C CNN
F 3 "" H 8350 1950 50  0001 C CNN
	1    8350 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64038C6E
P 8750 1950
AR Path="/64038C6E" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038C6E" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 8750 1700 50  0001 C CNN
F 1 "GND" H 8755 1777 50  0000 C CNN
F 2 "" H 8750 1950 50  0001 C CNN
F 3 "" H 8750 1950 50  0001 C CNN
	1    8750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1350 8750 1400
Wire Wire Line
	8750 1400 8850 1400
Connection ~ 8750 1400
Wire Wire Line
	8750 1400 8750 1450
$Comp
L Device:R R?
U 1 1 64038C78
P 9300 1600
AR Path="/64038C78" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038C78" Ref="R63"  Part="1" 
F 0 "R63" H 9230 1646 50  0000 R CNN
F 1 "1k" H 9230 1555 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9230 1600 50  0001 C CNN
F 3 "~" H 9300 1600 50  0001 C CNN
	1    9300 1600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64038C7E
P 9600 1400
AR Path="/64038C7E" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038C7E" Ref="R67"  Part="1" 
F 0 "R67" V 9807 1400 50  0000 C CNN
F 1 "2k" V 9716 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9530 1400 50  0001 C CNN
F 3 "~" H 9600 1400 50  0001 C CNN
	1    9600 1400
	0    1    -1   0   
$EndComp
Wire Wire Line
	9150 1400 9300 1400
Wire Wire Line
	9300 1400 9300 1450
Connection ~ 9300 1400
Wire Wire Line
	9300 1400 9450 1400
Wire Wire Line
	9750 1400 9900 1400
Wire Wire Line
	9900 1400 9900 1000
Wire Wire Line
	9900 1000 9950 1000
Wire Wire Line
	9300 1100 9300 1400
Text Label 9300 900  2    50   ~ 0
dac_3_a
Text Label 9950 1000 0    50   ~ 0
out_5
$Comp
L power:GND #PWR?
U 1 1 64038C8E
P 9300 1750
AR Path="/64038C8E" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038C8E" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 9300 1500 50  0001 C CNN
F 1 "GND" H 9305 1577 50  0000 C CNN
F 2 "" H 9300 1750 50  0001 C CNN
F 3 "" H 9300 1750 50  0001 C CNN
	1    9300 1750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 64038C94
P 8650 3050
AR Path="/64038C94" Ref="Q?"  Part="1" 
AR Path="/63F3B749/64038C94" Ref="Q7"  Part="1" 
F 0 "Q7" H 8840 3096 50  0000 L CNN
F 1 "2SC1815" H 8840 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8850 2975 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 8650 3050 50  0001 L CNN
	1    8650 3050
	1    0    0    -1  
$EndComp
Text Label 8000 3050 2    50   ~ 0
polarity_6
$Comp
L Device:R R?
U 1 1 64038C9B
P 8150 3050
AR Path="/64038C9B" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038C9B" Ref="R52"  Part="1" 
F 0 "R52" V 8357 3050 50  0000 C CNN
F 1 "1k" V 8266 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8080 3050 50  0001 C CNN
F 3 "~" H 8150 3050 50  0001 C CNN
	1    8150 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 64038CA1
P 8350 3200
AR Path="/64038CA1" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038CA1" Ref="R56"  Part="1" 
F 0 "R56" H 8280 3154 50  0000 R CNN
F 1 "100k" H 8280 3245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8280 3200 50  0001 C CNN
F 3 "~" H 8350 3200 50  0001 C CNN
	1    8350 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 64038CA7
P 8750 2600
AR Path="/64038CA7" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038CA7" Ref="R60"  Part="1" 
F 0 "R60" H 8680 2554 50  0000 R CNN
F 1 "4.7k" H 8680 2645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8680 2600 50  0001 C CNN
F 3 "~" H 8750 2600 50  0001 C CNN
	1    8750 2600
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 64038CAD
P 9000 2800
AR Path="/64038CAD" Ref="D?"  Part="1" 
AR Path="/63F3B749/64038CAD" Ref="D19"  Part="1" 
F 0 "D19" H 9000 2583 50  0000 C CNN
F 1 "1N4148" H 9000 2674 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 9000 2625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9000 2800 50  0001 C CNN
	1    9000 2800
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 64038CB3
P 8750 2450
AR Path="/64038CB3" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038CB3" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 8750 2300 50  0001 C CNN
F 1 "+12V" H 8765 2623 50  0000 C CNN
F 2 "" H 8750 2450 50  0001 C CNN
F 3 "" H 8750 2450 50  0001 C CNN
	1    8750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3050 8350 3050
Connection ~ 8350 3050
Wire Wire Line
	8350 3050 8450 3050
Wire Wire Line
	8750 3250 8750 3350
$Comp
L power:GND #PWR?
U 1 1 64038CBD
P 8350 3350
AR Path="/64038CBD" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038CBD" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 8350 3100 50  0001 C CNN
F 1 "GND" H 8355 3177 50  0000 C CNN
F 2 "" H 8350 3350 50  0001 C CNN
F 3 "" H 8350 3350 50  0001 C CNN
	1    8350 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64038CC3
P 8750 3350
AR Path="/64038CC3" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038CC3" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 8750 3100 50  0001 C CNN
F 1 "GND" H 8755 3177 50  0000 C CNN
F 2 "" H 8750 3350 50  0001 C CNN
F 3 "" H 8750 3350 50  0001 C CNN
	1    8750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2750 8750 2800
Wire Wire Line
	8750 2800 8850 2800
Connection ~ 8750 2800
Wire Wire Line
	8750 2800 8750 2850
$Comp
L Device:R R?
U 1 1 64038CCD
P 9300 3000
AR Path="/64038CCD" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038CCD" Ref="R64"  Part="1" 
F 0 "R64" H 9230 3046 50  0000 R CNN
F 1 "1k" H 9230 2955 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9230 3000 50  0001 C CNN
F 3 "~" H 9300 3000 50  0001 C CNN
	1    9300 3000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64038CD3
P 9600 2800
AR Path="/64038CD3" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038CD3" Ref="R68"  Part="1" 
F 0 "R68" V 9807 2800 50  0000 C CNN
F 1 "2k" V 9716 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9530 2800 50  0001 C CNN
F 3 "~" H 9600 2800 50  0001 C CNN
	1    9600 2800
	0    1    -1   0   
$EndComp
Wire Wire Line
	9150 2800 9300 2800
Wire Wire Line
	9300 2800 9300 2850
Connection ~ 9300 2800
Wire Wire Line
	9300 2800 9450 2800
Wire Wire Line
	9750 2800 9900 2800
Wire Wire Line
	9900 2800 9900 2400
Wire Wire Line
	9900 2400 9950 2400
Wire Wire Line
	9300 2500 9300 2800
Text Label 9300 2300 2    50   ~ 0
dac_3_b
Text Label 9950 2400 0    50   ~ 0
out_6
$Comp
L power:GND #PWR?
U 1 1 64038CE3
P 9300 3150
AR Path="/64038CE3" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038CE3" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9305 2977 50  0000 C CNN
F 2 "" H 9300 3150 50  0001 C CNN
F 3 "" H 9300 3150 50  0001 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 64038CE9
P 8650 4450
AR Path="/64038CE9" Ref="Q?"  Part="1" 
AR Path="/63F3B749/64038CE9" Ref="Q8"  Part="1" 
F 0 "Q8" H 8840 4496 50  0000 L CNN
F 1 "2SC1815" H 8840 4405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8850 4375 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 8650 4450 50  0001 L CNN
	1    8650 4450
	1    0    0    -1  
$EndComp
Text Label 8000 4450 2    50   ~ 0
polarity_7
$Comp
L Device:R R?
U 1 1 64038CF0
P 8150 4450
AR Path="/64038CF0" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038CF0" Ref="R53"  Part="1" 
F 0 "R53" V 8357 4450 50  0000 C CNN
F 1 "1k" V 8266 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8080 4450 50  0001 C CNN
F 3 "~" H 8150 4450 50  0001 C CNN
	1    8150 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 64038CF6
P 8350 4600
AR Path="/64038CF6" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038CF6" Ref="R57"  Part="1" 
F 0 "R57" H 8280 4554 50  0000 R CNN
F 1 "100k" H 8280 4645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8280 4600 50  0001 C CNN
F 3 "~" H 8350 4600 50  0001 C CNN
	1    8350 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 64038CFC
P 8750 4000
AR Path="/64038CFC" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038CFC" Ref="R61"  Part="1" 
F 0 "R61" H 8680 3954 50  0000 R CNN
F 1 "4.7k" H 8680 4045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8680 4000 50  0001 C CNN
F 3 "~" H 8750 4000 50  0001 C CNN
	1    8750 4000
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 64038D02
P 9000 4200
AR Path="/64038D02" Ref="D?"  Part="1" 
AR Path="/63F3B749/64038D02" Ref="D20"  Part="1" 
F 0 "D20" H 9000 3983 50  0000 C CNN
F 1 "1N4148" H 9000 4074 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 9000 4025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9000 4200 50  0001 C CNN
	1    9000 4200
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 64038D08
P 8750 3850
AR Path="/64038D08" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038D08" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 8750 3700 50  0001 C CNN
F 1 "+12V" H 8765 4023 50  0000 C CNN
F 2 "" H 8750 3850 50  0001 C CNN
F 3 "" H 8750 3850 50  0001 C CNN
	1    8750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4450 8350 4450
Connection ~ 8350 4450
Wire Wire Line
	8350 4450 8450 4450
Wire Wire Line
	8750 4650 8750 4750
$Comp
L power:GND #PWR?
U 1 1 64038D12
P 8350 4750
AR Path="/64038D12" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038D12" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 8350 4500 50  0001 C CNN
F 1 "GND" H 8355 4577 50  0000 C CNN
F 2 "" H 8350 4750 50  0001 C CNN
F 3 "" H 8350 4750 50  0001 C CNN
	1    8350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64038D18
P 8750 4750
AR Path="/64038D18" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038D18" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 8750 4500 50  0001 C CNN
F 1 "GND" H 8755 4577 50  0000 C CNN
F 2 "" H 8750 4750 50  0001 C CNN
F 3 "" H 8750 4750 50  0001 C CNN
	1    8750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4150 8750 4200
Wire Wire Line
	8750 4200 8850 4200
Connection ~ 8750 4200
Wire Wire Line
	8750 4200 8750 4250
$Comp
L Device:R R?
U 1 1 64038D22
P 9300 4400
AR Path="/64038D22" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038D22" Ref="R65"  Part="1" 
F 0 "R65" H 9230 4446 50  0000 R CNN
F 1 "1k" H 9230 4355 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9230 4400 50  0001 C CNN
F 3 "~" H 9300 4400 50  0001 C CNN
	1    9300 4400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64038D28
P 9600 4200
AR Path="/64038D28" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038D28" Ref="R69"  Part="1" 
F 0 "R69" V 9807 4200 50  0000 C CNN
F 1 "2k" V 9716 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9530 4200 50  0001 C CNN
F 3 "~" H 9600 4200 50  0001 C CNN
	1    9600 4200
	0    1    -1   0   
$EndComp
Wire Wire Line
	9150 4200 9300 4200
Wire Wire Line
	9300 4200 9300 4250
Connection ~ 9300 4200
Wire Wire Line
	9300 4200 9450 4200
Wire Wire Line
	9750 4200 9900 4200
Wire Wire Line
	9900 4200 9900 3800
Wire Wire Line
	9900 3800 9950 3800
Wire Wire Line
	9300 3900 9300 4200
Text Label 9300 3700 2    50   ~ 0
dac_4_a
Text Label 9950 3800 0    50   ~ 0
out_7
$Comp
L power:GND #PWR?
U 1 1 64038D38
P 9300 4550
AR Path="/64038D38" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038D38" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 9300 4300 50  0001 C CNN
F 1 "GND" H 9305 4377 50  0000 C CNN
F 2 "" H 9300 4550 50  0001 C CNN
F 3 "" H 9300 4550 50  0001 C CNN
	1    9300 4550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 64038D3E
P 8650 5850
AR Path="/64038D3E" Ref="Q?"  Part="1" 
AR Path="/63F3B749/64038D3E" Ref="Q9"  Part="1" 
F 0 "Q9" H 8840 5896 50  0000 L CNN
F 1 "2SC1815" H 8840 5805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8850 5775 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 8650 5850 50  0001 L CNN
	1    8650 5850
	1    0    0    -1  
$EndComp
Text Label 8000 5850 2    50   ~ 0
polarity_8
$Comp
L Device:R R?
U 1 1 64038D45
P 8150 5850
AR Path="/64038D45" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038D45" Ref="R54"  Part="1" 
F 0 "R54" V 8357 5850 50  0000 C CNN
F 1 "1k" V 8266 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8080 5850 50  0001 C CNN
F 3 "~" H 8150 5850 50  0001 C CNN
	1    8150 5850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 64038D4B
P 8350 6000
AR Path="/64038D4B" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038D4B" Ref="R58"  Part="1" 
F 0 "R58" H 8280 5954 50  0000 R CNN
F 1 "100k" H 8280 6045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8280 6000 50  0001 C CNN
F 3 "~" H 8350 6000 50  0001 C CNN
	1    8350 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 64038D51
P 8750 5400
AR Path="/64038D51" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038D51" Ref="R62"  Part="1" 
F 0 "R62" H 8680 5354 50  0000 R CNN
F 1 "4.7k" H 8680 5445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8680 5400 50  0001 C CNN
F 3 "~" H 8750 5400 50  0001 C CNN
	1    8750 5400
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 64038D57
P 9000 5600
AR Path="/64038D57" Ref="D?"  Part="1" 
AR Path="/63F3B749/64038D57" Ref="D21"  Part="1" 
F 0 "D21" H 9000 5383 50  0000 C CNN
F 1 "1N4148" H 9000 5474 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_AnodeUp" H 9000 5425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9000 5600 50  0001 C CNN
	1    9000 5600
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 64038D5D
P 8750 5250
AR Path="/64038D5D" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038D5D" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 8750 5100 50  0001 C CNN
F 1 "+12V" H 8765 5423 50  0000 C CNN
F 2 "" H 8750 5250 50  0001 C CNN
F 3 "" H 8750 5250 50  0001 C CNN
	1    8750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5850 8350 5850
Connection ~ 8350 5850
Wire Wire Line
	8350 5850 8450 5850
Wire Wire Line
	8750 6050 8750 6150
$Comp
L power:GND #PWR?
U 1 1 64038D67
P 8350 6150
AR Path="/64038D67" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038D67" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 8350 5900 50  0001 C CNN
F 1 "GND" H 8355 5977 50  0000 C CNN
F 2 "" H 8350 6150 50  0001 C CNN
F 3 "" H 8350 6150 50  0001 C CNN
	1    8350 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64038D6D
P 8750 6150
AR Path="/64038D6D" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038D6D" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 8750 5900 50  0001 C CNN
F 1 "GND" H 8755 5977 50  0000 C CNN
F 2 "" H 8750 6150 50  0001 C CNN
F 3 "" H 8750 6150 50  0001 C CNN
	1    8750 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5550 8750 5600
Wire Wire Line
	8750 5600 8850 5600
Connection ~ 8750 5600
Wire Wire Line
	8750 5600 8750 5650
$Comp
L Device:R R?
U 1 1 64038D77
P 9300 5800
AR Path="/64038D77" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038D77" Ref="R66"  Part="1" 
F 0 "R66" H 9230 5846 50  0000 R CNN
F 1 "1k" H 9230 5755 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9230 5800 50  0001 C CNN
F 3 "~" H 9300 5800 50  0001 C CNN
	1    9300 5800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64038D7D
P 9600 5600
AR Path="/64038D7D" Ref="R?"  Part="1" 
AR Path="/63F3B749/64038D7D" Ref="R70"  Part="1" 
F 0 "R70" V 9807 5600 50  0000 C CNN
F 1 "2k" V 9716 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9530 5600 50  0001 C CNN
F 3 "~" H 9600 5600 50  0001 C CNN
	1    9600 5600
	0    1    -1   0   
$EndComp
Wire Wire Line
	9150 5600 9300 5600
Wire Wire Line
	9300 5600 9300 5650
Connection ~ 9300 5600
Wire Wire Line
	9300 5600 9450 5600
Wire Wire Line
	9750 5600 9900 5600
Wire Wire Line
	9900 5600 9900 5200
Wire Wire Line
	9900 5200 9950 5200
Wire Wire Line
	9300 5300 9300 5600
Text Label 9300 5100 2    50   ~ 0
dac_4_b
Text Label 9950 5200 0    50   ~ 0
out_8
$Comp
L power:GND #PWR?
U 1 1 64038D8D
P 9300 5950
AR Path="/64038D8D" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64038D8D" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 9300 5700 50  0001 C CNN
F 1 "GND" H 9305 5777 50  0000 C CNN
F 2 "" H 9300 5950 50  0001 C CNN
F 3 "" H 9300 5950 50  0001 C CNN
	1    9300 5950
	1    0    0    -1  
$EndComp
Connection ~ 9900 1000
Connection ~ 9900 2400
Connection ~ 9900 3800
Connection ~ 9900 5200
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 640C344A
P 2450 1150
AR Path="/640C344A" Ref="U?"  Part="1" 
AR Path="/63F3B749/640C344A" Ref="U9"  Part="1" 
F 0 "U9" H 2450 1517 50  0000 C CNN
F 1 "TL072" H 2450 1426 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2450 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2450 1150 50  0001 C CNN
	1    2450 1150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 640C3450
P 2450 2150
AR Path="/640C3450" Ref="U?"  Part="2" 
AR Path="/63F3B749/640C3450" Ref="U9"  Part="2" 
F 0 "U9" H 2450 2517 50  0000 C CNN
F 1 "TL072" H 2450 2426 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2450 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2450 2150 50  0001 C CNN
	2    2450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1250 2150 1400
Wire Wire Line
	2150 1400 2750 1400
Wire Wire Line
	2750 1400 2750 1150
Wire Wire Line
	2750 1150 2800 1150
Connection ~ 2750 1150
Wire Wire Line
	2150 2250 2150 2400
Wire Wire Line
	2150 2400 2750 2400
Wire Wire Line
	2750 2400 2750 2150
Wire Wire Line
	2750 2150 2800 2150
Connection ~ 2750 2150
$Comp
L Device:R R?
U 1 1 640C3460
P 2950 1150
AR Path="/640C3460" Ref="R?"  Part="1" 
AR Path="/63F3B749/640C3460" Ref="R27"  Part="1" 
F 0 "R27" V 2743 1150 50  0000 C CNN
F 1 "2k" V 2834 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2880 1150 50  0001 C CNN
F 3 "~" H 2950 1150 50  0001 C CNN
	1    2950 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 640C3466
P 3150 1300
AR Path="/640C3466" Ref="R?"  Part="1" 
AR Path="/63F3B749/640C3466" Ref="R29"  Part="1" 
F 0 "R29" H 3080 1254 50  0000 R CNN
F 1 "1k" H 3080 1345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3080 1300 50  0001 C CNN
F 3 "~" H 3150 1300 50  0001 C CNN
	1    3150 1300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 640C346C
P 3150 1450
AR Path="/640C346C" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/640C346C" Ref="#PWR094"  Part="1" 
F 0 "#PWR094" H 3150 1200 50  0001 C CNN
F 1 "GND" H 3155 1277 50  0000 C CNN
F 2 "" H 3150 1450 50  0001 C CNN
F 3 "" H 3150 1450 50  0001 C CNN
	1    3150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1150 3150 1150
Text Label 3250 1150 0    50   ~ 0
cv1
$Comp
L Device:R R?
U 1 1 640C3474
P 2950 2150
AR Path="/640C3474" Ref="R?"  Part="1" 
AR Path="/63F3B749/640C3474" Ref="R28"  Part="1" 
F 0 "R28" V 2743 2150 50  0000 C CNN
F 1 "2k" V 2834 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2880 2150 50  0001 C CNN
F 3 "~" H 2950 2150 50  0001 C CNN
	1    2950 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 640C347A
P 3150 2300
AR Path="/640C347A" Ref="R?"  Part="1" 
AR Path="/63F3B749/640C347A" Ref="R30"  Part="1" 
F 0 "R30" H 3080 2254 50  0000 R CNN
F 1 "1k" H 3080 2345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3080 2300 50  0001 C CNN
F 3 "~" H 3150 2300 50  0001 C CNN
	1    3150 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 640C3480
P 3150 2450
AR Path="/640C3480" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/640C3480" Ref="#PWR095"  Part="1" 
F 0 "#PWR095" H 3150 2200 50  0001 C CNN
F 1 "GND" H 3155 2277 50  0000 C CNN
F 2 "" H 3150 2450 50  0001 C CNN
F 3 "" H 3150 2450 50  0001 C CNN
	1    3150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2150 3150 2150
Text Label 3250 2150 0    50   ~ 0
cv2
Wire Wire Line
	3150 2150 3250 2150
Connection ~ 3150 2150
Wire Wire Line
	3250 1150 3150 1150
Connection ~ 3150 1150
Text Label 2150 1050 2    50   ~ 0
cv_1_in
Text Label 2150 2050 2    50   ~ 0
cv_2_in
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J16
U 1 1 64135E02
P 1800 3400
F 0 "J16" H 1850 3917 50  0000 C CNN
F 1 "mid_to_back_1" H 1850 3826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 1800 3400 50  0001 C CNN
F 3 "~" H 1800 3400 50  0001 C CNN
	1    1800 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J17
U 1 1 641364F3
P 2800 4600
F 0 "J17" H 2850 5117 50  0000 C CNN
F 1 "mid_to_back_2" H 2850 5026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 2800 4600 50  0001 C CNN
F 3 "~" H 2800 4600 50  0001 C CNN
	1    2800 4600
	1    0    0    -1  
$EndComp
Text Label 2100 3100 0    50   ~ 0
polarity_1
Text Label 2100 3200 0    50   ~ 0
polarity_2
Text Label 2100 3600 0    50   ~ 0
polarity_3
Text Label 2100 3700 0    50   ~ 0
polarity_4
Text Label 2100 3300 0    50   ~ 0
polarity_5
Text Label 2100 3500 0    50   ~ 0
polarity_6
Text Label 3100 5000 0    50   ~ 0
polarity_7
Text Label 2600 5000 2    50   ~ 0
polarity_8
Text Label 1600 3100 2    50   ~ 0
out_1
Text Label 1600 3400 2    50   ~ 0
out_2
Text Label 1600 3600 2    50   ~ 0
out_3
Text Label 2100 3800 0    50   ~ 0
out_4
Text Label 3100 4400 0    50   ~ 0
out_5
Text Label 2600 4400 2    50   ~ 0
out_6
Text Label 2600 4500 2    50   ~ 0
out_7
Text Label 2600 4900 2    50   ~ 0
out_8
$Comp
L power:+3V3 #PWR?
U 1 1 6419379B
P 2100 3400
AR Path="/6419379B" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/6419379B" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 2100 3250 50  0001 C CNN
F 1 "+3V3" V 2115 3528 50  0000 L CNN
F 2 "" H 2100 3400 50  0001 C CNN
F 3 "" H 2100 3400 50  0001 C CNN
	1    2100 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64193ED1
P 1600 3500
AR Path="/64193ED1" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/64193ED1" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 1600 3250 50  0001 C CNN
F 1 "GND" V 1605 3372 50  0000 R CNN
F 2 "" H 1600 3500 50  0001 C CNN
F 3 "" H 1600 3500 50  0001 C CNN
	1    1600 3500
	0    1    1    0   
$EndComp
Text Label 3100 4700 0    50   ~ 0
cv_1_in
Text Label 3100 4800 0    50   ~ 0
cv_2_in
Text Label 3100 4500 0    50   ~ 0
cv1
Text Label 3100 4900 0    50   ~ 0
cv2
Text Label 1600 3200 2    50   ~ 0
dac_1_a
Text Label 1600 3300 2    50   ~ 0
dac_1_b
Text Label 1600 3700 2    50   ~ 0
dac_2_a
Text Label 1600 3800 2    50   ~ 0
dac_2_b
Text Label 3100 4300 0    50   ~ 0
dac_3_a
Text Label 2600 4300 2    50   ~ 0
dac_3_b
Text Label 2600 4600 2    50   ~ 0
dac_4_a
Text Label 2600 4800 2    50   ~ 0
dac_4_b
$Comp
L power:GND #PWR?
U 1 1 641E6081
P 3100 4600
AR Path="/641E6081" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/641E6081" Ref="#PWR093"  Part="1" 
F 0 "#PWR093" H 3100 4350 50  0001 C CNN
F 1 "GND" V 3105 4472 50  0000 R CNN
F 2 "" H 3100 4600 50  0001 C CNN
F 3 "" H 3100 4600 50  0001 C CNN
	1    3100 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 641E6985
P 2600 4700
AR Path="/641E6985" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/641E6985" Ref="#PWR089"  Part="1" 
F 0 "#PWR089" H 2600 4550 50  0001 C CNN
F 1 "+3V3" V 2615 4828 50  0000 L CNN
F 2 "" H 2600 4700 50  0001 C CNN
F 3 "" H 2600 4700 50  0001 C CNN
	1    2600 4700
	0    -1   -1   0   
$EndComp
Text HLabel 2500 3100 2    50   Input ~ 0
polarity_1
Text HLabel 1200 3300 0    50   Input ~ 0
dac_1_b
Text HLabel 1200 3400 0    50   Input ~ 0
out_2
Text HLabel 2500 3200 2    50   Input ~ 0
polarity_2
Text HLabel 1200 3700 0    50   Input ~ 0
dac_2_a
Text HLabel 2500 3600 2    50   Input ~ 0
polarity_3
Text HLabel 1200 3600 0    50   Input ~ 0
out_3
Text HLabel 2500 3700 2    50   Input ~ 0
polarity_4
Text HLabel 2500 3800 2    50   Input ~ 0
out_4
Text HLabel 3500 4300 2    50   Input ~ 0
dac_3_a
Text HLabel 2500 3300 2    50   Input ~ 0
polarity_5
Text HLabel 1200 3800 0    50   Input ~ 0
dac_2_b
Text HLabel 1200 3100 0    50   Input ~ 0
out_1
Text HLabel 1200 3200 0    50   Input ~ 0
dac_1_a
Wire Wire Line
	2500 3100 2100 3100
Wire Wire Line
	2100 3200 2500 3200
Wire Wire Line
	2500 3300 2100 3300
Wire Wire Line
	2100 3500 2500 3500
Wire Wire Line
	2500 3600 2100 3600
Wire Wire Line
	2100 3700 2500 3700
Wire Wire Line
	2500 3800 2100 3800
Wire Wire Line
	1200 3100 1600 3100
Wire Wire Line
	1600 3200 1200 3200
Wire Wire Line
	1200 3300 1600 3300
Wire Wire Line
	1600 3400 1200 3400
Wire Wire Line
	1200 3600 1600 3600
Wire Wire Line
	1600 3700 1200 3700
Wire Wire Line
	1200 3800 1600 3800
Text HLabel 2200 4500 0    50   Input ~ 0
out_7
Text HLabel 3500 5000 2    50   Input ~ 0
polarity_7
Text HLabel 2200 4600 0    50   Input ~ 0
dac_4_a
Text HLabel 2200 4400 0    50   Input ~ 0
out_6
Text HLabel 2500 3500 2    50   Input ~ 0
polarity_6
Text HLabel 2200 4300 0    50   Input ~ 0
dac_3_b
Text HLabel 3500 4400 2    50   Input ~ 0
out_5
Text HLabel 2200 5000 0    50   Input ~ 0
polarity_8
Text HLabel 2200 4800 0    50   Input ~ 0
dac_4_b
Text HLabel 2200 4900 0    50   Input ~ 0
out_8
Text HLabel 3500 4700 2    50   Input ~ 0
cv_1_in
Text HLabel 3500 4500 2    50   Input ~ 0
cv1
Text HLabel 3500 4800 2    50   Input ~ 0
cv_2_in
Text HLabel 3500 4900 2    50   Input ~ 0
cv2
Wire Wire Line
	3500 4300 3100 4300
Wire Wire Line
	3100 4400 3500 4400
Wire Wire Line
	3500 4500 3100 4500
Wire Wire Line
	3100 4700 3500 4700
Wire Wire Line
	3500 4800 3100 4800
Wire Wire Line
	3100 4900 3500 4900
Wire Wire Line
	3500 5000 3100 5000
Wire Wire Line
	2600 5000 2200 5000
Wire Wire Line
	2200 4900 2600 4900
Wire Wire Line
	2600 4800 2200 4800
Wire Wire Line
	2200 4600 2600 4600
Wire Wire Line
	2600 4500 2200 4500
Wire Wire Line
	2200 4400 2600 4400
Wire Wire Line
	2600 4300 2200 4300
$Comp
L Diode:1N5819 D22
U 1 1 62AEFE36
P 2450 5650
F 0 "D22" H 2450 5867 50  0000 C CNN
F 1 "1N5819" H 2450 5776 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 2450 5475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2450 5650 50  0001 C CNN
	1    2450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5650 1700 5350
Wire Wire Line
	1700 5350 2200 5350
Wire Wire Line
	2200 5350 2200 5650
Wire Wire Line
	2200 5650 2300 5650
Connection ~ 2200 5650
$Comp
L Diode:1N5819 D23
U 1 1 62B168FF
P 2450 6050
F 0 "D23" H 2450 6150 50  0000 C CNN
F 1 "1N5819" H 2450 6250 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 2450 5875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2450 6050 50  0001 C CNN
	1    2450 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 6050 1700 6200
Wire Wire Line
	1700 6200 2200 6200
Wire Wire Line
	2200 6200 2200 6050
Wire Wire Line
	2200 6050 2300 6050
Connection ~ 2200 6050
$EndSCHEMATC
