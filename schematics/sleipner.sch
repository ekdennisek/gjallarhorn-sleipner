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
L Device:Rotary_Encoder SW11
U 1 1 605DF407
P 5600 5350
F 0 "SW11" H 5830 5396 50  0000 L CNN
F 1 "Rotary_Encoder" H 5830 5305 50  0000 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E_Vertical_H20mm" H 5450 5510 50  0001 C CNN
F 3 "~" H 5600 5610 50  0001 C CNN
	1    5600 5350
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega32-16PU U2
U 1 1 605E75E2
P 3000 3900
F 0 "U2" H 2400 2150 50  0000 C CNN
F 1 "ATmega32-16PU" H 2150 2050 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 3000 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2503.pdf" H 3000 3900 50  0001 C CNN
	1    3000 3900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D17
U 1 1 607AEF55
P 4350 7800
F 0 "D17" V 4396 7720 50  0000 R CNN
F 1 "1N4148" V 4305 7720 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 7625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4350 7800 50  0001 C CNN
	1    4350 7800
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 607E8946
P 1400 10400
F 0 "U1" H 1250 10650 50  0000 L CNN
F 1 "L7805" H 1250 10550 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 1425 10250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1400 10350 50  0001 C CNN
	1    1400 10400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 607F1563
P 1750 10700
F 0 "C4" H 1950 10750 50  0000 C CNN
F 1 "0.1uF" H 2000 10650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1788 10550 50  0001 C CNN
F 3 "~" H 1750 10700 50  0001 C CNN
	1    1750 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 607F2DDE
P 1050 10700
F 0 "C1" H 850 10750 50  0000 C CNN
F 1 "0.33uF" H 800 10650 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1088 10550 50  0001 C CNN
F 3 "~" H 1050 10700 50  0001 C CNN
	1    1050 10700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 10400 1750 10550
Wire Wire Line
	1050 10400 1050 10550
Wire Wire Line
	1400 10850 1400 10700
Wire Wire Line
	3000 1700 3000 1900
Wire Wire Line
	3000 1700 3550 1700
Connection ~ 3000 1700
$Comp
L Device:R R4
U 1 1 60809C1E
P 2350 2050
F 0 "R4" H 2200 2100 50  0000 C CNN
F 1 "4.7 kohm" H 2100 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2280 2050 50  0001 C CNN
F 3 "~" H 2350 2050 50  0001 C CNN
	1    2350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 7650 4250 7650
Connection ~ 4350 7950
Wire Wire Line
	4350 7950 5400 7950
$Comp
L Diode:1N4148 D18
U 1 1 607AFB81
P 4350 8350
F 0 "D18" V 4396 8270 50  0000 R CNN
F 1 "1N4148" V 4305 8270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 8175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4350 8350 50  0001 C CNN
	1    4350 8350
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D19
U 1 1 607B03F5
P 4350 8900
F 0 "D19" V 4396 8820 50  0000 R CNN
F 1 "1N4148" V 4305 8820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 8725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4350 8900 50  0001 C CNN
	1    4350 8900
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D25
U 1 1 607B0CC7
P 6450 7800
F 0 "D25" V 6496 7720 50  0000 R CNN
F 1 "1N4148" V 6405 7720 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 7625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6450 7800 50  0001 C CNN
	1    6450 7800
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D29
U 1 1 607B135F
P 7500 7800
F 0 "D29" V 7546 7720 50  0000 R CNN
F 1 "1N4148" V 7455 7720 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7500 7625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7500 7800 50  0001 C CNN
	1    7500 7800
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D23
U 1 1 607B17E2
P 5400 8900
F 0 "D23" V 5446 8820 50  0000 R CNN
F 1 "1N4148" V 5355 8820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 8725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5400 8900 50  0001 C CNN
	1    5400 8900
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D27
U 1 1 607B1E84
P 6450 8900
F 0 "D27" V 6496 8820 50  0000 R CNN
F 1 "1N4148" V 6405 8820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 8725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6450 8900 50  0001 C CNN
	1    6450 8900
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D30
U 1 1 607B25EA
P 7500 8350
F 0 "D30" V 7546 8270 50  0000 R CNN
F 1 "1N4148" V 7455 8270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7500 8175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7500 8350 50  0001 C CNN
	1    7500 8350
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D20
U 1 1 607B2C10
P 4350 9450
F 0 "D20" V 4396 9370 50  0000 R CNN
F 1 "1N4148" V 4305 9370 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 9275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4350 9450 50  0001 C CNN
	1    4350 9450
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D24
U 1 1 607B5228
P 5400 9450
F 0 "D24" V 5446 9370 50  0000 R CNN
F 1 "1N4148" V 5355 9370 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 9275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5400 9450 50  0001 C CNN
	1    5400 9450
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D26
U 1 1 607B5815
P 6450 8350
F 0 "D26" V 6496 8270 50  0000 R CNN
F 1 "1N4148" V 6405 8270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 8175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6450 8350 50  0001 C CNN
	1    6450 8350
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D28
U 1 1 607B5E02
P 6450 9450
F 0 "D28" V 6496 9370 50  0000 R CNN
F 1 "1N4148" V 6405 9370 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 9275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6450 9450 50  0001 C CNN
	1    6450 9450
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D31
U 1 1 607B6251
P 7500 8900
F 0 "D31" V 7546 8820 50  0000 R CNN
F 1 "1N4148" V 7455 8820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7500 8725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7500 8900 50  0001 C CNN
	1    7500 8900
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D21
U 1 1 607B37DB
P 5400 7800
F 0 "D21" V 5446 7720 50  0000 R CNN
F 1 "1N4148" V 5355 7720 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 7625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5400 7800 50  0001 C CNN
	1    5400 7800
	0    -1   -1   0   
$EndComp
Connection ~ 5400 7950
Wire Wire Line
	5400 7950 6450 7950
Connection ~ 6450 7950
Wire Wire Line
	6450 7950 7500 7950
$Comp
L Diode:1N4148 D22
U 1 1 607B456A
P 5400 8350
F 0 "D22" V 5446 8270 50  0000 R CNN
F 1 "1N4148" V 5355 8270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 8175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5400 8350 50  0001 C CNN
	1    5400 8350
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D32
U 1 1 609006F8
P 7500 9450
F 0 "D32" V 7546 9370 50  0000 R CNN
F 1 "1N4148" V 7455 9370 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7500 9275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7500 9450 50  0001 C CNN
	1    7500 9450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 7650 5400 7650
Wire Wire Line
	6350 7650 6450 7650
Wire Wire Line
	7400 7650 7500 7650
Wire Wire Line
	6350 8200 6450 8200
Wire Wire Line
	5300 8200 5400 8200
Wire Wire Line
	4250 8200 4350 8200
Wire Wire Line
	4250 8750 4350 8750
Wire Wire Line
	4250 9300 4350 9300
Wire Wire Line
	5300 9300 5400 9300
Wire Wire Line
	5300 8750 5400 8750
Wire Wire Line
	6350 8750 6450 8750
Wire Wire Line
	6350 9300 6450 9300
Wire Wire Line
	7400 8200 7500 8200
Wire Wire Line
	7400 8750 7500 8750
Wire Wire Line
	7400 9300 7500 9300
Wire Wire Line
	4350 8500 5400 8500
Connection ~ 4350 8500
Wire Wire Line
	5400 8500 6450 8500
Connection ~ 5400 8500
Wire Wire Line
	6450 8500 7500 8500
Connection ~ 6450 8500
Wire Wire Line
	4350 9050 5400 9050
Connection ~ 4350 9050
Wire Wire Line
	5400 9050 6450 9050
Connection ~ 5400 9050
Wire Wire Line
	6450 9050 7500 9050
Connection ~ 6450 9050
Wire Wire Line
	4350 9600 5400 9600
Connection ~ 4350 9600
Wire Wire Line
	5400 9600 6450 9600
Connection ~ 5400 9600
Wire Wire Line
	6450 9600 7500 9600
Connection ~ 6450 9600
Wire Wire Line
	4600 9300 4700 9300
Wire Wire Line
	5650 9300 5750 9300
Wire Wire Line
	6700 7650 6800 7650
Wire Wire Line
	6700 7650 6700 8200
Wire Wire Line
	6700 8200 6800 8200
Wire Wire Line
	6700 8200 6700 8750
Wire Wire Line
	6700 8750 6800 8750
Connection ~ 6700 8200
Wire Wire Line
	6700 8750 6700 9300
Wire Wire Line
	6700 9300 6800 9300
Connection ~ 6700 8750
Wire Wire Line
	5650 7650 5750 7650
Wire Wire Line
	5650 7650 5650 8200
Wire Wire Line
	5650 8200 5750 8200
Connection ~ 5650 8200
Wire Wire Line
	5650 8200 5650 8750
Wire Wire Line
	5650 8750 5750 8750
Connection ~ 5650 8750
Wire Wire Line
	5650 8750 5650 9300
Wire Wire Line
	4600 7650 4700 7650
Wire Wire Line
	4600 7650 4600 8200
Wire Wire Line
	4700 8200 4600 8200
Connection ~ 4600 8200
Wire Wire Line
	4600 8200 4600 8750
Wire Wire Line
	4700 8750 4600 8750
Connection ~ 4600 8750
Wire Wire Line
	4600 8750 4600 9300
Wire Wire Line
	3550 7650 3650 7650
Wire Wire Line
	3550 7650 3550 8200
Wire Wire Line
	3550 8200 3650 8200
Connection ~ 3550 7650
Wire Wire Line
	3550 8200 3550 8750
Wire Wire Line
	3550 8750 3650 8750
Connection ~ 3550 8200
Wire Wire Line
	3550 8750 3550 9300
Wire Wire Line
	3550 9300 3650 9300
Connection ~ 3550 8750
Wire Wire Line
	3350 7950 4350 7950
