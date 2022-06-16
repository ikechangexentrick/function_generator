EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 2
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
L Analog_DAC:MCP4922 U?
U 1 1 63F567DC
P 1900 2100
AR Path="/63F567DC" Ref="U?"  Part="1" 
AR Path="/63F39D75/63F567DC" Ref="U2"  Part="1" 
F 0 "U2" H 1450 2550 50  0000 C CNN
F 1 "MCP4922" H 1500 2450 50  0000 C CNN
F 2 "" H 2700 1800 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22250A.pdf" H 2700 1800 50  0001 C CNN
	1    1900 2100
	1    0    0    -1  
$EndComp
Text Label 1400 2100 2    50   ~ 0
spi_ck
Text Label 1400 2300 2    50   ~ 0
spi_mosi
Text Label 1400 2200 2    50   ~ 0
latch
Text Label 1400 2400 2    50   ~ 0
da_cs_1
$Comp
L Device:C C?
U 1 1 63F567E6
P 1750 1550
AR Path="/63F567E6" Ref="C?"  Part="1" 
AR Path="/63F39D75/63F567E6" Ref="C3"  Part="1" 
F 0 "C3" V 1498 1550 50  0000 C CNN
F 1 "0.1u" V 1589 1550 50  0000 C CNN
F 2 "" H 1788 1400 50  0001 C CNN
F 3 "~" H 1750 1550 50  0001 C CNN
	1    1750 1550
	0    1    1    0   
$EndComp
$Comp
L Device:CP C?
U 1 1 63F567EC
P 2050 1550
AR Path="/63F567EC" Ref="C?"  Part="1" 
AR Path="/63F39D75/63F567EC" Ref="C4"  Part="1" 
F 0 "C4" V 2305 1550 50  0000 C CNN
F 1 "100u" V 2214 1550 50  0000 C CNN
F 2 "" H 2088 1400 50  0001 C CNN
F 3 "~" H 2050 1550 50  0001 C CNN
	1    2050 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F567F2
P 1900 1400
AR Path="/63F567F2" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F567F2" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 1900 1250 50  0001 C CNN
F 1 "+3V3" H 1915 1573 50  0000 C CNN
F 2 "" H 1900 1400 50  0001 C CNN
F 3 "" H 1900 1400 50  0001 C CNN
	1    1900 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F567F8
P 2200 1550
AR Path="/63F567F8" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F567F8" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 2200 1300 50  0001 C CNN
F 1 "GND" V 2205 1422 50  0000 R CNN
F 2 "" H 2200 1550 50  0001 C CNN
F 3 "" H 2200 1550 50  0001 C CNN
	1    2200 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F567FE
P 1600 1550
AR Path="/63F567FE" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F567FE" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 1600 1300 50  0001 C CNN
F 1 "GND" V 1605 1422 50  0000 R CNN
F 2 "" H 1600 1550 50  0001 C CNN
F 3 "" H 1600 1550 50  0001 C CNN
	1    1600 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 1700 1900 1550
Connection ~ 1900 1550
Wire Wire Line
	1900 1550 1900 1400
$Comp
L power:+3V3 #PWR?
U 1 1 63F56807
P 2400 1900
AR Path="/63F56807" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56807" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 2400 1750 50  0001 C CNN
F 1 "+3V3" V 2415 2028 50  0000 L CNN
F 2 "" H 2400 1900 50  0001 C CNN
F 3 "" H 2400 1900 50  0001 C CNN
	1    2400 1900
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F5680D
P 2400 2400
AR Path="/63F5680D" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F5680D" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 2400 2250 50  0001 C CNN
F 1 "+3V3" V 2415 2528 50  0000 L CNN
F 2 "" H 2400 2400 50  0001 C CNN
F 3 "" H 2400 2400 50  0001 C CNN
	1    2400 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F56813
P 1900 2600
AR Path="/63F56813" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56813" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 1900 2350 50  0001 C CNN
F 1 "GND" H 1905 2427 50  0000 C CNN
F 2 "" H 1900 2600 50  0001 C CNN
F 3 "" H 1900 2600 50  0001 C CNN
	1    1900 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F56819
P 1400 1900
AR Path="/63F56819" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56819" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 1400 1750 50  0001 C CNN
F 1 "+3V3" V 1415 2028 50  0000 L CNN
F 2 "" H 1400 1900 50  0001 C CNN
F 3 "" H 1400 1900 50  0001 C CNN
	1    1400 1900
	0    -1   -1   0   
