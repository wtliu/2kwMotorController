EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
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
LIBS:valves
LIBS:2kwMotorController
LIBS:2kwMotorController-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 "Author: Oliver Douglas"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Q_NMOS_GDS Q6
U 1 1 59758257
P 6900 2200
F 0 "Q6" H 7200 2250 50  0000 R CNN
F 1 "IRFP4468" H 7450 2150 50  0000 R CNN
F 2 "2kwMotorController:TO-247_Horizontal_Neutral123_MountFromLS_largePads" H 7100 2300 50  0001 C CNN
F 3 "" H 6900 2200 50  0000 C CNN
	1    6900 2200
	1    0    0    -1  
$EndComp
Text Label 8050 2650 0    60   ~ 0
M+
Text Label 8400 2650 2    60   ~ 0
M-
$Comp
L R R46
U 1 1 59758278
P 6500 3250
F 0 "R46" V 6580 3250 50  0000 C CNN
F 1 "2.2" V 6500 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6430 3250 50  0001 C CNN
F 3 "" H 6500 3250 50  0000 C CNN
	1    6500 3250
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR080
U 1 1 5975827F
P 7800 3600
F 0 "#PWR080" H 7800 3400 50  0001 C CNN
F 1 "GNDPWR" H 7800 3470 50  0000 C CNN
F 2 "" H 7800 3550 50  0000 C CNN
F 3 "" H 7800 3550 50  0000 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q7
U 1 1 597582C4
P 6900 3250
F 0 "Q7" H 7200 3300 50  0000 R CNN
F 1 "IRFP4468" H 7450 3200 50  0000 R CNN
F 2 "2kwMotorController:TO-247_Horizontal_Neutral123_MountFromLS_largePads" H 7100 3350 50  0001 C CNN
F 3 "" H 6900 3250 50  0000 C CNN
	1    6900 3250
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q9
U 1 1 597582CB
P 8600 3250
F 0 "Q9" H 8900 3300 50  0000 R CNN
F 1 "IRFP4468" H 9150 3200 50  0000 R CNN
F 2 "2kwMotorController:TO-247_Horizontal_Neutral123_MountFromLS_largePads" H 8800 3350 50  0001 C CNN
F 3 "" H 8600 3250 50  0000 C CNN
	1    8600 3250
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q8
U 1 1 597582D2
P 8600 2200
F 0 "Q8" H 8900 2250 50  0000 R CNN
F 1 "IRFP4468" H 9150 2150 50  0000 R CNN
F 2 "2kwMotorController:TO-247_Horizontal_Neutral123_MountFromLS_largePads" H 8800 2300 50  0001 C CNN
F 3 "" H 8600 2200 50  0000 C CNN
	1    8600 2200
	-1   0    0    -1  
$EndComp
Text Label 7650 1200 0    79   ~ 16
VBUS
$Comp
L R R38
U 1 1 597582E8
P 3750 1750
F 0 "R38" V 3830 1750 50  0000 C CNN
F 1 "1" V 3750 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3680 1750 50  0001 C CNN
F 3 "" H 3750 1750 50  0000 C CNN
	1    3750 1750
	1    0    0    -1  
$EndComp
Text HLabel 8050 5100 0    60   Input ~ 0
PWM1_MCU
Text HLabel 8050 5200 0    60   Input ~ 0
PWM2_MCU
Text Label 1000 3550 2    60   ~ 0
BATTERY_GND
$Comp
L THERMISTOR TH1
U 1 1 5986B315
P 2100 2500
F 0 "TH1" V 2200 2550 50  0000 C CNN
F 1 "B57127P100M301" V 2300 2550 50  0000 C BNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM7.5mm" H 2100 2500 50  0001 C CNN
F 3 "" H 2100 2500 50  0000 C CNN
	1    2100 2500
	-1   0    0    -1  
$EndComp
Text Notes 1550 1100 2    79   ~ 16
MOTOR BATTERY\n12V - 65V\nSCREW CONNECT
Text Notes 4700 1650 2    59   ~ 0
BLEEDER RESISTOR\n2kW TRANSIENT\n5 SECONDS MAX
Text HLabel 8050 5300 0    60   Input ~ 0
PWM3_MCU
Text HLabel 8050 5400 0    60   Input ~ 0
PWM4_MCU
Text HLabel 1750 6600 0    59   Input ~ 0
VBUS_EN_MCU
Text HLabel 1750 6500 0    59   Input ~ 0
VBUS_DIS_MCU
$Comp
L LM5102 U19
U 1 1 59952EB5
P 5450 2450
F 0 "U19" H 5200 2050 60  0000 C CNN
F 1 "LM5102" H 5450 2450 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 5450 2400 60  0001 C CNN
F 3 "" H 5450 2400 60  0000 C CNN
	1    5450 2450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C60
U 1 1 59954297
P 6350 2500
F 0 "C60" H 6360 2570 50  0000 L CNN
F 1 "1u" H 6360 2420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6350 2500 50  0001 C CNN
F 3 "" H 6350 2500 50  0000 C CNN
	1    6350 2500
	1    0    0    -1  
$EndComp
$Comp
L R R44
U 1 1 5995891C
P 4700 2950
F 0 "R44" V 4780 2950 50  0000 C CNN
F 1 "10k" V 4700 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4630 2950 50  0001 C CNN
F 3 "" H 4700 2950 50  0000 C CNN
	1    4700 2950
	1    0    0    -1  
$EndComp
$Comp
L R R45
U 1 1 59958BFB
P 4900 2950
F 0 "R45" V 4980 2950 50  0000 C CNN
F 1 "10k" V 4900 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4830 2950 50  0001 C CNN
F 3 "" H 4900 2950 50  0000 C CNN
	1    4900 2950
	1    0    0    -1  