$Comp
L Device:R R2
U 1 1 60BD2FDC
P 1550 7850
F 0 "R2" V 1343 7850 50  0000 C CNN
F 1 "100 ohm" V 1434 7850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 7850 50  0001 C CNN
F 3 "~" H 1550 7850 50  0001 C CNN
	1    1550 7850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 60BD3CDC
P 2350 7850
F 0 "R5" V 2143 7850 50  0000 C CNN
F 1 "100 ohm" V 2234 7850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2280 7850 50  0001 C CNN
F 3 "~" H 2350 7850 50  0001 C CNN
	1    2350 7850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 60BD344F
P 1950 7850
F 0 "R3" V 1743 7850 50  0000 C CNN
F 1 "100 ohm" V 1834 7850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1880 7850 50  0001 C CNN
F 3 "~" H 1950 7850 50  0001 C CNN
	1    1950 7850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 60D8AB5C
P 4600 3350
F 0 "R11" V 4393 3350 50  0000 C CNN
F 1 "10kohm" V 4484 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4530 3350 50  0001 C CNN
F 3 "~" H 4600 3350 50  0001 C CNN
	1    4600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60D8C0E3
P 4950 3350
F 0 "R13" V 4743 3350 50  0000 C CNN
F 1 "10kohm" V 4834 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4880 3350 50  0001 C CNN
F 3 "~" H 4950 3350 50  0001 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 607AC35E
P 3700 1600
F 0 "R6" V 3493 1600 50  0000 C CNN
F 1 "4.7 kohm" V 3584 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3630 1600 50  0001 C CNN
F 3 "~" H 3700 1600 50  0001 C CNN
	1    3700 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 607ACD38
P 3700 1950
F 0 "R7" V 3493 1950 50  0000 C CNN
F 1 "4.7 kohm" V 3584 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3630 1950 50  0001 C CNN
F 3 "~" H 3700 1950 50  0001 C CNN
	1    3700 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1950 3550 1700
Connection ~ 3550 1700
Wire Wire Line
	3550 1600 3550 1700
$Comp
L Device:Crystal Y1
U 1 1 608352F9
P 1950 2500
F 0 "Y1" V 1904 2631 50  0000 L CNN
F 1 "16 MHz" V 1995 2631 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 1950 2500 50  0001 C CNN
F 3 "~" H 1950 2500 50  0001 C CNN
	1    1950 2500
	0    1    1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 60837FA2
P 1700 2350
F 0 "C2" V 1650 2250 50  0000 C CNN
F 1 "22 pF" V 1536 2350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1738 2200 50  0001 C CNN
F 3 "~" H 1700 2350 50  0001 C CNN
	1    1700 2350
	0    1    1    0   
$EndComp
$Comp
L Device:CP C3
U 1 1 60838862
P 1700 2650
F 0 "C3" V 1750 2550 50  0000 C CNN
F 1 "22 pF" V 1850 2650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1738 2500 50  0001 C CNN
F 3 "~" H 1700 2650 50  0001 C CNN
	1    1700 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 2350 1950 2350
Wire Wire Line
	2350 2350 2350 2400
Wire Wire Line
	2350 2400 2400 2400
Wire Wire Line
	2350 2600 2400 2600
$Comp
L Device:R R1
U 1 1 60BD2799
P 1150 7850
F 0 "R1" V 943 7850 50  0000 C CNN
F 1 "100 ohm" V 1034 7850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1080 7850 50  0001 C CNN
F 3 "~" H 1150 7850 50  0001 C CNN
	1    1150 7850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 608DC451
P 1400 10850
F 0 "#PWR02" H 1400 10600 50  0001 C CNN
F 1 "GND" H 1405 10677 50  0000 C CNN
F 2 "" H 1400 10850 50  0001 C CNN
F 3 "" H 1400 10850 50  0001 C CNN
	1    1400 10850
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR01
U 1 1 60905B8D
P 1050 10400
F 0 "#PWR01" H 1050 10250 50  0001 C CNN
F 1 "+24V" H 1065 10573 50  0000 C CNN
F 2 "" H 1050 10400 50  0001 C CNN
F 3 "" H 1050 10400 50  0001 C CNN
	1    1050 10400
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4922-EP U5
U 1 1 60919F79
P 7800 2350
F 0 "U5" H 8444 2396 50  0000 L CNN
F 1 "MCP4922-EP" H 8444 2305 50  0000 L CNN
F 2 "mcp4922:DIP254P762X533-14" H 7800 2350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21897a.pdf" H 7800 2350 50  0001 C CNN
	1    7800 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 609DC3B0
P 7950 1550
F 0 "C10" H 7835 1504 50  0000 R CNN
F 1 "10 uF" H 7835 1595 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 7988 1400 50  0001 C CNN
F 3 "~" H 7950 1550 50  0001 C CNN
	1    7950 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7950 1700 7700 1700
$Comp
L Amplifier_Operational:TLC274 U6
U 1 1 60B5B147
P 8700 10100
F 0 "U6" H 8750 10400 50  0000 C CNN
F 1 "TLC274" H 8800 10300 50  0000 C CNN
F 2 "tlc274:DIP794W45P254L1969H508Q14" H 8650 10200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc274.pdf" H 8750 10300 50  0001 C CNN
	1    8700 10100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TLC274 U6
U 5 1 60B5E252
P 8700 10100
F 0 "U6" H 8658 10146 50  0000 L CNN
F 1 "TLC274" H 8658 10055 50  0000 L CNN
F 2 "tlc274:DIP794W45P254L1969H508Q14" H 8650 10200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc274.pdf" H 8750 10300 50  0001 C CNN
	5    8700 10100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TLC274 U6
U 2 1 60B60306
P 10450 10100
F 0 "U6" H 10500 10400 50  0000 C CNN
F 1 "TLC274" H 10550 10300 50  0000 C CNN
F 2 "tlc274:DIP794W45P254L1969H508Q14" H 10400 10200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc274.pdf" H 10500 10300 50  0001 C CNN
	2    10450 10100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 60C0E04C
P 12450 6050
F 0 "Q1" H 12641 6096 50  0000 L CNN
F 1 "BC337" H 12641 6005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 12650 5975 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 12450 6050 50  0001 L CNN
	1    12450 6050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q9
U 1 1 60C0F508
P 14600 9500
F 0 "Q9" H 14791 9546 50  0000 L CNN
F 1 "BC337" H 14791 9455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14800 9425 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 14600 9500 50  0001 L CNN
	1    14600 9500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q4
U 1 1 60C0FF2A
P 12450 9500
F 0 "Q4" H 12641 9546 50  0000 L CNN
F 1 "BC337" H 12641 9455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 12650 9425 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 12450 9500 50  0001 L CNN
	1    12450 9500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q2
U 1 1 60C10A3F
P 12450 7200
F 0 "Q2" H 12641 7246 50  0000 L CNN
F 1 "BC337" H 12641 7155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 12650 7125 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 12450 7200 50  0001 L CNN
	1    12450 7200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q3
U 1 1 60C11493
P 12450 8350
F 0 "Q3" H 12641 8396 50  0000 L CNN
F 1 "BC337" H 12641 8305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 12650 8275 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 12450 8350 50  0001 L CNN
	1    12450 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 9500 1200 9500
Wire Wire Line
	1200 8300 1150 8300
Wire Wire Line
	1200 8700 1150 8700
Wire Wire Line
	1200 9100 1150 9100
Wire Wire Line
	1150 8300 1150 8700
Connection ~ 1150 8700
Wire Wire Line
	1150 8700 1150 9100
Wire Wire Line
	2300 8400 2700 8400
Connection ~ 2300 8400
Wire Wire Line
	2300 8300 2300 8400
Wire Wire Line
	2700 8400 2700 8300
$Comp
L Device:LED D1
U 1 1 607A6872
P 1350 8300
F 0 "D1" H 1343 8045 50  0000 C CNN
F 1 "LED" H 1343 8136 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1350 8300 50  0001 C CNN
F 3 "~" H 1350 8300 50  0001 C CNN
	1    1350 8300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D16
U 1 1 607AAA43
P 2550 9500
F 0 "D16" H 2543 9245 50  0000 C CNN
F 1 "LED" H 2543 9336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2550 9500 50  0001 C CNN
F 3 "~" H 2550 9500 50  0001 C CNN
	1    2550 9500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D12
U 1 1 607AA735
P 2150 9500
F 0 "D12" H 2143 9245 50  0000 C CNN
F 1 "LED" H 2143 9336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2150 9500 50  0001 C CNN
F 3 "~" H 2150 9500 50  0001 C CNN
	1    2150 9500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 607AA4DF
P 1750 9500
F 0 "D8" H 1743 9245 50  0000 C CNN
F 1 "LED" H 1743 9336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1750 9500 50  0001 C CNN
F 3 "~" H 1750 9500 50  0001 C CNN
	1    1750 9500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 607AA1E5
P 1350 9500
F 0 "D4" H 1343 9245 50  0000 C CNN
F 1 "LED" H 1343 9336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1350 9500 50  0001 C CNN
F 3 "~" H 1350 9500 50  0001 C CNN
	1    1350 9500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D14
U 1 1 607A9E55
P 2550 8700
F 0 "D14" H 2543 8445 50  0000 C CNN
F 1 "LED" H 2543 8536 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2550 8700 50  0001 C CNN
F 3 "~" H 2550 8700 50  0001 C CNN
	1    2550 8700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D10
U 1 1 607A9C09
P 2150 8700
F 0 "D10" H 2143 8445 50  0000 C CNN
F 1 "LED" H 2143 8536 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2150 8700 50  0001 C CNN
F 3 "~" H 2150 8700 50  0001 C CNN
	1    2150 8700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 607A98B3
P 1750 8700
F 0 "D6" H 1743 8445 50  0000 C CNN
F 1 "LED" H 1743 8536 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1750 8700 50  0001 C CNN
F 3 "~" H 1750 8700 50  0001 C CNN
	1    1750 8700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 607A9502