$EndComp
Text Label 2400 2000 0    50   ~ 0
dac_1_a
Text Label 2400 2300 0    50   ~ 0
dac_1_b
$Comp
L Analog_DAC:MCP4922 U?
U 1 1 63F56821
P 3750 2100
AR Path="/63F56821" Ref="U?"  Part="1" 
AR Path="/63F39D75/63F56821" Ref="U4"  Part="1" 
F 0 "U4" H 3300 2550 50  0000 C CNN
F 1 "MCP4922" H 3350 2450 50  0000 C CNN
F 2 "" H 4550 1800 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22250A.pdf" H 4550 1800 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
Text Label 3250 2100 2    50   ~ 0
spi_ck
Text Label 3250 2300 2    50   ~ 0
spi_mosi
Text Label 3250 2200 2    50   ~ 0
latch
Text Label 3250 2400 2    50   ~ 0
da_cs_2
$Comp
L Device:C C?
U 1 1 63F5682B
P 3600 1550
AR Path="/63F5682B" Ref="C?"  Part="1" 
AR Path="/63F39D75/63F5682B" Ref="C5"  Part="1" 
F 0 "C5" V 3348 1550 50  0000 C CNN
F 1 "0.1u" V 3439 1550 50  0000 C CNN
F 2 "" H 3638 1400 50  0001 C CNN
F 3 "~" H 3600 1550 50  0001 C CNN
	1    3600 1550
	0    1    1    0   
$EndComp
$Comp
L Device:CP C?
U 1 1 63F56831
P 3900 1550
AR Path="/63F56831" Ref="C?"  Part="1" 
AR Path="/63F39D75/63F56831" Ref="C6"  Part="1" 
F 0 "C6" V 4155 1550 50  0000 C CNN
F 1 "100u" V 4064 1550 50  0000 C CNN
F 2 "" H 3938 1400 50  0001 C CNN
F 3 "~" H 3900 1550 50  0001 C CNN
	1    3900 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F56837
P 3750 1400
AR Path="/63F56837" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56837" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 3750 1250 50  0001 C CNN
F 1 "+3V3" H 3765 1573 50  0000 C CNN
F 2 "" H 3750 1400 50  0001 C CNN
F 3 "" H 3750 1400 50  0001 C CNN
	1    3750 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F5683D
P 4050 1550
AR Path="/63F5683D" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F5683D" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 4050 1300 50  0001 C CNN
F 1 "GND" V 4055 1422 50  0000 R CNN
F 2 "" H 4050 1550 50  0001 C CNN
F 3 "" H 4050 1550 50  0001 C CNN
	1    4050 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F56843
P 3450 1550
AR Path="/63F56843" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56843" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 3450 1300 50  0001 C CNN
F 1 "GND" V 3455 1422 50  0000 R CNN
F 2 "" H 3450 1550 50  0001 C CNN
F 3 "" H 3450 1550 50  0001 C CNN
	1    3450 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 1700 3750 1550
Connection ~ 3750 1550
Wire Wire Line
	3750 1550 3750 1400
$Comp
L power:+3V3 #PWR?
U 1 1 63F5684C
P 4250 1900
AR Path="/63F5684C" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F5684C" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 4250 1750 50  0001 C CNN
F 1 "+3V3" V 4265 2028 50  0000 L CNN
F 2 "" H 4250 1900 50  0001 C CNN
F 3 "" H 4250 1900 50  0001 C CNN
	1    4250 1900
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F56852
P 4250 2400
AR Path="/63F56852" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56852" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 4250 2250 50  0001 C CNN
F 1 "+3V3" V 4265 2528 50  0000 L CNN
F 2 "" H 4250 2400 50  0001 C CNN
F 3 "" H 4250 2400 50  0001 C CNN
	1    4250 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F56858
P 3750 2600
AR Path="/63F56858" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56858" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 3750 2350 50  0001 C CNN
F 1 "GND" H 3755 2427 50  0000 C CNN
F 2 "" H 3750 2600 50  0001 C CNN
F 3 "" H 3750 2600 50  0001 C CNN
	1    3750 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F5685E
P 3250 1900
AR Path="/63F5685E" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F5685E" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 3250 1750 50  0001 C CNN
F 1 "+3V3" V 3265 2028 50  0000 L CNN
F 2 "" H 3250 1900 50  0001 C CNN
F 3 "" H 3250 1900 50  0001 C CNN
	1    3250 1900
	0    -1   -1   0   
$EndComp
Text Label 4250 2000 0    50   ~ 0
dac_2_a
Text Label 4250 2300 0    50   ~ 0
dac_2_b
$Comp
L Analog_DAC:MCP4922 U?
U 1 1 63F56866
P 5600 2100
AR Path="/63F56866" Ref="U?"  Part="1" 
AR Path="/63F39D75/63F56866" Ref="U5"  Part="1" 
F 0 "U5" H 5150 2550 50  0000 C CNN
F 1 "MCP4922" H 5200 2450 50  0000 C CNN
F 2 "" H 6400 1800 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22250A.pdf" H 6400 1800 50  0001 C CNN
	1    5600 2100
	1    0    0    -1  
$EndComp
Text Label 5100 2100 2    50   ~ 0
spi_ck
Text Label 5100 2300 2    50   ~ 0
spi_mosi
Text Label 5100 2200 2    50   ~ 0
latch
Text Label 5100 2400 2    50   ~ 0
da_cs_3
$Comp
L Device:C C?
U 1 1 63F56870
P 5450 1550
AR Path="/63F56870" Ref="C?"  Part="1" 
AR Path="/63F39D75/63F56870" Ref="C7"  Part="1" 
F 0 "C7" V 5198 1550 50  0000 C CNN
F 1 "0.1u" V 5289 1550 50  0000 C CNN
F 2 "" H 5488 1400 50  0001 C CNN
F 3 "~" H 5450 1550 50  0001 C CNN
	1    5450 1550
	0    1    1    0   
