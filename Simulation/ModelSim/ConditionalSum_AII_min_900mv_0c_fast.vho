-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/20/2026 23:16:42"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	S : OUT std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \S[32]~output_o\ : std_logic;
SIGNAL \S[33]~output_o\ : std_logic;
SIGNAL \S[34]~output_o\ : std_logic;
SIGNAL \S[35]~output_o\ : std_logic;
SIGNAL \S[36]~output_o\ : std_logic;
SIGNAL \S[37]~output_o\ : std_logic;
SIGNAL \S[38]~output_o\ : std_logic;
SIGNAL \S[39]~output_o\ : std_logic;
SIGNAL \S[40]~output_o\ : std_logic;
SIGNAL \S[41]~output_o\ : std_logic;
SIGNAL \S[42]~output_o\ : std_logic;
SIGNAL \S[43]~output_o\ : std_logic;
SIGNAL \S[44]~output_o\ : std_logic;
SIGNAL \S[45]~output_o\ : std_logic;
SIGNAL \S[46]~output_o\ : std_logic;
SIGNAL \S[47]~output_o\ : std_logic;
SIGNAL \S[48]~output_o\ : std_logic;
SIGNAL \S[49]~output_o\ : std_logic;
SIGNAL \S[50]~output_o\ : std_logic;
SIGNAL \S[51]~output_o\ : std_logic;
SIGNAL \S[52]~output_o\ : std_logic;
SIGNAL \S[53]~output_o\ : std_logic;
SIGNAL \S[54]~output_o\ : std_logic;
SIGNAL \S[55]~output_o\ : std_logic;
SIGNAL \S[56]~output_o\ : std_logic;
SIGNAL \S[57]~output_o\ : std_logic;
SIGNAL \S[58]~output_o\ : std_logic;
SIGNAL \S[59]~output_o\ : std_logic;
SIGNAL \S[60]~output_o\ : std_logic;
SIGNAL \S[61]~output_o\ : std_logic;
SIGNAL \S[62]~output_o\ : std_logic;
SIGNAL \S[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[2]~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[4]~1_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[6]~2DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[6]~3_combout\ : std_logic;
SIGNAL \c[6]~4_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[8]~5_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[6]~2_combout\ : std_logic;
SIGNAL \c[10]~6_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[12]~7_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[14]~8_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[16]~10_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[16]~9DUPLICATE_combout\ : std_logic;
SIGNAL \c[16]~11_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[18]~12_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[16]~9_combout\ : std_logic;
SIGNAL \c[20]~13_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[22]~14_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[24]~15_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \c[26]~16_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[26]~17DUPLICATE_combout\ : std_logic;
SIGNAL \c[26]~18_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[28]~19_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[26]~17_combout\ : std_logic;
SIGNAL \c[26]~16DUPLICATE_combout\ : std_logic;
SIGNAL \c[30]~20DUPLICATE_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[32]~21_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[34]~22_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[30]~20_combout\ : std_logic;
SIGNAL \c[36]~23_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[36]~24_combout\ : std_logic;
SIGNAL \c[36]~25_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[38]~26_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[40]~27_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[42]~28_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[44]~29_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[46]~31DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[46]~30_combout\ : std_logic;
SIGNAL \c[46]~32_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[46]~31_combout\ : std_logic;
SIGNAL \c[48]~33_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[46]~30DUPLICATE_combout\ : std_logic;
SIGNAL \c[50]~34_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \c[54]~35_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[56]~36DUPLICATE_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \c[56]~37_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \c[56]~36_combout\ : std_logic;
SIGNAL \c[56]~37DUPLICATE_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \c[58]~38_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c[60]~39_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ : std_logic;
SIGNAL \c~40_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[56]~37DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[56]~36DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[46]~31DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[46]~30DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[30]~20DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~17DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~16DUPLICATE_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[16]~9DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~2DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[48]~33_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[46]~32_combout\ : std_logic;
SIGNAL \ALT_INV_c[46]~31_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[46]~30_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[44]~29_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[42]~28_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[40]~27_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[38]~26_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[36]~25_combout\ : std_logic;
SIGNAL \ALT_INV_c[36]~24_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[36]~23_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[34]~22_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[32]~21_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[30]~20_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[28]~19_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~18_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~17_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~16_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[24]~15_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[22]~14_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[20]~13_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[18]~12_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[16]~11_combout\ : std_logic;
SIGNAL \ALT_INV_c[16]~10_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[16]~9_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[14]~8_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[12]~7_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[10]~6_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[8]~5_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~4_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~3_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~2_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[4]~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[2]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_c~40_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[60]~39_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[58]~38_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[56]~37_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[56]~36_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[54]~35_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[50]~34_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
ww_Cin <= Cin;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_c[56]~37DUPLICATE_combout\ <= NOT \c[56]~37DUPLICATE_combout\;
\ALT_INV_c[56]~36DUPLICATE_combout\ <= NOT \c[56]~36DUPLICATE_combout\;
\ALT_INV_c[46]~31DUPLICATE_combout\ <= NOT \c[46]~31DUPLICATE_combout\;
\ALT_INV_c[46]~30DUPLICATE_combout\ <= NOT \c[46]~30DUPLICATE_combout\;
\ALT_INV_c[30]~20DUPLICATE_combout\ <= NOT \c[30]~20DUPLICATE_combout\;
\ALT_INV_c[26]~17DUPLICATE_combout\ <= NOT \c[26]~17DUPLICATE_combout\;
\ALT_INV_c[26]~16DUPLICATE_combout\ <= NOT \c[26]~16DUPLICATE_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\;
\ALT_INV_c[16]~9DUPLICATE_combout\ <= NOT \c[16]~9DUPLICATE_combout\;
\ALT_INV_c[6]~2DUPLICATE_combout\ <= NOT \c[6]~2DUPLICATE_combout\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_c[48]~33_combout\ <= NOT \c[48]~33_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[46]~32_combout\ <= NOT \c[46]~32_combout\;
\ALT_INV_c[46]~31_combout\ <= NOT \c[46]~31_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\ALT_INV_c[46]~30_combout\ <= NOT \c[46]~30_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[44]~29_combout\ <= NOT \c[44]~29_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[42]~28_combout\ <= NOT \c[42]~28_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[40]~27_combout\ <= NOT \c[40]~27_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[38]~26_combout\ <= NOT \c[38]~26_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[36]~25_combout\ <= NOT \c[36]~25_combout\;
\ALT_INV_c[36]~24_combout\ <= NOT \c[36]~24_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\ALT_INV_c[36]~23_combout\ <= NOT \c[36]~23_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[34]~22_combout\ <= NOT \c[34]~22_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[32]~21_combout\ <= NOT \c[32]~21_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[30]~20_combout\ <= NOT \c[30]~20_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[28]~19_combout\ <= NOT \c[28]~19_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[26]~18_combout\ <= NOT \c[26]~18_combout\;
\ALT_INV_c[26]~17_combout\ <= NOT \c[26]~17_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\ALT_INV_c[26]~16_combout\ <= NOT \c[26]~16_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[24]~15_combout\ <= NOT \c[24]~15_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[22]~14_combout\ <= NOT \c[22]~14_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[20]~13_combout\ <= NOT \c[20]~13_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[18]~12_combout\ <= NOT \c[18]~12_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[16]~11_combout\ <= NOT \c[16]~11_combout\;
\ALT_INV_c[16]~10_combout\ <= NOT \c[16]~10_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\ALT_INV_c[16]~9_combout\ <= NOT \c[16]~9_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[14]~8_combout\ <= NOT \c[14]~8_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[12]~7_combout\ <= NOT \c[12]~7_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[10]~6_combout\ <= NOT \c[10]~6_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[8]~5_combout\ <= NOT \c[8]~5_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[6]~4_combout\ <= NOT \c[6]~4_combout\;
\ALT_INV_c[6]~3_combout\ <= NOT \c[6]~3_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\ALT_INV_c[6]~2_combout\ <= NOT \c[6]~2_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[4]~1_combout\ <= NOT \c[4]~1_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[2]~0_combout\ <= NOT \c[2]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_c~40_combout\ <= NOT \c~40_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[60]~39_combout\ <= NOT \c[60]~39_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[58]~38_combout\ <= NOT \c[58]~38_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;
\ALT_INV_c[56]~37_combout\ <= NOT \c[56]~37_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\;
\ALT_INV_c[56]~36_combout\ <= NOT \c[56]~36_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[54]~35_combout\ <= NOT \c[54]~35_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\;
\ALT_INV_c[50]~34_combout\ <= NOT \c[50]~34_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\;

-- Location: IOOBUF_X59_Y48_N67
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N5
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X59_Y48_N98
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N36
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X59_Y39_N67
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N98
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X59_Y4_N98
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y46_N2
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y28_N98
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X59_Y26_N33
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X32_Y0_N67
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X59_Y39_N5
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X59_Y31_N67
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X59_Y31_N2
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X59_Y31_N36
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X41_Y0_N98
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X56_Y0_N33
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X39_Y0_N67
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X37_Y0_N67
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X55_Y0_N5
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X37_Y0_N36
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X59_Y4_N36
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X47_Y0_N67
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X47_Y0_N98
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X59_Y21_N98
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X59_Y23_N2
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y23_N67
\S[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X59_Y22_N36
\S[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X59_Y21_N33
\S[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\S[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X33_Y0_N33
\S[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\S[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\S[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X33_Y0_N98
\S[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X52_Y0_N67
\S[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X55_Y0_N98
\S[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\S[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\S[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X55_Y0_N33
\S[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X55_Y0_N67
\S[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X59_Y12_N98
\S[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X59_Y9_N98
\S[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\S[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\S[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X59_Y33_N98
\S[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X59_Y33_N67
\S[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X59_Y34_N2
\S[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X59_Y34_N67
\S[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~69_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X59_Y26_N5
\S[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~65_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X59_Y34_N98
\S[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X59_Y13_N36
\S[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X59_Y15_N33
\S[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X59_Y15_N98
\S[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X52_Y0_N98
\S[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X54_Y0_N67
\S[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X54_Y0_N98
\S[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X54_Y0_N36
\S[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~40_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X52_Y0_N36
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X59_Y10_N63
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y7_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y9_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X55_Y10_N18
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \B[0]~input_o\ & ( !\A[0]~input_o\ $ (\Cin~input_o\) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ $ (!\Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X59_Y9_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X55_Y10_N36
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \B[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\Cin~input_o\) # (\A[0]~input_o\)))) ) ) # ( !\B[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\A[0]~input_o\ & \Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X59_Y9_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X55_Y10_N26
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[1]~input_o\ & ( ((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & (\B[0]~input_o\ & 
-- \A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X55_Y10_N16
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \A[1]~input_o\ & ( (!\A[0]~input_o\ & (!\B[0]~input_o\ & !\B[1]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( (!\B[1]~input_o\) # ((!\A[0]~input_o\ & 
-- !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X55_Y10_N24
\c[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c[2]~0_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & !\Cin~input_o\) ) 
-- ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( (\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	combout => \c[2]~0_combout\);

-- Location: LABCELL_X55_Y10_N30
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \c[2]~0_combout\ & ( !\A[2]~input_o\ $ (\B[2]~input_o\) ) ) # ( !\c[2]~0_combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_c[2]~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y12_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y15_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X55_Y10_N28
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \c[2]~0_combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\A[2]~input_o\) # (\B[2]~input_o\)))) ) ) # ( !\c[2]~0_combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\B[2]~input_o\ & \A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_c[2]~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X59_Y18_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y18_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X55_Y10_N20
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[3]~input_o\ & ( ((\B[2]~input_o\ & \A[2]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\B[2]~input_o\ & (\A[2]~input_o\ & 
-- \A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X55_Y10_N8
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( !\A[2]~input_o\ & ( \B[3]~input_o\ & ( (!\A[3]~input_o\ & !\B[2]~input_o\) ) ) ) # ( \A[2]~input_o\ & ( !\B[3]~input_o\ & ( !\A[3]~input_o\ ) ) ) 
-- # ( !\A[2]~input_o\ & ( !\B[3]~input_o\ & ( (!\A[3]~input_o\) # (!\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100001111000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X55_Y10_N38
\c[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c[4]~1_combout\ = ( \c[2]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ ) ) # ( !\c[2]~0_combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[2]~0_combout\,
	combout => \c[4]~1_combout\);

-- Location: LABCELL_X55_Y10_N22
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \c[4]~1_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) # ( !\c[4]~1_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_c[4]~1_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y13_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y7_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X55_Y10_N34
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c[4]~1_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\A[4]~input_o\) # (\B[4]~input_o\)))) ) ) # ( !\c[4]~1_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\ & \A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_c[4]~1_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y13_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X55_Y10_N4
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \A[4]~input_o\ & ( (!\A[5]~input_o\ & !\B[5]~input_o\) ) ) # ( !\A[4]~input_o\ & ( (!\A[5]~input_o\ & ((!\B[5]~input_o\) # (!\B[4]~input_o\))) # 
-- (\A[5]~input_o\ & (!\B[5]~input_o\ & !\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X54_Y10_N10
\c[6]~2DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~2DUPLICATE_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ 
-- & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000100000111100001111000000000000000000001000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	combout => \c[6]~2DUPLICATE_combout\);

-- Location: LABCELL_X55_Y10_N32
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[4]~input_o\ & ( (!\B[5]~input_o\ & (\A[5]~input_o\ & \B[4]~input_o\)) # (\B[5]~input_o\ & ((\B[4]~input_o\) # (\A[5]~input_o\))) ) ) # ( 
-- !\A[4]~input_o\ & ( (\B[5]~input_o\ & \A[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X55_Y10_N0
\c[6]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~3_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\) # ((!\Cin~input_o\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\Cin~input_o\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\Cin~input_o\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110000000100001111010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \c[6]~3_combout\);

-- Location: LABCELL_X58_Y10_N32
\c[6]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~4_combout\ = ( !\c[6]~3_combout\ & ( !\c[6]~2DUPLICATE_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_c[6]~2DUPLICATE_combout\,
	dataf => \ALT_INV_c[6]~3_combout\,
	combout => \c[6]~4_combout\);

-- Location: LABCELL_X58_Y10_N36
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \c[6]~4_combout\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\) ) ) # ( !\c[6]~4_combout\ & ( !\A[6]~input_o\ $ (\B[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_c[6]~4_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y13_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X59_Y6_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X58_Y10_N0
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \c[6]~4_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (((\B[6]~input_o\ & \A[6]~input_o\)))) ) ) # ( !\c[6]~4_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (((\A[6]~input_o\) # (\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111011110001000011100011110111000010001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_c[6]~4_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X59_Y7_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y10_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X58_Y10_N16
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \A[7]~input_o\ & ( ((\B[6]~input_o\ & \A[6]~input_o\)) # (\B[7]~input_o\) ) ) # ( !\A[7]~input_o\ & ( (\B[7]~input_o\ & (\B[6]~input_o\ & 
-- \A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y10_N14
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \B[6]~input_o\ & ( (!\A[7]~input_o\ & !\B[7]~input_o\) ) ) # ( !\B[6]~input_o\ & ( (!\A[7]~input_o\ & ((!\B[7]~input_o\) # (!\A[6]~input_o\))) # 
-- (\A[7]~input_o\ & (!\B[7]~input_o\ & !\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y10_N28
\c[8]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c[8]~5_combout\ = ( \c[6]~4_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ ) ) # ( !\c[6]~4_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[6]~4_combout\,
	combout => \c[8]~5_combout\);

-- Location: LABCELL_X58_Y10_N10
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \c[8]~5_combout\ & ( !\A[8]~input_o\ $ (\B[8]~input_o\) ) ) # ( !\c[8]~5_combout\ & ( !\A[8]~input_o\ $ (!\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_c[8]~5_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X59_Y12_N63
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X58_Y10_N34
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \c[8]~5_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (((\A[8]~input_o\) # (\B[8]~input_o\)))) ) ) # ( !\c[8]~5_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (((\B[8]~input_o\ & \A[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_c[8]~5_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X59_Y6_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X55_Y10_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \A[8]~input_o\ & ( (!\A[9]~input_o\ & !\B[9]~input_o\) ) ) # ( !\A[8]~input_o\ & ( (!\B[8]~input_o\ & ((!\A[9]~input_o\) # (!\B[9]~input_o\))) # 
-- (\B[8]~input_o\ & (!\A[9]~input_o\ & !\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y10_N38
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[8]~input_o\ & ( (!\B[8]~input_o\ & (\A[9]~input_o\ & \B[9]~input_o\)) # (\B[8]~input_o\ & ((\B[9]~input_o\) # (\A[9]~input_o\))) ) ) # ( 
-- !\A[8]~input_o\ & ( (\A[9]~input_o\ & \B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X54_Y10_N8
\c[6]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~2_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ 
-- & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\Cin~input_o\ & (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # (\Cin~input_o\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000000000111111110000000000000000000000001000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	combout => \c[6]~2_combout\);

-- Location: MLABCELL_X54_Y10_N38
\c[10]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c[10]~6_combout\ = ( \c[6]~2_combout\ & ( \c[6]~3_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[6]~2_combout\ & ( \c[6]~3_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( \c[6]~2_combout\ & ( 
-- !\c[6]~3_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[6]~2_combout\ & ( 
-- !\c[6]~3_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010101010100011001110101010001100111010101000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \ALT_INV_c[6]~2_combout\,
	dataf => \ALT_INV_c[6]~3_combout\,
	combout => \c[10]~6_combout\);

-- Location: LABCELL_X58_Y10_N18
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \c[10]~6_combout\ & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) ) # ( !\c[10]~6_combout\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_c[10]~6_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X59_Y4_N1
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y6_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X58_Y10_N8
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \c[10]~6_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (((\B[10]~input_o\) # (\A[10]~input_o\)))) ) ) # ( !\c[10]~6_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (((\A[10]~input_o\ & \B[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_c[10]~6_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X59_Y15_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X58_Y10_N6
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \A[11]~input_o\ & ( \B[11]~input_o\ ) ) # ( !\A[11]~input_o\ & ( \B[11]~input_o\ & ( (\A[10]~input_o\ & \B[10]~input_o\) ) ) ) # ( 
-- \A[11]~input_o\ & ( !\B[11]~input_o\ & ( (\A[10]~input_o\ & \B[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y10_N30
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \B[11]~input_o\ & ( (!\A[10]~input_o\ & (!\B[10]~input_o\ & !\A[11]~input_o\)) ) ) # ( !\B[11]~input_o\ & ( (!\A[11]~input_o\) # 
-- ((!\A[10]~input_o\ & !\B[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X57_Y10_N24
\c[12]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c[12]~7_combout\ = ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[10]~6_combout\ ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[10]~6_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[10]~6_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[10]~6_combout\,
	combout => \c[12]~7_combout\);

-- Location: MLABCELL_X57_Y10_N12
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \A[12]~input_o\ & ( \c[12]~7_combout\ & ( \B[12]~input_o\ ) ) ) # ( !\A[12]~input_o\ & ( \c[12]~7_combout\ & ( !\B[12]~input_o\ ) ) ) # ( \A[12]~input_o\ & ( !\c[12]~7_combout\ & ( !\B[12]~input_o\ ) ) ) # ( !\A[12]~input_o\ & ( 
-- !\c[12]~7_combout\ & ( \B[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_c[12]~7_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X56_Y0_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y18_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X57_Y10_N16
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \A[12]~input_o\ & ( \c[12]~7_combout\ & ( !\B[13]~input_o\ $ (\A[13]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \c[12]~7_combout\ & ( !\B[13]~input_o\ $ (!\B[12]~input_o\ $ (\A[13]~input_o\)) ) ) ) # ( \A[12]~input_o\ & ( 
-- !\c[12]~7_combout\ & ( !\B[13]~input_o\ $ (!\B[12]~input_o\ $ (\A[13]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( !\c[12]~7_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010110101010010101011010101001011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_c[12]~7_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X59_Y22_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X59_Y22_N1
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LABCELL_X55_Y10_N6
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \B[12]~input_o\ & ( (!\B[13]~input_o\ & !\A[13]~input_o\) ) ) # ( !\B[12]~input_o\ & ( (!\B[13]~input_o\ & ((!\A[12]~input_o\) # 
-- (!\A[13]~input_o\))) # (\B[13]~input_o\ & (!\A[12]~input_o\ & !\A[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X55_Y10_N14
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[12]~input_o\ & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & \A[12]~input_o\)) # (\B[13]~input_o\ & ((\A[12]~input_o\) # (\A[13]~input_o\))) ) ) # 
-- ( !\B[12]~input_o\ & ( (\B[13]~input_o\ & \A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X57_Y10_N20
\c[14]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c[14]~8_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( \c[12]~7_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( \c[12]~7_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( !\c[12]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[12]~7_combout\,
	combout => \c[14]~8_combout\);

-- Location: MLABCELL_X57_Y10_N10
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \B[14]~input_o\ & ( \c[14]~8_combout\ & ( \A[14]~input_o\ ) ) ) # ( !\B[14]~input_o\ & ( \c[14]~8_combout\ & ( !\A[14]~input_o\ ) ) ) # ( \B[14]~input_o\ & ( !\c[14]~8_combout\ & ( !\A[14]~input_o\ ) ) ) # ( !\B[14]~input_o\ & ( 
-- !\c[14]~8_combout\ & ( \A[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_c[14]~8_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X59_Y18_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X59_Y22_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X57_Y10_N30
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \B[14]~input_o\ & ( \c[14]~8_combout\ & ( !\A[15]~input_o\ $ (\B[15]~input_o\) ) ) ) # ( !\B[14]~input_o\ & ( \c[14]~8_combout\ & ( !\A[14]~input_o\ $ (!\A[15]~input_o\ $ (\B[15]~input_o\)) ) ) ) # ( \B[14]~input_o\ & ( 
-- !\c[14]~8_combout\ & ( !\A[14]~input_o\ $ (!\A[15]~input_o\ $ (\B[15]~input_o\)) ) ) ) # ( !\B[14]~input_o\ & ( !\c[14]~8_combout\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001100111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_c[14]~8_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X59_Y16_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X59_Y19_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: MLABCELL_X57_Y10_N36
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[14]~input_o\ & ( \A[14]~input_o\ & ( (\A[15]~input_o\) # (\B[15]~input_o\) ) ) ) # ( !\B[14]~input_o\ & ( \A[14]~input_o\ & ( 
-- (\B[15]~input_o\ & \A[15]~input_o\) ) ) ) # ( \B[14]~input_o\ & ( !\A[14]~input_o\ & ( (\B[15]~input_o\ & \A[15]~input_o\) ) ) ) # ( !\B[14]~input_o\ & ( !\A[14]~input_o\ & ( (\B[15]~input_o\ & \A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X54_Y10_N12
\c[16]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c[16]~10_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[10]~6_combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[10]~6_combout\ & 
-- ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[10]~6_combout\ & 
-- ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[10]~6_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000011001100000000001110100000000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[10]~6_combout\,
	combout => \c[16]~10_combout\);

-- Location: MLABCELL_X57_Y10_N34
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \B[14]~input_o\ & ( \A[14]~input_o\ & ( (!\B[15]~input_o\ & !\A[15]~input_o\) ) ) ) # ( !\B[14]~input_o\ & ( \A[14]~input_o\ & ( 
-- (!\B[15]~input_o\ & !\A[15]~input_o\) ) ) ) # ( \B[14]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[15]~input_o\ & !\A[15]~input_o\) ) ) ) # ( !\B[14]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[15]~input_o\) # (!\A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X54_Y10_N26
\c[16]~9DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[16]~9DUPLICATE_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[10]~6_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[10]~6_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[10]~6_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[10]~6_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000110000001100000011000000010100001100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[10]~6_combout\,
	combout => \c[16]~9DUPLICATE_combout\);

-- Location: LABCELL_X55_Y11_N2
\c[16]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c[16]~11_combout\ = ( !\c[16]~10_combout\ & ( !\c[16]~9DUPLICATE_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_c[16]~10_combout\,
	dataf => \ALT_INV_c[16]~9DUPLICATE_combout\,
	combout => \c[16]~11_combout\);

-- Location: LABCELL_X55_Y11_N4
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( \A[16]~input_o\ & ( \c[16]~11_combout\ & ( !\B[16]~input_o\ ) ) ) # ( !\A[16]~input_o\ & ( \c[16]~11_combout\ & ( \B[16]~input_o\ ) ) ) # ( \A[16]~input_o\ & ( !\c[16]~11_combout\ & ( \B[16]~input_o\ ) ) ) # ( !\A[16]~input_o\ & ( 
-- !\c[16]~11_combout\ & ( !\B[16]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_c[16]~11_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X59_Y19_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X59_Y19_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X55_Y11_N18
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \A[16]~input_o\ & ( \c[16]~11_combout\ & ( !\A[17]~input_o\ $ (!\B[16]~input_o\ $ (\B[17]~input_o\)) ) ) ) # ( !\A[16]~input_o\ & ( \c[16]~11_combout\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\) ) ) ) # ( \A[16]~input_o\ & ( 
-- !\c[16]~11_combout\ & ( !\A[17]~input_o\ $ (\B[17]~input_o\) ) ) ) # ( !\A[16]~input_o\ & ( !\c[16]~11_combout\ & ( !\A[17]~input_o\ $ (!\B[16]~input_o\ $ (\B[17]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110011000011001100110011110011000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_c[16]~11_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X59_Y19_N1
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X59_Y16_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X55_Y11_N24
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[17]~input_o\ & ( \B[16]~input_o\ & ( (\A[17]~input_o\) # (\A[16]~input_o\) ) ) ) # ( !\B[17]~input_o\ & ( \B[16]~input_o\ & ( (\A[16]~input_o\ 
-- & \A[17]~input_o\) ) ) ) # ( \B[17]~input_o\ & ( !\B[16]~input_o\ & ( \A[17]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X55_Y11_N36
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( !\B[17]~input_o\ & ( \B[16]~input_o\ & ( !\A[17]~input_o\ ) ) ) # ( \B[17]~input_o\ & ( !\B[16]~input_o\ & ( (!\A[16]~input_o\ & 
-- !\A[17]~input_o\) ) ) ) # ( !\B[17]~input_o\ & ( !\B[16]~input_o\ & ( (!\A[16]~input_o\) # (!\A[17]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X55_Y11_N20
\c[18]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c[18]~12_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( \c[16]~11_combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( \c[16]~11_combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( !\c[16]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[16]~11_combout\,
	combout => \c[18]~12_combout\);

-- Location: LABCELL_X55_Y11_N8
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \A[18]~input_o\ & ( \c[18]~12_combout\ & ( \B[18]~input_o\ ) ) ) # ( !\A[18]~input_o\ & ( \c[18]~12_combout\ & ( !\B[18]~input_o\ ) ) ) # ( \A[18]~input_o\ & ( !\c[18]~12_combout\ & ( !\B[18]~input_o\ ) ) ) # ( !\A[18]~input_o\ & ( 
-- !\c[18]~12_combout\ & ( \B[18]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[18]~input_o\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_c[18]~12_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X59_Y16_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X55_Y11_N14
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \A[19]~input_o\ & ( \c[18]~12_combout\ & ( !\B[19]~input_o\ $ (((\A[18]~input_o\) # (\B[18]~input_o\))) ) ) ) # ( !\A[19]~input_o\ & ( \c[18]~12_combout\ & ( !\B[19]~input_o\ $ (((!\B[18]~input_o\ & !\A[18]~input_o\))) ) ) ) # ( 
-- \A[19]~input_o\ & ( !\c[18]~12_combout\ & ( !\B[19]~input_o\ $ (((\B[18]~input_o\ & \A[18]~input_o\))) ) ) ) # ( !\A[19]~input_o\ & ( !\c[18]~12_combout\ & ( !\B[19]~input_o\ $ (((!\B[18]~input_o\) # (!\A[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100110011001100001100111100110011001100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_c[18]~12_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X50_Y0_N32
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X50_Y0_N63
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X55_Y11_N32
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \B[18]~input_o\ & ( \A[18]~input_o\ & ( (!\B[19]~input_o\ & !\A[19]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( \A[18]~input_o\ & ( 
-- (!\B[19]~input_o\ & !\A[19]~input_o\) ) ) ) # ( \B[18]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[19]~input_o\ & !\A[19]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[19]~input_o\) # (!\A[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X55_Y11_N28
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[18]~input_o\ & ( \A[18]~input_o\ & ( (\A[19]~input_o\) # (\B[19]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( \A[18]~input_o\ & ( 
-- (\B[19]~input_o\ & \A[19]~input_o\) ) ) ) # ( \B[18]~input_o\ & ( !\A[18]~input_o\ & ( (\B[19]~input_o\ & \A[19]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( !\A[18]~input_o\ & ( (\B[19]~input_o\ & \A[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X54_Y10_N24
\c[16]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c[16]~9_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[10]~6_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[10]~6_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[10]~6_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[10]~6_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000110011000000000011000101000000001100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[10]~6_combout\,
	combout => \c[16]~9_combout\);

-- Location: MLABCELL_X54_Y10_N16
\c[20]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c[20]~13_combout\ = ( \c[16]~10_combout\ & ( \c[16]~9_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[16]~10_combout\ & ( \c[16]~9_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) ) # ( \c[16]~10_combout\ & ( 
-- !\c[16]~9_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[16]~10_combout\ & ( 
-- !\c[16]~9_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011101110110000001100111111000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \ALT_INV_c[16]~10_combout\,
	dataf => \ALT_INV_c[16]~9_combout\,
	combout => \c[20]~13_combout\);

-- Location: MLABCELL_X46_Y2_N18
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \B[20]~input_o\ & ( \c[20]~13_combout\ & ( \A[20]~input_o\ ) ) ) # ( !\B[20]~input_o\ & ( \c[20]~13_combout\ & ( !\A[20]~input_o\ ) ) ) # ( \B[20]~input_o\ & ( !\c[20]~13_combout\ & ( !\A[20]~input_o\ ) ) ) # ( !\B[20]~input_o\ & ( 
-- !\c[20]~13_combout\ & ( \A[20]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_c[20]~13_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X50_Y0_N94
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X55_Y2_N26
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \A[20]~input_o\ & ( \c[20]~13_combout\ & ( !\B[21]~input_o\ $ (\A[21]~input_o\) ) ) ) # ( !\A[20]~input_o\ & ( \c[20]~13_combout\ & ( !\B[21]~input_o\ $ (!\B[20]~input_o\ $ (\A[21]~input_o\)) ) ) ) # ( \A[20]~input_o\ & ( 
-- !\c[20]~13_combout\ & ( !\B[21]~input_o\ $ (!\B[20]~input_o\ $ (\A[21]~input_o\)) ) ) ) # ( !\A[20]~input_o\ & ( !\c[20]~13_combout\ & ( !\B[21]~input_o\ $ (!\A[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001111001100001100111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_c[20]~13_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X48_Y0_N63
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: MLABCELL_X49_Y2_N32
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( !\B[20]~input_o\ & ( \A[21]~input_o\ & ( (!\A[20]~input_o\ & !\B[21]~input_o\) ) ) ) # ( \B[20]~input_o\ & ( !\A[21]~input_o\ & ( 
-- !\B[21]~input_o\ ) ) ) # ( !\B[20]~input_o\ & ( !\A[21]~input_o\ & ( (!\A[20]~input_o\) # (!\B[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111110000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X49_Y2_N6
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[20]~input_o\ & ( \A[21]~input_o\ & ( (\B[20]~input_o\) # (\B[21]~input_o\) ) ) ) # ( !\A[20]~input_o\ & ( \A[21]~input_o\ & ( \B[21]~input_o\ 
-- ) ) ) # ( \A[20]~input_o\ & ( !\A[21]~input_o\ & ( (\B[21]~input_o\ & \B[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_B[20]~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X49_Y2_N24
\c[22]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c[22]~14_combout\ = ( \c[20]~13_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) ) # ( !\c[20]~13_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) # 
-- ( \c[20]~13_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \ALT_INV_c[20]~13_combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \c[22]~14_combout\);

-- Location: MLABCELL_X44_Y2_N16
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \A[22]~input_o\ & ( \c[22]~14_combout\ & ( \B[22]~input_o\ ) ) ) # ( !\A[22]~input_o\ & ( \c[22]~14_combout\ & ( !\B[22]~input_o\ ) ) ) # ( \A[22]~input_o\ & ( !\c[22]~14_combout\ & ( !\B[22]~input_o\ ) ) ) # ( !\A[22]~input_o\ & ( 
-- !\c[22]~14_combout\ & ( \B[22]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[22]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_c[22]~14_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X48_Y0_N94
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X48_Y0_N32
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: MLABCELL_X49_Y2_N14
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \B[23]~input_o\ & ( \c[22]~14_combout\ & ( !\A[23]~input_o\ $ (((\B[22]~input_o\) # (\A[22]~input_o\))) ) ) ) # ( !\B[23]~input_o\ & ( \c[22]~14_combout\ & ( !\A[23]~input_o\ $ (((!\A[22]~input_o\ & !\B[22]~input_o\))) ) ) ) # ( 
-- \B[23]~input_o\ & ( !\c[22]~14_combout\ & ( !\A[23]~input_o\ $ (((\A[22]~input_o\ & \B[22]~input_o\))) ) ) ) # ( !\B[23]~input_o\ & ( !\c[22]~14_combout\ & ( !\A[23]~input_o\ $ (((!\A[22]~input_o\) # (!\B[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100111111000000001100111111110000001100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_c[22]~14_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X39_Y0_N32
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: MLABCELL_X49_Y2_N28
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[23]~input_o\ & ( \B[22]~input_o\ & ( (\A[22]~input_o\) # (\A[23]~input_o\) ) ) ) # ( !\B[23]~input_o\ & ( \B[22]~input_o\ & ( 
-- (\A[23]~input_o\ & \A[22]~input_o\) ) ) ) # ( \B[23]~input_o\ & ( !\B[22]~input_o\ & ( \A[23]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X49_Y2_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( !\B[23]~input_o\ & ( \B[22]~input_o\ & ( !\A[23]~input_o\ ) ) ) # ( \B[23]~input_o\ & ( !\B[22]~input_o\ & ( (!\A[22]~input_o\ & 
-- !\A[23]~input_o\) ) ) ) # ( !\B[23]~input_o\ & ( !\B[22]~input_o\ & ( (!\A[22]~input_o\) # (!\A[23]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X49_Y2_N16
\c[24]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c[24]~15_combout\ = ( \c[22]~14_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ ) ) # ( !\c[22]~14_combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[22]~14_combout\,
	combout => \c[24]~15_combout\);

-- Location: LABCELL_X50_Y2_N26
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( \A[24]~input_o\ & ( \c[24]~15_combout\ & ( \B[24]~input_o\ ) ) ) # ( !\A[24]~input_o\ & ( \c[24]~15_combout\ & ( !\B[24]~input_o\ ) ) ) # ( \A[24]~input_o\ & ( !\c[24]~15_combout\ & ( !\B[24]~input_o\ ) ) ) # ( !\A[24]~input_o\ & ( 
-- !\c[24]~15_combout\ & ( \B[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_c[24]~15_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X41_Y0_N32
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X43_Y0_N63
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: MLABCELL_X49_Y2_N38
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \B[25]~input_o\ & ( \c[24]~15_combout\ & ( !\A[25]~input_o\ $ (((\B[24]~input_o\) # (\A[24]~input_o\))) ) ) ) # ( !\B[25]~input_o\ & ( \c[24]~15_combout\ & ( !\A[25]~input_o\ $ (((!\A[24]~input_o\ & !\B[24]~input_o\))) ) ) ) # ( 
-- \B[25]~input_o\ & ( !\c[24]~15_combout\ & ( !\A[25]~input_o\ $ (((\A[24]~input_o\ & \B[24]~input_o\))) ) ) ) # ( !\B[25]~input_o\ & ( !\c[24]~15_combout\ & ( !\A[25]~input_o\ $ (((!\A[24]~input_o\) # (!\B[24]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100111100001100001100111100111100001100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_c[24]~15_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X45_Y0_N63
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X45_Y0_N32
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LABCELL_X45_Y2_N16
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( !\A[24]~input_o\ & ( \B[25]~input_o\ & ( (!\B[24]~input_o\ & !\A[25]~input_o\) ) ) ) # ( \A[24]~input_o\ & ( !\B[25]~input_o\ & ( 
-- !\A[25]~input_o\ ) ) ) # ( !\A[24]~input_o\ & ( !\B[25]~input_o\ & ( (!\B[24]~input_o\) # (!\A[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111110000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X49_Y2_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ = ( \A[20]~input_o\ & ( \A[21]~input_o\ & ( (\B[21]~input_o\) # (\B[20]~input_o\) ) ) ) # ( !\A[20]~input_o\ & ( \A[21]~input_o\ & ( 
-- \B[21]~input_o\ ) ) ) # ( \A[20]~input_o\ & ( !\A[21]~input_o\ & ( (\B[20]~input_o\ & \B[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\);

-- Location: MLABCELL_X54_Y10_N4
\c[26]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~16_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( \c[20]~13_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( 
-- \c[20]~13_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( 
-- !\c[20]~13_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( !\c[20]~13_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000101000001010000010100000001100001010000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\,
	dataf => \ALT_INV_c[20]~13_combout\,
	combout => \c[26]~16_combout\);

-- Location: LABCELL_X50_Y10_N0
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[24]~input_o\ & ( \A[25]~input_o\ & ( (\B[25]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\B[24]~input_o\ & ( \A[25]~input_o\ & ( \B[25]~input_o\ 
-- ) ) ) # ( \B[24]~input_o\ & ( !\A[25]~input_o\ & ( (\A[24]~input_o\ & \B[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	datae => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X54_Y10_N2
\c[26]~17DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~17DUPLICATE_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( \c[20]~13_combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( 
-- \c[20]~13_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( 
-- !\c[20]~13_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( !\c[20]~13_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ 
-- & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000101010100000000010111000000000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\,
	dataf => \ALT_INV_c[20]~13_combout\,
	combout => \c[26]~17DUPLICATE_combout\);

-- Location: MLABCELL_X54_Y10_N28
\c[26]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~18_combout\ = ( !\c[26]~17DUPLICATE_combout\ & ( !\c[26]~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[26]~16_combout\,
	dataf => \ALT_INV_c[26]~17DUPLICATE_combout\,
	combout => \c[26]~18_combout\);

-- Location: LABCELL_X58_Y4_N2
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \B[26]~input_o\ & ( \c[26]~18_combout\ & ( !\A[26]~input_o\ ) ) ) # ( !\B[26]~input_o\ & ( \c[26]~18_combout\ & ( \A[26]~input_o\ ) ) ) # ( \B[26]~input_o\ & ( !\c[26]~18_combout\ & ( \A[26]~input_o\ ) ) ) # ( !\B[26]~input_o\ & ( 
-- !\c[26]~18_combout\ & ( !\A[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_c[26]~18_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X41_Y0_N63
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X29_Y0_N32
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: MLABCELL_X49_Y10_N32
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \A[27]~input_o\ & ( \c[26]~18_combout\ & ( !\B[27]~input_o\ $ (((\B[26]~input_o\ & \A[26]~input_o\))) ) ) ) # ( !\A[27]~input_o\ & ( \c[26]~18_combout\ & ( !\B[27]~input_o\ $ (((!\B[26]~input_o\) # (!\A[26]~input_o\))) ) ) ) # ( 
-- \A[27]~input_o\ & ( !\c[26]~18_combout\ & ( !\B[27]~input_o\ $ (((\A[26]~input_o\) # (\B[26]~input_o\))) ) ) ) # ( !\A[27]~input_o\ & ( !\c[26]~18_combout\ & ( !\B[27]~input_o\ $ (((!\B[26]~input_o\ & !\A[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000101000000101111100000101111110101111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_c[26]~18_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X45_Y0_N1
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: MLABCELL_X49_Y10_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( !\B[27]~input_o\ & ( \A[26]~input_o\ & ( !\A[27]~input_o\ ) ) ) # ( \B[27]~input_o\ & ( !\A[26]~input_o\ & ( (!\B[26]~input_o\ & 
-- !\A[27]~input_o\) ) ) ) # ( !\B[27]~input_o\ & ( !\A[26]~input_o\ & ( (!\B[26]~input_o\) # (!\A[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X49_Y10_N26
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \A[27]~input_o\ & ( \A[26]~input_o\ & ( (\B[26]~input_o\) # (\B[27]~input_o\) ) ) ) # ( !\A[27]~input_o\ & ( \A[26]~input_o\ & ( 
-- (\B[27]~input_o\ & \B[26]~input_o\) ) ) ) # ( \A[27]~input_o\ & ( !\A[26]~input_o\ & ( \B[27]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X49_Y10_N28
\c[28]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \c[28]~19_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[26]~18_combout\ ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[26]~18_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[26]~18_combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[26]~18_combout\,
	combout => \c[28]~19_combout\);

-- Location: MLABCELL_X49_Y10_N16
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( \A[28]~input_o\ & ( \c[28]~19_combout\ & ( \B[28]~input_o\ ) ) ) # ( !\A[28]~input_o\ & ( \c[28]~19_combout\ & ( !\B[28]~input_o\ ) ) ) # ( \A[28]~input_o\ & ( !\c[28]~19_combout\ & ( !\B[28]~input_o\ ) ) ) # ( !\A[28]~input_o\ & ( 
-- !\c[28]~19_combout\ & ( \B[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[28]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_c[28]~19_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X29_Y0_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X29_Y0_N94
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: MLABCELL_X49_Y10_N12
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \A[29]~input_o\ & ( \c[28]~19_combout\ & ( !\B[29]~input_o\ $ (((\A[28]~input_o\) # (\B[28]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( \c[28]~19_combout\ & ( !\B[29]~input_o\ $ (((!\B[28]~input_o\ & !\A[28]~input_o\))) ) ) ) # ( 
-- \A[29]~input_o\ & ( !\c[28]~19_combout\ & ( !\B[29]~input_o\ $ (((\B[28]~input_o\ & \A[28]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\c[28]~19_combout\ & ( !\B[29]~input_o\ $ (((!\B[28]~input_o\) # (!\A[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010111100001010010101011010111100001010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_c[28]~19_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y21_N1
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y23_N32
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: MLABCELL_X49_Y10_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( !\A[28]~input_o\ & ( \B[29]~input_o\ & ( (!\A[29]~input_o\ & !\B[28]~input_o\) ) ) ) # ( \A[28]~input_o\ & ( !\B[29]~input_o\ & ( 
-- !\A[29]~input_o\ ) ) ) # ( !\A[28]~input_o\ & ( !\B[29]~input_o\ & ( (!\A[29]~input_o\) # (!\B[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100001111000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X49_Y10_N20
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[28]~input_o\ & ( \B[29]~input_o\ & ( (\A[29]~input_o\) # (\B[28]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( \B[29]~input_o\ & ( 
-- \A[29]~input_o\ ) ) ) # ( \A[28]~input_o\ & ( !\B[29]~input_o\ & ( (\B[28]~input_o\ & \A[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X54_Y10_N0
\c[26]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~17_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( \c[20]~13_combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( 
-- \c[20]~13_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( 
-- !\c[20]~13_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( !\c[20]~13_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ 
-- & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000001010000010100000101000011000000010100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\,
	dataf => \ALT_INV_c[20]~13_combout\,
	combout => \c[26]~17_combout\);

-- Location: MLABCELL_X54_Y10_N6
\c[26]~16DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~16DUPLICATE_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( \c[20]~13_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( 
-- \c[20]~13_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))))) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( 
-- !\c[20]~13_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0DUPLICATE_combout\ & ( !\c[20]~13_combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000101010100000000010100011000000001010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0DUPLICATE_combout\,
	dataf => \ALT_INV_c[20]~13_combout\,
	combout => \c[26]~16DUPLICATE_combout\);

-- Location: MLABCELL_X54_Y10_N34
\c[30]~20DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[30]~20DUPLICATE_combout\ = ( \c[26]~17_combout\ & ( \c[26]~16DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[26]~17_combout\ & ( \c[26]~16DUPLICATE_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( \c[26]~17_combout\ & 
-- ( !\c[26]~16DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[26]~17_combout\ & ( !\c[26]~16DUPLICATE_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011101110110000001100111111000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \ALT_INV_c[26]~17_combout\,
	dataf => \ALT_INV_c[26]~16DUPLICATE_combout\,
	combout => \c[30]~20DUPLICATE_combout\);

-- Location: LABCELL_X58_Y21_N10
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \B[30]~input_o\ & ( \c[30]~20DUPLICATE_combout\ & ( \A[30]~input_o\ ) ) ) # ( !\B[30]~input_o\ & ( \c[30]~20DUPLICATE_combout\ & ( !\A[30]~input_o\ ) ) ) # ( \B[30]~input_o\ & ( !\c[30]~20DUPLICATE_combout\ & ( !\A[30]~input_o\ ) ) ) # 
-- ( !\B[30]~input_o\ & ( !\c[30]~20DUPLICATE_combout\ & ( \A[30]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_c[30]~20DUPLICATE_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X59_Y26_N94
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X58_Y23_N2
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \B[30]~input_o\ & ( \c[30]~20DUPLICATE_combout\ & ( !\A[31]~input_o\ $ (\B[31]~input_o\) ) ) ) # ( !\B[30]~input_o\ & ( \c[30]~20DUPLICATE_combout\ & ( !\A[31]~input_o\ $ (!\A[30]~input_o\ $ (\B[31]~input_o\)) ) ) ) # ( \B[30]~input_o\ 
-- & ( !\c[30]~20DUPLICATE_combout\ & ( !\A[31]~input_o\ $ (!\A[30]~input_o\ $ (\B[31]~input_o\)) ) ) ) # ( !\B[30]~input_o\ & ( !\c[30]~20DUPLICATE_combout\ & ( !\A[31]~input_o\ $ (!\B[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001111001100001100111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_c[30]~20DUPLICATE_combout\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X59_Y25_N94
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X59_Y25_N63
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X58_Y22_N12
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[31]~input_o\ & ( \A[31]~input_o\ ) ) # ( !\B[31]~input_o\ & ( \A[31]~input_o\ & ( (\A[30]~input_o\ & \B[30]~input_o\) ) ) ) # ( 
-- \B[31]~input_o\ & ( !\A[31]~input_o\ & ( (\A[30]~input_o\ & \B[30]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	datae => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y22_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( !\B[30]~input_o\ & ( \A[31]~input_o\ & ( (!\B[31]~input_o\ & !\A[30]~input_o\) ) ) ) # ( \B[30]~input_o\ & ( !\A[31]~input_o\ & ( 
-- !\B[31]~input_o\ ) ) ) # ( !\B[30]~input_o\ & ( !\A[31]~input_o\ & ( (!\B[31]~input_o\) # (!\A[30]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100001111000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y22_N10
\c[32]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \c[32]~21_combout\ = ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[30]~20DUPLICATE_combout\ ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[30]~20DUPLICATE_combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ 
-- ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[30]~20DUPLICATE_combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[30]~20DUPLICATE_combout\,
	combout => \c[32]~21_combout\);

-- Location: LABCELL_X58_Y22_N30
\S~32\ : arriaii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = ( \A[32]~input_o\ & ( \c[32]~21_combout\ & ( \B[32]~input_o\ ) ) ) # ( !\A[32]~input_o\ & ( \c[32]~21_combout\ & ( !\B[32]~input_o\ ) ) ) # ( \A[32]~input_o\ & ( !\c[32]~21_combout\ & ( !\B[32]~input_o\ ) ) ) # ( !\A[32]~input_o\ & ( 
-- !\c[32]~21_combout\ & ( \B[32]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[32]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_c[32]~21_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X59_Y25_N32
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X59_Y25_N1
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LABCELL_X58_Y22_N2
\S~33\ : arriaii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = ( \B[32]~input_o\ & ( \c[32]~21_combout\ & ( !\B[33]~input_o\ $ (\A[33]~input_o\) ) ) ) # ( !\B[32]~input_o\ & ( \c[32]~21_combout\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\ $ (\A[32]~input_o\)) ) ) ) # ( \B[32]~input_o\ & ( 
-- !\c[32]~21_combout\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\ $ (\A[32]~input_o\)) ) ) ) # ( !\B[32]~input_o\ & ( !\c[32]~21_combout\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010101011010101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[33]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	datae => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_c[32]~21_combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X59_Y30_N94
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X59_Y30_N63
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LABCELL_X58_Y25_N36
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[32]~input_o\ & ( \B[32]~input_o\ & ( (\A[33]~input_o\) # (\B[33]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( \B[32]~input_o\ & ( (\B[33]~input_o\ 
-- & \A[33]~input_o\) ) ) ) # ( \A[32]~input_o\ & ( !\B[32]~input_o\ & ( (\B[33]~input_o\ & \A[33]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( !\B[32]~input_o\ & ( (\B[33]~input_o\ & \A[33]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_A[33]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[32]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y25_N34
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( !\A[32]~input_o\ & ( \A[33]~input_o\ & ( (!\B[33]~input_o\ & !\B[32]~input_o\) ) ) ) # ( \A[32]~input_o\ & ( !\A[33]~input_o\ & ( 
-- !\B[33]~input_o\ ) ) ) # ( !\A[32]~input_o\ & ( !\A[33]~input_o\ & ( (!\B[33]~input_o\) # (!\B[32]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100001111000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_B[32]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y22_N38
\c[34]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \c[34]~22_combout\ = ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( \c[32]~21_combout\ ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( !\c[32]~21_combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( !\c[32]~21_combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[32]~21_combout\,
	combout => \c[34]~22_combout\);

-- Location: LABCELL_X58_Y22_N26
\S~34\ : arriaii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = ( \B[34]~input_o\ & ( \c[34]~22_combout\ & ( \A[34]~input_o\ ) ) ) # ( !\B[34]~input_o\ & ( \c[34]~22_combout\ & ( !\A[34]~input_o\ ) ) ) # ( \B[34]~input_o\ & ( !\c[34]~22_combout\ & ( !\A[34]~input_o\ ) ) ) # ( !\B[34]~input_o\ & ( 
-- !\c[34]~22_combout\ & ( \A[34]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[34]~input_o\,
	datae => \ALT_INV_B[34]~input_o\,
	dataf => \ALT_INV_c[34]~22_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X59_Y30_N32
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X59_Y30_N1
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LABCELL_X58_Y22_N20
\S~35\ : arriaii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = ( \B[34]~input_o\ & ( \c[34]~22_combout\ & ( !\B[35]~input_o\ $ (\A[35]~input_o\) ) ) ) # ( !\B[34]~input_o\ & ( \c[34]~22_combout\ & ( !\A[34]~input_o\ $ (!\B[35]~input_o\ $ (\A[35]~input_o\)) ) ) ) # ( \B[34]~input_o\ & ( 
-- !\c[34]~22_combout\ & ( !\A[34]~input_o\ $ (!\B[35]~input_o\ $ (\A[35]~input_o\)) ) ) ) # ( !\B[34]~input_o\ & ( !\c[34]~22_combout\ & ( !\B[35]~input_o\ $ (!\A[35]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010110101010010101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_A[35]~input_o\,
	datae => \ALT_INV_B[34]~input_o\,
	dataf => \ALT_INV_c[34]~22_combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X35_Y0_N32
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LABCELL_X58_Y22_N32
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \B[34]~input_o\ & ( \A[34]~input_o\ & ( (!\B[35]~input_o\ & !\A[35]~input_o\) ) ) ) # ( !\B[34]~input_o\ & ( \A[34]~input_o\ & ( 
-- (!\B[35]~input_o\ & !\A[35]~input_o\) ) ) ) # ( \B[34]~input_o\ & ( !\A[34]~input_o\ & ( (!\B[35]~input_o\ & !\A[35]~input_o\) ) ) ) # ( !\B[34]~input_o\ & ( !\A[34]~input_o\ & ( (!\B[35]~input_o\) # (!\A[35]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_A[35]~input_o\,
	datae => \ALT_INV_B[34]~input_o\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X54_Y10_N32
\c[30]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \c[30]~20_combout\ = ( \c[26]~17_combout\ & ( \c[26]~16DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[26]~17_combout\ & ( \c[26]~16DUPLICATE_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( \c[26]~17_combout\ & 
-- ( !\c[26]~16DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[26]~17_combout\ & ( !\c[26]~16DUPLICATE_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110110011000000111111001100000011111100110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \ALT_INV_c[26]~17_combout\,
	dataf => \ALT_INV_c[26]~16DUPLICATE_combout\,
	combout => \c[30]~20_combout\);

-- Location: MLABCELL_X54_Y10_N22
\c[36]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \c[36]~23_combout\ = ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[30]~20_combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[30]~20_combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100000000000000000010100000111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[30]~20_combout\,
	combout => \c[36]~23_combout\);

-- Location: LABCELL_X58_Y30_N18
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[35]~input_o\ & ( \A[34]~input_o\ & ( (\B[34]~input_o\) # (\A[35]~input_o\) ) ) ) # ( !\B[35]~input_o\ & ( \A[34]~input_o\ & ( 
-- (\A[35]~input_o\ & \B[34]~input_o\) ) ) ) # ( \B[35]~input_o\ & ( !\A[34]~input_o\ & ( \A[35]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_B[34]~input_o\,
	datae => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X53_Y10_N18
\c[36]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \c[36]~24_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( \c[30]~20DUPLICATE_combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\) # 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( 
-- \c[30]~20DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( 
-- !\c[30]~20DUPLICATE_combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( 
-- !\c[30]~20DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010110000101100000000000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[30]~20DUPLICATE_combout\,
	combout => \c[36]~24_combout\);

-- Location: MLABCELL_X34_Y2_N16
\c[36]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \c[36]~25_combout\ = ( !\c[36]~23_combout\ & ( !\c[36]~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_c[36]~23_combout\,
	dataf => \ALT_INV_c[36]~24_combout\,
	combout => \c[36]~25_combout\);

-- Location: MLABCELL_X34_Y2_N22
\S~36\ : arriaii_lcell_comb
-- Equation(s):
-- \S~36_combout\ = ( \B[36]~input_o\ & ( \c[36]~25_combout\ & ( !\A[36]~input_o\ ) ) ) # ( !\B[36]~input_o\ & ( \c[36]~25_combout\ & ( \A[36]~input_o\ ) ) ) # ( \B[36]~input_o\ & ( !\c[36]~25_combout\ & ( \A[36]~input_o\ ) ) ) # ( !\B[36]~input_o\ & ( 
-- !\c[36]~25_combout\ & ( !\A[36]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[36]~input_o\,
	datae => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_c[36]~25_combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X35_Y0_N94
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: MLABCELL_X34_Y2_N26
\S~37\ : arriaii_lcell_comb
-- Equation(s):
-- \S~37_combout\ = ( \B[36]~input_o\ & ( \c[36]~25_combout\ & ( !\A[36]~input_o\ $ (!\A[37]~input_o\ $ (\B[37]~input_o\)) ) ) ) # ( !\B[36]~input_o\ & ( \c[36]~25_combout\ & ( !\A[37]~input_o\ $ (!\B[37]~input_o\) ) ) ) # ( \B[36]~input_o\ & ( 
-- !\c[36]~25_combout\ & ( !\A[37]~input_o\ $ (\B[37]~input_o\) ) ) ) # ( !\B[36]~input_o\ & ( !\c[36]~25_combout\ & ( !\A[36]~input_o\ $ (!\A[37]~input_o\ $ (\B[37]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101111100000000111100001111111100000101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_A[37]~input_o\,
	datad => \ALT_INV_B[37]~input_o\,
	datae => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_c[36]~25_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X30_Y0_N32
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: MLABCELL_X34_Y2_N10
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[36]~input_o\ & ( \A[36]~input_o\ & ( (\B[37]~input_o\) # (\A[37]~input_o\) ) ) ) # ( !\B[36]~input_o\ & ( \A[36]~input_o\ & ( 
-- (\A[37]~input_o\ & \B[37]~input_o\) ) ) ) # ( \B[36]~input_o\ & ( !\A[36]~input_o\ & ( (\A[37]~input_o\ & \B[37]~input_o\) ) ) ) # ( !\B[36]~input_o\ & ( !\A[36]~input_o\ & ( (\A[37]~input_o\ & \B[37]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[37]~input_o\,
	datad => \ALT_INV_B[37]~input_o\,
	datae => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X34_Y2_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \B[36]~input_o\ & ( \A[36]~input_o\ & ( (!\B[37]~input_o\ & !\A[37]~input_o\) ) ) ) # ( !\B[36]~input_o\ & ( \A[36]~input_o\ & ( 
-- (!\B[37]~input_o\ & !\A[37]~input_o\) ) ) ) # ( \B[36]~input_o\ & ( !\A[36]~input_o\ & ( (!\B[37]~input_o\ & !\A[37]~input_o\) ) ) ) # ( !\B[36]~input_o\ & ( !\A[36]~input_o\ & ( (!\B[37]~input_o\) # (!\A[37]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	datae => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X34_Y2_N6
\c[38]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \c[38]~26_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( \c[36]~25_combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( \c[36]~25_combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( !\c[36]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[36]~25_combout\,
	combout => \c[38]~26_combout\);

-- Location: MLABCELL_X34_Y2_N0
\S~38\ : arriaii_lcell_comb
-- Equation(s):
-- \S~38_combout\ = ( \B[38]~input_o\ & ( \c[38]~26_combout\ & ( \A[38]~input_o\ ) ) ) # ( !\B[38]~input_o\ & ( \c[38]~26_combout\ & ( !\A[38]~input_o\ ) ) ) # ( \B[38]~input_o\ & ( !\c[38]~26_combout\ & ( !\A[38]~input_o\ ) ) ) # ( !\B[38]~input_o\ & ( 
-- !\c[38]~26_combout\ & ( \A[38]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_c[38]~26_combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X35_Y0_N63
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X30_Y0_N63
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: MLABCELL_X34_Y2_N28
\S~39\ : arriaii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = ( \A[39]~input_o\ & ( \c[38]~26_combout\ & ( !\B[39]~input_o\ $ (((\A[38]~input_o\) # (\B[38]~input_o\))) ) ) ) # ( !\A[39]~input_o\ & ( \c[38]~26_combout\ & ( !\B[39]~input_o\ $ (((!\B[38]~input_o\ & !\A[38]~input_o\))) ) ) ) # ( 
-- \A[39]~input_o\ & ( !\c[38]~26_combout\ & ( !\B[39]~input_o\ $ (((\B[38]~input_o\ & \A[38]~input_o\))) ) ) ) # ( !\A[39]~input_o\ & ( !\c[38]~26_combout\ & ( !\B[39]~input_o\ $ (((!\B[38]~input_o\) # (!\A[38]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010101010101010010101011010101010101010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_c[38]~26_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X59_Y34_N32
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X56_Y0_N94
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: MLABCELL_X34_Y2_N32
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( !\A[39]~input_o\ & ( \B[38]~input_o\ & ( !\B[39]~input_o\ ) ) ) # ( \A[39]~input_o\ & ( !\B[38]~input_o\ & ( (!\B[39]~input_o\ & 
-- !\A[38]~input_o\) ) ) ) # ( !\A[39]~input_o\ & ( !\B[38]~input_o\ & ( (!\B[39]~input_o\) # (!\A[38]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_B[38]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X34_Y2_N36
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \A[39]~input_o\ & ( \B[38]~input_o\ & ( (\A[38]~input_o\) # (\B[39]~input_o\) ) ) ) # ( !\A[39]~input_o\ & ( \B[38]~input_o\ & ( 
-- (\B[39]~input_o\ & \A[38]~input_o\) ) ) ) # ( \A[39]~input_o\ & ( !\B[38]~input_o\ & ( \B[39]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_B[38]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X53_Y10_N6
\c[40]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \c[40]~27_combout\ = ( \c[36]~24_combout\ & ( \c[36]~23_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[36]~24_combout\ & ( \c[36]~23_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) ) # ( \c[36]~24_combout\ & ( 
-- !\c[36]~23_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) ) # ( !\c[36]~24_combout\ & 
-- ( !\c[36]~23_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001100100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \ALT_INV_c[36]~24_combout\,
	dataf => \ALT_INV_c[36]~23_combout\,
	combout => \c[40]~27_combout\);

-- Location: MLABCELL_X52_Y10_N2
\S~40\ : arriaii_lcell_comb
-- Equation(s):
-- \S~40_combout\ = ( \c[40]~27_combout\ & ( !\B[40]~input_o\ $ (\A[40]~input_o\) ) ) # ( !\c[40]~27_combout\ & ( !\B[40]~input_o\ $ (!\A[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[40]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_c[40]~27_combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X32_Y0_N1
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X32_Y0_N94
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: MLABCELL_X52_Y10_N20
\S~41\ : arriaii_lcell_comb
-- Equation(s):
-- \S~41_combout\ = ( \B[41]~input_o\ & ( \c[40]~27_combout\ & ( !\A[41]~input_o\ $ (((\B[40]~input_o\) # (\A[40]~input_o\))) ) ) ) # ( !\B[41]~input_o\ & ( \c[40]~27_combout\ & ( !\A[41]~input_o\ $ (((!\A[40]~input_o\ & !\B[40]~input_o\))) ) ) ) # ( 
-- \B[41]~input_o\ & ( !\c[40]~27_combout\ & ( !\A[41]~input_o\ $ (((\A[40]~input_o\ & \B[40]~input_o\))) ) ) ) # ( !\B[41]~input_o\ & ( !\c[40]~27_combout\ & ( !\A[41]~input_o\ $ (((!\A[40]~input_o\) # (!\B[40]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100110011001100001100111100110011001100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[40]~input_o\,
	datae => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_c[40]~27_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X29_Y0_N1
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X39_Y0_N1
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: MLABCELL_X52_Y10_N38
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[41]~input_o\ & ( \B[40]~input_o\ & ( (\A[40]~input_o\) # (\A[41]~input_o\) ) ) ) # ( !\B[41]~input_o\ & ( \B[40]~input_o\ & ( 
-- (\A[41]~input_o\ & \A[40]~input_o\) ) ) ) # ( \B[41]~input_o\ & ( !\B[40]~input_o\ & ( \A[41]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[41]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	datae => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X52_Y10_N26
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( !\B[41]~input_o\ & ( \B[40]~input_o\ & ( !\A[41]~input_o\ ) ) ) # ( \B[41]~input_o\ & ( !\B[40]~input_o\ & ( (!\A[41]~input_o\ & 
-- !\A[40]~input_o\) ) ) ) # ( !\B[41]~input_o\ & ( !\B[40]~input_o\ & ( (!\A[41]~input_o\) # (!\A[40]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[41]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	datae => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X50_Y10_N14
\c[42]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \c[42]~28_combout\ = ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( \c[40]~27_combout\ ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[40]~27_combout\,
	combout => \c[42]~28_combout\);

-- Location: LABCELL_X50_Y10_N24
\S~42\ : arriaii_lcell_comb
-- Equation(s):
-- \S~42_combout\ = ( \B[42]~input_o\ & ( \c[42]~28_combout\ & ( \A[42]~input_o\ ) ) ) # ( !\B[42]~input_o\ & ( \c[42]~28_combout\ & ( !\A[42]~input_o\ ) ) ) # ( \B[42]~input_o\ & ( !\c[42]~28_combout\ & ( !\A[42]~input_o\ ) ) ) # ( !\B[42]~input_o\ & ( 
-- !\c[42]~28_combout\ & ( \A[42]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[42]~input_o\,
	datae => \ALT_INV_B[42]~input_o\,
	dataf => \ALT_INV_c[42]~28_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X24_Y0_N1
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LABCELL_X50_Y10_N6
\S~43\ : arriaii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = ( \A[43]~input_o\ & ( \c[42]~28_combout\ & ( !\B[43]~input_o\ $ (((\B[42]~input_o\) # (\A[42]~input_o\))) ) ) ) # ( !\A[43]~input_o\ & ( \c[42]~28_combout\ & ( !\B[43]~input_o\ $ (((!\A[42]~input_o\ & !\B[42]~input_o\))) ) ) ) # ( 
-- \A[43]~input_o\ & ( !\c[42]~28_combout\ & ( !\B[43]~input_o\ $ (((\A[42]~input_o\ & \B[42]~input_o\))) ) ) ) # ( !\A[43]~input_o\ & ( !\c[42]~28_combout\ & ( !\B[43]~input_o\ $ (((!\A[42]~input_o\) # (!\B[42]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100110011001100001100111100110011001100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[43]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_B[42]~input_o\,
	datae => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_c[42]~28_combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X24_Y0_N32
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X59_Y39_N32
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: MLABCELL_X52_Y10_N8
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \A[42]~input_o\ & ( (!\A[43]~input_o\ & !\B[43]~input_o\) ) ) # ( !\A[42]~input_o\ & ( (!\B[42]~input_o\ & ((!\A[43]~input_o\) # 
-- (!\B[43]~input_o\))) # (\B[42]~input_o\ & (!\A[43]~input_o\ & !\B[43]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[42]~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_B[43]~input_o\,
	dataf => \ALT_INV_A[42]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: MLABCELL_X52_Y10_N30
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[43]~input_o\ & ( \B[42]~input_o\ & ( (\A[42]~input_o\) # (\A[43]~input_o\) ) ) ) # ( !\B[43]~input_o\ & ( \B[42]~input_o\ & ( 
-- (\A[43]~input_o\ & \A[42]~input_o\) ) ) ) # ( \B[43]~input_o\ & ( !\B[42]~input_o\ & ( \A[43]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	datae => \ALT_INV_B[43]~input_o\,
	dataf => \ALT_INV_B[42]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X50_Y10_N32
\c[44]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \c[44]~29_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[42]~28_combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[42]~28_combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[42]~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[42]~28_combout\,
	combout => \c[44]~29_combout\);

-- Location: LABCELL_X50_Y10_N38
\S~44\ : arriaii_lcell_comb
-- Equation(s):
-- \S~44_combout\ = ( \A[44]~input_o\ & ( \c[44]~29_combout\ & ( \B[44]~input_o\ ) ) ) # ( !\A[44]~input_o\ & ( \c[44]~29_combout\ & ( !\B[44]~input_o\ ) ) ) # ( \A[44]~input_o\ & ( !\c[44]~29_combout\ & ( !\B[44]~input_o\ ) ) ) # ( !\A[44]~input_o\ & ( 
-- !\c[44]~29_combout\ & ( \B[44]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[44]~input_o\,
	datae => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_c[44]~29_combout\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X59_Y26_N63
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X59_Y28_N32
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LABCELL_X50_Y10_N10
\S~45\ : arriaii_lcell_comb
-- Equation(s):
-- \S~45_combout\ = ( \B[45]~input_o\ & ( \c[44]~29_combout\ & ( !\A[45]~input_o\ $ (((\B[44]~input_o\) # (\A[44]~input_o\))) ) ) ) # ( !\B[45]~input_o\ & ( \c[44]~29_combout\ & ( !\A[45]~input_o\ $ (((!\A[44]~input_o\ & !\B[44]~input_o\))) ) ) ) # ( 
-- \B[45]~input_o\ & ( !\c[44]~29_combout\ & ( !\A[45]~input_o\ $ (((\A[44]~input_o\ & \B[44]~input_o\))) ) ) ) # ( !\B[45]~input_o\ & ( !\c[44]~29_combout\ & ( !\A[45]~input_o\ $ (((!\A[44]~input_o\) # (!\B[44]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100111100001100001100111100111100001100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[44]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[44]~input_o\,
	datae => \ALT_INV_B[45]~input_o\,
	dataf => \ALT_INV_c[44]~29_combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X59_Y28_N63
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X39_Y0_N94
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: MLABCELL_X52_Y10_N16
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[44]~input_o\ & ( \B[44]~input_o\ & ( (\A[45]~input_o\) # (\B[45]~input_o\) ) ) ) # ( !\A[44]~input_o\ & ( \B[44]~input_o\ & ( 
-- (\B[45]~input_o\ & \A[45]~input_o\) ) ) ) # ( \A[44]~input_o\ & ( !\B[44]~input_o\ & ( (\B[45]~input_o\ & \A[45]~input_o\) ) ) ) # ( !\A[44]~input_o\ & ( !\B[44]~input_o\ & ( (\B[45]~input_o\ & \A[45]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[45]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	datae => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[44]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X53_Y10_N30
\c[46]~31DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[46]~31DUPLICATE_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[40]~27_combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[40]~27_combout\ & 
-- ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & 
-- ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000110010001100000000001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[40]~27_combout\,
	combout => \c[46]~31DUPLICATE_combout\);

-- Location: LABCELL_X50_Y10_N28
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( !\B[45]~input_o\ & ( \A[45]~input_o\ & ( (!\B[44]~input_o\ & !\A[44]~input_o\) ) ) ) # ( \B[45]~input_o\ & ( !\A[45]~input_o\ & ( 
-- (!\B[44]~input_o\ & !\A[44]~input_o\) ) ) ) # ( !\B[45]~input_o\ & ( !\A[45]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	datae => \ALT_INV_B[45]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X53_Y10_N8
\c[46]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \c[46]~30_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[40]~27_combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[40]~27_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & 
-- ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & 
-- ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001000000000011000100110001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[40]~27_combout\,
	combout => \c[46]~30_combout\);

-- Location: LABCELL_X53_Y10_N0
\c[46]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \c[46]~32_combout\ = ( !\c[46]~30_combout\ & ( !\c[46]~31DUPLICATE_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_c[46]~31DUPLICATE_combout\,
	dataf => \ALT_INV_c[46]~30_combout\,
	combout => \c[46]~32_combout\);

-- Location: LABCELL_X58_Y10_N2
\S~46\ : arriaii_lcell_comb
-- Equation(s):
-- \S~46_combout\ = ( \c[46]~32_combout\ & ( !\B[46]~input_o\ $ (!\A[46]~input_o\) ) ) # ( !\c[46]~32_combout\ & ( !\B[46]~input_o\ $ (\A[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[46]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_c[46]~32_combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X37_Y0_N94
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X59_Y4_N63
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LABCELL_X58_Y10_N26
\S~47\ : arriaii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = ( \A[47]~input_o\ & ( \c[46]~32_combout\ & ( !\B[47]~input_o\ $ (((\B[46]~input_o\ & \A[46]~input_o\))) ) ) ) # ( !\A[47]~input_o\ & ( \c[46]~32_combout\ & ( !\B[47]~input_o\ $ (((!\B[46]~input_o\) # (!\A[46]~input_o\))) ) ) ) # ( 
-- \A[47]~input_o\ & ( !\c[46]~32_combout\ & ( !\B[47]~input_o\ $ (((\A[46]~input_o\) # (\B[46]~input_o\))) ) ) ) # ( !\A[47]~input_o\ & ( !\c[46]~32_combout\ & ( !\B[47]~input_o\ $ (((!\B[46]~input_o\ & !\A[46]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100110000110011001100110011001111001100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[47]~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_c[46]~32_combout\,
	combout => \S~47_combout\);

-- Location: IOIBUF_X24_Y0_N63
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X19_Y0_N32
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LABCELL_X58_Y10_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[46]~input_o\ & ( (!\B[47]~input_o\ & (\A[46]~input_o\ & \A[47]~input_o\)) # (\B[47]~input_o\ & ((\A[47]~input_o\) # (\A[46]~input_o\))) ) ) 
-- # ( !\B[46]~input_o\ & ( (\B[47]~input_o\ & \A[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y10_N22
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( !\A[47]~input_o\ & ( \B[46]~input_o\ & ( !\B[47]~input_o\ ) ) ) # ( \A[47]~input_o\ & ( !\B[46]~input_o\ & ( (!\B[47]~input_o\ & 
-- !\A[46]~input_o\) ) ) ) # ( !\A[47]~input_o\ & ( !\B[46]~input_o\ & ( (!\B[47]~input_o\) # (!\A[46]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X53_Y10_N28
\c[46]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \c[46]~31_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[40]~27_combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\) # 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[40]~27_combout\ & 
-- ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & 
-- ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100011001100000010000000100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[40]~27_combout\,
	combout => \c[46]~31_combout\);

-- Location: LABCELL_X53_Y10_N12
\c[48]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \c[48]~33_combout\ = ( \c[46]~31_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ ) ) # ( !\c[46]~31_combout\ & ( (!\c[46]~30_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\)) # (\c[46]~30_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \ALT_INV_c[46]~30_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[46]~31_combout\,
	combout => \c[48]~33_combout\);

-- Location: MLABCELL_X44_Y2_N20
\S~48\ : arriaii_lcell_comb
-- Equation(s):
-- \S~48_combout\ = ( \B[48]~input_o\ & ( \c[48]~33_combout\ & ( \A[48]~input_o\ ) ) ) # ( !\B[48]~input_o\ & ( \c[48]~33_combout\ & ( !\A[48]~input_o\ ) ) ) # ( \B[48]~input_o\ & ( !\c[48]~33_combout\ & ( !\A[48]~input_o\ ) ) ) # ( !\B[48]~input_o\ & ( 
-- !\c[48]~33_combout\ & ( \A[48]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[48]~input_o\,
	datae => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_c[48]~33_combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X25_Y0_N94
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X24_Y0_N94
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: MLABCELL_X44_Y2_N26
\S~49\ : arriaii_lcell_comb
-- Equation(s):
-- \S~49_combout\ = ( \A[49]~input_o\ & ( \c[48]~33_combout\ & ( !\B[49]~input_o\ $ (((\A[48]~input_o\) # (\B[48]~input_o\))) ) ) ) # ( !\A[49]~input_o\ & ( \c[48]~33_combout\ & ( !\B[49]~input_o\ $ (((!\B[48]~input_o\ & !\A[48]~input_o\))) ) ) ) # ( 
-- \A[49]~input_o\ & ( !\c[48]~33_combout\ & ( !\B[49]~input_o\ $ (((\B[48]~input_o\ & \A[48]~input_o\))) ) ) ) # ( !\A[49]~input_o\ & ( !\c[48]~33_combout\ & ( !\B[49]~input_o\ $ (((!\B[48]~input_o\) # (!\A[48]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010111110100000010101011111101000001010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_c[48]~33_combout\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X59_Y36_N32
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: MLABCELL_X44_Y2_N32
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[48]~input_o\ & ( \B[49]~input_o\ & ( (\A[48]~input_o\) # (\A[49]~input_o\) ) ) ) # ( !\B[48]~input_o\ & ( \B[49]~input_o\ & ( \A[49]~input_o\ 
-- ) ) ) # ( \B[48]~input_o\ & ( !\B[49]~input_o\ & ( (\A[49]~input_o\ & \A[48]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_A[48]~input_o\,
	datae => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X44_Y2_N30
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( !\A[49]~input_o\ & ( \B[49]~input_o\ & ( (!\A[48]~input_o\ & !\B[48]~input_o\) ) ) ) # ( \A[49]~input_o\ & ( !\B[49]~input_o\ & ( 
-- (!\A[48]~input_o\ & !\B[48]~input_o\) ) ) ) # ( !\A[49]~input_o\ & ( !\B[49]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_B[48]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X53_Y10_N10
\c[46]~30DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[46]~30DUPLICATE_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[40]~27_combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[40]~27_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & 
-- ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[40]~27_combout\ & 
-- ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010000000100000011001100010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[40]~27_combout\,
	combout => \c[46]~30DUPLICATE_combout\);

-- Location: LABCELL_X53_Y10_N24
\c[50]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \c[50]~34_combout\ = ( \c[46]~31DUPLICATE_combout\ & ( \c[46]~30DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) ) ) ) # ( !\c[46]~31DUPLICATE_combout\ & ( \c[46]~30DUPLICATE_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) ) ) ) # ( 
-- \c[46]~31DUPLICATE_combout\ & ( !\c[46]~30DUPLICATE_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) ) ) ) # ( !\c[46]~31DUPLICATE_combout\ & ( !\c[46]~30DUPLICATE_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100111100000101010111110000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \ALT_INV_c[46]~31DUPLICATE_combout\,
	dataf => \ALT_INV_c[46]~30DUPLICATE_combout\,
	combout => \c[50]~34_combout\);

-- Location: IOIBUF_X59_Y37_N94
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LABCELL_X58_Y33_N10
\S~50\ : arriaii_lcell_comb
-- Equation(s):
-- \S~50_combout\ = ( \c[50]~34_combout\ & ( \A[50]~input_o\ & ( \B[50]~input_o\ ) ) ) # ( !\c[50]~34_combout\ & ( \A[50]~input_o\ & ( !\B[50]~input_o\ ) ) ) # ( \c[50]~34_combout\ & ( !\A[50]~input_o\ & ( !\B[50]~input_o\ ) ) ) # ( !\c[50]~34_combout\ & ( 
-- !\A[50]~input_o\ & ( \B[50]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[50]~input_o\,
	datae => \ALT_INV_c[50]~34_combout\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \S~50_combout\);

-- Location: IOIBUF_X59_Y33_N32
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LABCELL_X58_Y33_N30
\S~51\ : arriaii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = ( \c[50]~34_combout\ & ( \A[50]~input_o\ & ( !\B[51]~input_o\ $ (\A[51]~input_o\) ) ) ) # ( !\c[50]~34_combout\ & ( \A[50]~input_o\ & ( !\B[51]~input_o\ $ (!\B[50]~input_o\ $ (\A[51]~input_o\)) ) ) ) # ( \c[50]~34_combout\ & ( 
-- !\A[50]~input_o\ & ( !\B[51]~input_o\ $ (!\B[50]~input_o\ $ (\A[51]~input_o\)) ) ) ) # ( !\c[50]~34_combout\ & ( !\A[50]~input_o\ & ( !\B[51]~input_o\ $ (!\A[51]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001111001100001100111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	datae => \ALT_INV_c[50]~34_combout\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X59_Y36_N63
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X58_Y34_N12
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \B[50]~input_o\ & ( \A[50]~input_o\ & ( (\A[51]~input_o\) # (\B[51]~input_o\) ) ) ) # ( !\B[50]~input_o\ & ( \A[50]~input_o\ & ( 
-- (\A[51]~input_o\) # (\B[51]~input_o\) ) ) ) # ( \B[50]~input_o\ & ( !\A[50]~input_o\ & ( (\A[51]~input_o\) # (\B[51]~input_o\) ) ) ) # ( !\B[50]~input_o\ & ( !\A[50]~input_o\ & ( (\B[51]~input_o\ & \A[51]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[51]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	datae => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X58_Y34_N34
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[50]~input_o\ & ( \A[50]~input_o\ & ( (\B[51]~input_o\) # (\A[51]~input_o\) ) ) ) # ( !\B[50]~input_o\ & ( \A[50]~input_o\ & ( 
-- (\A[51]~input_o\ & \B[51]~input_o\) ) ) ) # ( \B[50]~input_o\ & ( !\A[50]~input_o\ & ( (\A[51]~input_o\ & \B[51]~input_o\) ) ) ) # ( !\B[50]~input_o\ & ( !\A[50]~input_o\ & ( (\A[51]~input_o\ & \B[51]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_B[51]~input_o\,
	datae => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: IOIBUF_X59_Y36_N94
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LABCELL_X58_Y34_N20
\S~52\ : arriaii_lcell_comb
-- Equation(s):
-- \S~52_combout\ = ( \B[52]~input_o\ & ( \c[50]~34_combout\ & ( !\A[52]~input_o\ $ (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\) ) ) ) # ( !\B[52]~input_o\ & ( \c[50]~34_combout\ & ( 
-- !\A[52]~input_o\ $ (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\) ) ) ) # ( \B[52]~input_o\ & ( !\c[50]~34_combout\ & ( !\A[52]~input_o\ $ 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\) ) ) ) # ( !\B[52]~input_o\ & ( !\c[50]~34_combout\ & ( !\A[52]~input_o\ $ 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011000011001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[52]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_c[50]~34_combout\,
	combout => \S~52_combout\);

-- Location: IOIBUF_X59_Y36_N1
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X59_Y37_N1
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LABCELL_X58_Y34_N0
\S~69\ : arriaii_lcell_comb
-- Equation(s):
-- \S~69_combout\ = ( !\c[50]~34_combout\ & ( !\A[53]~input_o\ $ (!\B[53]~input_o\ $ (((!\B[52]~input_o\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & \A[52]~input_o\)) # (\B[52]~input_o\ & 
-- ((\A[52]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)))))) ) ) # ( \c[50]~34_combout\ & ( !\A[53]~input_o\ $ (!\B[53]~input_o\ $ (((!\B[52]~input_o\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & \A[52]~input_o\)) # (\B[52]~input_o\ & ((\A[52]~input_o\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011001101010010101100110101010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datab => \ALT_INV_B[52]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \ALT_INV_A[52]~input_o\,
	datae => \ALT_INV_c[50]~34_combout\,
	dataf => \ALT_INV_B[53]~input_o\,
	datag => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \S~69_combout\);

-- Location: LABCELL_X58_Y34_N16
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \B[52]~input_o\ & ( \B[53]~input_o\ ) ) # ( !\B[52]~input_o\ & ( \B[53]~input_o\ & ( (\A[52]~input_o\) # (\A[53]~input_o\) ) ) ) # ( 
-- \B[52]~input_o\ & ( !\B[53]~input_o\ & ( \A[53]~input_o\ ) ) ) # ( !\B[52]~input_o\ & ( !\B[53]~input_o\ & ( (\A[53]~input_o\ & \A[52]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_A[52]~input_o\,
	datae => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_B[53]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: IOIBUF_X59_Y46_N94
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LABCELL_X58_Y34_N4
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[52]~input_o\ & ( \A[52]~input_o\ & ( (\A[53]~input_o\) # (\B[53]~input_o\) ) ) ) # ( !\B[52]~input_o\ & ( \A[52]~input_o\ & ( 
-- (\B[53]~input_o\ & \A[53]~input_o\) ) ) ) # ( \B[52]~input_o\ & ( !\A[52]~input_o\ & ( (\B[53]~input_o\ & \A[53]~input_o\) ) ) ) # ( !\B[52]~input_o\ & ( !\A[52]~input_o\ & ( (\B[53]~input_o\ & \A[53]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X58_Y26_N10
\S~65\ : arriaii_lcell_comb
-- Equation(s):
-- \S~65_combout\ = ( !\c[50]~34_combout\ & ( !\B[54]~input_o\ $ (!\A[54]~input_o\ $ (((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) ) # ( \c[50]~34_combout\ & ( !\B[54]~input_o\ $ (!\A[54]~input_o\ $ 
-- (((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011011001001001101101100100111000110001110011100011000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \ALT_INV_B[54]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \ALT_INV_A[54]~input_o\,
	datae => \ALT_INV_c[50]~34_combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datag => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \S~65_combout\);

-- Location: IOIBUF_X59_Y48_N32
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LABCELL_X58_Y34_N24
\c[54]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \c[54]~35_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[50]~34_combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[50]~34_combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[50]~34_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[50]~34_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[50]~34_combout\,
	combout => \c[54]~35_combout\);

-- Location: LABCELL_X58_Y34_N30
\S~53\ : arriaii_lcell_comb
-- Equation(s):
-- \S~53_combout\ = ( \B[54]~input_o\ & ( \c[54]~35_combout\ & ( !\A[55]~input_o\ $ (\B[55]~input_o\) ) ) ) # ( !\B[54]~input_o\ & ( \c[54]~35_combout\ & ( !\A[54]~input_o\ $ (!\A[55]~input_o\ $ (\B[55]~input_o\)) ) ) ) # ( \B[54]~input_o\ & ( 
-- !\c[54]~35_combout\ & ( !\A[54]~input_o\ $ (!\A[55]~input_o\ $ (\B[55]~input_o\)) ) ) ) # ( !\B[54]~input_o\ & ( !\c[54]~35_combout\ & ( !\A[55]~input_o\ $ (!\B[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010110101010010101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	datae => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_c[54]~35_combout\,
	combout => \S~53_combout\);

-- Location: IOIBUF_X19_Y0_N94
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LABCELL_X58_Y34_N8
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( !\A[54]~input_o\ & ( \A[55]~input_o\ & ( (!\B[54]~input_o\ & !\B[55]~input_o\) ) ) ) # ( \A[54]~input_o\ & ( !\A[55]~input_o\ & ( 
-- !\B[55]~input_o\ ) ) ) # ( !\A[54]~input_o\ & ( !\A[55]~input_o\ & ( (!\B[54]~input_o\) # (!\B[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111110000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X53_Y10_N22
\c[56]~36DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[56]~36DUPLICATE_combout\ = ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[50]~34_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[50]~34_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000011101000111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[50]~34_combout\,
	combout => \c[56]~36DUPLICATE_combout\);

-- Location: IOIBUF_X59_Y39_N94
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LABCELL_X58_Y34_N38
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \B[54]~input_o\ & ( \A[55]~input_o\ & ( (\A[54]~input_o\) # (\B[55]~input_o\) ) ) ) # ( !\B[54]~input_o\ & ( \A[55]~input_o\ & ( 
-- \B[55]~input_o\ ) ) ) # ( \B[54]~input_o\ & ( !\A[55]~input_o\ & ( (\B[55]~input_o\ & \A[54]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_A[54]~input_o\,
	datae => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X53_Y10_N32
\c[56]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \c[56]~37_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[50]~34_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[50]~34_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010101100101000000000000000001100110010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[50]~34_combout\,
	combout => \c[56]~37_combout\);

-- Location: MLABCELL_X54_Y10_N30
\S~54\ : arriaii_lcell_comb
-- Equation(s):
-- \S~54_combout\ = ( \c[56]~37_combout\ & ( !\B[56]~input_o\ $ (\A[56]~input_o\) ) ) # ( !\c[56]~37_combout\ & ( !\B[56]~input_o\ $ (!\c[56]~36DUPLICATE_combout\ $ (\A[56]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_c[56]~36DUPLICATE_combout\,
	datad => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_c[56]~37_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X22_Y0_N32
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X19_Y0_N63
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LABCELL_X53_Y10_N20
\c[56]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \c[56]~36_combout\ = ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( \c[50]~34_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ & ( !\c[50]~34_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000000000000000010001110111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[50]~34_combout\,
	combout => \c[56]~36_combout\);

-- Location: LABCELL_X53_Y10_N34
\c[56]~37DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[56]~37DUPLICATE_combout\ = ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( \c[50]~34_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ & (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ & ( !\c[50]~34_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001010101000000000000000001100101011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[50]~34_combout\,
	combout => \c[56]~37DUPLICATE_combout\);

-- Location: MLABCELL_X52_Y10_N12
\S~55\ : arriaii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = ( \c[56]~36_combout\ & ( \c[56]~37DUPLICATE_combout\ & ( !\A[57]~input_o\ $ (!\B[57]~input_o\ $ (((\B[56]~input_o\) # (\A[56]~input_o\)))) ) ) ) # ( !\c[56]~36_combout\ & ( \c[56]~37DUPLICATE_combout\ & ( !\A[57]~input_o\ $ 
-- (!\B[57]~input_o\ $ (((\B[56]~input_o\) # (\A[56]~input_o\)))) ) ) ) # ( \c[56]~36_combout\ & ( !\c[56]~37DUPLICATE_combout\ & ( !\A[57]~input_o\ $ (!\B[57]~input_o\ $ (((\B[56]~input_o\) # (\A[56]~input_o\)))) ) ) ) # ( !\c[56]~36_combout\ & ( 
-- !\c[56]~37DUPLICATE_combout\ & ( !\A[57]~input_o\ $ (!\B[57]~input_o\ $ (((\A[56]~input_o\ & \B[56]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001011010011100001101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	datae => \ALT_INV_c[56]~36_combout\,
	dataf => \ALT_INV_c[56]~37DUPLICATE_combout\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X25_Y0_N63
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: MLABCELL_X52_Y10_N34
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \A[57]~input_o\ & ( ((\A[56]~input_o\ & \B[56]~input_o\)) # (\B[57]~input_o\) ) ) # ( !\A[57]~input_o\ & ( (\A[56]~input_o\ & (\B[56]~input_o\ 
-- & \B[57]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X52_Y10_N32
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \A[57]~input_o\ & ( (!\A[56]~input_o\ & (!\B[56]~input_o\ & !\B[57]~input_o\)) ) ) # ( !\A[57]~input_o\ & ( (!\B[57]~input_o\) # 
-- ((!\A[56]~input_o\ & !\B[56]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110001111100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: IOIBUF_X25_Y0_N32
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: MLABCELL_X52_Y10_N4
\S~56\ : arriaii_lcell_comb
-- Equation(s):
-- \S~56_combout\ = ( \c[56]~36_combout\ & ( \c[56]~37DUPLICATE_combout\ & ( !\B[58]~input_o\ $ (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ $ (!\A[58]~input_o\)) ) ) ) # ( !\c[56]~36_combout\ 
-- & ( \c[56]~37DUPLICATE_combout\ & ( !\B[58]~input_o\ $ (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ $ (!\A[58]~input_o\)) ) ) ) # ( \c[56]~36_combout\ & ( !\c[56]~37DUPLICATE_combout\ & ( 
-- !\B[58]~input_o\ $ (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ $ (!\A[58]~input_o\)) ) ) ) # ( !\c[56]~36_combout\ & ( !\c[56]~37DUPLICATE_combout\ & ( !\B[58]~input_o\ $ 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ $ (\A[58]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001101001010101101010100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_c[56]~36_combout\,
	dataf => \ALT_INV_c[56]~37DUPLICATE_combout\,
	combout => \S~56_combout\);

-- Location: IOIBUF_X59_Y28_N1
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LABCELL_X53_Y10_N14
\c[58]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \c[58]~38_combout\ = ( \c[56]~36_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ ) ) # ( !\c[56]~36_combout\ & ( (!\c[56]~37DUPLICATE_combout\ & 
-- ((\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\))) # (\c[56]~37DUPLICATE_combout\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \ALT_INV_c[56]~37DUPLICATE_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[56]~36_combout\,
	combout => \c[58]~38_combout\);

-- Location: LABCELL_X53_Y10_N2
\S~57\ : arriaii_lcell_comb
-- Equation(s):
-- \S~57_combout\ = ( \c[58]~38_combout\ & ( !\A[59]~input_o\ $ (!\B[59]~input_o\ $ (((\B[58]~input_o\) # (\A[58]~input_o\)))) ) ) # ( !\c[58]~38_combout\ & ( !\A[59]~input_o\ $ (!\B[59]~input_o\ $ (((\A[58]~input_o\ & \B[58]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[58]~input_o\,
	datab => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_B[58]~input_o\,
	datad => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_c[58]~38_combout\,
	combout => \S~57_combout\);

-- Location: IOIBUF_X22_Y0_N1
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X16_Y0_N63
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: MLABCELL_X52_Y10_N10
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \A[59]~input_o\ & ( ((\B[58]~input_o\ & \A[58]~input_o\)) # (\B[59]~input_o\) ) ) # ( !\A[59]~input_o\ & ( (\B[58]~input_o\ & (\A[58]~input_o\ 
-- & \B[59]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: MLABCELL_X52_Y10_N0
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \A[59]~input_o\ & ( (!\B[59]~input_o\ & (!\B[58]~input_o\ & !\A[58]~input_o\)) ) ) # ( !\A[59]~input_o\ & ( (!\B[59]~input_o\) # 
-- ((!\B[58]~input_o\ & !\A[58]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datac => \ALT_INV_B[58]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X53_Y10_N36
\c[60]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \c[60]~39_combout\ = ( \c[56]~36DUPLICATE_combout\ & ( \c[56]~37_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)) ) ) ) # ( !\c[56]~36DUPLICATE_combout\ & ( \c[56]~37_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)) ) ) ) # ( 
-- \c[56]~36DUPLICATE_combout\ & ( !\c[56]~37_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)) ) ) ) # ( !\c[56]~36DUPLICATE_combout\ & ( !\c[56]~37_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry0[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|carry1[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111001100110001011100010111000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datae => \ALT_INV_c[56]~36DUPLICATE_combout\,
	dataf => \ALT_INV_c[56]~37_combout\,
	combout => \c[60]~39_combout\);

-- Location: LABCELL_X53_Y2_N14
\S~58\ : arriaii_lcell_comb
-- Equation(s):
-- \S~58_combout\ = ( \c[60]~39_combout\ & ( !\B[60]~input_o\ $ (\A[60]~input_o\) ) ) # ( !\c[60]~39_combout\ & ( !\B[60]~input_o\ $ (!\A[60]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_c[60]~39_combout\,
	combout => \S~58_combout\);

-- Location: IOIBUF_X18_Y0_N32
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X59_Y48_N1
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LABCELL_X53_Y2_N2
\S~59\ : arriaii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = ( \A[61]~input_o\ & ( \c[60]~39_combout\ & ( !\B[61]~input_o\ $ (((\B[60]~input_o\) # (\A[60]~input_o\))) ) ) ) # ( !\A[61]~input_o\ & ( \c[60]~39_combout\ & ( !\B[61]~input_o\ $ (((!\A[60]~input_o\ & !\B[60]~input_o\))) ) ) ) # ( 
-- \A[61]~input_o\ & ( !\c[60]~39_combout\ & ( !\B[61]~input_o\ $ (((\A[60]~input_o\ & \B[60]~input_o\))) ) ) ) # ( !\A[61]~input_o\ & ( !\c[60]~39_combout\ & ( !\B[61]~input_o\ $ (((!\A[60]~input_o\) # (!\B[60]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010111100001010010101011010111100001010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_B[60]~input_o\,
	datae => \ALT_INV_A[61]~input_o\,
	dataf => \ALT_INV_c[60]~39_combout\,
	combout => \S~59_combout\);

-- Location: LABCELL_X53_Y2_N20
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ = ( \A[61]~input_o\ & ( ((\B[60]~input_o\) # (\B[61]~input_o\)) # (\A[60]~input_o\) ) ) # ( !\A[61]~input_o\ & ( (\B[61]~input_o\ & 
-- ((\B[60]~input_o\) # (\A[60]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\);

-- Location: IOIBUF_X22_Y0_N63
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X22_Y0_N94
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LABCELL_X53_Y2_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ = ( \B[60]~input_o\ & ( (!\A[60]~input_o\ & (\B[61]~input_o\ & \A[61]~input_o\)) # (\A[60]~input_o\ & ((\A[61]~input_o\) # (\B[61]~input_o\))) ) ) 
-- # ( !\B[60]~input_o\ & ( (\B[61]~input_o\ & \A[61]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	dataf => \ALT_INV_B[60]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X53_Y2_N16
\S~60\ : arriaii_lcell_comb
-- Equation(s):
-- \S~60_combout\ = ( \c[60]~39_combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ $ (!\B[62]~input_o\ $ (\A[62]~input_o\)) ) ) # ( !\c[60]~39_combout\ & ( !\B[62]~input_o\ $ 
-- (!\A[62]~input_o\ $ (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	dataf => \ALT_INV_c[60]~39_combout\,
	combout => \S~60_combout\);

-- Location: IOIBUF_X16_Y0_N1
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X18_Y0_N63
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LABCELL_X53_Y2_N32
\S~61\ : arriaii_lcell_comb
-- Equation(s):
-- \S~61_combout\ = ( !\c[60]~39_combout\ & ( !\A[63]~input_o\ $ (!\B[63]~input_o\ $ (((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & (\B[62]~input_o\ & \A[62]~input_o\)) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((\A[62]~input_o\) # (\B[62]~input_o\)))))) ) ) # ( \c[60]~39_combout\ & ( !\A[63]~input_o\ $ (!\B[63]~input_o\ $ 
-- (((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & (\B[62]~input_o\ & \A[62]~input_o\)) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & ((\A[62]~input_o\) # (\B[62]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_B[63]~input_o\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \ALT_INV_B[62]~input_o\,
	datae => \ALT_INV_c[60]~39_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	datag => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	combout => \S~61_combout\);

-- Location: LABCELL_X53_Y2_N38
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\ = ( \A[62]~input_o\ & ( (!\B[63]~input_o\ & (\B[62]~input_o\ & \A[63]~input_o\)) # (\B[63]~input_o\ & ((\A[63]~input_o\) # (\B[62]~input_o\))) ) 
-- ) # ( !\A[62]~input_o\ & ( (\B[63]~input_o\ & \A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_B[62]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\);

-- Location: LABCELL_X53_Y2_N36
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\ = ( \A[62]~input_o\ & ( (!\B[63]~input_o\ & !\A[63]~input_o\) ) ) # ( !\A[62]~input_o\ & ( (!\B[63]~input_o\ & ((!\B[62]~input_o\) # 
-- (!\A[63]~input_o\))) # (\B[63]~input_o\ & (!\B[62]~input_o\ & !\A[63]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\);

-- Location: LABCELL_X53_Y2_N24
\c~40\ : arriaii_lcell_comb
-- Equation(s):
-- \c~40_combout\ = ( \c[60]~39_combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\)) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & 
-- ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\))) ) ) # ( !\c[60]~39_combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry0[1]~0_combout\)) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|carry1[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110001011111000010100101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry0[1]~0_combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_carry1[1]~0_combout\,
	dataf => \ALT_INV_c[60]~39_combout\,
	combout => \c~40_combout\);

-- Location: LABCELL_X53_Y2_N28
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \c[60]~39_combout\ & ( \c~40_combout\ & ( (!\A[62]~input_o\ & ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\) # (!\B[62]~input_o\))) # (\A[62]~input_o\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & !\B[62]~input_o\)) ) ) ) # ( !\c[60]~39_combout\ & ( \c~40_combout\ & ( (!\A[62]~input_o\ & 
-- ((!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\) # (!\B[62]~input_o\))) # (\A[62]~input_o\ & 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & !\B[62]~input_o\)) ) ) ) # ( \c[60]~39_combout\ & ( !\c~40_combout\ & ( (!\A[62]~input_o\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\ & \B[62]~input_o\)) # (\A[62]~input_o\ & ((\B[62]~input_o\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry1[1]~0_combout\))) ) ) ) # ( !\c[60]~39_combout\ & ( !\c~40_combout\ & ( (!\A[62]~input_o\ & 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\ & \B[62]~input_o\)) # (\A[62]~input_o\ & ((\B[62]~input_o\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|carry0[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000001010101111111101110100010001111101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry0[1]~0_combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_carry1[1]~0_combout\,
	datad => \ALT_INV_B[62]~input_o\,
	datae => \ALT_INV_c[60]~39_combout\,
	dataf => \ALT_INV_c~40_combout\,
	combout => \Ovfl~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_S(32) <= \S[32]~output_o\;

ww_S(33) <= \S[33]~output_o\;

ww_S(34) <= \S[34]~output_o\;

ww_S(35) <= \S[35]~output_o\;

ww_S(36) <= \S[36]~output_o\;

ww_S(37) <= \S[37]~output_o\;

ww_S(38) <= \S[38]~output_o\;

ww_S(39) <= \S[39]~output_o\;

ww_S(40) <= \S[40]~output_o\;

ww_S(41) <= \S[41]~output_o\;

ww_S(42) <= \S[42]~output_o\;

ww_S(43) <= \S[43]~output_o\;

ww_S(44) <= \S[44]~output_o\;

ww_S(45) <= \S[45]~output_o\;

ww_S(46) <= \S[46]~output_o\;

ww_S(47) <= \S[47]~output_o\;

ww_S(48) <= \S[48]~output_o\;

ww_S(49) <= \S[49]~output_o\;

ww_S(50) <= \S[50]~output_o\;

ww_S(51) <= \S[51]~output_o\;

ww_S(52) <= \S[52]~output_o\;

ww_S(53) <= \S[53]~output_o\;

ww_S(54) <= \S[54]~output_o\;

ww_S(55) <= \S[55]~output_o\;

ww_S(56) <= \S[56]~output_o\;

ww_S(57) <= \S[57]~output_o\;

ww_S(58) <= \S[58]~output_o\;

ww_S(59) <= \S[59]~output_o\;

ww_S(60) <= \S[60]~output_o\;

ww_S(61) <= \S[61]~output_o\;

ww_S(62) <= \S[62]~output_o\;

ww_S(63) <= \S[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