P 1350 8700
F 0 "D2" H 1343 8445 50  0000 C CNN
F 1 "LED" H 1343 8536 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1350 8700 50  0001 C CNN
F 3 "~" H 1350 8700 50  0001 C CNN
	1    1350 8700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D15
U 1 1 607A92AC
P 2550 9100
F 0 "D15" H 2543 8845 50  0000 C CNN
F 1 "LED" H 2543 8936 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2550 9100 50  0001 C CNN
F 3 "~" H 2550 9100 50  0001 C CNN
	1    2550 9100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D11
U 1 1 607A904D
P 2150 9100
F 0 "D11" H 2143 8845 50  0000 C CNN
F 1 "LED" H 2143 8936 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2150 9100 50  0001 C CNN
F 3 "~" H 2150 9100 50  0001 C CNN
	1    2150 9100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 607A8E0B
P 1750 9100
F 0 "D7" H 1743 8845 50  0000 C CNN
F 1 "LED" H 1743 8936 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1750 9100 50  0001 C CNN
F 3 "~" H 1750 9100 50  0001 C CNN
	1    1750 9100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 607A8B5E
P 1350 9100
F 0 "D3" H 1343 8845 50  0000 C CNN
F 1 "LED" H 1343 8936 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1350 9100 50  0001 C CNN
F 3 "~" H 1350 9100 50  0001 C CNN
	1    1350 9100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D13
U 1 1 607A77D6
P 2550 8300
F 0 "D13" H 2543 8045 50  0000 C CNN
F 1 "LED" H 2543 8136 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2550 8300 50  0001 C CNN
F 3 "~" H 2550 8300 50  0001 C CNN
	1    2550 8300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 607A73A9
P 2150 8300
F 0 "D9" H 2143 8045 50  0000 C CNN
F 1 "LED" H 2143 8136 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2150 8300 50  0001 C CNN
F 3 "~" H 2150 8300 50  0001 C CNN
	1    2150 8300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 607A703B
P 1750 8300
F 0 "D5" H 1743 8045 50  0000 C CNN
F 1 "LED" H 1743 8136 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1750 8300 50  0001 C CNN
F 3 "~" H 1750 8300 50  0001 C CNN
	1    1750 8300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 8300 1900 8400
Wire Wire Line
	1900 8400 2300 8400
Connection ~ 1900 8400
Wire Wire Line
	1500 8300 1500 8400
Wire Wire Line
	1500 8400 1900 8400
Wire Wire Line
	1150 9100 1150 9500
Connection ~ 1150 9100
Wire Wire Line
	1550 8300 1600 8300
Wire Wire Line
	1550 8300 1550 8700
Wire Wire Line
	1550 8700 1600 8700
Wire Wire Line
	1550 8700 1550 9100
Wire Wire Line
	1550 9100 1600 9100
Connection ~ 1550 8700
Wire Wire Line
	1550 9100 1550 9500
Wire Wire Line
	1550 9500 1600 9500
Connection ~ 1550 9100
Wire Wire Line
	1950 8300 2000 8300
Wire Wire Line
	1950 8300 1950 8700
Wire Wire Line
	1950 8700 2000 8700
Wire Wire Line
	1950 8700 1950 9100
Wire Wire Line
	1950 9100 2000 9100
Connection ~ 1950 8700
Wire Wire Line
	1950 9100 1950 9500
Wire Wire Line
	1950 9500 2000 9500
Connection ~ 1950 9100
Wire Wire Line
	2350 8300 2400 8300
Wire Wire Line
	2350 8300 2350 8700
Wire Wire Line
	2350 8700 2400 8700
Wire Wire Line
	2350 8700 2350 9100
Wire Wire Line
	2350 9100 2400 9100
Connection ~ 2350 8700
Wire Wire Line
	2350 9100 2350 9500
Wire Wire Line
	2350 9500 2400 9500
Connection ~ 2350 9100
Wire Wire Line
	950  8800 1500 8800
Wire Wire Line
	1500 8800 1500 8700
Wire Wire Line
	1500 8800 1900 8800
Wire Wire Line
	1900 8800 1900 8700
Connection ~ 1500 8800
Wire Wire Line
	1900 8800 2300 8800
Wire Wire Line
	2300 8800 2300 8700
Connection ~ 1900 8800
Wire Wire Line
	2300 8800 2700 8800
Wire Wire Line
	2700 8800 2700 8700
Connection ~ 2300 8800
Wire Wire Line
	1500 9200 1500 9100
Wire Wire Line
	1500 9200 1900 9200
Wire Wire Line
	1900 9200 1900 9100
Wire Wire Line
	1900 9200 2300 9200
Wire Wire Line
	2300 9200 2300 9100
Connection ~ 1900 9200
Wire Wire Line
	2300 9200 2700 9200
Wire Wire Line
	2700 9200 2700 9100
Connection ~ 2300 9200
Wire Wire Line
	1500 9600 1500 9500
Wire Wire Line
	1500 9600 1900 9600
Wire Wire Line
	1900 9600 1900 9500
Wire Wire Line
	1900 9600 2300 9600
Wire Wire Line
	2300 9600 2300 9500
Connection ~ 1900 9600
Wire Wire Line
	2300 9600 2700 9600
Wire Wire Line
	2700 9600 2700 9500
Connection ~ 2300 9600
Wire Wire Line
	3600 4200 4600 4200
Wire Wire Line
	3600 4300 4950 4300
$Comp
L Device:R R9
U 1 1 60E0A6E1
P 4500 5100
F 0 "R9" V 4600 5050 50  0000 C CNN
F 1 "10 kohm" V 4700 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4430 5100 50  0001 C CNN
F 3 "~" H 4500 5100 50  0001 C CNN
	1    4500 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 60E0B9FC
P 4500 5400
F 0 "R10" V 4700 5450 50  0000 C CNN
F 1 "10 kohm" V 4600 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4430 5400 50  0001 C CNN
F 3 "~" H 4500 5400 50  0001 C CNN
	1    4500 5400
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 60E0BCE3
P 5150 5450
F 0 "C8" V 5250 5250 50  0000 C CNN
F 1 "0.01 uF" V 5350 5350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5188 5300 50  0001 C CNN
F 3 "~" H 5150 5450 50  0001 C CNN
	1    5150 5450
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 60E0D23E
P 5150 5250
F 0 "C7" V 4950 5150 50  0000 C CNN
F 1 "0.01 uF" V 5050 5050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5188 5100 50  0001 C CNN
F 3 "~" H 5150 5250 50  0001 C CNN
	1    5150 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60E3C368
P 5000 5350
F 0 "#PWR017" H 5000 5100 50  0001 C CNN
F 1 "GND" V 5005 5222 50  0000 R CNN
F 2 "" H 5000 5350 50  0001 C CNN
F 3 "" H 5000 5350 50  0001 C CNN
	1    5000 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 60E093B3
P 6200 5600
F 0 "R16" V 6400 5450 50  0000 C CNN
F 1 "10 kohm" V 6300 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6130 5600 50  0001 C CNN
F 3 "~" H 6200 5600 50  0001 C CNN
	1    6200 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 60E08D42
P 6200 5100
F 0 "R15" V 5993 5100 50  0000 C CNN
F 1 "10 kohm" V 6084 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6130 5100 50  0001 C CNN
F 3 "~" H 6200 5100 50  0001 C CNN
	1    6200 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 5350 5000 5350
Wire Wire Line
	5000 5250 5000 5350
Connection ~ 5000 5350
Wire Wire Line
	5000 5450 5000 5350
Wire Wire Line
	3600 5100 4350 5100
Wire Wire Line
	3600 5200 4350 5200
Wire Wire Line
	4350 5200 4350 5400
Wire Wire Line
	5300 5100 5300 5250
Connection ~ 5300 5250
Wire Wire Line
	5300 5450 5300 5600
Connection ~ 5300 5450
Wire Wire Line
	5300 5100 6050 5100
Wire Wire Line
	5300 5600 6050 5600
Wire Wire Line
	4600 4100 4600 4200
Wire Wire Line
	4950 4100 4950 4300
Wire Wire Line
	4950 3200 4950 3150
Wire Wire Line
	4950 3150 4750 3150
Wire Wire Line
	4600 3150 4600 3200
$Comp
L power:GND #PWR013
U 1 1 61319936
P 4750 3150
F 0 "#PWR013" H 4750 2900 50  0001 C CNN
F 1 "GND" H 4755 2977 50  0000 C CNN
F 2 "" H 4750 3150 50  0001 C CNN
F 3 "" H 4750 3150 50  0001 C CNN
	1    4750 3150
	-1   0    0    1   
$EndComp
Connection ~ 4750 3150
Wire Wire Line
	4750 3150 4600 3150
$Comp
L power:GND #PWR08
U 1 1 6139EB21
P 3000 5900
F 0 "#PWR08" H 3000 5650 50  0001 C CNN
F 1 "GND" V 3005 5772 50  0000 R CNN
F 2 "" H 3000 5900 50  0001 C CNN
F 3 "" H 3000 5900 50  0001 C CNN
	1    3000 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 6149602B