$EndComp
$Comp
L Device:CP C?
U 1 1 63F56876
P 5750 1550
AR Path="/63F56876" Ref="C?"  Part="1" 
AR Path="/63F39D75/63F56876" Ref="C8"  Part="1" 
F 0 "C8" V 6005 1550 50  0000 C CNN
F 1 "100u" V 5914 1550 50  0000 C CNN
F 2 "" H 5788 1400 50  0001 C CNN
F 3 "~" H 5750 1550 50  0001 C CNN
	1    5750 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F5687C
P 5600 1400
AR Path="/63F5687C" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F5687C" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 5600 1250 50  0001 C CNN
F 1 "+3V3" H 5615 1573 50  0000 C CNN
F 2 "" H 5600 1400 50  0001 C CNN
F 3 "" H 5600 1400 50  0001 C CNN
	1    5600 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F56882
P 5900 1550
AR Path="/63F56882" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56882" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 5900 1300 50  0001 C CNN
F 1 "GND" V 5905 1422 50  0000 R CNN
F 2 "" H 5900 1550 50  0001 C CNN
F 3 "" H 5900 1550 50  0001 C CNN
	1    5900 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F56888
P 5300 1550
AR Path="/63F56888" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56888" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 5300 1300 50  0001 C CNN
F 1 "GND" V 5305 1422 50  0000 R CNN
F 2 "" H 5300 1550 50  0001 C CNN
F 3 "" H 5300 1550 50  0001 C CNN
	1    5300 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 1700 5600 1550
Connection ~ 5600 1550
Wire Wire Line
	5600 1550 5600 1400
$Comp
L power:+3V3 #PWR?
U 1 1 63F56891
P 6100 1900
AR Path="/63F56891" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56891" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 6100 1750 50  0001 C CNN
F 1 "+3V3" V 6115 2028 50  0000 L CNN
F 2 "" H 6100 1900 50  0001 C CNN
F 3 "" H 6100 1900 50  0001 C CNN
	1    6100 1900
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F56897
P 6100 2400
AR Path="/63F56897" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F56897" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 6100 2250 50  0001 C CNN
F 1 "+3V3" V 6115 2528 50  0000 L CNN
F 2 "" H 6100 2400 50  0001 C CNN
F 3 "" H 6100 2400 50  0001 C CNN
	1    6100 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F5689D
P 5600 2600
AR Path="/63F5689D" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F5689D" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 5600 2350 50  0001 C CNN
F 1 "GND" H 5605 2427 50  0000 C CNN
F 2 "" H 5600 2600 50  0001 C CNN
F 3 "" H 5600 2600 50  0001 C CNN
	1    5600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F568A3
P 5100 1900
AR Path="/63F568A3" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F568A3" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 5100 1750 50  0001 C CNN
F 1 "+3V3" V 5115 2028 50  0000 L CNN
F 2 "" H 5100 1900 50  0001 C CNN
F 3 "" H 5100 1900 50  0001 C CNN
	1    5100 1900
	0    -1   -1   0   
$EndComp
Text Label 6100 2000 0    50   ~ 0
dac_3_a
Text Label 6100 2300 0    50   ~ 0
dac_3_b
$Comp
L Analog_DAC:MCP4922 U?
U 1 1 63F568AB
P 7400 2100
AR Path="/63F568AB" Ref="U?"  Part="1" 
AR Path="/63F39D75/63F568AB" Ref="U6"  Part="1" 
F 0 "U6" H 6950 2550 50  0000 C CNN
F 1 "MCP4922" H 7000 2450 50  0000 C CNN
F 2 "" H 8200 1800 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22250A.pdf" H 8200 1800 50  0001 C CNN
	1    7400 2100
	1    0    0    -1  
$EndComp
Text Label 6900 2100 2    50   ~ 0
spi_ck
Text Label 6900 2300 2    50   ~ 0
spi_mosi
Text Label 6900 2200 2    50   ~ 0
latch
Text Label 6900 2400 2    50   ~ 0
da_cs_4
$Comp
L Device:C C?
U 1 1 63F568B5
P 7250 1550
AR Path="/63F568B5" Ref="C?"  Part="1" 
AR Path="/63F39D75/63F568B5" Ref="C9"  Part="1" 
F 0 "C9" V 6998 1550 50  0000 C CNN
F 1 "0.1u" V 7089 1550 50  0000 C CNN
F 2 "" H 7288 1400 50  0001 C CNN
F 3 "~" H 7250 1550 50  0001 C CNN
	1    7250 1550
	0    1    1    0   
$EndComp
$Comp
L Device:CP C?
U 1 1 63F568BB
P 7550 1550
AR Path="/63F568BB" Ref="C?"  Part="1" 
AR Path="/63F39D75/63F568BB" Ref="C10"  Part="1" 
F 0 "C10" V 7805 1550 50  0000 C CNN
F 1 "100u" V 7714 1550 50  0000 C CNN
F 2 "" H 7588 1400 50  0001 C CNN
F 3 "~" H 7550 1550 50  0001 C CNN
	1    7550 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F568C1