$EndComp
Text Label 4800 2200 2    60   ~ 0
PWM1_GD
Text Label 4800 2350 2    60   ~ 0
PWM2_GD
$Comp
L C_Small C55
U 1 1 599596BB
P 5200 1800
F 0 "C55" H 5210 1870 50  0000 L CNN
F 1 "100n" H 5210 1720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5200 1800 50  0001 C CNN
F 3 "" H 5200 1800 50  0000 C CNN
	1    5200 1800
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR081
U 1 1 59959CCF
P 5200 1950
F 0 "#PWR081" H 5200 1750 50  0001 C CNN
F 1 "GNDPWR" H 5200 1820 50  0000 C CNN
F 2 "" H 5200 1900 50  0000 C CNN
F 3 "" H 5200 1900 50  0000 C CNN
	1    5200 1950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C54
U 1 1 5995B075
P 5000 1800
F 0 "C54" H 5010 1870 50  0000 L CNN
F 1 "10u" H 5010 1720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5000 1800 50  0001 C CNN
F 3 "" H 5000 1800 50  0000 C CNN
	1    5000 1800
	1    0    0    -1  
$EndComp
$Comp
L +12V_ISO #PWR082
U 1 1 5995F515
P 5450 1550
F 0 "#PWR082" H 5450 1400 50  0001 C CNN
F 1 "+12V_ISO" H 5450 1690 50  0000 C CNN
F 2 "" H 5450 1550 50  0000 C CNN
F 3 "" H 5450 1550 50  0000 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D13
U 1 1 5996749D
P 6350 2800
F 0 "D13" H 6300 2880 50  0000 L CNN
F 1 "S210F" H 6250 2700 50  0000 L CNN
F 2 "Diodes_SMD:SOD-123" V 6350 2800 50  0001 C CNN
F 3 "" V 6350 2800 50  0000 C CNN
	1    6350 2800
	0    1    1    0   
$EndComp
$Comp
L R R47
U 1 1 5996780D
P 6700 2650
F 0 "R47" V 6780 2650 50  0000 C CNN
F 1 "2.2" V 6700 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6630 2650 50  0001 C CNN
F 3 "" H 6700 2650 50  0000 C CNN
	1    6700 2650
	0    1    1    0   
$EndComp
$Comp
L R R49
U 1 1 59989143
P 9000 3250
F 0 "R49" V 9080 3250 50  0000 C CNN
F 1 "2.2" V 9000 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8930 3250 50  0001 C CNN
F 3 "" H 9000 3250 50  0000 C CNN
	1    9000 3250
	0    -1   1    0   
$EndComp
$Comp
L LM5102 U21
U 1 1 59989149
P 10050 2450
F 0 "U21" H 9800 2050 60  0000 C CNN
F 1 "LM5102" H 10050 2450 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 10050 2400 60  0001 C CNN
F 3 "" H 10050 2400 60  0000 C CNN
	1    10050 2450
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C67
U 1 1 5998914F
P 9150 2500
F 0 "C67" H 9160 2570 50  0000 L CNN
F 1 "1u" H 9160 2420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9150 2500 50  0001 C CNN
F 3 "" H 9150 2500 50  0000 C CNN
	1    9150 2500
	-1   0    0    -1  
$EndComp
$Comp
L R R55
U 1 1 59989155
P 10800 2950
F 0 "R55" V 10880 2950 50  0000 C CNN
F 1 "10k" V 10800 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10730 2950 50  0001 C CNN
F 3 "" H 10800 2950 50  0000 C CNN
	1    10800 2950
	-1   0    0    -1  
$EndComp
$Comp
L R R53
U 1 1 59989161
P 10600 2950
F 0 "R53" V 10680 2950 50  0000 C CNN
F 1 "10k" V 10600 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10530 2950 50  0001 C CNN
F 3 "" H 10600 2950 50  0000 C CNN
	1    10600 2950
	-1   0    0    -1  
$EndComp
Text Label 10700 2200 0    60   ~ 0
PWM3_GD
Text Label 10700 2350 0    60   ~ 0
PWM4_GD
$Comp
L C_Small C70
U 1 1 59989175
P 10300 1800
F 0 "C70" H 10310 1870 50  0000 L CNN
F 1 "100n" H 10310 1720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10300 1800 50  0001 C CNN
F 3 "" H 10300 1800 50  0000 C CNN
	1    10300 1800
	-1   0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR083
U 1 1 5998917B
P 10300 1950
F 0 "#PWR083" H 10300 1750 50  0001 C CNN
F 1 "GNDPWR" H 10300 1820 50  0000 C CNN
F 2 "" H 10300 1900 50  0000 C CNN
F 3 "" H 10300 1900 50  0000 C CNN
	1    10300 1950
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C71
U 1 1 59989181
P 10500 1800
F 0 "C71" H 10510 1870 50  0000 L CNN
F 1 "10u" H 10510 1720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10500 1800 50  0001 C CNN
F 3 "" H 10500 1800 50  0000 C CNN
	1    10500 1800
	-1   0    0    -1  
$EndComp
$Comp
L +12V_ISO #PWR084
U 1 1 59989187
P 10050 1550
F 0 "#PWR084" H 10050 1400 50  0001 C CNN
F 1 "+12V_ISO" H 10050 1690 50  0000 C CNN
F 2 "" H 10050 1550 50  0000 C CNN
F 3 "" H 10050 1550 50  0000 C CNN
	1    10050 1550
	-1   0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D14
U 1 1 599891A5
P 9150 2800
F 0 "D14" H 9100 2880 50  0000 L CNN
F 1 "S210F" H 9050 2700 50  0000 L CNN
F 2 "Diodes_SMD:SOD-123" V 9150 2800 50  0001 C CNN
F 3 "" V 9150 2800 50  0000 C CNN
	1    9150 2800
	0    -1   1    0   
$EndComp
$Comp
L GNDPWR #PWR085
U 1 1 599891AB
P 9150 2950
F 0 "#PWR085" H 9150 2750 50  0001 C CNN
F 1 "GNDPWR" H 9150 2820 50  0000 C CNN
F 2 "" H 9150 2900 50  0000 C CNN
F 3 "" H 9150 2900 50  0000 C CNN
	1    9150 2950
	-1   0    0    -1  
$EndComp
$Comp
L R R48
U 1 1 599891B4
P 8800 2650
F 0 "R48" V 8880 2650 50  0000 C CNN
F 1 "2.2" V 8800 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8730 2650 50  0001 C CNN
F 3 "" H 8800 2650 50  0000 C CNN
	1    8800 2650
	0    -1   1    0   