P 7700 2850
F 0 "#PWR030" H 7700 2600 50  0001 C CNN
F 1 "GND" H 7705 2677 50  0000 C CNN
F 2 "" H 7700 2850 50  0001 C CNN
F 3 "" H 7700 2850 50  0001 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J13
U 1 1 61499936
P 15300 9400
F 0 "J13" H 15020 9333 50  0000 R CNN
F 1 "AudioJack3" H 15020 9424 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 15300 9400 50  0001 C CNN
F 3 "~" H 15300 9400 50  0001 C CNN
	1    15300 9400
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J8
U 1 1 6149AE41
P 13150 9400
F 0 "J8" H 12870 9333 50  0000 R CNN
F 1 "AudioJack3" H 12870 9424 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 13150 9400 50  0001 C CNN
F 3 "~" H 13150 9400 50  0001 C CNN
	1    13150 9400
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J11
U 1 1 6149B1DA
P 15300 7100
F 0 "J11" H 15350 7450 50  0000 R CNN
F 1 "AudioJack3" H 15500 7350 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 15300 7100 50  0001 C CNN
F 3 "~" H 15300 7100 50  0001 C CNN
	1    15300 7100
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J3
U 1 1 6149BC2E
P 9300 10200
F 0 "J3" H 9020 10133 50  0000 R CNN
F 1 "AudioJack3" H 9020 10224 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 9300 10200 50  0001 C CNN
F 3 "~" H 9300 10200 50  0001 C CNN
	1    9300 10200
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J5
U 1 1 6149C626
P 13150 5950
F 0 "J5" H 12870 5883 50  0000 R CNN
F 1 "AudioJack3" H 12870 5974 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 13150 5950 50  0001 C CNN
F 3 "~" H 13150 5950 50  0001 C CNN
	1    13150 5950
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J4
U 1 1 6149D03A
P 11050 10200
F 0 "J4" H 10770 10133 50  0000 R CNN
F 1 "AudioJack3" H 10770 10224 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 11050 10200 50  0001 C CNN
F 3 "~" H 11050 10200 50  0001 C CNN
	1    11050 10200
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J6
U 1 1 6149E5F1
P 13150 7100
F 0 "J6" H 12870 7033 50  0000 R CNN
F 1 "AudioJack3" H 12870 7124 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 13150 7100 50  0001 C CNN
F 3 "~" H 13150 7100 50  0001 C CNN
	1    13150 7100
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J7
U 1 1 6149E926
P 13150 8250
F 0 "J7" H 12870 8183 50  0000 R CNN
F 1 "AudioJack3" H 12870 8274 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 13150 8250 50  0001 C CNN
F 3 "~" H 13150 8250 50  0001 C CNN
	1    13150 8250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 6157DF10
P 7950 1400
F 0 "#PWR033" H 7950 1150 50  0001 C CNN
F 1 "GND" H 7955 1227 50  0000 C CNN
F 2 "" H 7950 1400 50  0001 C CNN
F 3 "" H 7950 1400 50  0001 C CNN
	1    7950 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R27
U 1 1 615809B2
P 12550 6850
F 0 "R27" H 12620 6896 50  0000 L CNN
F 1 "470 ohm" H 12620 6805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 12480 6850 50  0001 C CNN
F 3 "~" H 12550 6850 50  0001 C CNN
	1    12550 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 61582BF4
P 12550 8000
F 0 "R28" H 12620 8046 50  0000 L CNN
F 1 "470 ohm" H 12620 7955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 12480 8000 50  0001 C CNN
F 3 "~" H 12550 8000 50  0001 C CNN
	1    12550 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 61583107
P 12550 9150
F 0 "R29" H 12620 9196 50  0000 L CNN
F 1 "470 ohm" H 12620 9105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 12480 9150 50  0001 C CNN
F 3 "~" H 12550 9150 50  0001 C CNN
	1    12550 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 615833AC
P 12550 5700
F 0 "R26" H 12620 5746 50  0000 L CNN
F 1 "470 ohm" H 12620 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 12480 5700 50  0001 C CNN
F 3 "~" H 12550 5700 50  0001 C CNN
	1    12550 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 615838BB
P 14700 9150
F 0 "R39" H 14770 9196 50  0000 L CNN
F 1 "470 ohm" H 14770 9105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14630 9150 50  0001 C CNN
F 3 "~" H 14700 9150 50  0001 C CNN
	1    14700 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 619375B6
P 12250 8200
F 0 "R24" H 12400 8150 50  0000 C CNN
F 1 "10 kohm" H 12500 8250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 12180 8200 50  0001 C CNN
F 3 "~" H 12250 8200 50  0001 C CNN
	1    12250 8200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 619378FF
P 12250 5900
F 0 "R22" H 12400 5850 50  0000 C CNN
F 1 "10 kohm" H 12500 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 12180 5900 50  0001 C CNN
F 3 "~" H 12250 5900 50  0001 C CNN
	1    12250 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R25
U 1 1 61937A83
P 12250 9350
F 0 "R25" H 12400 9300 50  0000 C CNN
F 1 "10 kohm" H 12500 9400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 12180 9350 50  0001 C CNN
F 3 "~" H 12250 9350 50  0001 C CNN
	1    12250 9350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 61937D52
P 12250 7050
F 0 "R23" H 12400 7000 50  0000 C CNN
F 1 "10 kohm" H 12500 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 12180 7050 50  0001 C CNN
F 3 "~" H 12250 7050 50  0001 C CNN
	1    12250 7050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R34
U 1 1 6193800C
P 14400 9350
F 0 "R34" H 14550 9300 50  0000 C CNN
F 1 "10 kohm" H 14650 9400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14330 9350 50  0001 C CNN
F 3 "~" H 14400 9350 50  0001 C CNN
	1    14400 9350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 619D9CD0
P 12550 8550
F 0 "#PWR043" H 12550 8300 50  0001 C CNN
F 1 "GND" H 12555 8377 50  0000 C CNN
F 2 "" H 12550 8550 50  0001 C CNN
F 3 "" H 12550 8550 50  0001 C CNN
	1    12550 8550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 619DA02B
P 12550 7400
F 0 "#PWR041" H 12550 7150 50  0001 C CNN
F 1 "GND" H 12555 7227 50  0000 C CNN
F 2 "" H 12550 7400 50  0001 C CNN
F 3 "" H 12550 7400 50  0001 C CNN
	1    12550 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 619DA3E8
P 12550 6250
F 0 "#PWR039" H 12550 6000 50  0001 C CNN
F 1 "GND" H 12555 6077 50  0000 C CNN
F 2 "" H 12550 6250 50  0001 C CNN
F 3 "" H 12550 6250 50  0001 C CNN
	1    12550 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 619DA6C0
P 12550 9700
F 0 "#PWR045" H 12550 9450 50  0001 C CNN
F 1 "GND" H 12555 9527 50  0000 C CNN
F 2 "" H 12550 9700 50  0001 C CNN
F 3 "" H 12550 9700 50  0001 C CNN
	1    12550 9700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR055
U 1 1 619DB0D2
P 14700 9700
F 0 "#PWR055" H 14700 9450 50  0001 C CNN
F 1 "GND" H 14705 9527 50  0000 C CNN
F 2 "" H 14700 9700 50  0001 C CNN
F 3 "" H 14700 9700 50  0001 C CNN
	1    14700 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12550 8150 12950 8150
Wire Wire Line
	12550 8550 12950 8550
Connection ~ 12550 8550
Wire Wire Line
	12550 7000 12950 7000
Wire Wire Line
	12550 7400 12950 7400
Connection ~ 12550 7400
Wire Wire Line
	12550 6250 12950 6250
Connection ~ 12550 6250
Wire Wire Line
	12550 9300 12950 9300
Wire Wire Line
	12950 9700 12550 9700
Connection ~ 12550 9700
Wire Wire Line
	14700 9300 15100 9300
Wire Wire Line
	14700 9700 15100 9700
Connection ~ 14700 9700
$Comp
L power:GND #PWR036
U 1 1 6221800A
P 8600 10400
F 0 "#PWR036" H 8600 10150 50  0001 C CNN
F 1 "GND" H 8605 10227 50  0000 C CNN
F 2 "" H 8600 10400 50  0001 C CNN
F 3 "" H 8600 10400 50  0001 C CNN
	1    8600 10400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 622199EF
P 8400 10800
F 0 "R18" H 8470 10846 50  0000 L CNN
F 1 "10 kohm" H 8470 10755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8330 10800 50  0001 C CNN
F 3 "~" H 8400 10800 50  0001 C CNN
	1    8400 10800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 6221AF5E
P 10150 10800
F 0 "R20" H 10220 10846 50  0000 L CNN
F 1 "10 kohm" H 10220 10755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10080 10800 50  0001 C CNN
F 3 "~" H 10150 10800 50  0001 C CNN
	1    10150 10800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 6221B146
P 10600 10650
F 0 "R21" V 10393 10650 50  0000 C CNN
F 1 "10 kohm" V 10484 10650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10530 10650 50  0001 C CNN
F 3 "~" H 10600 10650 50  0001 C CNN
	1    10600 10650
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 6221B5CA
P 8850 10650
F 0 "R19" V 8643 10650 50  0000 C CNN
F 1 "10 kohm" V 8734 10650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8780 10650 50  0001 C CNN
F 3 "~" H 8850 10650 50  0001 C CNN
	1    8850 10650
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 10650 8400 10650
Wire Wire Line
	9000 10100 9000 10650
$Comp
L power:GND #PWR034
U 1 1 62397F21
P 8400 10950
F 0 "#PWR034" H 8400 10700 50  0001 C CNN
F 1 "GND" H 8405 10777 50  0000 C CNN
F 2 "" H 8400 10950 50  0001 C CNN
F 3 "" H 8400 10950 50  0001 C CNN
	1    8400 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 10100 10750 10650
Wire Wire Line
	8400 10200 8400 10650
Connection ~ 8400 10650
Wire Wire Line
	10150 10200 10150 10650
Wire Wire Line
	10150 10650 10450 10650
Connection ~ 10150 10650
$Comp
L power:GND #PWR037
U 1 1 624B7F2E
P 10150 10950
F 0 "#PWR037" H 10150 10700 50  0001 C CNN
F 1 "GND" H 10155 10777 50  0000 C CNN
F 2 "" H 10150 10950 50  0001 C CNN
F 3 "" H 10150 10950 50  0001 C CNN
	1    10150 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 10100 9100 10100
Connection ~ 9000 10100
Wire Wire Line
	8400 10950 9100 10950
Wire Wire Line
	9100 10950 9100 10300
Connection ~ 8400 10950
Wire Wire Line
	10850 10100 10750 10100
Connection ~ 10750 10100
Wire Wire Line
	10150 10950 10850 10950