P 7400 1400
AR Path="/63F568C1" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F568C1" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 7400 1250 50  0001 C CNN
F 1 "+3V3" H 7415 1573 50  0000 C CNN
F 2 "" H 7400 1400 50  0001 C CNN
F 3 "" H 7400 1400 50  0001 C CNN
	1    7400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F568C7
P 7700 1550
AR Path="/63F568C7" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F568C7" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 7700 1300 50  0001 C CNN
F 1 "GND" V 7705 1422 50  0000 R CNN
F 2 "" H 7700 1550 50  0001 C CNN
F 3 "" H 7700 1550 50  0001 C CNN
	1    7700 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F568CD
P 7100 1550
AR Path="/63F568CD" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F568CD" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 7100 1300 50  0001 C CNN
F 1 "GND" V 7105 1422 50  0000 R CNN
F 2 "" H 7100 1550 50  0001 C CNN
F 3 "" H 7100 1550 50  0001 C CNN
	1    7100 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 1700 7400 1550
Connection ~ 7400 1550
Wire Wire Line
	7400 1550 7400 1400
$Comp
L power:+3V3 #PWR?
U 1 1 63F568D6
P 7900 1900
AR Path="/63F568D6" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F568D6" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 7900 1750 50  0001 C CNN
F 1 "+3V3" V 7915 2028 50  0000 L CNN
F 2 "" H 7900 1900 50  0001 C CNN
F 3 "" H 7900 1900 50  0001 C CNN
	1    7900 1900
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F568DC
P 7900 2400
AR Path="/63F568DC" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F568DC" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 7900 2250 50  0001 C CNN
F 1 "+3V3" V 7915 2528 50  0000 L CNN
F 2 "" H 7900 2400 50  0001 C CNN
F 3 "" H 7900 2400 50  0001 C CNN
	1    7900 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F568E2
P 7400 2600
AR Path="/63F568E2" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F568E2" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 7400 2350 50  0001 C CNN
F 1 "GND" H 7405 2427 50  0000 C CNN
F 2 "" H 7400 2600 50  0001 C CNN
F 3 "" H 7400 2600 50  0001 C CNN
	1    7400 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63F568E8
P 6900 1900
AR Path="/63F568E8" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F568E8" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 6900 1750 50  0001 C CNN
F 1 "+3V3" V 6915 2028 50  0000 L CNN
F 2 "" H 6900 1900 50  0001 C CNN
F 3 "" H 6900 1900 50  0001 C CNN
	1    6900 1900
	0    -1   -1   0   
$EndComp
Text Label 7900 2000 0    50   ~ 0
dac_4_a
Text Label 7900 2300 0    50   ~ 0
dac_4_b
$Comp
L Diode:1N4148 D?
U 1 1 63F77FA4
P 4150 4600
AR Path="/63F77FA4" Ref="D?"  Part="1" 
AR Path="/63F39D75/63F77FA4" Ref="D12"  Part="1" 
F 0 "D12" V 4104 4680 50  0000 L CNN
F 1 "1N4148" V 4195 4680 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4150 4425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4150 4600 50  0001 C CNN
	1    4150 4600
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 63F77FAA
P 4150 4900
AR Path="/63F77FAA" Ref="D?"  Part="1" 
AR Path="/63F39D75/63F77FAA" Ref="D13"  Part="1" 
F 0 "D13" V 4104 4980 50  0000 L CNN
F 1 "1N4148" V 4195 4980 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4150 4725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4150 4900 50  0001 C CNN
	1    4150 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F77FB0
P 4150 5050
AR Path="/63F77FB0" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F77FB0" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 4150 4800 50  0001 C CNN
F 1 "GND" H 4155 4877 50  0000 C CNN
F 2 "" H 4150 5050 50  0001 C CNN
F 3 "" H 4150 5050 50  0001 C CNN
	1    4150 5050
	1    0    0    -1  
$EndComp
Connection ~ 4150 4750
Wire Wire Line
	4150 4750 4250 4750
$Comp
L power:+3V3 #PWR?
U 1 1 63F77FB8
P 4150 4450
AR Path="/63F77FB8" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F77FB8" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 4150 4300 50  0001 C CNN
F 1 "+3V3" H 4165 4623 50  0000 C CNN
F 2 "" H 4150 4450 50  0001 C CNN
F 3 "" H 4150 4450 50  0001 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 63F77FBE
P 4050 3550
AR Path="/63F77FBE" Ref="D?"  Part="1" 
AR Path="/63F39D75/63F77FBE" Ref="D10"  Part="1" 
F 0 "D10" V 4004 3630 50  0000 L CNN
F 1 "1N4148" V 4095 3630 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4050 3375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4050 3550 50  0001 C CNN
	1    4050 3550
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 63F77FC4
P 4050 3850
AR Path="/63F77FC4" Ref="D?"  Part="1" 
AR Path="/63F39D75/63F77FC4" Ref="D11"  Part="1" 
F 0 "D11" V 4004 3930 50  0000 L CNN
F 1 "1N4148" V 4095 3930 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4050 3675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4050 3850 50  0001 C CNN
	1    4050 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F77FCA