$EndComp
$Comp
L C C51
U 1 1 5999771A
P 2100 1500
F 0 "C51" H 2125 1600 50  0000 L CNN
F 1 "1.5m" H 2125 1400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D18_L36_P7.5" H 2138 1350 50  0001 C CNN
F 3 "" H 2100 1500 50  0000 C CNN
	1    2100 1500
	1    0    0    -1  
$EndComp
$Comp
L C C52
U 1 1 5999779C
P 2350 1500
F 0 "C52" H 2375 1600 50  0000 L CNN
F 1 "1.5m" H 2375 1400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D18_L36_P7.5" H 2388 1350 50  0001 C CNN
F 3 "" H 2350 1500 50  0000 C CNN
	1    2350 1500
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR086
U 1 1 59967530
P 6350 2950
F 0 "#PWR086" H 6350 2750 50  0001 C CNN
F 1 "GNDPWR" H 6350 2820 50  0000 C CNN
F 2 "" H 6350 2900 50  0000 C CNN
F 3 "" H 6350 2900 50  0000 C CNN
	1    6350 2950
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q5
U 1 1 597582EF
P 3850 3000
F 0 "Q5" H 3900 3350 50  0000 R CNN
F 1 "IRFP4468" H 3900 3250 50  0000 R CNN
F 2 "2kwMotorController:TO-247_Horizontal_Neutral123_MountFromLS_largePads" H 4050 3100 50  0001 C CNN
F 3 "" H 3850 3000 50  0000 C CNN
	1    3850 3000
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q3
U 1 1 597582E1
P 1450 3650
F 0 "Q3" V 1400 3500 50  0000 R CNN
F 1 "IRFP4468" V 1650 3800 50  0000 R CNN
F 2 "2kwMotorController:TO-247_Horizontal_Neutral123_MountFromLS_largePads" H 1650 3750 50  0001 C CNN
F 3 "" H 1450 3650 50  0000 C CNN
	1    1450 3650
	0    -1   -1   0   
$EndComp
Text Notes 8000 950  2    79   ~ 16
H-BRIDGE\n90A MAX\n20 kHz
$Comp
L GNDPWR #PWR087
U 1 1 599BCA83
P 2100 3600
F 0 "#PWR087" H 2100 3400 50  0001 C CNN
F 1 "GNDPWR" H 2100 3470 50  0000 C CNN
F 2 "" H 2100 3550 50  0000 C CNN
F 3 "" H 2100 3550 50  0000 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR088
U 1 1 599D3CAE
P 8100 4400
F 0 "#PWR088" H 8100 4250 50  0001 C CNN
F 1 "+3.3V" H 8100 4540 50  0000 C CNN
F 2 "" H 8100 4400 50  0000 C CNN
F 3 "" H 8100 4400 50  0000 C CNN
	1    8100 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR089
U 1 1 599D3CC0
P 7900 4750
F 0 "#PWR089" H 7900 4500 50  0001 C CNN
F 1 "GND" H 7900 4600 50  0000 C CNN
F 2 "" H 7900 4750 50  0000 C CNN
F 3 "" H 7900 4750 50  0000 C CNN
	1    7900 4750
	1    0    0    -1  
$EndComp
Text Label 9250 5100 0    60   ~ 0
PWM1_GD
Text Label 9250 5200 0    60   ~ 0
PWM2_GD
Text Label 9250 5300 0    60   ~ 0
PWM3_GD
$Comp
L C_Small C63
U 1 1 599D3CC9
P 7900 4600
F 0 "C63" H 7910 4670 50  0000 L CNN
F 1 "100n" H 7910 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7900 4600 50  0001 C CNN
F 3 "" H 7900 4600 50  0000 C CNN
	1    7900 4600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C69
U 1 1 599D3CCF
P 9400 4600
F 0 "C69" H 9410 4670 50  0000 L CNN
F 1 "100n" H 9410 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9400 4600 50  0001 C CNN
F 3 "" H 9400 4600 50  0000 C CNN
	1    9400 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V_ISO #PWR090
U 1 1 599D3CD5
P 9200 4400
F 0 "#PWR090" H 9200 4250 50  0001 C CNN
F 1 "+5V_ISO" H 9200 4540 50  0000 C CNN
F 2 "" H 9200 4400 50  0000 C CNN
F 3 "" H 9200 4400 50  0000 C CNN
	1    9200 4400
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR091
U 1 1 599D3CF4
P 9400 4750
F 0 "#PWR091" H 9400 4550 50  0001 C CNN
F 1 "GNDPWR" H 9400 4620 50  0000 C CNN
F 2 "" H 9400 4700 50  0000 C CNN
F 3 "" H 9400 4700 50  0000 C CNN
	1    9400 4750
	1    0    0    -1  
$EndComp
$Comp
L R R40
U 1 1 599D3D01
P 3900 6850
F 0 "R40" V 3980 6850 50  0000 C CNN
F 1 "10k" V 3900 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3830 6850 50  0001 C CNN
F 3 "" H 3900 6850 50  0000 C CNN
	1    3900 6850
	1    0    0    -1  
$EndComp
$Comp
L R R50
U 1 1 599D3D07
P 10000 5750
F 0 "R50" V 10080 5750 50  0000 C CNN
F 1 "10k" V 10000 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9930 5750 50  0001 C CNN
F 3 "" H 10000 5750 50  0000 C CNN
	1    10000 5750
	1    0    0    -1  
$EndComp
$Comp
L R R51
U 1 1 599D3D0D
P 10200 5750
F 0 "R51" V 10280 5750 50  0000 C CNN
F 1 "10k" V 10200 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10130 5750 50  0001 C CNN
F 3 "" H 10200 5750 50  0000 C CNN
	1    10200 5750
	1    0    0    -1  
$EndComp
$Comp
L R R37
U 1 1 599D525D
P 3700 6850
F 0 "R37" V 3780 6850 50  0000 C CNN
F 1 "10k" V 3700 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3630 6850 50  0001 C CNN
F 3 "" H 3700 6850 50  0000 C CNN
	1    3700 6850
	1    0    0    -1  