Wire Wire Line
	10850 10950 10850 10300
Connection ~ 10150 10950
$Comp
L Transistor_BJT:BC337 Q7
U 1 1 62649B42
P 14600 7200
F 0 "Q7" H 14791 7246 50  0000 L CNN
F 1 "BC337" H 14791 7155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14800 7125 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 14600 7200 50  0001 L CNN
	1    14600 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R37
U 1 1 6264A0E4
P 14700 6850
F 0 "R37" H 14770 6896 50  0000 L CNN
F 1 "470 ohm" H 14770 6805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14630 6850 50  0001 C CNN
F 3 "~" H 14700 6850 50  0001 C CNN
	1    14700 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 6264AB0E
P 14700 7400
F 0 "#PWR051" H 14700 7150 50  0001 C CNN
F 1 "GND" H 14705 7227 50  0000 C CNN
F 2 "" H 14700 7400 50  0001 C CNN
F 3 "" H 14700 7400 50  0001 C CNN
	1    14700 7400
	1    0    0    -1  
$EndComp
Connection ~ 12550 5850
Wire Wire Line
	15100 9500 15100 9700
Wire Wire Line
	12950 9500 12950 9700
Wire Wire Line
	12950 8350 12950 8550
Wire Wire Line
	12950 7200 12950 7400
Wire Wire Line
	12950 6050 12950 6250
Wire Wire Line
	12550 5850 12950 5850
Connection ~ 14700 9300
Connection ~ 12550 9300
Connection ~ 12550 8150
Connection ~ 12550 7000
Connection ~ 1950 2350
$Comp
L power:GND #PWR03
U 1 1 62B71904
P 1550 2350
F 0 "#PWR03" H 1550 2100 50  0001 C CNN
F 1 "GND" V 1555 2222 50  0000 R CNN
F 2 "" H 1550 2350 50  0001 C CNN
F 3 "" H 1550 2350 50  0001 C CNN
	1    1550 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 62B72EB5
P 1550 2650
F 0 "#PWR04" H 1550 2400 50  0001 C CNN
F 1 "GND" V 1555 2522 50  0000 R CNN
F 2 "" H 1550 2650 50  0001 C CNN
F 3 "" H 1550 2650 50  0001 C CNN
	1    1550 2650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 62C42509
P 1750 10400
F 0 "#PWR05" H 1750 10250 50  0001 C CNN
F 1 "+5V" H 1765 10573 50  0000 C CNN
F 2 "" H 1750 10400 50  0001 C CNN
F 3 "" H 1750 10400 50  0001 C CNN
	1    1750 10400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 62CBE9BF
P 3000 1700
F 0 "#PWR07" H 3000 1550 50  0001 C CNN
F 1 "+5V" H 3015 1873 50  0000 C CNN
F 2 "" H 3000 1700 50  0001 C CNN
F 3 "" H 3000 1700 50  0001 C CNN
	1    3000 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 10400 1100 10400
Connection ~ 1050 10400
Wire Wire Line
	1700 10400 1750 10400
Connection ~ 1750 10400
Wire Wire Line
	1750 10850 1400 10850
Connection ~ 1400 10850
Wire Wire Line
	1400 10850 1050 10850
$Comp
L Device:R R32
U 1 1 6264A6FF
P 14400 7050
F 0 "R32" H 14550 7000 50  0000 C CNN
F 1 "10 kohm" H 14650 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14330 7050 50  0001 C CNN
F 3 "~" H 14400 7050 50  0001 C CNN
	1    14400 7050
	-1   0    0    1   
$EndComp
Connection ~ 14700 7000
Wire Wire Line
	15100 7400 15100 7200
Connection ~ 14700 7400
Text GLabel 6100 1750 2    50   Input ~ 0
Drum1
Text GLabel 6100 1850 2    50   Input ~ 0
Drum2
Text GLabel 6100 1950 2    50   Input ~ 0
Drum3
Text GLabel 6100 2150 2    50   Input ~ 0
Drum5
Text GLabel 6100 2250 2    50   Input ~ 0
Drum6
Text GLabel 6100 2050 2    50   Input ~ 0
Drum4
Text GLabel 12250 9200 1    50   Input ~ 0
Drum4
$Comp
L power:+12V #PWR044
U 1 1 635E8625
P 12550 9000
F 0 "#PWR044" H 12550 8850 50  0001 C CNN
F 1 "+12V" H 12565 9173 50  0000 C CNN
F 2 "" H 12550 9000 50  0001 C CNN
F 3 "" H 12550 9000 50  0001 C CNN
	1    12550 9000
	1    0    0    -1  
$EndComp
Text GLabel 8650 2150 2    50   Input ~ 0
CH1_CV
Text GLabel 8650 2550 2    50   Input ~ 0
CH2_CV
Text GLabel 14400 4600 1    50   Input ~ 0
CH1_Gate
Text GLabel 14400 5750 1    50   Input ~ 0
CH2_Gate
Text GLabel 14400 9200 1    50   Input ~ 0
Drum6
$Comp
L power:+12V #PWR054
U 1 1 637CADF7
P 14700 9000
F 0 "#PWR054" H 14700 8850 50  0001 C CNN
F 1 "+12V" H 14715 9173 50  0000 C CNN
F 2 "" H 14700 9000 50  0001 C CNN
F 3 "" H 14700 9000 50  0001 C CNN
	1    14700 9000
	1    0    0    -1  
$EndComp
Text GLabel 12250 8050 1    50   Input ~ 0
Drum3
$Comp
L power:+12V #PWR042
U 1 1 63944B4F
P 12550 7850
F 0 "#PWR042" H 12550 7700 50  0001 C CNN
F 1 "+12V" H 12565 8023 50  0000 C CNN
F 2 "" H 12550 7850 50  0001 C CNN
F 3 "" H 12550 7850 50  0001 C CNN
	1    12550 7850
	1    0    0    -1  
$EndComp
Text GLabel 12250 6900 1    50   Input ~ 0
Drum2
$Comp
L power:+12V #PWR040
U 1 1 639CD6C5
P 12550 6700
F 0 "#PWR040" H 12550 6550 50  0001 C CNN
F 1 "+12V" H 12565 6873 50  0000 C CNN
F 2 "" H 12550 6700 50  0001 C CNN
F 3 "" H 12550 6700 50  0001 C CNN
	1    12550 6700
	1    0    0    -1  
$EndComp
Text GLabel 12250 5750 1    50   Input ~ 0
Drum1
$Comp
L power:+12V #PWR038
U 1 1 63A3075E
P 12550 5550
F 0 "#PWR038" H 12550 5400 50  0001 C CNN
F 1 "+12V" H 12565 5723 50  0000 C CNN
F 2 "" H 12550 5550 50  0001 C CNN
F 3 "" H 12550 5550 50  0001 C CNN
	1    12550 5550
	1    0    0    -1  
$EndComp
Text GLabel 3600 4900 2    50   Input ~ 0
CLK
Text GLabel 10150 10000 0    50   Input ~ 0
CH2_CV
$Comp
L power:+12V #PWR035
U 1 1 63B2F50D
P 8600 9800
F 0 "#PWR035" H 8600 9650 50  0001 C CNN
F 1 "+12V" H 8615 9973 50  0000 C CNN
F 2 "" H 8600 9800 50  0001 C CNN
F 3 "" H 8600 9800 50  0001 C CNN
	1    8600 9800
	1    0    0    -1  
$EndComp
Text GLabel 8400 10000 0    50   Input ~ 0
CH1_CV
Wire Wire Line
	8400 2550 8650 2550
Wire Wire Line
	8400 2150 8650 2150
$Comp
L power:+5V #PWR031
U 1 1 63C2EF82
P 7900 1850
F 0 "#PWR031" H 7900 1700 50  0001 C CNN
F 1 "+5V" V 7915 1978 50  0000 L CNN
F 2 "" H 7900 1850 50  0001 C CNN
F 3 "" H 7900 1850 50  0001 C CNN
	1    7900 1850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR032
U 1 1 63C4DC09
P 7900 2850
F 0 "#PWR032" H 7900 2700 50  0001 C CNN
F 1 "+5V" V 7915 2978 50  0000 L CNN
F 2 "" H 7900 2850 50  0001 C CNN
F 3 "" H 7900 2850 50  0001 C CNN
	1    7900 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 1700 7700 1700
$Comp
L power:GND #PWR028
U 1 1 6157D90A
P 7450 1400
F 0 "#PWR028" H 7450 1150 50  0001 C CNN
F 1 "GND" H 7455 1227 50  0000 C CNN
F 2 "" H 7450 1400 50  0001 C CNN
F 3 "" H 7450 1400 50  0001 C CNN
	1    7450 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 60A04659
P 7450 1550
F 0 "C9" H 7650 1500 50  0000 R CNN
F 1 "0.1 uF" H 7800 1600 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7488 1400 50  0001 C CNN
F 3 "~" H 7450 1550 50  0001 C CNN
	1    7450 1550
	-1   0    0    1   
$EndComp
Connection ~ 7700 1700
Wire Wire Line
	7700 1700 7700 1850
$Comp
L power:GND #PWR049
U 1 1 63D15429
P 14700 6250
F 0 "#PWR049" H 14700 6000 50  0001 C CNN
F 1 "GND" H 14705 6077 50  0000 C CNN
F 2 "" H 14700 6250 50  0001 C CNN
F 3 "" H 14700 6250 50  0001 C CNN
	1    14700 6250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q6
U 1 1 63D157E2
P 14600 6050
F 0 "Q6" H 14791 6096 50  0000 L CNN
F 1 "BC337" H 14791 6005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14800 5975 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 14600 6050 50  0001 L CNN
	1    14600 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J10
U 1 1 63D15EEF
P 15300 5950
F 0 "J10" H 15020 5883 50  0000 R CNN
F 1 "AudioJack3" H 15020 5974 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 15300 5950 50  0001 C CNN
F 3 "~" H 15300 5950 50  0001 C CNN
	1    15300 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	15100 6250 15100 6050