P 4050 4000
AR Path="/63F77FCA" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F77FCA" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 4050 3750 50  0001 C CNN
F 1 "GND" H 4055 3827 50  0000 C CNN
F 2 "" H 4050 4000 50  0001 C CNN
F 3 "" H 4050 4000 50  0001 C CNN
	1    4050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3700 4050 3700
Connection ~ 4050 3700
Wire Wire Line
	4050 3700 4150 3700
$Comp
L power:+3V3 #PWR?
U 1 1 63F77FD3
P 4050 3400
AR Path="/63F77FD3" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F77FD3" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 4050 3250 50  0001 C CNN
F 1 "+3V3" H 4065 3573 50  0000 C CNN
F 2 "" H 4050 3400 50  0001 C CNN
F 3 "" H 4050 3400 50  0001 C CNN
	1    4050 3400
	1    0    0    -1  
$EndComp
Text Label 4150 3700 0    50   ~ 0
cv2
$Comp
L Arduino_compatible:RaspberryPi_Pico U?
U 1 1 63F77FDA
P 2750 4900
AR Path="/63F77FDA" Ref="U?"  Part="1" 
AR Path="/63F39D75/63F77FDA" Ref="U3"  Part="1" 
F 0 "U3" H 2750 6515 50  0000 C CNN
F 1 "RaspberryPi_Pico" H 2750 6424 50  0000 C CNN
F 2 "" H 2750 4900 50  0001 C CNN
F 3 "" H 2750 4900 50  0001 C CNN
	1    2750 4900
	1    0    0    -1  
$EndComp
Text Label 2000 5200 2    50   ~ 0
clock
Text Label 2000 4900 2    50   ~ 0
RE1
Text Label 2000 4750 2    50   ~ 0
RE2
Text Label 2000 5050 2    50   ~ 0
button
Text Label 4250 4750 0    50   ~ 0
cv1
Wire Wire Line
	3500 4450 3850 4450
Wire Wire Line
	3850 4450 3850 3700
Wire Wire Line
	3500 4750 4150 4750
$Comp
L power:+3V3 #PWR?
U 1 1 63F77FE8
P 3500 3700
AR Path="/63F77FE8" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F77FE8" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 3500 3550 50  0001 C CNN
F 1 "+3V3" V 3515 3828 50  0000 L CNN
F 2 "" H 3500 3700 50  0001 C CNN
F 3 "" H 3500 3700 50  0001 C CNN
	1    3500 3700
	0    1    1    0   
$EndComp
NoConn ~ 3500 3550
NoConn ~ 3500 4000
NoConn ~ 3500 4150
$Comp
L power:GND #PWR?
U 1 1 63F77FF1
P 3500 3850
AR Path="/63F77FF1" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F77FF1" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 3500 3600 50  0001 C CNN
F 1 "GND" V 3505 3722 50  0000 R CNN
F 2 "" H 3500 3850 50  0001 C CNN
F 3 "" H 3500 3850 50  0001 C CNN
	1    3500 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F77FF7
P 3500 4600
AR Path="/63F77FF7" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F77FF7" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 3500 4350 50  0001 C CNN
F 1 "GND" V 3505 4472 50  0000 R CNN
F 2 "" H 3500 4600 50  0001 C CNN
F 3 "" H 3500 4600 50  0001 C CNN
	1    3500 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F77FFD
P 3500 5350
AR Path="/63F77FFD" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F77FFD" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 3500 5100 50  0001 C CNN
F 1 "GND" V 3505 5222 50  0000 R CNN
F 2 "" H 3500 5350 50  0001 C CNN
F 3 "" H 3500 5350 50  0001 C CNN
	1    3500 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F78003
P 3500 6100
AR Path="/63F78003" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F78003" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 3500 5850 50  0001 C CNN
F 1 "GND" V 3505 5972 50  0000 R CNN
F 2 "" H 3500 6100 50  0001 C CNN
F 3 "" H 3500 6100 50  0001 C CNN
	1    3500 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F78009
P 2000 6100
AR Path="/63F78009" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F78009" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 2000 5850 50  0001 C CNN
F 1 "GND" V 2005 5972 50  0000 R CNN
F 2 "" H 2000 6100 50  0001 C CNN
F 3 "" H 2000 6100 50  0001 C CNN
	1    2000 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F7800F
P 2000 5350
AR Path="/63F7800F" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F7800F" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 2000 5100 50  0001 C CNN
F 1 "GND" V 2005 5222 50  0000 R CNN
F 2 "" H 2000 5350 50  0001 C CNN
F 3 "" H 2000 5350 50  0001 C CNN
	1    2000 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F78015
P 2000 4600
AR Path="/63F78015" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F78015" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 2000 4350 50  0001 C CNN
F 1 "GND" V 2005 4472 50  0000 R CNN
F 2 "" H 2000 4600 50  0001 C CNN
F 3 "" H 2000 4600 50  0001 C CNN
	1    2000 4600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63F7801B