$EndComp
Text Label 9250 5400 0    60   ~ 0
PWM4_GD
Text Notes 1100 3350 0    60   ~ 0
Body diode reversed\nfor polarity protection
$Comp
L MIC4127 U17
U 1 1 599EB945
P 4950 4150
F 0 "U17" H 4950 3850 60  0000 C CNN
F 1 "MIC4127" H 4950 4450 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5000 3900 60  0001 C CNN
F 3 "" H 5000 3900 60  0000 C CNN
	1    4950 4150
	-1   0    0    -1  
$EndComp
$Comp
L +12V_ISO #PWR092
U 1 1 59A0BCFD
P 6150 3850
F 0 "#PWR092" H 6150 3700 50  0001 C CNN
F 1 "+12V_ISO" H 6150 3990 50  0000 C CNN
F 2 "" H 6150 3850 50  0000 C CNN
F 3 "" H 6150 3850 50  0000 C CNN
	1    6150 3850
	1    0    0    -1  
$EndComp
$Comp
L C_Small C57
U 1 1 59A0C68A
P 6150 4150
F 0 "C57" H 6160 4220 50  0000 L CNN
F 1 "100n" H 6160 4070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6150 4150 50  0001 C CNN
F 3 "" H 6150 4150 50  0000 C CNN
	1    6150 4150
	1    0    0    -1  
$EndComp
Text Label 5450 4100 0    60   ~ 0
VBUS_DIS_GD
Text Label 5450 4200 0    60   ~ 0
VBUS_ST_GD
$Comp
L R R39
U 1 1 59A124D4
P 3900 4200
F 0 "R39" V 3980 4200 50  0000 C CNN
F 1 "2.2" V 3900 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3830 4200 50  0001 C CNN
F 3 "" H 3900 4200 50  0000 C CNN
	1    3900 4200
	0    1    1    0   
$EndComp
$Comp
L R R42
U 1 1 59A12613
P 4300 4100
F 0 "R42" V 4380 4100 50  0000 C CNN
F 1 "2.2" V 4300 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4230 4100 50  0001 C CNN
F 3 "" H 4300 4100 50  0000 C CNN
	1    4300 4100
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR093
U 1 1 59A194F2
P 5450 3600
F 0 "#PWR093" H 5450 3400 50  0001 C CNN
F 1 "GNDPWR" H 5450 3470 50  0000 C CNN
F 2 "" H 5450 3550 50  0000 C CNN
F 3 "" H 5450 3550 50  0000 C CNN
	1    5450 3600
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR094
U 1 1 59A199E4
P 10050 3600
F 0 "#PWR094" H 10050 3400 50  0001 C CNN
F 1 "GNDPWR" H 10050 3470 50  0000 C CNN
F 2 "" H 10050 3550 50  0000 C CNN
F 3 "" H 10050 3550 50  0000 C CNN
	1    10050 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR095
U 1 1 59A2238F
P 8100 5950
F 0 "#PWR095" H 8100 5700 50  0001 C CNN
F 1 "GND" H 8100 5800 50  0000 C CNN
F 2 "" H 8100 5950 50  0000 C CNN
F 3 "" H 8100 5950 50  0000 C CNN
	1    8100 5950
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR096
U 1 1 59A24543
P 9200 6000
F 0 "#PWR096" H 9200 5800 50  0001 C CNN
F 1 "GNDPWR" H 9200 5870 50  0000 C CNN
F 2 "" H 9200 5950 50  0000 C CNN
F 3 "" H 9200 5950 50  0000 C CNN
	1    9200 6000
	1    0    0    -1  
$EndComp
$Comp
L R R52
U 1 1 59A2EED2
P 10400 5750
F 0 "R52" V 10480 5750 50  0000 C CNN
F 1 "10k" V 10400 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10330 5750 50  0001 C CNN
F 3 "" H 10400 5750 50  0000 C CNN
	1    10400 5750
	1    0    0    -1  
$EndComp
$Comp
L R R54
U 1 1 59A2EED8
P 10600 5750
F 0 "R54" V 10680 5750 50  0000 C CNN
F 1 "10k" V 10600 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10530 5750 50  0001 C CNN
F 3 "" H 10600 5750 50  0000 C CNN
	1    10600 5750
	1    0    0    -1  
$EndComp
Text Label 2950 6500 0    60   ~ 0
VBUS_DIS_GD
Text Label 2950 6600 0    60   ~ 0
VBUS_EN_GD
Text Notes 1250 2100 0    60   ~ 0
INRUSH CURRENT\nLIMITER
Text HLabel 7600 2700 3    60   BiDi ~ 0
I_SENSE+
Text HLabel 7850 2700 3    60   BiDi ~ 0
I_SENSE-
Text HLabel 9600 1200 2    60   Output ~ 0
VBUS
$Comp
L GNDMBAT #PWR097
U 1 1 59C09326
P 1000 3600
F 0 "#PWR097" H 1000 3350 50  0001 C CNN
F 1 "GNDMBAT" H 1000 3450 50  0000 C CNN
F 2 "" H 1000 3600 50  0000 C CNN
F 3 "" H 1000 3600 50  0000 C CNN
	1    1000 3600
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q4
U 1 1 59C7B948
P 2450 2550
F 0 "Q4" V 2400 2350 50  0000 R CNN
F 1 "DMT10H010LK3" H 2500 2800 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2Lead" H 2650 2650 50  0001 C CNN
F 3 "" H 2450 2550 50  0000 C CNN
	1    2450 2550
	-1   0    0    -1  
$EndComp
$Comp
L MIC4127 U18
U 1 1 59CA0DB1
P 4950 5000
F 0 "U18" H 4950 4700 60  0000 C CNN
F 1 "MIC4127" H 4950 5300 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5000 4750 60  0001 C CNN
F 3 "" H 5000 4750 60  0000 C CNN
	1    4950 5000
	-1   0    0    -1  
$EndComp
$Comp
L +12V_ISO #PWR098
U 1 1 59CA0DB7
P 6150 4700
F 0 "#PWR098" H 6150 4550 50  0001 C CNN
F 1 "+12V_ISO" H 6150 4840 50  0000 C CNN
F 2 "" H 6150 4700 50  0000 C CNN
F 3 "" H 6150 4700 50  0000 C CNN
	1    6150 4700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C58