$Comp
L Device:R R31
U 1 1 63D55BD0
P 14400 5900
F 0 "R31" H 14550 5850 50  0000 C CNN
F 1 "10 kohm" H 14650 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14330 5900 50  0001 C CNN
F 3 "~" H 14400 5900 50  0001 C CNN
	1    14400 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R36
U 1 1 63D560C0
P 14700 5700
F 0 "R36" H 14770 5746 50  0000 L CNN
F 1 "470 ohm" H 14770 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14630 5700 50  0001 C CNN
F 3 "~" H 14700 5700 50  0001 C CNN
	1    14700 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR048
U 1 1 63D5649C
P 14700 5550
F 0 "#PWR048" H 14700 5400 50  0001 C CNN
F 1 "+12V" H 14715 5723 50  0000 C CNN
F 2 "" H 14700 5550 50  0001 C CNN
F 3 "" H 14700 5550 50  0001 C CNN
	1    14700 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR052
U 1 1 63851688
P 14700 7850
F 0 "#PWR052" H 14700 7700 50  0001 C CNN
F 1 "+12V" H 14715 8023 50  0000 C CNN
F 2 "" H 14700 7850 50  0001 C CNN
F 3 "" H 14700 7850 50  0001 C CNN
	1    14700 7850
	1    0    0    -1  
$EndComp
Text GLabel 14400 8050 1    50   Input ~ 0
Drum5
Wire Wire Line
	15100 8350 15100 8550
$Comp
L power:GND #PWR053
U 1 1 619DAD43
P 14700 8550
F 0 "#PWR053" H 14700 8300 50  0001 C CNN
F 1 "GND" H 14705 8377 50  0000 C CNN
F 2 "" H 14700 8550 50  0001 C CNN
F 3 "" H 14700 8550 50  0001 C CNN
	1    14700 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R33
U 1 1 61937EC1
P 14400 8200
F 0 "R33" H 14550 8150 50  0000 C CNN
F 1 "10 kohm" H 14650 8250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14330 8200 50  0001 C CNN
F 3 "~" H 14400 8200 50  0001 C CNN
	1    14400 8200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R38
U 1 1 6158366B
P 14700 8000
F 0 "R38" H 14770 8046 50  0000 L CNN
F 1 "470 ohm" H 14770 7955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14630 8000 50  0001 C CNN
F 3 "~" H 14700 8000 50  0001 C CNN
	1    14700 8000
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J12
U 1 1 6149C198
P 15300 8250
F 0 "J12" H 15020 8183 50  0000 R CNN
F 1 "AudioJack3" H 15020 8274 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 15300 8250 50  0001 C CNN
F 3 "~" H 15300 8250 50  0001 C CNN
	1    15300 8250
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC337 Q8
U 1 1 60C10FA5
P 14600 8350
F 0 "Q8" H 14791 8396 50  0000 L CNN
F 1 "BC337" H 14791 8305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14800 8275 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 14600 8350 50  0001 L CNN
	1    14600 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15100 8150 14700 8150
Connection ~ 14700 8150
Wire Wire Line
	14700 8550 15100 8550
Connection ~ 14700 8550
$Comp
L power:GND #PWR047
U 1 1 63E1CDE2
P 14700 5100
F 0 "#PWR047" H 14700 4850 50  0001 C CNN
F 1 "GND" H 14705 4927 50  0000 C CNN
F 2 "" H 14700 5100 50  0001 C CNN
F 3 "" H 14700 5100 50  0001 C CNN
	1    14700 5100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q5
U 1 1 63E1D24A
P 14600 4900
F 0 "Q5" H 14791 4946 50  0000 L CNN
F 1 "BC337" H 14791 4855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14800 4825 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 14600 4900 50  0001 L CNN
	1    14600 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 63E1DAF1
P 14400 4750
F 0 "R30" H 14550 4700 50  0000 C CNN
F 1 "10 kohm" H 14650 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14330 4750 50  0001 C CNN
F 3 "~" H 14400 4750 50  0001 C CNN
	1    14400 4750
	-1   0    0    1   
$EndComp
Text GLabel 6100 2350 2    50   Input ~ 0
CH1_Gate
Text GLabel 6100 2450 2    50   Input ~ 0
CH2_Gate
$Comp
L Device:R R35
U 1 1 63E20CE1
P 14700 4550
F 0 "R35" H 14770 4596 50  0000 L CNN
F 1 "470 ohm" H 14770 4505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 14630 4550 50  0001 C CNN
F 3 "~" H 14700 4550 50  0001 C CNN
	1    14700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR046
U 1 1 63E2116A
P 14700 4400
F 0 "#PWR046" H 14700 4250 50  0001 C CNN
F 1 "+12V" H 14715 4573 50  0000 C CNN
F 2 "" H 14700 4400 50  0001 C CNN
F 3 "" H 14700 4400 50  0001 C CNN
	1    14700 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J9
U 1 1 63E2199D
P 15300 4800
F 0 "J9" H 15020 4733 50  0000 R CNN
F 1 "AudioJack3" H 15020 4824 50  0000 R CNN
F 2 "3.5mmJack:3.55mmJack" H 15300 4800 50  0001 C CNN
F 3 "~" H 15300 4800 50  0001 C CNN
	1    15300 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	14700 5100 15100 5100
Wire Wire Line
	15100 5100 15100 4900
Connection ~ 14700 5100
Wire Wire Line
	15100 4700 14700 4700
Connection ~ 14700 4700
Wire Wire Line
	14700 7400 15100 7400
Wire Wire Line
	14700 7000 15100 7000
Text GLabel 14400 6900 1    50   Input ~ 0
CLK
$Comp
L power:+5V #PWR050
U 1 1 63FA71E5
P 14700 6700
F 0 "#PWR050" H 14700 6550 50  0001 C CNN
F 1 "+5V" H 14715 6873 50  0000 C CNN
F 2 "" H 14700 6700 50  0001 C CNN
F 3 "" H 14700 6700 50  0001 C CNN
	1    14700 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 641603DB
P 6450 5400
F 0 "#PWR024" H 6450 5250 50  0001 C CNN
F 1 "+5V" V 6465 5528 50  0000 L CNN
F 2 "" H 6450 5400 50  0001 C CNN
F 3 "" H 6450 5400 50  0001 C CNN
	1    6450 5400
	0    1    1    0   
$EndComp
Connection ~ 6450 5400
NoConn ~ 3600 5000
NoConn ~ 2400 2800
NoConn ~ 3100 1900
NoConn ~ 15100 4800
NoConn ~ 15100 5950
Wire Wire Line
	15100 5850 14700 5850
Connection ~ 14700 5850
Wire Wire Line
	14700 6250 15100 6250
Connection ~ 14700 6250
NoConn ~ 9100 10200
NoConn ~ 10850 10200
NoConn ~ 12950 9400
NoConn ~ 12950 8250
NoConn ~ 12950 7100
NoConn ~ 12950 5950
NoConn ~ 15100 9400
NoConn ~ 15100 8250
NoConn ~ 15100 7100
$Comp
L power:PWR_FLAG #FLG01
U 1 1 64B41752
P 5500 10650
F 0 "#FLG01" H 5500 10725 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 10823 50  0000 C CNN
F 2 "" H 5500 10650 50  0001 C CNN
F 3 "~" H 5500 10650 50  0001 C CNN
	1    5500 10650
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR019
U 1 1 64B42F3B
P 5500 10650
F 0 "#PWR019" H 5500 10500 50  0001 C CNN
F 1 "+24V" H 5515 10823 50  0000 C CNN
F 2 "" H 5500 10650 50  0001 C CNN
F 3 "" H 5500 10650 50  0001 C CNN
	1    5500 10650
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 64B43C69
P 6000 10650
F 0 "#FLG02" H 6000 10725 50  0001 C CNN
F 1 "PWR_FLAG" H 6000 10823 50  0000 C CNN
F 2 "" H 6000 10650 50  0001 C CNN
F 3 "~" H 6000 10650 50  0001 C CNN
	1    6000 10650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 64B43F09
P 6000 10650
F 0 "#PWR023" H 6000 10400 50  0001 C CNN
F 1 "GND" H 6005 10477 50  0000 C CNN
F 2 "" H 6000 10650 50  0001 C CNN
F 3 "" H 6000 10650 50  0001 C CNN
	1    6000 10650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J2
U 1 1 64BDEA0F
P 4500 10600
F 0 "J2" H 4557 10917 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 4557 10826 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 4550 10560 50  0001 C CNN
F 3 "~" H 4550 10560 50  0001 C CNN
	1    4500 10600
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR014
U 1 1 64BE0963
P 4800 10500
F 0 "#PWR014" H 4800 10350 50  0001 C CNN
F 1 "+24V" H 4815 10673 50  0000 C CNN
F 2 "" H 4800 10500 50  0001 C CNN
F 3 "" H 4800 10500 50  0001 C CNN
	1    4800 10500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 64BE2605
P 4800 10700
F 0 "#PWR015" H 4800 10450 50  0001 C CNN
F 1 "GND" H 4805 10527 50  0000 C CNN
F 2 "" H 4800 10700 50  0001 C CNN
F 3 "" H 4800 10700 50  0001 C CNN
	1    4800 10700
	1    0    0    -1  