P 2000 3850
AR Path="/63F7801B" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/63F7801B" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 2000 3600 50  0001 C CNN
F 1 "GND" V 2005 3722 50  0000 R CNN
F 2 "" H 2000 3850 50  0001 C CNN
F 3 "" H 2000 3850 50  0001 C CNN
	1    2000 3850
	0    1    1    0   
$EndComp
Text Label 2000 4300 2    50   ~ 0
display_sda
Text Label 2000 4450 2    50   ~ 0
display_scl
Text Label 3500 5950 0    50   ~ 0
spi_ck
Text Label 3500 5800 0    50   ~ 0
spi_mosi
Text Label 2000 5650 2    50   ~ 0
latch
Text Label 2000 5500 2    50   ~ 0
da_cs_1
NoConn ~ 3500 4900
NoConn ~ 3500 5050
Text Label 2000 3550 2    50   ~ 0
polarity_1
Text Label 2000 3700 2    50   ~ 0
polarity_2
Text Label 2000 4000 2    50   ~ 0
polarity_3
Text Label 2000 4150 2    50   ~ 0
polarity_4
Text Label 3500 5200 0    50   ~ 0
polarity_5
Text Label 3500 5500 0    50   ~ 0
polarity_6
Text Label 3500 5650 0    50   ~ 0
polarity_7
Text Label 3500 6250 0    50   ~ 0
polarity_8
Text Label 2000 5800 2    50   ~ 0
da_cs_2
Text Label 2000 5950 2    50   ~ 0
da_cs_3
Text Label 2000 6250 2    50   ~ 0
da_cs_4
Text Notes 3550 4900 0    50   ~ 0
random seed
NoConn ~ 3500 4300
NoConn ~ 3500 6400
NoConn ~ 2000 6400
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J?
U 1 1 64163922
P 6300 4500
AR Path="/63F383DE/64163922" Ref="J?"  Part="1" 
AR Path="/63F39D75/64163922" Ref="J?"  Part="1" 
F 0 "J?" H 6350 5117 50  0000 C CNN
F 1 "interface_to_mid" H 6350 5026 50  0000 C CNN
F 2 "" H 6300 4500 50  0001 C CNN
F 3 "~" H 6300 4500 50  0001 C CNN
	1    6300 4500
	1    0    0    -1  
$EndComp
Text Label 6100 4700 2    50   ~ 0
out_1
Text Label 6100 4800 2    50   ~ 0
out_2
Text Label 6100 4900 2    50   ~ 0
out_3
Text Label 6100 5000 2    50   ~ 0
out_4
Text Label 6600 5000 0    50   ~ 0
out_5
Text Label 6600 4900 0    50   ~ 0
out_6
Text Label 6600 4800 0    50   ~ 0
out_7
Text Label 6600 4700 0    50   ~ 0
out_8
Text Label 6100 4100 2    50   ~ 0
display_sda
Text Label 6600 4100 0    50   ~ 0
display_scl
Text Label 6100 4400 2    50   ~ 0
clock
Text Label 6100 4300 2    50   ~ 0
cv_1_in
Text Label 6100 4200 2    50   ~ 0
cv_2_in
Text Label 6600 4200 0    50   ~ 0
RE1
Text Label 6600 4300 0    50   ~ 0
RE2
Text Label 6600 4400 0    50   ~ 0
button
$Comp
L power:GND #PWR?
U 1 1 64163938
P 6100 4600
AR Path="/64163938" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/64163938" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/64163938" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 4350 50  0001 C CNN
F 1 "GND" V 6105 4472 50  0000 R CNN
F 2 "" H 6100 4600 50  0001 C CNN
F 3 "" H 6100 4600 50  0001 C CNN
	1    6100 4600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6416393E
P 6600 4600
AR Path="/6416393E" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/6416393E" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/6416393E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6600 4350 50  0001 C CNN
F 1 "GND" V 6605 4472 50  0000 R CNN
F 2 "" H 6600 4600 50  0001 C CNN
F 3 "" H 6600 4600 50  0001 C CNN
	1    6600 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 64163944
P 6600 4500
AR Path="/64163944" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/64163944" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/64163944" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6600 4350 50  0001 C CNN
F 1 "+3V3" V 6615 4628 50  0000 L CNN
F 2 "" H 6600 4500 50  0001 C CNN
F 3 "" H 6600 4500 50  0001 C CNN
	1    6600 4500
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6416394A
P 6100 4500
AR Path="/6416394A" Ref="#PWR?"  Part="1" 
AR Path="/63F383DE/6416394A" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/6416394A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 4350 50  0001 C CNN
F 1 "+3V3" V 6115 4628 50  0000 L CNN
F 2 "" H 6100 4500 50  0001 C CNN
F 3 "" H 6100 4500 50  0001 C CNN
	1    6100 4500
	0    -1   -1   0   
