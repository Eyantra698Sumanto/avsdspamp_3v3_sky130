EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:spamp-cache
EELAYER 25 0
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
L eSim_MOS_N M2
U 1 1 610790EB
P 5950 4550
F 0 "M2" H 5950 4400 50  0000 R CNN
F 1 "sky130_fd_pr__pfet_01v8" H 6050 4500 50  0000 R CNN
F 2 "" H 6250 4250 29  0000 C CNN
F 3 "" H 6050 4350 60  0000 C CNN
	1    5950 4550
	1    0    0    -1  
$EndComp
$Comp
L eSim_MOS_P M1
U 1 1 61079155
P 5200 4050
F 0 "M1" H 5150 4100 50  0000 R CNN
F 1 "sky130_fd_pr__nfet_01v8" H 5250 4200 50  0000 R CNN
F 2 "" H 5450 4150 29  0000 C CNN
F 3 "" H 5250 4050 60  0000 C CNN
	1    5200 4050
	1    0    0    1   
$EndComp
$Comp
L resistor R4
U 1 1 610791C5
P 5800 3750
F 0 "R4" H 5850 3880 50  0000 C CNN
F 1 "6.7Meg" H 5850 3700 50  0000 C CNN
F 2 "" H 5850 3730 30  0000 C CNN
F 3 "" V 5850 3800 30  0000 C CNN
	1    5800 3750
	1    0    0    -1  
$EndComp
$Comp
L resistor R5
U 1 1 61079266
P 6200 3300
F 0 "R5" H 6250 3430 50  0000 C CNN
F 1 "10Meg" H 6250 3250 50  0000 C CNN
F 2 "" H 6250 3280 30  0000 C CNN
F 3 "" V 6250 3350 30  0000 C CNN
	1    6200 3300
	0    -1   -1   0   
$EndComp
$Comp
L resistor R3
U 1 1 61079360
P 4450 5100
F 0 "R3" H 4500 5230 50  0000 C CNN
F 1 "100k" H 4500 5050 50  0000 C CNN
F 2 "" H 4500 5080 30  0000 C CNN
F 3 "" V 4500 5150 30  0000 C CNN
	1    4450 5100
	0    -1   -1   0   
$EndComp
$Comp
L eSim_GND #PWR01
U 1 1 61079464
P 5400 5550
F 0 "#PWR01" H 5400 5300 50  0001 C CNN
F 1 "eSim_GND" H 5400 5400 50  0000 C CNN
F 2 "" H 5400 5550 50  0001 C CNN
F 3 "" H 5400 5550 50  0001 C CNN
	1    5400 5550
	1    0    0    -1  
$EndComp
$Comp
L DC v2
U 1 1 61079F62
P 8200 3850
F 0 "v2" H 8000 3950 60  0000 C CNN
F 1 "DC" H 8000 3800 60  0000 C CNN
F 2 "R1" H 7900 3850 60  0000 C CNN
F 3 "" H 8200 3850 60  0000 C CNN
	1    8200 3850
	1    0    0    -1  
$EndComp
Text GLabel 7350 3700 2    60   Output ~ 0
Vout
$Comp
L resistor R7
U 1 1 610797F2
P 7050 5200
F 0 "R7" H 7100 5330 50  0000 C CNN
F 1 "100Meg" H 7100 5150 50  0000 C CNN
F 2 "" H 7100 5180 30  0000 C CNN
F 3 "" V 7100 5250 30  0000 C CNN
	1    7050 5200
	0    -1   -1   0   
$EndComp
$Comp
L resistor R2
U 1 1 6107920F
P 4450 3700
F 0 "R2" H 4500 3830 50  0000 C CNN
F 1 "100k" H 4500 3650 50  0000 C CNN
F 2 "" H 4500 3680 30  0000 C CNN
F 3 "" V 4500 3750 30  0000 C CNN
	1    4450 3700
	0    -1   -1   0   
$EndComp
$Comp
L capacitor C1
U 1 1 6107B896
P 6550 3700
F 0 "C1" H 6575 3800 50  0000 L CNN
F 1 "100u" H 6575 3600 50  0000 L CNN
F 2 "" H 6588 3550 30  0000 C CNN
F 3 "" H 6550 3700 60  0000 C CNN
	1    6550 3700
	0    1    1    0   
$EndComp
$Comp
L capacitor Cds1
U 1 1 610CB834
P 5650 4150
F 0 "Cds1" H 5675 4250 50  0000 L CNN
F 1 "0.1u" H 5675 4050 50  0000 L CNN
F 2 "" H 5688 4000 30  0000 C CNN
F 3 "" H 5650 4150 60  0000 C CNN
	1    5650 4150
	-1   0    0    1   
$EndComp
$Comp
L capacitor Cgs1
U 1 1 610CBAC6
P 4800 4450
F 0 "Cgs1" H 4825 4550 50  0000 L CNN
F 1 "0.1u" H 4825 4350 50  0000 L CNN
F 2 "" H 4838 4300 30  0000 C CNN
F 3 "" H 4800 4450 60  0000 C CNN
	1    4800 4450
	-1   0    0    1   