$EndComp
NoConn ~ 4800 10600
Text GLabel 4600 7200 1    50   Input ~ 0
BtnCol2
Text GLabel 5650 7200 1    50   Input ~ 0
BtnCol3
Text GLabel 6700 7200 1    50   Input ~ 0
BtnCol4
Text GLabel 3600 4400 2    50   Input ~ 0
BtnCol1
Text GLabel 3600 4500 2    50   Input ~ 0
BtnCol2
Text GLabel 3600 4600 2    50   Input ~ 0
BtnCol3
Text GLabel 3600 4700 2    50   Input ~ 0
BtnCol4
Text GLabel 3350 7950 1    50   Input ~ 0
BtnRow1
Text GLabel 3350 8500 1    50   Input ~ 0
BtnRow2
Text GLabel 3350 9050 1    50   Input ~ 0
BtnRow3
Text GLabel 3350 9600 1    50   Input ~ 0
BtnRow4
Text GLabel 3550 7200 1    50   Input ~ 0
BtnCol1
Connection ~ 6700 7650
Connection ~ 5650 7650
Connection ~ 4600 7650
Wire Wire Line
	3350 8500 4350 8500
Wire Wire Line
	3350 9050 4350 9050
Wire Wire Line
	3350 9600 4350 9600
Text GLabel 3600 5300 2    50   Input ~ 0
BtnRow1
Text GLabel 3600 5400 2    50   Input ~ 0
BtnRow2
Text GLabel 3600 5500 2    50   Input ~ 0
BtnRow3
Text GLabel 3600 5600 2    50   Input ~ 0
BtnRow4
Wire Wire Line
	1950 2650 2350 2650
Wire Wire Line
	2350 2650 2350 2600
Wire Wire Line
	1850 2650 1950 2650
Connection ~ 1950 2650
Wire Wire Line
	3250 10850 2900 10850
Connection ~ 3250 10850
Wire Wire Line
	3600 10850 3250 10850
Connection ~ 3600 10400
Wire Wire Line
	3550 10400 3600 10400
Connection ~ 2900 10400
Wire Wire Line
	2900 10400 2950 10400
$Comp
L power:+12V #PWR010
U 1 1 62F946B7
P 3600 10400
F 0 "#PWR010" H 3600 10250 50  0001 C CNN
F 1 "+12V" H 3615 10573 50  0000 C CNN
F 2 "" H 3600 10400 50  0001 C CNN
F 3 "" H 3600 10400 50  0001 C CNN
	1    3600 10400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 621F2868
P 3250 10850
F 0 "#PWR09" H 3250 10600 50  0001 C CNN
F 1 "GND" H 3255 10677 50  0000 C CNN
F 2 "" H 3250 10850 50  0001 C CNN
F 3 "" H 3250 10850 50  0001 C CNN
	1    3250 10850
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR06
U 1 1 621F0D5B
P 2900 10400
F 0 "#PWR06" H 2900 10250 50  0001 C CNN
F 1 "+24V" H 2915 10573 50  0000 C CNN
F 2 "" H 2900 10400 50  0001 C CNN
F 3 "" H 2900 10400 50  0001 C CNN
	1    2900 10400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7812 U3
U 1 1 60B98F02
P 3250 10400
F 0 "U3" H 3250 10642 50  0000 C CNN
F 1 "L7812" H 3250 10551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 3275 10250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3250 10350 50  0001 C CNN
	1    3250 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 10700 3250 10850
Wire Wire Line
	2900 10400 2900 10550
Wire Wire Line
	3600 10400 3600 10550
$Comp
L Device:CP C6
U 1 1 60B53D1F
P 3600 10700
F 0 "C6" H 3800 10750 50  0000 C CNN
F 1 "0.1 uF" H 3850 10650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3638 10550 50  0001 C CNN
F 3 "~" H 3600 10700 50  0001 C CNN
	1    3600 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 60B531F5
P 2900 10700
F 0 "C5" H 2700 10750 50  0000 C CNN
F 1 "0.33 uF" H 2600 10650 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2938 10550 50  0001 C CNN
F 3 "~" H 2900 10700 50  0001 C CNN
	1    2900 10700
	1    0    0    -1  
$EndComp
Text GLabel 950  8400 1    50   Input ~ 0
LedRow1
Wire Wire Line
	1500 8400 950  8400
Connection ~ 1500 8400
Text GLabel 950  8800 1    50   Input ~ 0
LedRow2
Text GLabel 950  9200 1    50   Input ~ 0
LedRow3
Wire Wire Line
	1500 9200 950  9200
Connection ~ 1500 9200
Wire Wire Line
	1500 9600 950  9600
Connection ~ 1500 9600
Text GLabel 950  9600 1    50   Input ~ 0
LedRow4
Text GLabel 3600 2600 2    50   Input ~ 0
LedRow1
Text GLabel 3600 2700 2    50   Input ~ 0
LedRow2
Text GLabel 3600 2800 2    50   Input ~ 0
LedRow3
Text GLabel 3600 2900 2    50   Input ~ 0
LedRow4
Wire Wire Line
	2350 8300 2350 8000
Connection ~ 2350 8300
Text GLabel 2350 7700 1    50   Input ~ 0
LedCol4
Wire Wire Line
	1950 8300 1950 8000
Connection ~ 1950 8300
Wire Wire Line
	1550 8300 1550 8000
Connection ~ 1550 8300
Wire Wire Line
	1150 8300 1150 8000
Connection ~ 1150 8300
Text GLabel 1950 7700 1    50   Input ~ 0
LedCol3
Text GLabel 1550 7700 1    50   Input ~ 0
LedCol2
Text GLabel 1150 7700 1    50   Input ~ 0
LedCol1
Text GLabel 3600 2200 2    50   Input ~ 0
LedCol1
Text GLabel 3600 2300 2    50   Input ~ 0
LedCol2
Text GLabel 3600 2400 2    50   Input ~ 0
LedCol3
Text GLabel 3600 2500 2    50   Input ~ 0
LedCol4
Wire Wire Line
	6350 5600 6450 5600
Wire Wire Line
	6450 5600 6450 5400
Wire Wire Line
	6350 5100 6450 5100
Wire Wire Line
	6450 5100 6450 5400
Wire Wire Line
	5300 5100 4650 5100
Connection ~ 5300 5100
Wire Wire Line
	4650 5400 4650 5600
Wire Wire Line
	4650 5600 5300 5600
Connection ~ 5300 5600
Wire Wire Line
	4250 1700 4250 1100
Wire Wire Line
	4050 1600 4050 4000
Connection ~ 4150 1950
Wire Wire Line
	4150 1950 4150 4100
$Comp
L power:GND #PWR012
U 1 1 6141BB82
P 4350 1100
F 0 "#PWR012" H 4350 850 50  0001 C CNN
F 1 "GND" H 4355 927 50  0000 C CNN
F 2 "" H 4350 1100 50  0001 C CNN
F 3 "" H 4350 1100 50  0001 C CNN
	1    4350 1100
	1    0    0    -1  
$EndComp
Connection ~ 4050 1600
Wire Wire Line
	4050 1100 4050 1600
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 64FC3910
P 4250 900
F 0 "J1" V 4312 1044 50  0000 L CNN
F 1 "Conn_01x04_Male" V 4403 1044 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 4250 900 50  0001 C CNN
F 3 "~" H 4250 900 50  0001 C CNN
	1    4250 900 
	0    1    1    0   
$EndComp
Text Label 4050 900  1    50   ~ 0
LCD_SCL
Text Label 4150 900  1    50   ~ 0
LCD_SDA
Text Label 4250 900  1    50   ~ 0
LCD_VCC
Text Label 4350 900  1    50   ~ 0
LCD_GND
Wire Wire Line
	3850 1600 4050 1600
Wire Wire Line
	3550 1700 4250 1700
Wire Wire Line
	3850 1950 4150 1950
Wire Wire Line
	3600 4100 4150 4100
Wire Wire Line
	3600 4000 4050 4000
$Comp
L Device:R R17
U 1 1 60A2B541
P 6850 7300
F 0 "R17" V 6650 7300 50  0000 C CNN
F 1 "10 kohm" V 6750 7400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6780 7300 50  0001 C CNN
F 3 "~" H 6850 7300 50  0001 C CNN
	1    6850 7300
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 60A2D165
P 5800 7300
F 0 "R14" V 5600 7300 50  0000 C CNN
F 1 "10 kohm" V 5700 7400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5730 7300 50  0001 C CNN
F 3 "~" H 5800 7300 50  0001 C CNN
	1    5800 7300
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 60A2D76A
P 4750 7300
F 0 "R12" V 4550 7300 50  0000 C CNN
F 1 "10 kohm" V 4650 7400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4680 7300 50  0001 C CNN
F 3 "~" H 4750 7300 50  0001 C CNN
	1    4750 7300
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60A2DAC0
P 3700 7300
F 0 "R8" V 3500 7300 50  0000 C CNN
F 1 "10 kohm" V 3600 7400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3630 7300 50  0001 C CNN
F 3 "~" H 3700 7300 50  0001 C CNN
	1    3700 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 7200 3550 7300
Wire Wire Line
	3550 7300 3550 7650
Connection ~ 3550 7300
Wire Wire Line
	4600 7200 4600 7300
Wire Wire Line
	4600 7300 4600 7650
Connection ~ 4600 7300
Wire Wire Line
	5650 7200 5650 7300
Wire Wire Line
	5650 7300 5650 7650
Connection ~ 5650 7300
Wire Wire Line
	6700 7200 6700 7300
Wire Wire Line
	6700 7300 6700 7650
Connection ~ 6700 7300
$Comp
L power:+5V #PWR011
U 1 1 60AE975B
P 3850 7300
F 0 "#PWR011" H 3850 7150 50  0001 C CNN
F 1 "+5V" V 3865 7428 50  0000 L CNN
F 2 "" H 3850 7300 50  0001 C CNN
F 3 "" H 3850 7300 50  0001 C CNN
	1    3850 7300
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 60AE9CF6
P 4900 7300
F 0 "#PWR016" H 4900 7150 50  0001 C CNN
F 1 "+5V" V 4915 7428 50  0000 L CNN
F 2 "" H 4900 7300 50  0001 C CNN
F 3 "" H 4900 7300 50  0001 C CNN
	1    4900 7300
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 60AEA1A5
P 5950 7300
F 0 "#PWR022" H 5950 7150 50  0001 C CNN
F 1 "+5V" V 5965 7428 50  0000 L CNN
F 2 "" H 5950 7300 50  0001 C CNN
F 3 "" H 5950 7300 50  0001 C CNN
	1    5950 7300
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 60AEA475
P 7000 7300
F 0 "#PWR025" H 7000 7150 50  0001 C CNN
F 1 "+5V" V 7015 7428 50  0000 L CNN
F 2 "" H 7000 7300 50  0001 C CNN
F 3 "" H 7000 7300 50  0001 C CNN
	1    7000 7300
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 60B4B6A7
P 7700 1400
F 0 "#PWR029" H 7700 1250 50  0001 C CNN
F 1 "+5V" H 7715 1573 50  0000 C CNN
F 2 "" H 7700 1400 50  0001 C CNN
F 3 "" H 7700 1400 50  0001 C CNN
	1    7700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1400 7700 1700