$EndComp
Text HLabel 5650 4100 0    50   Input ~ 0
display_sda
Text HLabel 5650 4200 0    50   Input ~ 0
cv_2_in
Text HLabel 5650 4300 0    50   Input ~ 0
cv_1_in
Text HLabel 5650 4400 0    50   Input ~ 0
clock
Text HLabel 5650 4700 0    50   Input ~ 0
out_1_o
Text HLabel 5650 4800 0    50   Input ~ 0
out_2_o
Text HLabel 5650 4900 0    50   Input ~ 0
out_3_o
Text HLabel 5650 5000 0    50   Input ~ 0
out_4_o
Text HLabel 7050 4100 2    50   Input ~ 0
display_scl
Text HLabel 7050 4200 2    50   Input ~ 0
RE1
Text HLabel 7050 4300 2    50   Input ~ 0
RE2
Text HLabel 7050 4400 2    50   Input ~ 0
button
Text HLabel 7050 4700 2    50   Input ~ 0
out_8_o
Text HLabel 7050 4800 2    50   Input ~ 0
out_7_o
Text HLabel 7050 4900 2    50   Input ~ 0
out_6_o
Text HLabel 7050 5000 2    50   Input ~ 0
out_5_o
Wire Wire Line
	7050 4100 6600 4100
Wire Wire Line
	6600 4200 7050 4200
Wire Wire Line
	7050 4300 6600 4300
Wire Wire Line
	6600 4400 7050 4400
Wire Wire Line
	6600 4700 7050 4700
Wire Wire Line
	6600 4800 7050 4800
Wire Wire Line
	6600 4900 7050 4900
Wire Wire Line
	6600 5000 7050 5000
Wire Wire Line
	6100 5000 5650 5000
Wire Wire Line
	5650 4900 6100 4900
Wire Wire Line
	5650 4800 6100 4800
Wire Wire Line
	5650 4700 6100 4700
Wire Wire Line
	5650 4400 6100 4400
Wire Wire Line
	5650 4300 6100 4300
Wire Wire Line
	5650 4200 6100 4200
Wire Wire Line
	5650 4100 6100 4100
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 642FEF97
P 8650 4550
AR Path="/63F3B749/642FEF97" Ref="J?"  Part="1" 
AR Path="/63F39D75/642FEF97" Ref="J?"  Part="1" 
F 0 "J?" H 8700 5067 50  0000 C CNN
F 1 "mid_to_back_1" H 8700 4976 50  0000 C CNN
F 2 "" H 8650 4550 50  0001 C CNN
F 3 "~" H 8650 4550 50  0001 C CNN
	1    8650 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 642FEF9D
P 8650 5750
AR Path="/63F3B749/642FEF9D" Ref="J?"  Part="1" 
AR Path="/63F39D75/642FEF9D" Ref="J?"  Part="1" 
F 0 "J?" H 8700 6267 50  0000 C CNN
F 1 "mid_to_back_2" H 8700 6176 50  0000 C CNN
F 2 "" H 8650 5750 50  0001 C CNN
F 3 "~" H 8650 5750 50  0001 C CNN
	1    8650 5750
	1    0    0    -1  
$EndComp
Text Label 8450 4250 2    50   ~ 0
polarity_1
Text Label 8450 4550 2    50   ~ 0
polarity_2
Text Label 8450 4850 2    50   ~ 0
polarity_3
Text Label 8950 4650 0    50   ~ 0
polarity_4
Text Label 8950 4950 0    50   ~ 0
polarity_5
Text Label 8450 5950 2    50   ~ 0
polarity_6
Text Label 8450 5550 2    50   ~ 0
polarity_7
Text Label 8950 5550 0    50   ~ 0
polarity_8
Text Label 8950 4350 0    50   ~ 0
out_1
Text Label 8450 4450 2    50   ~ 0
out_2
Text Label 8450 4950 2    50   ~ 0
out_3
Text Label 8950 4750 0    50   ~ 0
out_4
Text Label 8450 6150 2    50   ~ 0
out_5
Text Label 8450 5850 2    50   ~ 0
out_6
Text Label 8450 5450 2    50   ~ 0
out_7
Text Label 8950 5650 0    50   ~ 0
out_8
$Comp
L power:+3V3 #PWR?
U 1 1 642FEFB3
P 8950 4550
AR Path="/642FEFB3" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/642FEFB3" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/642FEFB3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 4400 50  0001 C CNN
F 1 "+3V3" V 8965 4678 50  0000 L CNN
F 2 "" H 8950 4550 50  0001 C CNN
F 3 "" H 8950 4550 50  0001 C CNN
	1    8950 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 642FEFB9
P 8450 4650
AR Path="/642FEFB9" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/642FEFB9" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/642FEFB9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 4400 50  0001 C CNN
F 1 "GND" V 8455 4522 50  0000 R CNN
F 2 "" H 8450 4650 50  0001 C CNN
F 3 "" H 8450 4650 50  0001 C CNN
	1    8450 4650
	0    1    1    0   