U 1 1 59CA0DBD
P 6150 5000
F 0 "C58" H 6160 5070 50  0000 L CNN
F 1 "100n" H 6160 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6150 5000 50  0001 C CNN
F 3 "" H 6150 5000 50  0000 C CNN
	1    6150 5000
	1    0    0    -1  
$EndComp
Text Label 5450 4950 0    60   ~ 0
VBUS_EN_GD
$Comp
L R R43
U 1 1 59CA0DCB
P 4300 4950
F 0 "R43" V 4380 4950 50  0000 C CNN
F 1 "2.2" V 4300 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4230 4950 50  0001 C CNN
F 3 "" H 4300 4950 50  0000 C CNN
	1    4300 4950
	0    1    1    0   
$EndComp
NoConn ~ 4500 5050
$Comp
L C C68
U 1 1 59CCF014
P 9400 1450
F 0 "C68" H 9425 1550 50  0000 L CNN
F 1 "1u" H 9425 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9438 1300 50  0001 C CNN
F 3 "" H 9400 1450 50  0000 C CNN
	1    9400 1450
	1    0    0    -1  
$EndComp
Text Notes 2150 2050 0    60   ~ 0
4A MAX RIPPLE\nCURRENT
$Comp
L DHS-B10680-04A H1
U 1 1 59BAA271
P 7750 1750
F 0 "H1" H 7750 1500 60  0000 C CNN
F 1 "DHS-B10680-04A" H 7750 2000 60  0000 C CNN
F 2 "2kwMotorController:DHS-B10680-04A" H 7750 1750 60  0001 C CNN
F 3 "" H 7750 1750 60  0000 C CNN
	1    7750 1750
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W7
U 1 1 59BA48A2
P 10600 4900
F 0 "W7" H 10600 5170 50  0000 C CNN
F 1 "TEST_1P" H 10600 5100 50  0000 C CNN
F 2 "" H 10800 4900 50  0001 C CNN
F 3 "" H 10800 4900 50  0000 C CNN
	1    10600 4900
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W6
U 1 1 59BA5D9B
P 10400 5050
F 0 "W6" H 10400 5320 50  0000 C CNN
F 1 "TEST_1P" H 10400 5250 50  0000 C CNN
F 2 "" H 10600 5050 50  0001 C CNN
F 3 "" H 10600 5050 50  0000 C CNN
	1    10400 5050
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W5
U 1 1 59BA5E5C
P 10200 4900
F 0 "W5" H 10200 5170 50  0000 C CNN
F 1 "TEST_1P" H 10200 5100 50  0000 C CNN
F 2 "" H 10400 4900 50  0001 C CNN
F 3 "" H 10400 4900 50  0000 C CNN
	1    10200 4900
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W4
U 1 1 59BA5F1C
P 10000 5050
F 0 "W4" H 10000 5320 50  0000 C CNN
F 1 "TEST_1P" H 10000 5250 50  0000 C CNN
F 2 "" H 10200 5050 50  0001 C CNN
F 3 "" H 10200 5050 50  0000 C CNN
	1    10000 5050
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR099
U 1 1 59BAB965
P 2900 7250
F 0 "#PWR099" H 2900 7050 50  0001 C CNN
F 1 "GNDPWR" H 2900 7120 50  0000 C CNN
F 2 "" H 2900 7200 50  0000 C CNN
F 3 "" H 2900 7200 50  0000 C CNN
	1    2900 7250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0100
U 1 1 59BAD34A
P 1750 7250
F 0 "#PWR0100" H 1750 7000 50  0001 C CNN
F 1 "GND" H 1750 7100 50  0000 C CNN
F 2 "" H 1750 7250 50  0000 C CNN
F 3 "" H 1750 7250 50  0000 C CNN
	1    1750 7250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0101
U 1 1 59BAFE13
P 1800 5700
F 0 "#PWR0101" H 1800 5550 50  0001 C CNN
F 1 "+3.3V" H 1800 5840 50  0000 C CNN
F 2 "" H 1800 5700 50  0000 C CNN
F 3 "" H 1800 5700 50  0000 C CNN
	1    1800 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0102
U 1 1 59BAFE19
P 1600 6050
F 0 "#PWR0102" H 1600 5800 50  0001 C CNN
F 1 "GND" H 1600 5900 50  0000 C CNN
F 2 "" H 1600 6050 50  0000 C CNN
F 3 "" H 1600 6050 50  0000 C CNN
	1    1600 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C50
U 1 1 59BAFE1F
P 1600 5900
F 0 "C50" H 1610 5970 50  0000 L CNN
F 1 "100n" H 1610 5820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1600 5900 50  0001 C CNN
F 3 "" H 1600 5900 50  0000 C CNN
	1    1600 5900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C53
U 1 1 59BB1215
P 3100 5900
F 0 "C53" H 3110 5970 50  0000 L CNN
F 1 "100n" H 3110 5820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3100 5900 50  0001 C CNN
F 3 "" H 3100 5900 50  0000 C CNN
	1    3100 5900
	1    0    0    -1  
$EndComp
$Comp
L +5V_ISO #PWR0103
U 1 1 59BB121B
P 2900 5700
F 0 "#PWR0103" H 2900 5550 50  0001 C CNN
F 1 "+5V_ISO" H 2900 5840 50  0000 C CNN
F 2 "" H 2900 5700 50  0000 C CNN
F 3 "" H 2900 5700 50  0000 C CNN
	1    2900 5700
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR0104
U 1 1 59BB1221
P 3100 6050
F 0 "#PWR0104" H 3100 5850 50  0001 C CNN
F 1 "GNDPWR" H 3100 5920 50  0000 C CNN
F 2 "" H 3100 6000 50  0000 C CNN
F 3 "" H 3100 6000 50  0000 C CNN
	1    3100 6050
	1    0    0    -1  
$EndComp
$Comp
L R R41
U 1 1 59BB9843
P 4100 6850
F 0 "R41" V 4180 6850 50  0000 C CNN
F 1 "10k" V 4100 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4030 6850 50  0001 C CNN
F 3 "" H 4100 6850 50  0000 C CNN
	1    4100 6850
	1    0    0    -1  