$EndComp
$Comp
L capacitor Cgd1
U 1 1 610CBBB4
P 5000 3700
F 0 "Cgd1" H 5025 3800 50  0000 L CNN
F 1 "0.1u" H 5025 3600 50  0000 L CNN
F 2 "" H 5038 3550 30  0000 C CNN
F 3 "" H 5000 3700 60  0000 C CNN
	1    5000 3700
	0    1    1    0   
$EndComp
$Comp
L capacitor C2
U 1 1 61079A22
P 6500 5300
F 0 "C2" H 6525 5400 50  0000 L CNN
F 1 "100u" H 6525 5200 50  0000 L CNN
F 2 "" H 6538 5150 30  0000 C CNN
F 3 "" H 6500 5300 60  0000 C CNN
	1    6500 5300
	1    0    0    -1  
$EndComp
$Comp
L resistor R6
U 1 1 610793B4
P 6200 5300
F 0 "R6" H 6250 5430 50  0000 C CNN
F 1 "1k" H 6250 5250 50  0000 C CNN
F 2 "" H 6250 5280 30  0000 C CNN
F 3 "" V 6250 5350 30  0000 C CNN
	1    6200 5300
	0    -1   -1   0   
$EndComp
$Comp
L plot_v1 U1
U 1 1 610CB795
P 7000 3750
F 0 "U1" H 7000 4250 60  0000 C CNN
F 1 "plot_v1" H 7200 4100 60  0000 C CNN
F 2 "" H 7000 3750 60  0000 C CNN
F 3 "" H 7000 3750 60  0000 C CNN
	1    7000 3750
	1    0    0    -1  
$EndComp
$Comp
L sine v1
U 1 1 610CB577
P 3300 4600
F 0 "v1" H 3100 4700 60  0000 C CNN
F 1 "sine" H 3100 4550 60  0000 C CNN
F 2 "R1" H 3000 4600 60  0000 C CNN
F 3 "" H 3300 4600 60  0000 C CNN
	1    3300 4600
	1    0    0    -1  
$EndComp
Connection ~ 5350 4750
Connection ~ 4800 4050
Connection ~ 5650 3700
Connection ~ 5350 4400
Wire Wire Line
	3300 5050 3300 5500
Wire Wire Line
	3300 3850 3300 4150
Connection ~ 7000 3700
Connection ~ 7000 5500
Wire Wire Line
	8200 5500 8200 4300
Connection ~ 6150 2950
Wire Wire Line
	8200 2950 8200 3400
Connection ~ 6250 5000
Wire Wire Line
	6250 4900 6250 5000
Connection ~ 5450 3700
Connection ~ 4400 5500
Connection ~ 6150 5000
Wire Wire Line
	6500 5000 6500 5150
Connection ~ 6500 5500
Wire Wire Line
	6500 5500 6500 5450
Connection ~ 6150 5500
Wire Wire Line
	7000 5500 7000 5300
Wire Wire Line
	7000 3550 7000 5000
Connection ~ 5400 5500
Wire Wire Line
	5400 5500 5400 5550
Wire Wire Line
	6150 4950 6150 5100
Wire Wire Line
	6150 5500 6150 5400
Wire Wire Line
	3300 5500 8200 5500
Wire Wire Line
	4400 5200 4400 5500
Connection ~ 4400 4050
Wire Wire Line
	6150 2950 6150 3100
Wire Wire Line
	4400 2950 8200 2950
Wire Wire Line
	4400 3500 4400 2950
Wire Wire Line
	4400 3800 4400 4900
Wire Wire Line
	5150 3700 5700 3700
Wire Wire Line
	5350 3850 5350 3700
Connection ~ 6150 3700
Wire Wire Line
	5350 4250 5350 4750
Wire Wire Line
	6000 3700 6400 3700
Wire Wire Line
	6700 3700 7350 3700
Wire Wire Line
	5450 3700 5450 3900
Wire Wire Line
	3050 4050 5050 4050
Wire Wire Line
	6150 3400 6150 4550
Wire Wire Line
	4800 4750 5850 4750
Wire Wire Line
	6150 5000 6500 5000
Wire Wire Line
	4800 3700 4800 4300
Wire Wire Line
	4800 4600 4800 4750
Wire Wire Line
	4800 3700 4850 3700
Connection ~ 5350 3700
Wire Wire Line
	5650 3700 5650 4000
Wire Wire Line
	5350 4400 5650 4400
Wire Wire Line
	5650 4400 5650 4300
$Comp
L plot_v1 U2
U 1 1 610CF896
P 3300 4050
F 0 "U2" H 3300 4550 60  0000 C CNN
F 1 "plot_v1" H 3500 4400 60  0000 C CNN
F 2 "" H 3300 4050 60  0000 C CNN
F 3 "" H 3300 4050 60  0000 C CNN
	1    3300 4050
	1    0    0    -1  
$EndComp
Connection ~ 3300 4050
Text GLabel 3050 4050 0    60   Input ~ 0
vin
Text GLabel 6050 3050 0    60   Input ~ 0
vdd
Wire Wire Line
	6050 3050 6150 3050
Connection ~ 6150 3050
Text GLabel 6050 3500 0    60   Input ~ 0
Vc
Wire Wire Line
	6050 3500 6150 3500
Connection ~ 6150 3500
$EndSCHEMATC