$EndComp
Text Label 8950 5850 0    50   ~ 0
cv_1_in
Text Label 8950 6050 0    50   ~ 0
cv_2_in
Text Label 8950 5950 0    50   ~ 0
cv1
Text Label 8950 6150 0    50   ~ 0
cv2
Text Label 8950 4250 0    50   ~ 0
dac_1_a
Text Label 8450 4350 2    50   ~ 0
dac_1_b
Text Label 8450 4750 2    50   ~ 0
dac_2_a
Text Label 8950 4450 0    50   ~ 0
dac_2_b
Text Label 8950 4850 0    50   ~ 0
dac_3_a
Text Label 8450 6050 2    50   ~ 0
dac_3_b
Text Label 8450 5650 2    50   ~ 0
dac_4_a
Text Label 8950 5450 0    50   ~ 0
dac_4_b
$Comp
L power:GND #PWR?
U 1 1 642FEFCB
P 8950 5750
AR Path="/642FEFCB" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/642FEFCB" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/642FEFCB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 5500 50  0001 C CNN
F 1 "GND" V 8955 5622 50  0000 R CNN
F 2 "" H 8950 5750 50  0001 C CNN
F 3 "" H 8950 5750 50  0001 C CNN
	1    8950 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 642FEFD1
P 8450 5750
AR Path="/642FEFD1" Ref="#PWR?"  Part="1" 
AR Path="/63F3B749/642FEFD1" Ref="#PWR?"  Part="1" 
AR Path="/63F39D75/642FEFD1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 5600 50  0001 C CNN
F 1 "+3V3" V 8465 5878 50  0000 L CNN
F 2 "" H 8450 5750 50  0001 C CNN
F 3 "" H 8450 5750 50  0001 C CNN
	1    8450 5750
	0    -1   -1   0   
$EndComp
Text HLabel 8050 4250 0    50   Input ~ 0
polarity_1
Text HLabel 8050 4350 0    50   Input ~ 0
dac_1_b
Text HLabel 8050 4450 0    50   Input ~ 0
out_2
Text HLabel 8050 4550 0    50   Input ~ 0
polarity_2
Text HLabel 8050 4750 0    50   Input ~ 0
dac_2_a
Text HLabel 8050 4850 0    50   Input ~ 0
polarity_3
Text HLabel 8050 4950 0    50   Input ~ 0
out_3
Text HLabel 9350 4650 2    50   Input ~ 0
polarity_4
Text HLabel 9350 4750 2    50   Input ~ 0
out_4
Text HLabel 9350 4850 2    50   Input ~ 0
dac_3_a
Text HLabel 9350 4950 2    50   Input ~ 0
polarity_5
Text HLabel 9350 4450 2    50   Input ~ 0
dac_2_b
Text HLabel 9350 4350 2    50   Input ~ 0
out_1
Text HLabel 9350 4250 2    50   Input ~ 0
dac_1_a
Wire Wire Line
	9350 4250 8950 4250
Wire Wire Line
	8950 4350 9350 4350
Wire Wire Line
	9350 4450 8950 4450
Wire Wire Line
	8950 4650 9350 4650
Wire Wire Line
	9350 4750 8950 4750
Wire Wire Line
	8950 4850 9350 4850
Wire Wire Line
	9350 4950 8950 4950
Wire Wire Line
	8050 4250 8450 4250
Wire Wire Line
	8450 4350 8050 4350
Wire Wire Line
	8050 4450 8450 4450
Wire Wire Line
	8450 4550 8050 4550
Wire Wire Line
	8050 4750 8450 4750
Wire Wire Line
	8450 4850 8050 4850
Wire Wire Line
	8050 4950 8450 4950
Text HLabel 8050 5450 0    50   Input ~ 0
out_7
Text HLabel 8050 5550 0    50   Input ~ 0
polarity_7
Text HLabel 8050 5650 0    50   Input ~ 0
dac_4_a
Text HLabel 8050 5850 0    50   Input ~ 0
out_6
Text HLabel 8050 5950 0    50   Input ~ 0
polarity_6
Text HLabel 8050 6050 0    50   Input ~ 0
dac_3_b
Text HLabel 8050 6150 0    50   Input ~ 0
out_5
Text HLabel 9350 5550 2    50   Input ~ 0
polarity_8
Text HLabel 9350 5450 2    50   Input ~ 0
dac_4_b
Text HLabel 9350 5650 2    50   Input ~ 0
out_8
Text HLabel 9350 5850 2    50   Input ~ 0
cv_1_in_b
Text HLabel 9350 5950 2    50   Input ~ 0
cv1
Text HLabel 9350 6050 2    50   Input ~ 0
cv_2_in_b
Text HLabel 9350 6150 2    50   Input ~ 0
cv2
Wire Wire Line
	9350 5450 8950 5450
Wire Wire Line
	8950 5550 9350 5550
Wire Wire Line
	9350 5650 8950 5650
Wire Wire Line
	8950 5850 9350 5850
Wire Wire Line
	9350 5950 8950 5950
Wire Wire Line
	8950 6050 9350 6050
Wire Wire Line
	9350 6150 8950 6150
Wire Wire Line
	8450 6150 8050 6150
Wire Wire Line
	8050 6050 8450 6050
Wire Wire Line
	8450 5950 8050 5950
Wire Wire Line
	8050 5850 8450 5850
Wire Wire Line
	8450 5650 8050 5650
Wire Wire Line
	8050 5550 8450 5550
Wire Wire Line
	8450 5450 8050 5450
$EndSCHEMATC