$EndComp
Text Label 2950 6400 0    60   ~ 0
VBUS_ST_GD
Text HLabel 1750 6400 0    59   Input ~ 0
VBUS_ST_MCU
$Comp
L TEST_1P W1
U 1 1 59BBD9FC
P 3700 6350
F 0 "W1" H 3700 6620 50  0000 C CNN
F 1 "TEST_1P" H 3700 6550 50  0000 C CNN
F 2 "" H 3900 6350 50  0001 C CNN
F 3 "" H 3900 6350 50  0000 C CNN
	1    3700 6350
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 59BBDE4A
P 3900 6200
F 0 "W2" H 3900 6470 50  0000 C CNN
F 1 "TEST_1P" H 3900 6400 50  0000 C CNN
F 2 "" H 4100 6200 50  0001 C CNN
F 3 "" H 4100 6200 50  0000 C CNN
	1    3900 6200
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W3
U 1 1 59BBDF1F
P 4100 6350
F 0 "W3" H 4100 6620 50  0000 C CNN
F 1 "TEST_1P" H 4100 6550 50  0000 C CNN
F 2 "" H 4300 6350 50  0001 C CNN
F 3 "" H 4300 6350 50  0000 C CNN
	1    4100 6350
	1    0    0    -1  
$EndComp
NoConn ~ 2850 6700
Wire Wire Line
	7000 2400 7000 3050
Wire Wire Line
	8500 2400 8500 3050
Wire Wire Line
	7850 2650 8050 2650
Connection ~ 8500 2650
Connection ~ 7000 2650
Wire Wire Line
	7000 3550 7000 3450
Wire Wire Line
	8500 3550 8500 3450
Wire Wire Line
	7000 1200 7000 2000
Wire Wire Line
	8500 1200 8500 2000
Wire Wire Line
	7800 3550 7800 3600
Connection ~ 7800 3550
Wire Wire Line
	6000 2200 6700 2200
Wire Wire Line
	1050 1300 1100 1300
Wire Wire Line
	1100 1300 1100 3550
Wire Wire Line
	3750 3550 3750 3200
Wire Wire Line
	3750 2800 3750 1900
Wire Wire Line
	3750 1200 3750 1600
Connection ~ 1100 3550
Wire Wire Line
	1000 3550 1250 3550
Wire Wire Line
	8050 5100 8150 5100
Wire Wire Line
	8150 5200 8050 5200
Wire Wire Line
	8050 5300 8150 5300
Wire Wire Line
	8150 5400 8050 5400
Wire Wire Line
	1750 6500 1850 6500
Wire Wire Line
	1850 6600 1750 6600
Wire Wire Line
	5450 1550 5450 1950
Wire Wire Line
	4900 2200 4800 2200
Wire Wire Line
	4800 2350 4900 2350
Wire Wire Line
	4900 2550 4700 2550
Wire Wire Line
	4900 3550 4900 3100
Wire Wire Line
	4700 3550 4700 3100
Wire Wire Line
	4700 2550 4700 2800
Wire Wire Line
	4900 2800 4900 2700
Wire Wire Line
	6350 5200 6350 3550
Wire Wire Line
	5450 2950 5450 3600
Wire Wire Line
	5000 1650 5450 1650
Wire Wire Line
	5200 1700 5200 1650
Connection ~ 5450 1650
Wire Wire Line
	5000 1700 5000 1650
Connection ~ 5200 1650
Wire Wire Line
	5200 1950 5200 1900
Connection ~ 5000 1650
Wire Wire Line
	5000 1950 5200 1950
Wire Wire Line
	5000 1900 5000 1950
Connection ~ 5000 1950
Wire Wire Line
	8400 2650 8650 2650
Wire Wire Line
	6350 2950 6350 2900
Wire Wire Line
	6350 2600 6350 2700
Wire Wire Line
	6850 2650 7600 2650
Wire Wire Line
	6000 2350 6350 2350
Wire Wire Line
	6350 2350 6350 2400
Wire Wire Line
	6150 2650 6550 2650
Connection ~ 6350 2650
Wire Wire Line
	6000 2700 6050 2700
Wire Wire Line
	6000 2550 6150 2550
Wire Wire Line
	6150 2550 6150 2650
Wire Wire Line
	8850 3250 8800 3250
Wire Wire Line
	9500 2200 8800 2200
Wire Wire Line
	9450 3250 9150 3250
Wire Wire Line
	10050 1550 10050 1950
Wire Wire Line
	10600 2200 10700 2200
Wire Wire Line
	10700 2350 10600 2350
Wire Wire Line
	10600 2550 10800 2550
Wire Wire Line
	10600 3550 10600 3100
Wire Wire Line
	10800 3550 10800 3100
Wire Wire Line
	10800 2550 10800 2800
Wire Wire Line
	10600 2800 10600 2700
Wire Wire Line
	10050 2950 10050 3600
Wire Wire Line
	10050 1650 10500 1650
Wire Wire Line
	10300 1700 10300 1650
Connection ~ 10050 1650
Wire Wire Line
	10500 1650 10500 1700
Connection ~ 10300 1650
Wire Wire Line
	10300 1950 10300 1900
Connection ~ 10500 1650
Wire Wire Line
	10500 1950 10300 1950
Wire Wire Line
	10500 1900 10500 1950
Connection ~ 10500 1950
Wire Wire Line
	9150 2950 9150 2900
Wire Wire Line
	9150 2600 9150 2700
Wire Wire Line
	9500 2350 9150 2350
Wire Wire Line
	9150 2350 9150 2400
Wire Wire Line
	8950 2650 9350 2650
Connection ~ 9150 2650
Wire Wire Line
	9500 2700 9450 2700
Wire Wire Line
	9450 2700 9450 3250
Wire Wire Line
	9500 2550 9350 2550
Wire Wire Line
	9350 2550 9350 2650
Connection ~ 7000 3550
Connection ~ 7000 1200
Wire Wire Line
	2350 1200 2350 1350
Wire Wire Line
	2100 1200 2100 1350
Wire Wire Line
	2100 1650 2100 2250