$Comp
L power:GND #PWR026
U 1 1 60B62D9D
P 7200 2450
F 0 "#PWR026" H 7200 2200 50  0001 C CNN
F 1 "GND" V 7200 2250 50  0000 C CNN
F 2 "" H 7200 2450 50  0001 C CNN
F 3 "" H 7200 2450 50  0001 C CNN
	1    7200 2450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 60B64956
P 7200 2550
F 0 "#PWR027" H 7200 2400 50  0001 C CNN
F 1 "+5V" V 7200 2750 50  0000 C CNN
F 2 "" H 7200 2550 50  0001 C CNN
F 3 "" H 7200 2550 50  0001 C CNN
	1    7200 2550
	0    -1   -1   0   
$EndComp
Text GLabel 7200 2150 0    50   Input ~ 0
SPI_DATA
Text GLabel 7200 2250 0    50   Input ~ 0
SPI_CLK
Text GLabel 7200 2350 0    50   Input ~ 0
SPI_SS
Text GLabel 3600 3800 2    50   Input ~ 0
SPI_CLK
Text GLabel 3600 3600 2    50   Input ~ 0
SPI_DATA
Text GLabel 3600 3100 2    50   Input ~ 0
SPI_SS
Wire Wire Line
	4150 1100 4150 1950
$Comp
L 74xx:74LS259 U4
U 1 1 60C7B49B
P 5600 2150
F 0 "U4" H 5700 2800 50  0000 C CNN
F 1 "74LS259" H 5800 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5600 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS259" H 5600 2150 50  0001 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
Text GLabel 3600 3200 2    50   Input ~ 0
AL_DATA
Text GLabel 3600 3300 2    50   Input ~ 0
AL_A0
Text GLabel 3600 3400 2    50   Input ~ 0
AL_A1
Text GLabel 3600 3500 2    50   Input ~ 0
AL_A2
Text GLabel 3600 3700 2    50   Input ~ 0
AL_ENABLE
Text GLabel 5100 1750 0    50   Input ~ 0
AL_DATA
Text GLabel 5100 1950 0    50   Input ~ 0
AL_A0
Text GLabel 5100 2050 0    50   Input ~ 0
AL_A1
Text GLabel 5100 2150 0    50   Input ~ 0
AL_A2
Text GLabel 5100 2350 0    50   Input ~ 0
AL_ENABLE
$Comp
L power:GND #PWR021
U 1 1 60D54B09
P 5600 2850
F 0 "#PWR021" H 5600 2600 50  0001 C CNN
F 1 "GND" H 5605 2677 50  0000 C CNN
F 2 "" H 5600 2850 50  0001 C CNN
F 3 "" H 5600 2850 50  0001 C CNN
	1    5600 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 60D54EFC
P 5600 1450
F 0 "#PWR020" H 5600 1300 50  0001 C CNN
F 1 "+5V" H 5500 1650 50  0000 L CNN
F 2 "" H 5600 1450 50  0001 C CNN
F 3 "" H 5600 1450 50  0001 C CNN
	1    5600 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 60E4649D
P 5100 2550
F 0 "#PWR018" H 5100 2400 50  0001 C CNN
F 1 "+5V" V 5100 2700 50  0000 L CNN
F 2 "" H 5100 2550 50  0001 C CNN
F 3 "" H 5100 2550 50  0001 C CNN
	1    5100 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 2350 2350 2350
Wire Wire Line
	2400 2200 2350 2200
Wire Wire Line
	2350 1900 2350 1700
Wire Wire Line
	2350 1700 3000 1700
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 60B35D3E
P 3950 7650
F 0 "SW1" H 3850 7500 50  0000 C CNN
F 1 "SW_DIP_x01" H 3950 7826 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 3950 7650 50  0001 C CNN
F 3 "~" H 3950 7650 50  0001 C CNN
	1    3950 7650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW7
U 1 1 60B38916
P 5000 7650
F 0 "SW7" H 4900 7500 50  0000 C CNN
F 1 "SW_DIP_x01" H 5000 7826 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5000 7650 50  0001 C CNN
F 3 "~" H 5000 7650 50  0001 C CNN
	1    5000 7650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW12
U 1 1 60B38CBC
P 6050 7650
F 0 "SW12" H 5950 7500 50  0000 C CNN
F 1 "SW_DIP_x01" H 6050 7826 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6050 7650 50  0001 C CNN
F 3 "~" H 6050 7650 50  0001 C CNN
	1    6050 7650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW16
U 1 1 60B3910E
P 7100 7650
F 0 "SW16" H 7000 7500 50  0000 C CNN
F 1 "SW_DIP_x01" H 7100 7826 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 7100 7650 50  0001 C CNN
F 3 "~" H 7100 7650 50  0001 C CNN
	1    7100 7650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW17
U 1 1 60B39668
P 7100 8200
F 0 "SW17" H 7000 8050 50  0000 C CNN
F 1 "SW_DIP_x01" H 7100 8376 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 7100 8200 50  0001 C CNN
F 3 "~" H 7100 8200 50  0001 C CNN
	1    7100 8200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW13
U 1 1 60B39978
P 6050 8200
F 0 "SW13" H 5950 8050 50  0000 C CNN
F 1 "SW_DIP_x01" H 6050 8376 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6050 8200 50  0001 C CNN
F 3 "~" H 6050 8200 50  0001 C CNN
	1    6050 8200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW8
U 1 1 60B39D37
P 5000 8200
F 0 "SW8" H 4900 8050 50  0000 C CNN
F 1 "SW_DIP_x01" H 5000 8376 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5000 8200 50  0001 C CNN
F 3 "~" H 5000 8200 50  0001 C CNN
	1    5000 8200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW2
U 1 1 60B3A29B
P 3950 8200
F 0 "SW2" H 3850 8050 50  0000 C CNN
F 1 "SW_DIP_x01" H 3950 8376 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 3950 8200 50  0001 C CNN
F 3 "~" H 3950 8200 50  0001 C CNN
	1    3950 8200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW3
U 1 1 60B3A6BA
P 3950 8750
F 0 "SW3" H 3850 8600 50  0000 C CNN
F 1 "SW_DIP_x01" H 3950 8926 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 3950 8750 50  0001 C CNN
F 3 "~" H 3950 8750 50  0001 C CNN
	1    3950 8750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW9
U 1 1 60B3AA36
P 5000 8750
F 0 "SW9" H 4900 8600 50  0000 C CNN
F 1 "SW_DIP_x01" H 5000 8926 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5000 8750 50  0001 C CNN
F 3 "~" H 5000 8750 50  0001 C CNN
	1    5000 8750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW14
U 1 1 60B3AF4D
P 6050 8750
F 0 "SW14" H 5950 8600 50  0000 C CNN
F 1 "SW_DIP_x01" H 6050 8926 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6050 8750 50  0001 C CNN
F 3 "~" H 6050 8750 50  0001 C CNN
	1    6050 8750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW18
U 1 1 60B3B367
P 7100 8750
F 0 "SW18" H 7000 8600 50  0000 C CNN
F 1 "SW_DIP_x01" H 7100 8926 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 7100 8750 50  0001 C CNN
F 3 "~" H 7100 8750 50  0001 C CNN
	1    7100 8750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW19
U 1 1 60B3B8EF
P 7100 9300
F 0 "SW19" H 7000 9150 50  0000 C CNN
F 1 "SW_DIP_x01" H 7100 9476 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 7100 9300 50  0001 C CNN
F 3 "~" H 7100 9300 50  0001 C CNN
	1    7100 9300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW15
U 1 1 60B3BC95
P 6050 9300
F 0 "SW15" H 5950 9150 50  0000 C CNN
F 1 "SW_DIP_x01" H 6050 9476 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6050 9300 50  0001 C CNN
F 3 "~" H 6050 9300 50  0001 C CNN
	1    6050 9300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW10
U 1 1 60B3C0FB
P 5000 9300
F 0 "SW10" H 4900 9150 50  0000 C CNN
F 1 "SW_DIP_x01" H 5000 9476 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5000 9300 50  0001 C CNN
F 3 "~" H 5000 9300 50  0001 C CNN
	1    5000 9300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW4
U 1 1 60B3C5E6
P 3950 9300
F 0 "SW4" H 3850 9150 50  0000 C CNN
F 1 "SW_DIP_x01" H 3950 9476 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 3950 9300 50  0001 C CNN
F 3 "~" H 3950 9300 50  0001 C CNN
	1    3950 9300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW6
U 1 1 60B4F51D
P 4950 3800
F 0 "SW6" H 4800 3550 50  0000 C CNN
F 1 "SW_DIP_x01" H 4950 3650 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 4950 3800 50  0001 C CNN
F 3 "~" H 4950 3800 50  0001 C CNN
	1    4950 3800
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_DIP_x01 SW5
U 1 1 60B4FBDA
P 4600 3800
F 0 "SW5" H 4450 4050 50  0000 C CNN
F 1 "SW_DIP_x01" H 4600 3950 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 4600 3800 50  0001 C CNN
F 3 "~" H 4600 3800 50  0001 C CNN
	1    4600 3800
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