Connection ~ 2100 1750
Connection ~ 5450 3550
Connection ~ 4700 3550
Connection ~ 4900 3550
Connection ~ 8500 3550
Connection ~ 10050 3550
Connection ~ 10600 3550
Connection ~ 10800 3550
Wire Wire Line
	1650 3550 10800 3550
Wire Wire Line
	6050 2700 6050 3250
Wire Wire Line
	6650 3250 6700 3250
Wire Wire Line
	6050 3250 6350 3250
Connection ~ 2100 1200
Wire Wire Line
	8100 4400 8100 4850
Wire Wire Line
	9200 5950 10600 5950
Wire Wire Line
	8100 4850 8150 4850
Wire Wire Line
	8100 4450 7900 4450
Connection ~ 8100 4450
Wire Wire Line
	7900 4750 7900 4750
Wire Wire Line
	9400 4700 9400 4750
Wire Wire Line
	9200 4400 9200 4850
Connection ~ 9200 4450
Wire Wire Line
	9150 5100 10600 5100
Wire Wire Line
	9150 5200 10400 5200
Wire Wire Line
	9150 5300 10200 5300
Wire Wire Line
	7900 4750 7900 4700
Wire Wire Line
	7900 4450 7900 4500
Wire Wire Line
	9400 4450 9400 4500
Wire Wire Line
	10200 5950 10200 5900
Wire Wire Line
	10000 5900 10000 5950
Connection ~ 10000 5950
Connection ~ 3750 3550
Connection ~ 3750 1200
Wire Wire Line
	5400 4350 6350 4350
Wire Wire Line
	5400 3950 6150 3950
Wire Wire Line
	6150 3850 6150 4050
Wire Wire Line
	6150 4250 6150 4350
Wire Wire Line
	5400 4100 5450 4100
Wire Wire Line
	5400 4200 5450 4200
Connection ~ 6150 4350
Wire Wire Line
	4050 3000 4100 3000
Wire Wire Line
	4100 3000 4100 4100
Connection ~ 6350 3550
Wire Wire Line
	4450 4100 4500 4100
Wire Wire Line
	4100 4100 4150 4100
Wire Wire Line
	4500 4200 4050 4200
Connection ~ 6150 3950
Wire Wire Line
	8100 5650 8100 5950
Wire Wire Line
	2850 6600 3700 6600
Connection ~ 9200 5950
Wire Wire Line
	9200 4850 9150 4850
Wire Wire Line
	9200 5650 9200 6000
Wire Wire Line
	2850 6500 3900 6500
Wire Wire Line
	3900 6200 3900 6700
Wire Wire Line
	9150 5400 10000 5400
Wire Wire Line
	10000 5050 10000 5600
Wire Wire Line
	10400 5950 10400 5900
Connection ~ 10200 5950
Wire Wire Line
	10600 5950 10600 5900
Connection ~ 10400 5950
Wire Wire Line
	10200 4900 10200 5600
Wire Wire Line
	10400 5050 10400 5600
Wire Wire Line
	10600 4900 10600 5600
Wire Wire Line
	7600 2650 7600 2700
Wire Wire Line
	7850 2700 7850 2650
Connection ~ 8500 1200
Wire Wire Line
	1000 3600 1000 3550
Wire Wire Line
	2350 2150 2350 2350
Wire Wire Line
	5400 5200 6350 5200
Wire Wire Line
	5400 4800 6150 4800
Wire Wire Line
	6150 4700 6150 4900
Wire Wire Line
	6150 5100 6150 5200
Wire Wire Line
	5400 4950 5450 4950
Wire Wire Line
	5400 5050 5450 5050
Connection ~ 6150 5200
Wire Wire Line
	4450 4950 4500 4950
Wire Wire Line
	1450 4950 4150 4950
Connection ~ 6150 4800
Connection ~ 6350 4350
Wire Wire Line
	1450 4950 1450 3850
Wire Wire Line
	5450 5050 5450 5200
Connection ~ 5450 5200
Wire Wire Line
	2100 2150 2350 2150
Wire Wire Line
	2100 2750 2100 3600
Connection ~ 2100 3550
Wire Wire Line
	2350 2750 2350 2850
Wire Wire Line
	2350 2850 2100 2850
Connection ~ 2100 2850
Wire Wire Line
	2650 2550 2750 2550
Connection ~ 2100 2150
Wire Wire Line
	9400 1200 9400 1300
Connection ~ 9400 1200
Wire Wire Line
	8650 1200 8650 1300
Connection ~ 8650 1200
Wire Wire Line
	8900 1200 8900 1300
Connection ~ 8900 1200
Wire Wire Line
	9150 1200 9150 1300
Connection ~ 9150 1200
Wire Wire Line
	8650 1600 8650 1700
Wire Wire Line
	8650 1700 9400 1700
Connection ~ 9400 1700
Wire Wire Line
	9150 1600 9150 1700
Connection ~ 9150 1700
Wire Wire Line
	8900 1600 8900 1700
Connection ~ 8900 1700
Wire Wire Line
	2100 1750 2350 1750
Wire Wire Line
	9150 5650 9200 5650
Wire Wire Line
	9150 5750 9200 5750
Connection ~ 9200 5750
Wire Wire Line
	8100 5750 8150 5750
Wire Wire Line
	8150 5650 8100 5650
Connection ~ 8100 5750
Wire Wire Line
	2850 7050 2900 7050
Wire Wire Line
	2850 6950 2900 6950
Wire Wire Line
	2900 6950 2900 7250
Connection ~ 2900 7050
Wire Wire Line
	1750 6700 1750 7250
Wire Wire Line
	1750 6950 1850 6950
Wire Wire Line
	1850 7050 1750 7050
Connection ~ 1750 7050
Wire Wire Line
	1800 5700 1800 6150
Wire Wire Line
	1800 6150 1850 6150
Wire Wire Line
	1800 5750 1600 5750
Connection ~ 1800 5750
Wire Wire Line
	1600 6050 1600 6050
Wire Wire Line
	1600 6050 1600 6000
Wire Wire Line
	1600 5750 1600 5800
Wire Wire Line
	3100 6000 3100 6050
Wire Wire Line
	2900 5700 2900 6150
Connection ~ 2900 5750
Wire Wire Line
	3100 5750 3100 5800
Wire Wire Line
	2900 6150 2850 6150
Wire Wire Line
	3700 6350 3700 6700
Wire Wire Line
	3700 7000 3700 7150
Wire Wire Line
	2900 7150 4100 7150
Wire Wire Line
	3900 7000 3900 7150
Connection ~ 2900 7150
Connection ~ 3700 7150
Wire Wire Line
	2850 6400 4100 6400
Wire Wire Line
	4100 6350 4100 6700
Wire Wire Line
	4100 7150 4100 7000
Connection ~ 3900 7150
Wire Wire Line
	1750 6400 1850 6400
Connection ~ 10000 5400
Connection ~ 10400 5200
Connection ~ 10200 5300
Connection ~ 10600 5100
Wire Wire Line
	1850 6700 1750 6700
Connection ~ 1750 6950
Connection ~ 3700 6600
Connection ~ 3900 6500
Connection ~ 4100 6400
Wire Wire Line
	2750 4200 3750 4200
Wire Wire Line
	2750 2550 2750 4200
Text Label 3750 2500 1    60   ~ 0
BRAKE
$Comp
L Si8045AA U16
U 1 1 59BCA1D5
P 2350 6550
F 0 "U16" H 2350 5950 60  0000 C CNN
F 1 "Si8045AA" H 2350 7050 60  0000 C CNN
F 2 "Housings_SSOP:QSOP-16_3.9x4.9mm_Pitch0.635mm" H 2350 6350 60  0001 C CNN
F 3 "" H 2350 6350 60  0000 C CNN
	1    2350 6550
	1    0    0    -1  
$EndComp
$Comp
L Si8045AA U20
U 1 1 59BCAF3D
P 8650 5250
F 0 "U20" H 8650 4650 60  0000 C CNN
F 1 "Si8045AA" H 8650 5750 60  0000 C CNN
F 2 "Housings_SSOP:QSOP-16_3.9x4.9mm_Pitch0.635mm" H 8650 5050 60  0001 C CNN
F 3 "" H 8650 5050 60  0000 C CNN
	1    8650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4450 9200 4450
Wire Wire Line
	3100 5750 2900 5750
$Comp
L C C64
U 1 1 59BEF87D
P 8650 1450
F 0 "C64" H 8675 1550 50  0000 L CNN
F 1 "1u" H 8675 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8688 1300 50  0001 C CNN
F 3 "" H 8650 1450 50  0000 C CNN
	1    8650 1450
	1    0    0    -1  
$EndComp
$Comp
L C C65
U 1 1 59BEF958
P 8900 1450
F 0 "C65" H 8925 1550 50  0000 L CNN
F 1 "1u" H 8925 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8938 1300 50  0001 C CNN
F 3 "" H 8900 1450 50  0000 C CNN
	1    8900 1450
	1    0    0    -1  
$EndComp
$Comp
L C C66
U 1 1 59BEFA26
P 9150 1450
F 0 "C66" H 9175 1550 50  0000 L CNN
F 1 "1u" H 9175 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9188 1300 50  0001 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1200 9600 1200
Wire Wire Line
	9400 1600 9400 1750
$Comp
L GNDPWR #PWR0105
U 1 1 59BF5AC7
P 9400 1750
F 0 "#PWR0105" H 9400 1550 50  0001 C CNN
F 1 "GNDPWR" H 9400 1620 50  0000 C CNN
F 2 "" H 9400 1700 50  0000 C CNN
F 3 "" H 9400 1700 50  0000 C CNN
	1    9400 1750
	1    0    0    -1  
$EndComp
$Comp
L C C62
U 1 1 59BF8ACB
P 6800 1450
F 0 "C62" H 6825 1550 50  0000 L CNN
F 1 "1u" H 6825 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6838 1300 50  0001 C CNN
F 3 "" H 6800 1450 50  0000 C CNN
	1    6800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1300 6800 1200
Wire Wire Line
	6050 1300 6050 1200
Wire Wire Line
	6300 1300 6300 1200
Wire Wire Line
	6550 1300 6550 1200
Wire Wire Line
	6050 1600 6050 1700
Wire Wire Line
	6050 1700 6800 1700
Connection ~ 6800 1700
Wire Wire Line
	6550 1600 6550 1700
Connection ~ 6550 1700
Wire Wire Line
	6300 1600 6300 1700
Connection ~ 6300 1700
$Comp
L C C56
U 1 1 59BF8ADC
P 6050 1450
F 0 "C56" H 6075 1550 50  0000 L CNN
F 1 "1u" H 6075 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6088 1300 50  0001 C CNN
F 3 "" H 6050 1450 50  0000 C CNN
	1    6050 1450
	1    0    0    -1  
$EndComp
$Comp
L C C59
U 1 1 59BF8AE2
P 6300 1450
F 0 "C59" H 6325 1550 50  0000 L CNN
F 1 "1u" H 6325 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6338 1300 50  0001 C CNN
F 3 "" H 6300 1450 50  0000 C CNN
	1    6300 1450
	1    0    0    -1  
$EndComp
$Comp
L C C61
U 1 1 59BF8AE8
P 6550 1450
F 0 "C61" H 6575 1550 50  0000 L CNN
F 1 "1u" H 6575 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6588 1300 50  0001 C CNN
F 3 "" H 6550 1450 50  0000 C CNN
	1    6550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1600 6800 1750
$Comp
L GNDPWR #PWR0106
U 1 1 59BF8AEF
P 6800 1750
F 0 "#PWR0106" H 6800 1550 50  0001 C CNN
F 1 "GNDPWR" H 6800 1620 50  0000 C CNN
F 2 "" H 6800 1700 50  0000 C CNN
F 3 "" H 6800 1700 50  0000 C CNN
	1    6800 1750
	1    0    0    -1  
$EndComp
Connection ~ 6800 1200
Connection ~ 6550 1200
Connection ~ 6300 1200
Connection ~ 6050 1200
Wire Wire Line
	2350 1750 2350 1650
Connection ~ 2350 1200
$EndSCHEMATC
