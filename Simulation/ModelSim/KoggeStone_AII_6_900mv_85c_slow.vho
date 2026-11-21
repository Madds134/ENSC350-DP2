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

-- DATE "11/20/2026 23:22:59"

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
-- S[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c[10]~115_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][2]~0_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \c[11]~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][3]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~2_combout\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][4]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[3][8]~0_combout\ : std_logic;
SIGNAL \c[5]~DUPLICATE_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][5]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~7_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][6]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~1_combout\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~11_combout\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][7]~12_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][8]~1_combout\ : std_logic;
SIGNAL \c[25]~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][8]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][8]~combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][9]~2_combout\ : std_logic;
SIGNAL \c[10]~7_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][9]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][9]~combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][10]~3_combout\ : std_logic;
SIGNAL \c[11]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][10]~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][10]~combout\ : std_logic;
SIGNAL \c[27]~9DUPLICATE_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][11]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][11]~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][11]~combout\ : std_logic;
SIGNAL \c[12]~10_combout\ : std_logic;
SIGNAL \c[36]~11_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][12]~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][12]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][12]~combout\ : std_logic;
SIGNAL \c[13]~12_combout\ : std_logic;
SIGNAL \c[37]~13_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][13]~6_combout\ : std_logic;
SIGNAL \c~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][13]~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][13]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~29_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][14]~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][14]~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][14]~combout\ : std_logic;
SIGNAL \c~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~33_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][15]~8_combout\ : std_logic;
SIGNAL \c~16DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][15]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][15]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~37_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][16]~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][16]~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~43_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][16]~combout\ : std_logic;
SIGNAL \c[17]~17_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][17]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][17]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][17]~combout\ : std_logic;
SIGNAL \c[18]~18_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~48_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][18]~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~50_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][18]~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][18]~combout\ : std_logic;
SIGNAL \c[35]~19_combout\ : std_logic;
SIGNAL \c[19]~20_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][11]~DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][19]~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~54_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][19]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~56_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][19]~combout\ : std_logic;
SIGNAL \c[20]~21_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~57_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][20]~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][20]~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~59_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~43DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][20]~combout\ : std_logic;
SIGNAL \c[21]~22_combout\ : std_logic;
SIGNAL \c[21]~23_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~60_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~53DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][21]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][21]~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][21]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~61_combout\ : std_logic;
SIGNAL \c[38]~24_combout\ : std_logic;
SIGNAL \c[22]~25_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][22]~66_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~64_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][22]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~67_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][22]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~65_combout\ : std_logic;
SIGNAL \c[39]~26_combout\ : std_logic;
SIGNAL \c[23]~27_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~68DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][23]~16_combout\ : std_logic;
SIGNAL \c~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][23]~69DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~68_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][21]~62DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~70_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~56DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][23]~combout\ : std_logic;
SIGNAL \c[24]~28_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~71_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][24]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][24]~73_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~74_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][24]~combout\ : std_logic;
SIGNAL \c[41]~29_combout\ : std_logic;
SIGNAL \c[25]~30_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][25]~77_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][25]~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][23]~69_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][25]~combout\ : std_logic;
SIGNAL \c[42]~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~76_combout\ : std_logic;
SIGNAL \c[26]~32_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~79_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][26]~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~80_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][26]~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~82_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][26]~combout\ : std_logic;
SIGNAL \c[27]~9_combout\ : std_logic;
SIGNAL \c[27]~33_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~83_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][27]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~84_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][27]~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~87_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][27]~86_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][27]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][19]~DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~85_combout\ : std_logic;
SIGNAL \c[28]~34_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~88_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][28]~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~89_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][28]~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~90_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][28]~91_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~92DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][28]~combout\ : std_logic;
SIGNAL \c[29]~35_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~93_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][29]~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][29]~96_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~97_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][29]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~94_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][29]~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~95_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~98_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][30]~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~99_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][30]~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][30]~101_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][28]~91DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~102_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][30]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~100_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~103_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][31]~28DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][31]~29_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][31]~105_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~106_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][31]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][31]~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~104_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][32]~109_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~107_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~110DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][32]~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~92_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][32]~combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~108_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][32]~31_combout\ : std_logic;
SIGNAL \c[33]~36_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~111_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][33]~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][33]~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~112_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~114_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][33]~113_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][33]~combout\ : std_logic;
SIGNAL \c[34]~37_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~115_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][34]~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][34]~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~118_combout\ : std_logic;
SIGNAL \c[35]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][34]~116_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~117_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][34]~combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~119_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][35]~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][35]~37_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][35]~121_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~122_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][35]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~120_combout\ : std_logic;
SIGNAL \c[36]~39_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~123_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][36]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][36]~39_combout\ : std_logic;
SIGNAL \c[37]~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][36]~124_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~110_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~125_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][36]~combout\ : std_logic;
SIGNAL \c[37]~41_combout\ : std_logic;
SIGNAL \c[37]~13DUPLICATE_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][37]~127_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~126_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][37]~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~128_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][37]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][37]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][37]~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~129_combout\ : std_logic;
SIGNAL \c[38]~42_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~130_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][38]~43_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][38]~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][38]~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][38]~131_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~132_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][38]~combout\ : std_logic;
SIGNAL \c[39]~43_combout\ : std_logic;
SIGNAL \c[39]~26DUPLICATE_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~133_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][39]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][39]~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][39]~48_combout\ : std_logic;
SIGNAL \c[40]~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][39]~134_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~135_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][39]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~136_combout\ : std_logic;
SIGNAL \c[40]~45_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~137_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][40]~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~138_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][40]~139_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~140_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][40]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][40]~50_combout\ : std_logic;
SIGNAL \c[41]~46_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~141_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][41]~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~142_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][41]~143_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~144_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][41]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][41]~52_combout\ : std_logic;
SIGNAL \c[42]~47_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~145_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][42]~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][42]~54_combout\ : std_logic;
SIGNAL \c[43]~49_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~148_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][42]~147_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][42]~combout\ : std_logic;
SIGNAL \c[43]~48_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~146_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~149_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][43]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][43]~56_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~150_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][43]~151_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~152_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][43]~combout\ : std_logic;
SIGNAL \c[44]~50_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~153_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][44]~57_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~154_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][44]~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][44]~155_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~156_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][44]~combout\ : std_logic;
SIGNAL \c[45]~51_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~157_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][45]~59_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~158_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][45]~60_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][45]~159_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~160_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][45]~combout\ : std_logic;
SIGNAL \c[46]~52_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~161_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][46]~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][46]~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][46]~163_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~164_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][46]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~162_combout\ : std_logic;
SIGNAL \c[47]~53_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~165_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][47]~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][47]~64DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][47]~167_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~168_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][47]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~166DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][47]~64_combout\ : std_logic;
SIGNAL \c[48]~54_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~169_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][48]~65_combout\ : std_logic;
SIGNAL \c[49]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][48]~170_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~171_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][48]~combout\ : std_logic;
SIGNAL \c[49]~58_combout\ : std_logic;
SIGNAL \c[49]~57_combout\ : std_logic;
SIGNAL \c[49]~56_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~172_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][49]~66_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][49]~173_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~174_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][49]~combout\ : std_logic;
SIGNAL \c[50]~59_combout\ : std_logic;
SIGNAL \c[50]~62_combout\ : std_logic;
SIGNAL \c[50]~61_combout\ : std_logic;
SIGNAL \c[50]~60_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~175_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][50]~67_combout\ : std_logic;
SIGNAL \c[51]~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][50]~176_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~175DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~177_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][50]~combout\ : std_logic;
SIGNAL \c[51]~64_combout\ : std_logic;
SIGNAL \c[51]~65_combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~178_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][51]~68DUPLICATE_combout\ : std_logic;
SIGNAL \c[52]~66_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][51]~179_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~180_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][51]~combout\ : std_logic;
SIGNAL \c[52]~67_combout\ : std_logic;
SIGNAL \c[52]~68_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][52]~69_combout\ : std_logic;
SIGNAL \c[57]~69_combout\ : std_logic;
SIGNAL \c[53]~70_combout\ : std_logic;
SIGNAL \c[53]~71_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][52]~181_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~182_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][52]~combout\ : std_logic;
SIGNAL \c[53]~72_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][53]~70_combout\ : std_logic;
SIGNAL \c[58]~73_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][53]~183_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~184_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][53]~combout\ : std_logic;
SIGNAL \c[54]~74_combout\ : std_logic;
SIGNAL \c[54]~75_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~185DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][54]~71_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~185_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][54]~186_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][54]~combout\ : std_logic;
SIGNAL \c[55]~76_combout\ : std_logic;
SIGNAL \c[55]~78_combout\ : std_logic;
SIGNAL \c[55]~79_combout\ : std_logic;
SIGNAL \c[55]~77_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][51]~68_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~187_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][55]~72_combout\ : std_logic;
SIGNAL \c[56]~80_combout\ : std_logic;
SIGNAL \c[56]~81_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][55]~72DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][55]~188_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][55]~combout\ : std_logic;
SIGNAL \c[56]~82_combout\ : std_logic;
SIGNAL \c[56]~83_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][56]~73_combout\ : std_logic;
SIGNAL \c[57]~84_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][56]~189_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~190_combout\ : std_logic;
SIGNAL \c[57]~85_combout\ : std_logic;
SIGNAL \c[57]~86_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][57]~74_combout\ : std_logic;
SIGNAL \c[58]~87_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][57]~191_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~192_combout\ : std_logic;
SIGNAL \c[58]~88_combout\ : std_logic;
SIGNAL \c[58]~89_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[1][58]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][58]~75_combout\ : std_logic;
SIGNAL \c[59]~90_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][58]~193_combout\ : std_logic;
SIGNAL \c[59]~91_combout\ : std_logic;
SIGNAL \c[59]~92_combout\ : std_logic;
SIGNAL \c[59]~93_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[1][59]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\ : std_logic;
SIGNAL \c[60]~94_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][59]~194_combout\ : std_logic;
SIGNAL \c[60]~95_combout\ : std_logic;
SIGNAL \c[60]~96_combout\ : std_logic;
SIGNAL \c[52]~66DUPLICATE_combout\ : std_logic;
SIGNAL \c[60]~97_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[1][60]~combout\ : std_logic;
SIGNAL \c[61]~98_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][56]~73DUPLICATE_combout\ : std_logic;
SIGNAL \c[61]~99_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][60]~195_combout\ : std_logic;
SIGNAL \c[61]~100_combout\ : std_logic;
SIGNAL \c[61]~101_combout\ : std_logic;
SIGNAL \c[61]~102_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[1][61]~combout\ : std_logic;
SIGNAL \c[62]~103_combout\ : std_logic;
SIGNAL \c[62]~104_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][61]~196_combout\ : std_logic;
SIGNAL \c[62]~105_combout\ : std_logic;
SIGNAL \c[62]~106_combout\ : std_logic;
SIGNAL \c[62]~107_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][62]~77_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][62]~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~197_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~198_combout\ : std_logic;
SIGNAL \c~108_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][62]~199_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][62]~79_combout\ : std_logic;
SIGNAL \c[63]~109_combout\ : std_logic;
SIGNAL \c[63]~110_combout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \p[62]~DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][63]~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][59]~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][63]~80_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~200_combout\ : std_logic;
SIGNAL \c~111_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~201_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][63]~202_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][63]~82_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][63]~81DUPLICATE_combout\ : std_logic;
SIGNAL \c~112_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~166_combout\ : std_logic;
SIGNAL \c~113_combout\ : std_logic;
SIGNAL \c~114_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(63 DOWNTO 0);
SIGNAL c : std_logic_vector(64 DOWNTO 0);
SIGNAL \PrefixNetwork|Gpre\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_c[49]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][48]~65_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~169_combout\ : std_logic;
SIGNAL \ALT_INV_c[48]~54_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][47]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~168_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][47]~167_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~166_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][47]~64_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~165_combout\ : std_logic;
SIGNAL \ALT_INV_c[47]~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][46]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~164_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][46]~163_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~162_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][46]~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~161_combout\ : std_logic;
SIGNAL \ALT_INV_c[46]~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][45]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~160_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][45]~159_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][45]~60_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~158_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][45]~59_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~157_combout\ : std_logic;
SIGNAL \ALT_INV_c[45]~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][44]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~156_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][44]~155_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][44]~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~154_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][44]~57_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~153_combout\ : std_logic;
SIGNAL \ALT_INV_c[44]~50_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][43]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~152_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][43]~151_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~150_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][43]~56_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~149_combout\ : std_logic;
SIGNAL \ALT_INV_c[43]~49_combout\ : std_logic;
SIGNAL \ALT_INV_c[43]~48_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][42]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~148_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][42]~147_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][42]~54_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~146_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~145_combout\ : std_logic;
SIGNAL \ALT_INV_c[42]~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][41]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~144_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][41]~143_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][41]~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~142_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][41]~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~141_combout\ : std_logic;
SIGNAL \ALT_INV_c[41]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][40]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~140_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][40]~139_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][40]~50_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~138_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][40]~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~137_combout\ : std_logic;
SIGNAL \ALT_INV_c[40]~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~136_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][39]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~135_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][39]~134_combout\ : std_logic;
SIGNAL \ALT_INV_c[40]~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][39]~48_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][39]~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][39]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~133_combout\ : std_logic;
SIGNAL \ALT_INV_c[39]~43_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][38]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~132_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][38]~131_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][38]~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][38]~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][38]~43_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~130_combout\ : std_logic;
SIGNAL \ALT_INV_c[38]~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~129_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][37]~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][37]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][37]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~128_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][37]~127_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][37]~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~126_combout\ : std_logic;
SIGNAL \ALT_INV_c[37]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][36]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~125_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][36]~124_combout\ : std_logic;
SIGNAL \ALT_INV_c[37]~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][36]~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][36]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~123_combout\ : std_logic;
SIGNAL \ALT_INV_c[36]~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][35]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~122_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][35]~121_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~120_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][35]~37_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][35]~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~119_combout\ : std_logic;
SIGNAL \ALT_INV_c[35]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~118_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][34]~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][34]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~117_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][34]~116_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][34]~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~115_combout\ : std_logic;
SIGNAL \ALT_INV_c[34]~37_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][33]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~114_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][33]~113_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~112_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][33]~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][33]~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~111_combout\ : std_logic;
SIGNAL \ALT_INV_c[33]~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][32]~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][32]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~110_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][32]~109_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~108_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][32]~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~107_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][31]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~106_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][31]~105_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~104_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][31]~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][31]~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~103_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][30]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~102_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][30]~101_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~100_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][30]~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~99_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][30]~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~98_combout\ : std_logic;
SIGNAL ALT_INV_c : std_logic_vector(30 DOWNTO 4);
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][29]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~97_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][29]~96_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~95_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][29]~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~94_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][29]~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~93_combout\ : std_logic;
SIGNAL \ALT_INV_c[29]~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][28]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~92_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][28]~91_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~90_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][28]~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~89_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][28]~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~88_combout\ : std_logic;
SIGNAL \ALT_INV_c[28]~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][27]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~87_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][27]~86_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~85_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][27]~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~84_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][27]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~83_combout\ : std_logic;
SIGNAL \ALT_INV_c[27]~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][26]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~82_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][26]~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~80_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][26]~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~79_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][25]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][25]~77_combout\ : std_logic;
SIGNAL \ALT_INV_c[42]~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][25]~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~75_combout\ : std_logic;
SIGNAL \ALT_INV_c[25]~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][24]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~74_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][24]~73_combout\ : std_logic;
SIGNAL \ALT_INV_c[41]~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][24]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~71_combout\ : std_logic;
SIGNAL \ALT_INV_c[24]~28_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][23]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~70_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][23]~69_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][23]~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~68_combout\ : std_logic;
SIGNAL \ALT_INV_c[23]~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][22]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~67_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][22]~66_combout\ : std_logic;
SIGNAL \ALT_INV_c[39]~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~65_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][22]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~64_combout\ : std_logic;
SIGNAL \ALT_INV_c[22]~25_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][21]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][21]~62_combout\ : std_logic;
SIGNAL \ALT_INV_c[38]~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][21]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~60_combout\ : std_logic;
SIGNAL \ALT_INV_c[21]~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][20]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~59_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][20]~58_combout\ : std_logic;
SIGNAL \ALT_INV_c[21]~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][20]~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~57_combout\ : std_logic;
SIGNAL \ALT_INV_c[20]~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][19]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~56_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][19]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~54_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][19]~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~53_combout\ : std_logic;
SIGNAL \ALT_INV_c[19]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][18]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][18]~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~50_combout\ : std_logic;
SIGNAL \ALT_INV_c[35]~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][18]~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~48_combout\ : std_logic;
SIGNAL \ALT_INV_c[18]~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][17]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][17]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][17]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~44_combout\ : std_logic;
SIGNAL \ALT_INV_c[17]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][16]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~43_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][16]~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][16]~9_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][15]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][15]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~37_combout\ : std_logic;
SIGNAL \ALT_INV_c~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][15]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][14]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][14]~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~33_combout\ : std_logic;
SIGNAL \ALT_INV_c~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][14]~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][13]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][13]~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~29_combout\ : std_logic;
SIGNAL \ALT_INV_c~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][13]~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~28_combout\ : std_logic;
SIGNAL \ALT_INV_c[37]~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][12]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\ : std_logic;
SIGNAL \ALT_INV_c[13]~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][12]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~25_combout\ : std_logic;
SIGNAL \ALT_INV_c[36]~11_combout\ : std_logic;
SIGNAL \ALT_INV_c[12]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][11]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~23_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][11]~22_combout\ : std_logic;
SIGNAL \ALT_INV_c[27]~9_combout\ : std_logic;
SIGNAL \ALT_INV_c[11]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][10]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][10]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\ : std_logic;
SIGNAL \ALT_INV_c[10]~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][9]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~18_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][9]~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\ : std_logic;
SIGNAL \ALT_INV_c[25]~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][8]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][8]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][7]~12_combout\ : std_logic;
SIGNAL \ALT_INV_c~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][6]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~9_combout\ : std_logic;
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~7_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~6_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_c~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[3][8]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\ : std_logic;
SIGNAL ALT_INV_p : std_logic_vector(62 DOWNTO 2);
SIGNAL \PrefixNetwork|ALT_INV_Gk~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c~2_combout\ : std_logic;
SIGNAL \ALT_INV_c[11]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][63]~81DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_p[62]~DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][59]~76DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][56]~73DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][55]~72DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~185DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[52]~66DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][51]~68DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~175DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~166DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][47]~64DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~110DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][31]~28DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~92DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][28]~91DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][23]~69DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~68DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[39]~26DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][21]~62DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][19]~DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~56DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~53DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~43DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c~16DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[37]~13DUPLICATE_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][11]~DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[27]~9DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[5]~DUPLICATE_combout\ : std_logic;
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
SIGNAL \ALT_INV_c[10]~115_combout\ : std_logic;
SIGNAL \ALT_INV_c~113_combout\ : std_logic;
SIGNAL \ALT_INV_c~112_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][63]~82_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][63]~202_combout\ : std_logic;
SIGNAL \ALT_INV_c~111_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~201_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~200_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][63]~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][63]~80_combout\ : std_logic;
SIGNAL \ALT_INV_c[63]~110_combout\ : std_logic;
SIGNAL \ALT_INV_c[63]~109_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][62]~79_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][62]~199_combout\ : std_logic;
SIGNAL \ALT_INV_c~108_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~198_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~197_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][62]~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[4][62]~77_combout\ : std_logic;
SIGNAL \ALT_INV_c[62]~107_combout\ : std_logic;
SIGNAL \ALT_INV_c[62]~106_combout\ : std_logic;
SIGNAL \ALT_INV_c[62]~105_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][61]~196_combout\ : std_logic;
SIGNAL \ALT_INV_c[62]~104_combout\ : std_logic;
SIGNAL \ALT_INV_c[62]~103_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[1][61]~combout\ : std_logic;
SIGNAL \ALT_INV_c[61]~102_combout\ : std_logic;
SIGNAL \ALT_INV_c[61]~101_combout\ : std_logic;
SIGNAL \ALT_INV_c[61]~100_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][60]~195_combout\ : std_logic;
SIGNAL \ALT_INV_c[61]~99_combout\ : std_logic;
SIGNAL \ALT_INV_c[61]~98_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[1][60]~combout\ : std_logic;
SIGNAL \ALT_INV_c[60]~97_combout\ : std_logic;
SIGNAL \ALT_INV_c[60]~96_combout\ : std_logic;
SIGNAL \ALT_INV_c[60]~95_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][59]~194_combout\ : std_logic;
SIGNAL \ALT_INV_c[60]~94_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][59]~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[1][59]~combout\ : std_logic;
SIGNAL \ALT_INV_c[59]~93_combout\ : std_logic;
SIGNAL \ALT_INV_c[59]~92_combout\ : std_logic;
SIGNAL \ALT_INV_c[59]~91_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][58]~193_combout\ : std_logic;
SIGNAL \ALT_INV_c[59]~90_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][58]~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[1][58]~combout\ : std_logic;
SIGNAL \ALT_INV_c[58]~89_combout\ : std_logic;
SIGNAL \ALT_INV_c[58]~88_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~192_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][57]~191_combout\ : std_logic;
SIGNAL \ALT_INV_c[58]~87_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][57]~74_combout\ : std_logic;
SIGNAL \ALT_INV_c[57]~86_combout\ : std_logic;
SIGNAL \ALT_INV_c[57]~85_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~190_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][56]~189_combout\ : std_logic;
SIGNAL \ALT_INV_c[57]~84_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][56]~73_combout\ : std_logic;
SIGNAL \ALT_INV_c[56]~83_combout\ : std_logic;
SIGNAL \ALT_INV_c[56]~82_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][55]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][55]~188_combout\ : std_logic;
SIGNAL \ALT_INV_c[56]~81_combout\ : std_logic;
SIGNAL \ALT_INV_c[56]~80_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][55]~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~187_combout\ : std_logic;
SIGNAL \ALT_INV_c[55]~79_combout\ : std_logic;
SIGNAL \ALT_INV_c[55]~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][54]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][54]~186_combout\ : std_logic;
SIGNAL \ALT_INV_c[55]~77_combout\ : std_logic;
SIGNAL \ALT_INV_c[55]~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][54]~71_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~185_combout\ : std_logic;
SIGNAL \ALT_INV_c[54]~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][53]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~184_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][53]~183_combout\ : std_logic;
SIGNAL \ALT_INV_c[54]~74_combout\ : std_logic;
SIGNAL \ALT_INV_c[58]~73_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][53]~70_combout\ : std_logic;
SIGNAL \ALT_INV_c[53]~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][52]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~182_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][52]~181_combout\ : std_logic;
SIGNAL \ALT_INV_c[53]~71_combout\ : std_logic;
SIGNAL \ALT_INV_c[53]~70_combout\ : std_logic;
SIGNAL \ALT_INV_c[57]~69_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][52]~69_combout\ : std_logic;
SIGNAL \ALT_INV_c[52]~68_combout\ : std_logic;
SIGNAL \ALT_INV_c[52]~67_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][51]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~180_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][51]~179_combout\ : std_logic;
SIGNAL \ALT_INV_c[52]~66_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][51]~68_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~178_combout\ : std_logic;
SIGNAL \ALT_INV_c[51]~65_combout\ : std_logic;
SIGNAL \ALT_INV_c[51]~64_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][50]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~177_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][50]~176_combout\ : std_logic;
SIGNAL \ALT_INV_c[51]~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][50]~67_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~175_combout\ : std_logic;
SIGNAL \ALT_INV_c[50]~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][49]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~174_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][49]~173_combout\ : std_logic;
SIGNAL \ALT_INV_c[50]~61_combout\ : std_logic;
SIGNAL \ALT_INV_c[50]~60_combout\ : std_logic;
SIGNAL \ALT_INV_c[50]~59_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Pk[2][49]~66_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~172_combout\ : std_logic;
SIGNAL \ALT_INV_c[49]~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[3][48]~combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk~171_combout\ : std_logic;
SIGNAL \PrefixNetwork|ALT_INV_Gk[1][48]~170_combout\ : std_logic;
SIGNAL \ALT_INV_c[49]~57_combout\ : std_logic;
SIGNAL \ALT_INV_c[49]~56_combout\ : std_logic;

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
\ALT_INV_c[49]~55_combout\ <= NOT \c[49]~55_combout\;
\PrefixNetwork|ALT_INV_Pk[2][48]~65_combout\ <= NOT \PrefixNetwork|Pk[2][48]~65_combout\;
\PrefixNetwork|ALT_INV_Gk~169_combout\ <= NOT \PrefixNetwork|Gk~169_combout\;
\ALT_INV_c[48]~54_combout\ <= NOT \c[48]~54_combout\;
\PrefixNetwork|ALT_INV_Gk[3][47]~combout\ <= NOT \PrefixNetwork|Gk[3][47]~combout\;
\PrefixNetwork|ALT_INV_Gk~168_combout\ <= NOT \PrefixNetwork|Gk~168_combout\;
\PrefixNetwork|ALT_INV_Gk[1][47]~167_combout\ <= NOT \PrefixNetwork|Gk[1][47]~167_combout\;
\PrefixNetwork|ALT_INV_Gk~166_combout\ <= NOT \PrefixNetwork|Gk~166_combout\;
\PrefixNetwork|ALT_INV_Pk[4][47]~64_combout\ <= NOT \PrefixNetwork|Pk[4][47]~64_combout\;
\PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\ <= NOT \PrefixNetwork|Pk[2][47]~63_combout\;
\PrefixNetwork|ALT_INV_Gk~165_combout\ <= NOT \PrefixNetwork|Gk~165_combout\;
\ALT_INV_c[47]~53_combout\ <= NOT \c[47]~53_combout\;
\PrefixNetwork|ALT_INV_Gk[3][46]~combout\ <= NOT \PrefixNetwork|Gk[3][46]~combout\;
\PrefixNetwork|ALT_INV_Gk~164_combout\ <= NOT \PrefixNetwork|Gk~164_combout\;
\PrefixNetwork|ALT_INV_Gk[1][46]~163_combout\ <= NOT \PrefixNetwork|Gk[1][46]~163_combout\;
\PrefixNetwork|ALT_INV_Gk~162_combout\ <= NOT \PrefixNetwork|Gk~162_combout\;
\PrefixNetwork|ALT_INV_Pk[4][46]~62_combout\ <= NOT \PrefixNetwork|Pk[4][46]~62_combout\;
\PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\ <= NOT \PrefixNetwork|Pk[2][46]~61_combout\;
\PrefixNetwork|ALT_INV_Gk~161_combout\ <= NOT \PrefixNetwork|Gk~161_combout\;
\ALT_INV_c[46]~52_combout\ <= NOT \c[46]~52_combout\;
\PrefixNetwork|ALT_INV_Gk[3][45]~combout\ <= NOT \PrefixNetwork|Gk[3][45]~combout\;
\PrefixNetwork|ALT_INV_Gk~160_combout\ <= NOT \PrefixNetwork|Gk~160_combout\;
\PrefixNetwork|ALT_INV_Gk[1][45]~159_combout\ <= NOT \PrefixNetwork|Gk[1][45]~159_combout\;
\PrefixNetwork|ALT_INV_Pk[4][45]~60_combout\ <= NOT \PrefixNetwork|Pk[4][45]~60_combout\;
\PrefixNetwork|ALT_INV_Gk~158_combout\ <= NOT \PrefixNetwork|Gk~158_combout\;
\PrefixNetwork|ALT_INV_Pk[2][45]~59_combout\ <= NOT \PrefixNetwork|Pk[2][45]~59_combout\;
\PrefixNetwork|ALT_INV_Gk~157_combout\ <= NOT \PrefixNetwork|Gk~157_combout\;
\ALT_INV_c[45]~51_combout\ <= NOT \c[45]~51_combout\;
\PrefixNetwork|ALT_INV_Gk[3][44]~combout\ <= NOT \PrefixNetwork|Gk[3][44]~combout\;
\PrefixNetwork|ALT_INV_Gk~156_combout\ <= NOT \PrefixNetwork|Gk~156_combout\;
\PrefixNetwork|ALT_INV_Gk[1][44]~155_combout\ <= NOT \PrefixNetwork|Gk[1][44]~155_combout\;
\PrefixNetwork|ALT_INV_Pk[4][44]~58_combout\ <= NOT \PrefixNetwork|Pk[4][44]~58_combout\;
\PrefixNetwork|ALT_INV_Gk~154_combout\ <= NOT \PrefixNetwork|Gk~154_combout\;
\PrefixNetwork|ALT_INV_Pk[2][44]~57_combout\ <= NOT \PrefixNetwork|Pk[2][44]~57_combout\;
\PrefixNetwork|ALT_INV_Gk~153_combout\ <= NOT \PrefixNetwork|Gk~153_combout\;
\ALT_INV_c[44]~50_combout\ <= NOT \c[44]~50_combout\;
\PrefixNetwork|ALT_INV_Gk[3][43]~combout\ <= NOT \PrefixNetwork|Gk[3][43]~combout\;
\PrefixNetwork|ALT_INV_Gk~152_combout\ <= NOT \PrefixNetwork|Gk~152_combout\;
\PrefixNetwork|ALT_INV_Gk[1][43]~151_combout\ <= NOT \PrefixNetwork|Gk[1][43]~151_combout\;
\PrefixNetwork|ALT_INV_Gk~150_combout\ <= NOT \PrefixNetwork|Gk~150_combout\;
\PrefixNetwork|ALT_INV_Pk[4][43]~56_combout\ <= NOT \PrefixNetwork|Pk[4][43]~56_combout\;
\PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\ <= NOT \PrefixNetwork|Pk[2][43]~55_combout\;
\PrefixNetwork|ALT_INV_Gk~149_combout\ <= NOT \PrefixNetwork|Gk~149_combout\;
\ALT_INV_c[43]~49_combout\ <= NOT \c[43]~49_combout\;
\ALT_INV_c[43]~48_combout\ <= NOT \c[43]~48_combout\;
\PrefixNetwork|ALT_INV_Gk[3][42]~combout\ <= NOT \PrefixNetwork|Gk[3][42]~combout\;
\PrefixNetwork|ALT_INV_Gk~148_combout\ <= NOT \PrefixNetwork|Gk~148_combout\;
\PrefixNetwork|ALT_INV_Gk[1][42]~147_combout\ <= NOT \PrefixNetwork|Gk[1][42]~147_combout\;
\PrefixNetwork|ALT_INV_Pk[4][42]~54_combout\ <= NOT \PrefixNetwork|Pk[4][42]~54_combout\;
\PrefixNetwork|ALT_INV_Gk~146_combout\ <= NOT \PrefixNetwork|Gk~146_combout\;
\PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\ <= NOT \PrefixNetwork|Pk[2][42]~53_combout\;
\PrefixNetwork|ALT_INV_Gk~145_combout\ <= NOT \PrefixNetwork|Gk~145_combout\;
\ALT_INV_c[42]~47_combout\ <= NOT \c[42]~47_combout\;
\PrefixNetwork|ALT_INV_Gk[3][41]~combout\ <= NOT \PrefixNetwork|Gk[3][41]~combout\;
\PrefixNetwork|ALT_INV_Gk~144_combout\ <= NOT \PrefixNetwork|Gk~144_combout\;
\PrefixNetwork|ALT_INV_Gk[1][41]~143_combout\ <= NOT \PrefixNetwork|Gk[1][41]~143_combout\;
\PrefixNetwork|ALT_INV_Pk[4][41]~52_combout\ <= NOT \PrefixNetwork|Pk[4][41]~52_combout\;
\PrefixNetwork|ALT_INV_Gk~142_combout\ <= NOT \PrefixNetwork|Gk~142_combout\;
\PrefixNetwork|ALT_INV_Pk[2][41]~51_combout\ <= NOT \PrefixNetwork|Pk[2][41]~51_combout\;
\PrefixNetwork|ALT_INV_Gk~141_combout\ <= NOT \PrefixNetwork|Gk~141_combout\;
\ALT_INV_c[41]~46_combout\ <= NOT \c[41]~46_combout\;
\PrefixNetwork|ALT_INV_Gk[3][40]~combout\ <= NOT \PrefixNetwork|Gk[3][40]~combout\;
\PrefixNetwork|ALT_INV_Gk~140_combout\ <= NOT \PrefixNetwork|Gk~140_combout\;
\PrefixNetwork|ALT_INV_Gk[1][40]~139_combout\ <= NOT \PrefixNetwork|Gk[1][40]~139_combout\;
\PrefixNetwork|ALT_INV_Pk[4][40]~50_combout\ <= NOT \PrefixNetwork|Pk[4][40]~50_combout\;
\PrefixNetwork|ALT_INV_Gk~138_combout\ <= NOT \PrefixNetwork|Gk~138_combout\;
\PrefixNetwork|ALT_INV_Pk[2][40]~49_combout\ <= NOT \PrefixNetwork|Pk[2][40]~49_combout\;
\PrefixNetwork|ALT_INV_Gk~137_combout\ <= NOT \PrefixNetwork|Gk~137_combout\;
\ALT_INV_c[40]~45_combout\ <= NOT \c[40]~45_combout\;
\PrefixNetwork|ALT_INV_Gk~136_combout\ <= NOT \PrefixNetwork|Gk~136_combout\;
\PrefixNetwork|ALT_INV_Gk[3][39]~combout\ <= NOT \PrefixNetwork|Gk[3][39]~combout\;
\PrefixNetwork|ALT_INV_Gk~135_combout\ <= NOT \PrefixNetwork|Gk~135_combout\;
\PrefixNetwork|ALT_INV_Gk[1][39]~134_combout\ <= NOT \PrefixNetwork|Gk[1][39]~134_combout\;
\ALT_INV_c[40]~44_combout\ <= NOT \c[40]~44_combout\;
\PrefixNetwork|ALT_INV_Pk[4][39]~48_combout\ <= NOT \PrefixNetwork|Pk[4][39]~48_combout\;
\PrefixNetwork|ALT_INV_Pk[4][39]~47_combout\ <= NOT \PrefixNetwork|Pk[4][39]~47_combout\;
\PrefixNetwork|ALT_INV_Pk[2][39]~46_combout\ <= NOT \PrefixNetwork|Pk[2][39]~46_combout\;
\PrefixNetwork|ALT_INV_Gk~133_combout\ <= NOT \PrefixNetwork|Gk~133_combout\;
\ALT_INV_c[39]~43_combout\ <= NOT \c[39]~43_combout\;
\PrefixNetwork|ALT_INV_Gk[3][38]~combout\ <= NOT \PrefixNetwork|Gk[3][38]~combout\;
\PrefixNetwork|ALT_INV_Gk~132_combout\ <= NOT \PrefixNetwork|Gk~132_combout\;
\PrefixNetwork|ALT_INV_Gk[1][38]~131_combout\ <= NOT \PrefixNetwork|Gk[1][38]~131_combout\;
\PrefixNetwork|ALT_INV_Pk[4][38]~45_combout\ <= NOT \PrefixNetwork|Pk[4][38]~45_combout\;
\PrefixNetwork|ALT_INV_Pk[4][38]~44_combout\ <= NOT \PrefixNetwork|Pk[4][38]~44_combout\;
\PrefixNetwork|ALT_INV_Pk[2][38]~43_combout\ <= NOT \PrefixNetwork|Pk[2][38]~43_combout\;
\PrefixNetwork|ALT_INV_Gk~130_combout\ <= NOT \PrefixNetwork|Gk~130_combout\;
\ALT_INV_c[38]~42_combout\ <= NOT \c[38]~42_combout\;
\PrefixNetwork|ALT_INV_Gk~129_combout\ <= NOT \PrefixNetwork|Gk~129_combout\;
\PrefixNetwork|ALT_INV_Pk[4][37]~42_combout\ <= NOT \PrefixNetwork|Pk[4][37]~42_combout\;
\PrefixNetwork|ALT_INV_Pk[4][37]~41_combout\ <= NOT \PrefixNetwork|Pk[4][37]~41_combout\;
\PrefixNetwork|ALT_INV_Gk[3][37]~combout\ <= NOT \PrefixNetwork|Gk[3][37]~combout\;
\PrefixNetwork|ALT_INV_Gk~128_combout\ <= NOT \PrefixNetwork|Gk~128_combout\;
\PrefixNetwork|ALT_INV_Gk[1][37]~127_combout\ <= NOT \PrefixNetwork|Gk[1][37]~127_combout\;
\PrefixNetwork|ALT_INV_Pk[2][37]~40_combout\ <= NOT \PrefixNetwork|Pk[2][37]~40_combout\;
\PrefixNetwork|ALT_INV_Gk~126_combout\ <= NOT \PrefixNetwork|Gk~126_combout\;
\ALT_INV_c[37]~41_combout\ <= NOT \c[37]~41_combout\;
\PrefixNetwork|ALT_INV_Gk[3][36]~combout\ <= NOT \PrefixNetwork|Gk[3][36]~combout\;
\PrefixNetwork|ALT_INV_Gk~125_combout\ <= NOT \PrefixNetwork|Gk~125_combout\;
\PrefixNetwork|ALT_INV_Gk[1][36]~124_combout\ <= NOT \PrefixNetwork|Gk[1][36]~124_combout\;
\ALT_INV_c[37]~40_combout\ <= NOT \c[37]~40_combout\;
\PrefixNetwork|ALT_INV_Pk[4][36]~39_combout\ <= NOT \PrefixNetwork|Pk[4][36]~39_combout\;
\PrefixNetwork|ALT_INV_Pk[2][36]~38_combout\ <= NOT \PrefixNetwork|Pk[2][36]~38_combout\;
\PrefixNetwork|ALT_INV_Gk~123_combout\ <= NOT \PrefixNetwork|Gk~123_combout\;
\ALT_INV_c[36]~39_combout\ <= NOT \c[36]~39_combout\;
\PrefixNetwork|ALT_INV_Gk[3][35]~combout\ <= NOT \PrefixNetwork|Gk[3][35]~combout\;
\PrefixNetwork|ALT_INV_Gk~122_combout\ <= NOT \PrefixNetwork|Gk~122_combout\;
\PrefixNetwork|ALT_INV_Gk[1][35]~121_combout\ <= NOT \PrefixNetwork|Gk[1][35]~121_combout\;
\PrefixNetwork|ALT_INV_Gk~120_combout\ <= NOT \PrefixNetwork|Gk~120_combout\;
\PrefixNetwork|ALT_INV_Pk[4][35]~37_combout\ <= NOT \PrefixNetwork|Pk[4][35]~37_combout\;
\PrefixNetwork|ALT_INV_Pk[2][35]~36_combout\ <= NOT \PrefixNetwork|Pk[2][35]~36_combout\;
\PrefixNetwork|ALT_INV_Gk~119_combout\ <= NOT \PrefixNetwork|Gk~119_combout\;
\ALT_INV_c[35]~38_combout\ <= NOT \c[35]~38_combout\;
\PrefixNetwork|ALT_INV_Gk~118_combout\ <= NOT \PrefixNetwork|Gk~118_combout\;
\PrefixNetwork|ALT_INV_Pk[4][34]~35_combout\ <= NOT \PrefixNetwork|Pk[4][34]~35_combout\;
\PrefixNetwork|ALT_INV_Gk[3][34]~combout\ <= NOT \PrefixNetwork|Gk[3][34]~combout\;
\PrefixNetwork|ALT_INV_Gk~117_combout\ <= NOT \PrefixNetwork|Gk~117_combout\;
\PrefixNetwork|ALT_INV_Gk[1][34]~116_combout\ <= NOT \PrefixNetwork|Gk[1][34]~116_combout\;
\PrefixNetwork|ALT_INV_Pk[2][34]~34_combout\ <= NOT \PrefixNetwork|Pk[2][34]~34_combout\;
\PrefixNetwork|ALT_INV_Gk~115_combout\ <= NOT \PrefixNetwork|Gk~115_combout\;
\ALT_INV_c[34]~37_combout\ <= NOT \c[34]~37_combout\;
\PrefixNetwork|ALT_INV_Gk[3][33]~combout\ <= NOT \PrefixNetwork|Gk[3][33]~combout\;
\PrefixNetwork|ALT_INV_Gk~114_combout\ <= NOT \PrefixNetwork|Gk~114_combout\;
\PrefixNetwork|ALT_INV_Gk[1][33]~113_combout\ <= NOT \PrefixNetwork|Gk[1][33]~113_combout\;
\PrefixNetwork|ALT_INV_Gk~112_combout\ <= NOT \PrefixNetwork|Gk~112_combout\;
\PrefixNetwork|ALT_INV_Pk[4][33]~33_combout\ <= NOT \PrefixNetwork|Pk[4][33]~33_combout\;
\PrefixNetwork|ALT_INV_Pk[2][33]~32_combout\ <= NOT \PrefixNetwork|Pk[2][33]~32_combout\;
\PrefixNetwork|ALT_INV_Gk~111_combout\ <= NOT \PrefixNetwork|Gk~111_combout\;
\ALT_INV_c[33]~36_combout\ <= NOT \c[33]~36_combout\;
\PrefixNetwork|ALT_INV_Pk[4][32]~31_combout\ <= NOT \PrefixNetwork|Pk[4][32]~31_combout\;
\PrefixNetwork|ALT_INV_Gk[3][32]~combout\ <= NOT \PrefixNetwork|Gk[3][32]~combout\;
\PrefixNetwork|ALT_INV_Gk~110_combout\ <= NOT \PrefixNetwork|Gk~110_combout\;
\PrefixNetwork|ALT_INV_Gk[1][32]~109_combout\ <= NOT \PrefixNetwork|Gk[1][32]~109_combout\;
\PrefixNetwork|ALT_INV_Gk~108_combout\ <= NOT \PrefixNetwork|Gk~108_combout\;
\PrefixNetwork|ALT_INV_Pk[2][32]~30_combout\ <= NOT \PrefixNetwork|Pk[2][32]~30_combout\;
\PrefixNetwork|ALT_INV_Gk~107_combout\ <= NOT \PrefixNetwork|Gk~107_combout\;
\PrefixNetwork|ALT_INV_Gpre\(31) <= NOT \PrefixNetwork|Gpre\(31);
\PrefixNetwork|ALT_INV_Gk[3][31]~combout\ <= NOT \PrefixNetwork|Gk[3][31]~combout\;
\PrefixNetwork|ALT_INV_Gk~106_combout\ <= NOT \PrefixNetwork|Gk~106_combout\;
\PrefixNetwork|ALT_INV_Gk[1][31]~105_combout\ <= NOT \PrefixNetwork|Gk[1][31]~105_combout\;
\PrefixNetwork|ALT_INV_Gk~104_combout\ <= NOT \PrefixNetwork|Gk~104_combout\;
\PrefixNetwork|ALT_INV_Pk[4][31]~29_combout\ <= NOT \PrefixNetwork|Pk[4][31]~29_combout\;
\PrefixNetwork|ALT_INV_Pk[2][31]~28_combout\ <= NOT \PrefixNetwork|Pk[2][31]~28_combout\;
\PrefixNetwork|ALT_INV_Gk~103_combout\ <= NOT \PrefixNetwork|Gk~103_combout\;
\PrefixNetwork|ALT_INV_Gpre\(30) <= NOT \PrefixNetwork|Gpre\(30);
\PrefixNetwork|ALT_INV_Gk[3][30]~combout\ <= NOT \PrefixNetwork|Gk[3][30]~combout\;
\PrefixNetwork|ALT_INV_Gk~102_combout\ <= NOT \PrefixNetwork|Gk~102_combout\;
\PrefixNetwork|ALT_INV_Gk[1][30]~101_combout\ <= NOT \PrefixNetwork|Gk[1][30]~101_combout\;
\PrefixNetwork|ALT_INV_Gk~100_combout\ <= NOT \PrefixNetwork|Gk~100_combout\;
\PrefixNetwork|ALT_INV_Pk[4][30]~27_combout\ <= NOT \PrefixNetwork|Pk[4][30]~27_combout\;
\PrefixNetwork|ALT_INV_Gk~99_combout\ <= NOT \PrefixNetwork|Gk~99_combout\;
\PrefixNetwork|ALT_INV_Pk[2][30]~26_combout\ <= NOT \PrefixNetwork|Pk[2][30]~26_combout\;
\PrefixNetwork|ALT_INV_Gk~98_combout\ <= NOT \PrefixNetwork|Gk~98_combout\;
ALT_INV_c(30) <= NOT c(30);
\PrefixNetwork|ALT_INV_Gk[3][29]~combout\ <= NOT \PrefixNetwork|Gk[3][29]~combout\;
\PrefixNetwork|ALT_INV_Gk~97_combout\ <= NOT \PrefixNetwork|Gk~97_combout\;
\PrefixNetwork|ALT_INV_Gk[1][29]~96_combout\ <= NOT \PrefixNetwork|Gk[1][29]~96_combout\;
\PrefixNetwork|ALT_INV_Gk~95_combout\ <= NOT \PrefixNetwork|Gk~95_combout\;
\PrefixNetwork|ALT_INV_Pk[4][29]~25_combout\ <= NOT \PrefixNetwork|Pk[4][29]~25_combout\;
\PrefixNetwork|ALT_INV_Gk~94_combout\ <= NOT \PrefixNetwork|Gk~94_combout\;
\PrefixNetwork|ALT_INV_Pk[2][29]~24_combout\ <= NOT \PrefixNetwork|Pk[2][29]~24_combout\;
\PrefixNetwork|ALT_INV_Gk~93_combout\ <= NOT \PrefixNetwork|Gk~93_combout\;
\ALT_INV_c[29]~35_combout\ <= NOT \c[29]~35_combout\;
\PrefixNetwork|ALT_INV_Gk[3][28]~combout\ <= NOT \PrefixNetwork|Gk[3][28]~combout\;
\PrefixNetwork|ALT_INV_Gk~92_combout\ <= NOT \PrefixNetwork|Gk~92_combout\;
\PrefixNetwork|ALT_INV_Gk[1][28]~91_combout\ <= NOT \PrefixNetwork|Gk[1][28]~91_combout\;
\PrefixNetwork|ALT_INV_Gk~90_combout\ <= NOT \PrefixNetwork|Gk~90_combout\;
\PrefixNetwork|ALT_INV_Pk[4][28]~23_combout\ <= NOT \PrefixNetwork|Pk[4][28]~23_combout\;
\PrefixNetwork|ALT_INV_Gk~89_combout\ <= NOT \PrefixNetwork|Gk~89_combout\;
\PrefixNetwork|ALT_INV_Pk[2][28]~22_combout\ <= NOT \PrefixNetwork|Pk[2][28]~22_combout\;
\PrefixNetwork|ALT_INV_Gk~88_combout\ <= NOT \PrefixNetwork|Gk~88_combout\;
\ALT_INV_c[28]~34_combout\ <= NOT \c[28]~34_combout\;
\PrefixNetwork|ALT_INV_Gk[3][27]~combout\ <= NOT \PrefixNetwork|Gk[3][27]~combout\;
\PrefixNetwork|ALT_INV_Gk~87_combout\ <= NOT \PrefixNetwork|Gk~87_combout\;
\PrefixNetwork|ALT_INV_Gk[1][27]~86_combout\ <= NOT \PrefixNetwork|Gk[1][27]~86_combout\;
\PrefixNetwork|ALT_INV_Gk~85_combout\ <= NOT \PrefixNetwork|Gk~85_combout\;
\PrefixNetwork|ALT_INV_Pk[4][27]~21_combout\ <= NOT \PrefixNetwork|Pk[4][27]~21_combout\;
\PrefixNetwork|ALT_INV_Gk~84_combout\ <= NOT \PrefixNetwork|Gk~84_combout\;
\PrefixNetwork|ALT_INV_Pk[2][27]~20_combout\ <= NOT \PrefixNetwork|Pk[2][27]~20_combout\;
\PrefixNetwork|ALT_INV_Gk~83_combout\ <= NOT \PrefixNetwork|Gk~83_combout\;
\ALT_INV_c[27]~33_combout\ <= NOT \c[27]~33_combout\;
\PrefixNetwork|ALT_INV_Gk[3][26]~combout\ <= NOT \PrefixNetwork|Gk[3][26]~combout\;
\PrefixNetwork|ALT_INV_Gk~82_combout\ <= NOT \PrefixNetwork|Gk~82_combout\;
\PrefixNetwork|ALT_INV_Gk[1][26]~81_combout\ <= NOT \PrefixNetwork|Gk[1][26]~81_combout\;
\PrefixNetwork|ALT_INV_Gk~80_combout\ <= NOT \PrefixNetwork|Gk~80_combout\;
\PrefixNetwork|ALT_INV_Pk[2][26]~19_combout\ <= NOT \PrefixNetwork|Pk[2][26]~19_combout\;
\PrefixNetwork|ALT_INV_Gk~79_combout\ <= NOT \PrefixNetwork|Gk~79_combout\;
\ALT_INV_c[26]~32_combout\ <= NOT \c[26]~32_combout\;
\PrefixNetwork|ALT_INV_Gk[3][25]~combout\ <= NOT \PrefixNetwork|Gk[3][25]~combout\;
\PrefixNetwork|ALT_INV_Gk~78_combout\ <= NOT \PrefixNetwork|Gk~78_combout\;
\PrefixNetwork|ALT_INV_Gk[1][25]~77_combout\ <= NOT \PrefixNetwork|Gk[1][25]~77_combout\;
\ALT_INV_c[42]~31_combout\ <= NOT \c[42]~31_combout\;
\PrefixNetwork|ALT_INV_Gk~76_combout\ <= NOT \PrefixNetwork|Gk~76_combout\;
\PrefixNetwork|ALT_INV_Pk[2][25]~18_combout\ <= NOT \PrefixNetwork|Pk[2][25]~18_combout\;
\PrefixNetwork|ALT_INV_Gk~75_combout\ <= NOT \PrefixNetwork|Gk~75_combout\;
\ALT_INV_c[25]~30_combout\ <= NOT \c[25]~30_combout\;
\PrefixNetwork|ALT_INV_Gk[3][24]~combout\ <= NOT \PrefixNetwork|Gk[3][24]~combout\;
\PrefixNetwork|ALT_INV_Gk~74_combout\ <= NOT \PrefixNetwork|Gk~74_combout\;
\PrefixNetwork|ALT_INV_Gk[1][24]~73_combout\ <= NOT \PrefixNetwork|Gk[1][24]~73_combout\;
\ALT_INV_c[41]~29_combout\ <= NOT \c[41]~29_combout\;
\PrefixNetwork|ALT_INV_Gk~72_combout\ <= NOT \PrefixNetwork|Gk~72_combout\;
\PrefixNetwork|ALT_INV_Pk[2][24]~17_combout\ <= NOT \PrefixNetwork|Pk[2][24]~17_combout\;
\PrefixNetwork|ALT_INV_Gk~71_combout\ <= NOT \PrefixNetwork|Gk~71_combout\;
ALT_INV_c(24) <= NOT c(24);
\ALT_INV_c[24]~28_combout\ <= NOT \c[24]~28_combout\;
\PrefixNetwork|ALT_INV_Gk[3][23]~combout\ <= NOT \PrefixNetwork|Gk[3][23]~combout\;
\PrefixNetwork|ALT_INV_Gk~70_combout\ <= NOT \PrefixNetwork|Gk~70_combout\;
\PrefixNetwork|ALT_INV_Gk[1][23]~69_combout\ <= NOT \PrefixNetwork|Gk[1][23]~69_combout\;
\PrefixNetwork|ALT_INV_Pk[2][23]~16_combout\ <= NOT \PrefixNetwork|Pk[2][23]~16_combout\;
\PrefixNetwork|ALT_INV_Gk~68_combout\ <= NOT \PrefixNetwork|Gk~68_combout\;
\ALT_INV_c[23]~27_combout\ <= NOT \c[23]~27_combout\;
\PrefixNetwork|ALT_INV_Gk[3][22]~combout\ <= NOT \PrefixNetwork|Gk[3][22]~combout\;
\PrefixNetwork|ALT_INV_Gk~67_combout\ <= NOT \PrefixNetwork|Gk~67_combout\;
\PrefixNetwork|ALT_INV_Gk[1][22]~66_combout\ <= NOT \PrefixNetwork|Gk[1][22]~66_combout\;
\ALT_INV_c[39]~26_combout\ <= NOT \c[39]~26_combout\;
\PrefixNetwork|ALT_INV_Gk~65_combout\ <= NOT \PrefixNetwork|Gk~65_combout\;
\PrefixNetwork|ALT_INV_Pk[2][22]~15_combout\ <= NOT \PrefixNetwork|Pk[2][22]~15_combout\;
\PrefixNetwork|ALT_INV_Gk~64_combout\ <= NOT \PrefixNetwork|Gk~64_combout\;
\ALT_INV_c[22]~25_combout\ <= NOT \c[22]~25_combout\;
\PrefixNetwork|ALT_INV_Gk[3][21]~combout\ <= NOT \PrefixNetwork|Gk[3][21]~combout\;
\PrefixNetwork|ALT_INV_Gk~63_combout\ <= NOT \PrefixNetwork|Gk~63_combout\;
\PrefixNetwork|ALT_INV_Gk[1][21]~62_combout\ <= NOT \PrefixNetwork|Gk[1][21]~62_combout\;
\ALT_INV_c[38]~24_combout\ <= NOT \c[38]~24_combout\;
\PrefixNetwork|ALT_INV_Gk~61_combout\ <= NOT \PrefixNetwork|Gk~61_combout\;
\PrefixNetwork|ALT_INV_Pk[2][21]~14_combout\ <= NOT \PrefixNetwork|Pk[2][21]~14_combout\;
\PrefixNetwork|ALT_INV_Gk~60_combout\ <= NOT \PrefixNetwork|Gk~60_combout\;
\ALT_INV_c[21]~23_combout\ <= NOT \c[21]~23_combout\;
\PrefixNetwork|ALT_INV_Gk[3][20]~combout\ <= NOT \PrefixNetwork|Gk[3][20]~combout\;
\PrefixNetwork|ALT_INV_Gk~59_combout\ <= NOT \PrefixNetwork|Gk~59_combout\;
\PrefixNetwork|ALT_INV_Gk[1][20]~58_combout\ <= NOT \PrefixNetwork|Gk[1][20]~58_combout\;
\ALT_INV_c[21]~22_combout\ <= NOT \c[21]~22_combout\;
\PrefixNetwork|ALT_INV_Pk[2][20]~13_combout\ <= NOT \PrefixNetwork|Pk[2][20]~13_combout\;
\PrefixNetwork|ALT_INV_Gk~57_combout\ <= NOT \PrefixNetwork|Gk~57_combout\;
\ALT_INV_c[20]~21_combout\ <= NOT \c[20]~21_combout\;
\PrefixNetwork|ALT_INV_Gk[3][19]~combout\ <= NOT \PrefixNetwork|Gk[3][19]~combout\;
\PrefixNetwork|ALT_INV_Gk~56_combout\ <= NOT \PrefixNetwork|Gk~56_combout\;
\PrefixNetwork|ALT_INV_Gk[1][19]~55_combout\ <= NOT \PrefixNetwork|Gk[1][19]~55_combout\;
\PrefixNetwork|ALT_INV_Gk~54_combout\ <= NOT \PrefixNetwork|Gk~54_combout\;
\PrefixNetwork|ALT_INV_Pk[2][19]~12_combout\ <= NOT \PrefixNetwork|Pk[2][19]~12_combout\;
\PrefixNetwork|ALT_INV_Gk~53_combout\ <= NOT \PrefixNetwork|Gk~53_combout\;
\ALT_INV_c[19]~20_combout\ <= NOT \c[19]~20_combout\;
\PrefixNetwork|ALT_INV_Gk[3][18]~combout\ <= NOT \PrefixNetwork|Gk[3][18]~combout\;
\PrefixNetwork|ALT_INV_Gk~52_combout\ <= NOT \PrefixNetwork|Gk~52_combout\;
\PrefixNetwork|ALT_INV_Gk[1][18]~51_combout\ <= NOT \PrefixNetwork|Gk[1][18]~51_combout\;
\PrefixNetwork|ALT_INV_Gk~50_combout\ <= NOT \PrefixNetwork|Gk~50_combout\;
\ALT_INV_c[35]~19_combout\ <= NOT \c[35]~19_combout\;
\PrefixNetwork|ALT_INV_Gk~49_combout\ <= NOT \PrefixNetwork|Gk~49_combout\;
\PrefixNetwork|ALT_INV_Pk[2][18]~11_combout\ <= NOT \PrefixNetwork|Pk[2][18]~11_combout\;
\PrefixNetwork|ALT_INV_Gk~48_combout\ <= NOT \PrefixNetwork|Gk~48_combout\;
\ALT_INV_c[18]~18_combout\ <= NOT \c[18]~18_combout\;
\PrefixNetwork|ALT_INV_Gk[3][17]~combout\ <= NOT \PrefixNetwork|Gk[3][17]~combout\;
\PrefixNetwork|ALT_INV_Gk~47_combout\ <= NOT \PrefixNetwork|Gk~47_combout\;
\PrefixNetwork|ALT_INV_Gk[1][17]~46_combout\ <= NOT \PrefixNetwork|Gk[1][17]~46_combout\;
\PrefixNetwork|ALT_INV_Gk~45_combout\ <= NOT \PrefixNetwork|Gk~45_combout\;
\PrefixNetwork|ALT_INV_Pk[2][17]~10_combout\ <= NOT \PrefixNetwork|Pk[2][17]~10_combout\;
\PrefixNetwork|ALT_INV_Gk~44_combout\ <= NOT \PrefixNetwork|Gk~44_combout\;
\ALT_INV_c[17]~17_combout\ <= NOT \c[17]~17_combout\;
\PrefixNetwork|ALT_INV_Gk[3][16]~combout\ <= NOT \PrefixNetwork|Gk[3][16]~combout\;
\PrefixNetwork|ALT_INV_Gk~43_combout\ <= NOT \PrefixNetwork|Gk~43_combout\;
\PrefixNetwork|ALT_INV_Gk[1][16]~42_combout\ <= NOT \PrefixNetwork|Gk[1][16]~42_combout\;
\PrefixNetwork|ALT_INV_Gk~41_combout\ <= NOT \PrefixNetwork|Gk~41_combout\;
\PrefixNetwork|ALT_INV_Pk[2][16]~9_combout\ <= NOT \PrefixNetwork|Pk[2][16]~9_combout\;
\PrefixNetwork|ALT_INV_Gk~40_combout\ <= NOT \PrefixNetwork|Gk~40_combout\;
ALT_INV_c(16) <= NOT c(16);
\PrefixNetwork|ALT_INV_Gk[3][15]~combout\ <= NOT \PrefixNetwork|Gk[3][15]~combout\;
\PrefixNetwork|ALT_INV_Gk~39_combout\ <= NOT \PrefixNetwork|Gk~39_combout\;
\PrefixNetwork|ALT_INV_Gk[1][15]~38_combout\ <= NOT \PrefixNetwork|Gk[1][15]~38_combout\;
\PrefixNetwork|ALT_INV_Gk~37_combout\ <= NOT \PrefixNetwork|Gk~37_combout\;
\ALT_INV_c~16_combout\ <= NOT \c~16_combout\;
\PrefixNetwork|ALT_INV_Pk[2][15]~8_combout\ <= NOT \PrefixNetwork|Pk[2][15]~8_combout\;
\PrefixNetwork|ALT_INV_Gk~36_combout\ <= NOT \PrefixNetwork|Gk~36_combout\;
ALT_INV_c(15) <= NOT c(15);
\PrefixNetwork|ALT_INV_Gk[3][14]~combout\ <= NOT \PrefixNetwork|Gk[3][14]~combout\;
\PrefixNetwork|ALT_INV_Gk~35_combout\ <= NOT \PrefixNetwork|Gk~35_combout\;
\PrefixNetwork|ALT_INV_Gk[1][14]~34_combout\ <= NOT \PrefixNetwork|Gk[1][14]~34_combout\;
\PrefixNetwork|ALT_INV_Gk~33_combout\ <= NOT \PrefixNetwork|Gk~33_combout\;
\ALT_INV_c~15_combout\ <= NOT \c~15_combout\;
\PrefixNetwork|ALT_INV_Pk[2][14]~7_combout\ <= NOT \PrefixNetwork|Pk[2][14]~7_combout\;
\PrefixNetwork|ALT_INV_Gk~32_combout\ <= NOT \PrefixNetwork|Gk~32_combout\;
ALT_INV_c(14) <= NOT c(14);
\PrefixNetwork|ALT_INV_Gk[3][13]~combout\ <= NOT \PrefixNetwork|Gk[3][13]~combout\;
\PrefixNetwork|ALT_INV_Gk~31_combout\ <= NOT \PrefixNetwork|Gk~31_combout\;
\PrefixNetwork|ALT_INV_Gk[1][13]~30_combout\ <= NOT \PrefixNetwork|Gk[1][13]~30_combout\;
\PrefixNetwork|ALT_INV_Gk~29_combout\ <= NOT \PrefixNetwork|Gk~29_combout\;
\ALT_INV_c~14_combout\ <= NOT \c~14_combout\;
\PrefixNetwork|ALT_INV_Pk[2][13]~6_combout\ <= NOT \PrefixNetwork|Pk[2][13]~6_combout\;
\PrefixNetwork|ALT_INV_Gk~28_combout\ <= NOT \PrefixNetwork|Gk~28_combout\;
\ALT_INV_c[37]~13_combout\ <= NOT \c[37]~13_combout\;
\PrefixNetwork|ALT_INV_Gk[3][12]~combout\ <= NOT \PrefixNetwork|Gk[3][12]~combout\;
\PrefixNetwork|ALT_INV_Gk~27_combout\ <= NOT \PrefixNetwork|Gk~27_combout\;
\PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\ <= NOT \PrefixNetwork|Gk[1][12]~26_combout\;
\ALT_INV_c[13]~12_combout\ <= NOT \c[13]~12_combout\;
\PrefixNetwork|ALT_INV_Pk[2][12]~5_combout\ <= NOT \PrefixNetwork|Pk[2][12]~5_combout\;
\PrefixNetwork|ALT_INV_Gk~25_combout\ <= NOT \PrefixNetwork|Gk~25_combout\;
\ALT_INV_c[36]~11_combout\ <= NOT \c[36]~11_combout\;
\ALT_INV_c[12]~10_combout\ <= NOT \c[12]~10_combout\;
\PrefixNetwork|ALT_INV_Gk[3][11]~combout\ <= NOT \PrefixNetwork|Gk[3][11]~combout\;
\PrefixNetwork|ALT_INV_Gk~24_combout\ <= NOT \PrefixNetwork|Gk~24_combout\;
\PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\ <= NOT \PrefixNetwork|Pk[2][11]~4_combout\;
\PrefixNetwork|ALT_INV_Gk~23_combout\ <= NOT \PrefixNetwork|Gk~23_combout\;
\PrefixNetwork|ALT_INV_Gk[1][11]~22_combout\ <= NOT \PrefixNetwork|Gk[1][11]~22_combout\;
\ALT_INV_c[27]~9_combout\ <= NOT \c[27]~9_combout\;
\ALT_INV_c[11]~8_combout\ <= NOT \c[11]~8_combout\;
\PrefixNetwork|ALT_INV_Gk[3][10]~combout\ <= NOT \PrefixNetwork|Gk[3][10]~combout\;
\PrefixNetwork|ALT_INV_Gk~21_combout\ <= NOT \PrefixNetwork|Gk~21_combout\;
\PrefixNetwork|ALT_INV_Pk[2][10]~3_combout\ <= NOT \PrefixNetwork|Pk[2][10]~3_combout\;
\PrefixNetwork|ALT_INV_Gk~20_combout\ <= NOT \PrefixNetwork|Gk~20_combout\;
\PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\ <= NOT \PrefixNetwork|Gk[1][10]~19_combout\;
\ALT_INV_c[10]~7_combout\ <= NOT \c[10]~7_combout\;
\PrefixNetwork|ALT_INV_Gk[3][9]~combout\ <= NOT \PrefixNetwork|Gk[3][9]~combout\;
\PrefixNetwork|ALT_INV_Gk~18_combout\ <= NOT \PrefixNetwork|Gk~18_combout\;
\PrefixNetwork|ALT_INV_Pk[2][9]~2_combout\ <= NOT \PrefixNetwork|Pk[2][9]~2_combout\;
\PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\ <= NOT \PrefixNetwork|Gk[1][9]~17_combout\;
\ALT_INV_c[25]~6_combout\ <= NOT \c[25]~6_combout\;
\PrefixNetwork|ALT_INV_Gk[3][8]~combout\ <= NOT \PrefixNetwork|Gk[3][8]~combout\;
\PrefixNetwork|ALT_INV_Gk~16_combout\ <= NOT \PrefixNetwork|Gk~16_combout\;
\PrefixNetwork|ALT_INV_Pk[2][8]~1_combout\ <= NOT \PrefixNetwork|Pk[2][8]~1_combout\;
\PrefixNetwork|ALT_INV_Gk~15_combout\ <= NOT \PrefixNetwork|Gk~15_combout\;
\PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\ <= NOT \PrefixNetwork|Gk[1][8]~14_combout\;
ALT_INV_c(8) <= NOT c(8);
\PrefixNetwork|ALT_INV_Gpre\(7) <= NOT \PrefixNetwork|Gpre\(7);
\PrefixNetwork|ALT_INV_Gk~13_combout\ <= NOT \PrefixNetwork|Gk~13_combout\;
\PrefixNetwork|ALT_INV_Gk[1][7]~12_combout\ <= NOT \PrefixNetwork|Gk[1][7]~12_combout\;
\ALT_INV_c~5_combout\ <= NOT \c~5_combout\;
\PrefixNetwork|ALT_INV_Gk~11_combout\ <= NOT \PrefixNetwork|Gk~11_combout\;
\PrefixNetwork|ALT_INV_Gpre[6]~1_combout\ <= NOT \PrefixNetwork|Gpre[6]~1_combout\;
\PrefixNetwork|ALT_INV_Gk[1][6]~10_combout\ <= NOT \PrefixNetwork|Gk[1][6]~10_combout\;
\PrefixNetwork|ALT_INV_Gk~9_combout\ <= NOT \PrefixNetwork|Gk~9_combout\;
\PrefixNetwork|ALT_INV_Gpre\(2) <= NOT \PrefixNetwork|Gpre\(2);
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\PrefixNetwork|ALT_INV_Gk~8_combout\ <= NOT \PrefixNetwork|Gk~8_combout\;
\PrefixNetwork|ALT_INV_Gpre\(5) <= NOT \PrefixNetwork|Gpre\(5);
\PrefixNetwork|ALT_INV_Gk~7_combout\ <= NOT \PrefixNetwork|Gk~7_combout\;
\PrefixNetwork|ALT_INV_Gk~6_combout\ <= NOT \PrefixNetwork|Gk~6_combout\;
\PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\ <= NOT \PrefixNetwork|Gk[1][5]~5_combout\;
\ALT_INV_c~3_combout\ <= NOT \c~3_combout\;
ALT_INV_c(5) <= NOT c(5);
\PrefixNetwork|ALT_INV_Gk~4_combout\ <= NOT \PrefixNetwork|Gk~4_combout\;
\PrefixNetwork|ALT_INV_Pk[3][8]~0_combout\ <= NOT \PrefixNetwork|Pk[3][8]~0_combout\;
\PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\ <= NOT \PrefixNetwork|Gk[1][4]~3_combout\;
ALT_INV_p(5) <= NOT p(5);
ALT_INV_c(4) <= NOT c(4);
\PrefixNetwork|ALT_INV_Gk~2_combout\ <= NOT \PrefixNetwork|Gk~2_combout\;
\PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\ <= NOT \PrefixNetwork|Gk[1][3]~1_combout\;
\ALT_INV_c~2_combout\ <= NOT \c~2_combout\;
\ALT_INV_c[11]~1_combout\ <= NOT \c[11]~1_combout\;
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\ <= NOT \PrefixNetwork|Gk[1][2]~0_combout\;
ALT_INV_p(3) <= NOT p(3);
\PrefixNetwork|ALT_INV_Gpre[1]~0_combout\ <= NOT \PrefixNetwork|Gpre[1]~0_combout\;
ALT_INV_p(2) <= NOT p(2);
\PrefixNetwork|ALT_INV_Pk[4][63]~81DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[4][63]~81DUPLICATE_combout\;
\ALT_INV_p[62]~DUPLICATE_combout\ <= NOT \p[62]~DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Pk[2][59]~76DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Pk[2][56]~73DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[2][56]~73DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Pk[2][55]~72DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[2][55]~72DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~185DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~185DUPLICATE_combout\;
\ALT_INV_c[52]~66DUPLICATE_combout\ <= NOT \c[52]~66DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Pk[2][51]~68DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[2][51]~68DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~175DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~175DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~166DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~166DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Pk[4][47]~64DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[4][47]~64DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~110DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~110DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Pk[2][31]~28DUPLICATE_combout\ <= NOT \PrefixNetwork|Pk[2][31]~28DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~92DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~92DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk[1][28]~91DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk[1][28]~91DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk[1][23]~69DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk[1][23]~69DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~68DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~68DUPLICATE_combout\;
\ALT_INV_c[39]~26DUPLICATE_combout\ <= NOT \c[39]~26DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk[1][21]~62DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk[1][21]~62DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk[3][19]~DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk[3][19]~DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~56DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~56DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~53DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~53DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk~43DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk~43DUPLICATE_combout\;
\ALT_INV_c~16DUPLICATE_combout\ <= NOT \c~16DUPLICATE_combout\;
\ALT_INV_c[37]~13DUPLICATE_combout\ <= NOT \c[37]~13DUPLICATE_combout\;
\PrefixNetwork|ALT_INV_Gk[3][11]~DUPLICATE_combout\ <= NOT \PrefixNetwork|Gk[3][11]~DUPLICATE_combout\;
\ALT_INV_c[27]~9DUPLICATE_combout\ <= NOT \c[27]~9DUPLICATE_combout\;
\ALT_INV_c[5]~DUPLICATE_combout\ <= NOT \c[5]~DUPLICATE_combout\;
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
\ALT_INV_c[10]~115_combout\ <= NOT \c[10]~115_combout\;
\ALT_INV_c~113_combout\ <= NOT \c~113_combout\;
\ALT_INV_c~112_combout\ <= NOT \c~112_combout\;
\PrefixNetwork|ALT_INV_Pk[4][63]~82_combout\ <= NOT \PrefixNetwork|Pk[4][63]~82_combout\;
\PrefixNetwork|ALT_INV_Gk[1][63]~202_combout\ <= NOT \PrefixNetwork|Gk[1][63]~202_combout\;
\ALT_INV_c~111_combout\ <= NOT \c~111_combout\;
\PrefixNetwork|ALT_INV_Gk~201_combout\ <= NOT \PrefixNetwork|Gk~201_combout\;
\PrefixNetwork|ALT_INV_Gk~200_combout\ <= NOT \PrefixNetwork|Gk~200_combout\;
\PrefixNetwork|ALT_INV_Pk[4][63]~81_combout\ <= NOT \PrefixNetwork|Pk[4][63]~81_combout\;
\PrefixNetwork|ALT_INV_Pk[4][63]~80_combout\ <= NOT \PrefixNetwork|Pk[4][63]~80_combout\;
\ALT_INV_c[63]~110_combout\ <= NOT \c[63]~110_combout\;
\ALT_INV_c[63]~109_combout\ <= NOT \c[63]~109_combout\;
\PrefixNetwork|ALT_INV_Pk[4][62]~79_combout\ <= NOT \PrefixNetwork|Pk[4][62]~79_combout\;
\PrefixNetwork|ALT_INV_Gk[1][62]~199_combout\ <= NOT \PrefixNetwork|Gk[1][62]~199_combout\;
\ALT_INV_c~108_combout\ <= NOT \c~108_combout\;
\PrefixNetwork|ALT_INV_Gk~198_combout\ <= NOT \PrefixNetwork|Gk~198_combout\;
\PrefixNetwork|ALT_INV_Gk~197_combout\ <= NOT \PrefixNetwork|Gk~197_combout\;
\PrefixNetwork|ALT_INV_Pk[4][62]~78_combout\ <= NOT \PrefixNetwork|Pk[4][62]~78_combout\;
\PrefixNetwork|ALT_INV_Pk[4][62]~77_combout\ <= NOT \PrefixNetwork|Pk[4][62]~77_combout\;
\ALT_INV_c[62]~107_combout\ <= NOT \c[62]~107_combout\;
\ALT_INV_c[62]~106_combout\ <= NOT \c[62]~106_combout\;
\ALT_INV_c[62]~105_combout\ <= NOT \c[62]~105_combout\;
\PrefixNetwork|ALT_INV_Gk[1][61]~196_combout\ <= NOT \PrefixNetwork|Gk[1][61]~196_combout\;
\ALT_INV_c[62]~104_combout\ <= NOT \c[62]~104_combout\;
\ALT_INV_c[62]~103_combout\ <= NOT \c[62]~103_combout\;
\PrefixNetwork|ALT_INV_Pk[1][61]~combout\ <= NOT \PrefixNetwork|Pk[1][61]~combout\;
ALT_INV_p(62) <= NOT p(62);
\ALT_INV_c[61]~102_combout\ <= NOT \c[61]~102_combout\;
\ALT_INV_c[61]~101_combout\ <= NOT \c[61]~101_combout\;
\ALT_INV_c[61]~100_combout\ <= NOT \c[61]~100_combout\;
\PrefixNetwork|ALT_INV_Gk[1][60]~195_combout\ <= NOT \PrefixNetwork|Gk[1][60]~195_combout\;
\ALT_INV_c[61]~99_combout\ <= NOT \c[61]~99_combout\;
\ALT_INV_c[61]~98_combout\ <= NOT \c[61]~98_combout\;
\PrefixNetwork|ALT_INV_Pk[1][60]~combout\ <= NOT \PrefixNetwork|Pk[1][60]~combout\;
ALT_INV_p(61) <= NOT p(61);
\ALT_INV_c[60]~97_combout\ <= NOT \c[60]~97_combout\;
\ALT_INV_c[60]~96_combout\ <= NOT \c[60]~96_combout\;
\ALT_INV_c[60]~95_combout\ <= NOT \c[60]~95_combout\;
\PrefixNetwork|ALT_INV_Gk[1][59]~194_combout\ <= NOT \PrefixNetwork|Gk[1][59]~194_combout\;
\ALT_INV_c[60]~94_combout\ <= NOT \c[60]~94_combout\;
\PrefixNetwork|ALT_INV_Pk[2][59]~76_combout\ <= NOT \PrefixNetwork|Pk[2][59]~76_combout\;
\PrefixNetwork|ALT_INV_Pk[1][59]~combout\ <= NOT \PrefixNetwork|Pk[1][59]~combout\;
ALT_INV_p(60) <= NOT p(60);
\ALT_INV_c[59]~93_combout\ <= NOT \c[59]~93_combout\;
\ALT_INV_c[59]~92_combout\ <= NOT \c[59]~92_combout\;
\ALT_INV_c[59]~91_combout\ <= NOT \c[59]~91_combout\;
\PrefixNetwork|ALT_INV_Gk[1][58]~193_combout\ <= NOT \PrefixNetwork|Gk[1][58]~193_combout\;
\ALT_INV_c[59]~90_combout\ <= NOT \c[59]~90_combout\;
\PrefixNetwork|ALT_INV_Pk[2][58]~75_combout\ <= NOT \PrefixNetwork|Pk[2][58]~75_combout\;
\PrefixNetwork|ALT_INV_Pk[1][58]~combout\ <= NOT \PrefixNetwork|Pk[1][58]~combout\;
ALT_INV_p(59) <= NOT p(59);
\ALT_INV_c[58]~89_combout\ <= NOT \c[58]~89_combout\;
\ALT_INV_c[58]~88_combout\ <= NOT \c[58]~88_combout\;
\PrefixNetwork|ALT_INV_Gk~192_combout\ <= NOT \PrefixNetwork|Gk~192_combout\;
\PrefixNetwork|ALT_INV_Gk[1][57]~191_combout\ <= NOT \PrefixNetwork|Gk[1][57]~191_combout\;
\ALT_INV_c[58]~87_combout\ <= NOT \c[58]~87_combout\;
\PrefixNetwork|ALT_INV_Pk[2][57]~74_combout\ <= NOT \PrefixNetwork|Pk[2][57]~74_combout\;
ALT_INV_p(58) <= NOT p(58);
\ALT_INV_c[57]~86_combout\ <= NOT \c[57]~86_combout\;
\ALT_INV_c[57]~85_combout\ <= NOT \c[57]~85_combout\;
\PrefixNetwork|ALT_INV_Gk~190_combout\ <= NOT \PrefixNetwork|Gk~190_combout\;
\PrefixNetwork|ALT_INV_Gk[1][56]~189_combout\ <= NOT \PrefixNetwork|Gk[1][56]~189_combout\;
\ALT_INV_c[57]~84_combout\ <= NOT \c[57]~84_combout\;
\PrefixNetwork|ALT_INV_Pk[2][56]~73_combout\ <= NOT \PrefixNetwork|Pk[2][56]~73_combout\;
ALT_INV_p(57) <= NOT p(57);
\ALT_INV_c[56]~83_combout\ <= NOT \c[56]~83_combout\;
\ALT_INV_c[56]~82_combout\ <= NOT \c[56]~82_combout\;
\PrefixNetwork|ALT_INV_Gk[3][55]~combout\ <= NOT \PrefixNetwork|Gk[3][55]~combout\;
\PrefixNetwork|ALT_INV_Gk[1][55]~188_combout\ <= NOT \PrefixNetwork|Gk[1][55]~188_combout\;
\ALT_INV_c[56]~81_combout\ <= NOT \c[56]~81_combout\;
\ALT_INV_c[56]~80_combout\ <= NOT \c[56]~80_combout\;
\PrefixNetwork|ALT_INV_Pk[2][55]~72_combout\ <= NOT \PrefixNetwork|Pk[2][55]~72_combout\;
\PrefixNetwork|ALT_INV_Gk~187_combout\ <= NOT \PrefixNetwork|Gk~187_combout\;
\ALT_INV_c[55]~79_combout\ <= NOT \c[55]~79_combout\;
\ALT_INV_c[55]~78_combout\ <= NOT \c[55]~78_combout\;
\PrefixNetwork|ALT_INV_Gk[3][54]~combout\ <= NOT \PrefixNetwork|Gk[3][54]~combout\;
\PrefixNetwork|ALT_INV_Gk[1][54]~186_combout\ <= NOT \PrefixNetwork|Gk[1][54]~186_combout\;
\ALT_INV_c[55]~77_combout\ <= NOT \c[55]~77_combout\;
\ALT_INV_c[55]~76_combout\ <= NOT \c[55]~76_combout\;
\PrefixNetwork|ALT_INV_Pk[2][54]~71_combout\ <= NOT \PrefixNetwork|Pk[2][54]~71_combout\;
\PrefixNetwork|ALT_INV_Gk~185_combout\ <= NOT \PrefixNetwork|Gk~185_combout\;
\ALT_INV_c[54]~75_combout\ <= NOT \c[54]~75_combout\;
\PrefixNetwork|ALT_INV_Gk[3][53]~combout\ <= NOT \PrefixNetwork|Gk[3][53]~combout\;
\PrefixNetwork|ALT_INV_Gk~184_combout\ <= NOT \PrefixNetwork|Gk~184_combout\;
\PrefixNetwork|ALT_INV_Gk[1][53]~183_combout\ <= NOT \PrefixNetwork|Gk[1][53]~183_combout\;
\ALT_INV_c[54]~74_combout\ <= NOT \c[54]~74_combout\;
\ALT_INV_c[58]~73_combout\ <= NOT \c[58]~73_combout\;
\PrefixNetwork|ALT_INV_Pk[2][53]~70_combout\ <= NOT \PrefixNetwork|Pk[2][53]~70_combout\;
\ALT_INV_c[53]~72_combout\ <= NOT \c[53]~72_combout\;
\PrefixNetwork|ALT_INV_Gk[3][52]~combout\ <= NOT \PrefixNetwork|Gk[3][52]~combout\;
\PrefixNetwork|ALT_INV_Gk~182_combout\ <= NOT \PrefixNetwork|Gk~182_combout\;
\PrefixNetwork|ALT_INV_Gk[1][52]~181_combout\ <= NOT \PrefixNetwork|Gk[1][52]~181_combout\;
\ALT_INV_c[53]~71_combout\ <= NOT \c[53]~71_combout\;
\ALT_INV_c[53]~70_combout\ <= NOT \c[53]~70_combout\;
\ALT_INV_c[57]~69_combout\ <= NOT \c[57]~69_combout\;
\PrefixNetwork|ALT_INV_Pk[2][52]~69_combout\ <= NOT \PrefixNetwork|Pk[2][52]~69_combout\;
\ALT_INV_c[52]~68_combout\ <= NOT \c[52]~68_combout\;
\ALT_INV_c[52]~67_combout\ <= NOT \c[52]~67_combout\;
\PrefixNetwork|ALT_INV_Gk[3][51]~combout\ <= NOT \PrefixNetwork|Gk[3][51]~combout\;
\PrefixNetwork|ALT_INV_Gk~180_combout\ <= NOT \PrefixNetwork|Gk~180_combout\;
\PrefixNetwork|ALT_INV_Gk[1][51]~179_combout\ <= NOT \PrefixNetwork|Gk[1][51]~179_combout\;
\ALT_INV_c[52]~66_combout\ <= NOT \c[52]~66_combout\;
\PrefixNetwork|ALT_INV_Pk[2][51]~68_combout\ <= NOT \PrefixNetwork|Pk[2][51]~68_combout\;
\PrefixNetwork|ALT_INV_Gk~178_combout\ <= NOT \PrefixNetwork|Gk~178_combout\;
\ALT_INV_c[51]~65_combout\ <= NOT \c[51]~65_combout\;
\ALT_INV_c[51]~64_combout\ <= NOT \c[51]~64_combout\;
\PrefixNetwork|ALT_INV_Gk[3][50]~combout\ <= NOT \PrefixNetwork|Gk[3][50]~combout\;
\PrefixNetwork|ALT_INV_Gk~177_combout\ <= NOT \PrefixNetwork|Gk~177_combout\;
\PrefixNetwork|ALT_INV_Gk[1][50]~176_combout\ <= NOT \PrefixNetwork|Gk[1][50]~176_combout\;
\ALT_INV_c[51]~63_combout\ <= NOT \c[51]~63_combout\;
\PrefixNetwork|ALT_INV_Pk[2][50]~67_combout\ <= NOT \PrefixNetwork|Pk[2][50]~67_combout\;
\PrefixNetwork|ALT_INV_Gk~175_combout\ <= NOT \PrefixNetwork|Gk~175_combout\;
\ALT_INV_c[50]~62_combout\ <= NOT \c[50]~62_combout\;
\PrefixNetwork|ALT_INV_Gk[3][49]~combout\ <= NOT \PrefixNetwork|Gk[3][49]~combout\;
\PrefixNetwork|ALT_INV_Gk~174_combout\ <= NOT \PrefixNetwork|Gk~174_combout\;
\PrefixNetwork|ALT_INV_Gk[1][49]~173_combout\ <= NOT \PrefixNetwork|Gk[1][49]~173_combout\;
\ALT_INV_c[50]~61_combout\ <= NOT \c[50]~61_combout\;
\ALT_INV_c[50]~60_combout\ <= NOT \c[50]~60_combout\;
\ALT_INV_c[50]~59_combout\ <= NOT \c[50]~59_combout\;
\PrefixNetwork|ALT_INV_Pk[2][49]~66_combout\ <= NOT \PrefixNetwork|Pk[2][49]~66_combout\;
\PrefixNetwork|ALT_INV_Gk~172_combout\ <= NOT \PrefixNetwork|Gk~172_combout\;
\ALT_INV_c[49]~58_combout\ <= NOT \c[49]~58_combout\;
\PrefixNetwork|ALT_INV_Gk[3][48]~combout\ <= NOT \PrefixNetwork|Gk[3][48]~combout\;
\PrefixNetwork|ALT_INV_Gk~171_combout\ <= NOT \PrefixNetwork|Gk~171_combout\;
\PrefixNetwork|ALT_INV_Gk[1][48]~170_combout\ <= NOT \PrefixNetwork|Gk[1][48]~170_combout\;
\ALT_INV_c[49]~57_combout\ <= NOT \c[49]~57_combout\;
\ALT_INV_c[49]~56_combout\ <= NOT \c[49]~56_combout\;

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X59_Y49_N98
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

-- Location: IOOBUF_X59_Y51_N67
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

-- Location: IOOBUF_X19_Y0_N98
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

-- Location: IOOBUF_X59_Y48_N67
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N67
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

-- Location: IOOBUF_X22_Y0_N67
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

-- Location: IOOBUF_X59_Y51_N98
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

-- Location: IOOBUF_X18_Y0_N67
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

-- Location: IOOBUF_X22_Y0_N98
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

-- Location: IOOBUF_X59_Y48_N2
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

-- Location: IOOBUF_X59_Y46_N2
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X18_Y0_N33
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

-- Location: IOOBUF_X25_Y0_N33
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

-- Location: IOOBUF_X24_Y0_N67
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

-- Location: IOOBUF_X25_Y0_N67
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X59_Y33_N33
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

-- Location: IOOBUF_X59_Y26_N33
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

-- Location: IOOBUF_X25_Y0_N5
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

-- Location: IOOBUF_X59_Y28_N2
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

-- Location: IOOBUF_X59_Y39_N33
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

-- Location: IOOBUF_X59_Y37_N98
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X59_Y37_N67
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

-- Location: IOOBUF_X59_Y46_N36
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

-- Location: IOOBUF_X59_Y33_N5
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

-- Location: IOOBUF_X59_Y31_N67
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

-- Location: IOOBUF_X59_Y36_N98
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

-- Location: IOOBUF_X45_Y0_N2
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

-- Location: IOOBUF_X59_Y33_N67
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

-- Location: IOOBUF_X29_Y0_N67
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

-- Location: IOOBUF_X59_Y26_N67
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X59_Y26_N98
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

-- Location: IOOBUF_X24_Y0_N98
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

-- Location: IOOBUF_X56_Y0_N33
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

-- Location: IOOBUF_X29_Y0_N98
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

-- Location: IOOBUF_X55_Y0_N67
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

-- Location: IOOBUF_X59_Y10_N67
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

-- Location: IOOBUF_X30_Y0_N67
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

-- Location: IOOBUF_X32_Y0_N2
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

-- Location: IOOBUF_X59_Y21_N98
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

-- Location: IOOBUF_X25_Y0_N98
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X32_Y0_N98
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

-- Location: IOOBUF_X59_Y25_N2
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

-- Location: IOOBUF_X30_Y0_N98
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

-- Location: IOOBUF_X59_Y16_N36
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

-- Location: IOOBUF_X33_Y0_N5
\S[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X59_Y13_N98
\S[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X41_Y0_N33
\S[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X59_Y16_N98
\S[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X30_Y0_N36
\S[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\S[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X35_Y0_N98
\S[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X56_Y0_N95
\S[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X59_Y15_N67
\S[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X56_Y0_N64
\S[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X59_Y28_N98
\S[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~63_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X55_Y0_N5
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~114_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y16_N2
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

-- Location: IOIBUF_X54_Y0_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X52_Y12_N8
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \A[0]~input_o\ & ( !\B[0]~input_o\ $ (\Cin~input_o\) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ $ (!\Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X59_Y30_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y19_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X54_Y12_N24
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \Cin~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (((\B[0]~input_o\) # (\A[0]~input_o\)))) ) ) # ( !\Cin~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X59_Y7_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X54_Y10_N24
\p[2]\ : arriaii_lcell_comb
-- Equation(s):
-- p(2) = ( \A[2]~input_o\ & ( !\B[2]~input_o\ ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => p(2));

-- Location: LABCELL_X55_Y13_N32
\c[10]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \c[10]~115_combout\ = ( \Cin~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\A[0]~input_o\) # (\A[1]~input_o\)) # (\B[0]~input_o\))) ) ) # ( !\Cin~input_o\ & ( (!\B[1]~input_o\ & 
-- (\B[0]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\)) # (\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \c[10]~115_combout\);

-- Location: MLABCELL_X54_Y15_N26
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( !p(2) & ( \c[10]~115_combout\ ) ) # ( p(2) & ( !\c[10]~115_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_p(2),
	dataf => \ALT_INV_c[10]~115_combout\,
	combout => \S~2_combout\);

-- Location: MLABCELL_X54_Y10_N8
\PrefixNetwork|Gk[1][2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][2]~0_combout\ = ( \B[1]~input_o\ & ( (!\A[2]~input_o\ & (\B[2]~input_o\ & \A[1]~input_o\)) # (\A[2]~input_o\ & ((\A[1]~input_o\) # (\B[2]~input_o\))) ) ) # ( !\B[1]~input_o\ & ( (\A[2]~input_o\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \PrefixNetwork|Gk[1][2]~0_combout\);

-- Location: MLABCELL_X54_Y10_N10
\c~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \c~0_combout\);

-- Location: LABCELL_X53_Y10_N0
\c[11]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c[11]~1_combout\ = ( \Cin~input_o\ & ( \c~0_combout\ & ( (!\B[0]~input_o\ & (!\PrefixNetwork|Gk[1][2]~0_combout\ & !\A[0]~input_o\)) ) ) ) # ( !\Cin~input_o\ & ( \c~0_combout\ & ( (!\PrefixNetwork|Gk[1][2]~0_combout\ & ((!\B[0]~input_o\) # 
-- (!\A[0]~input_o\))) ) ) ) # ( \Cin~input_o\ & ( !\c~0_combout\ & ( !\PrefixNetwork|Gk[1][2]~0_combout\ ) ) ) # ( !\Cin~input_o\ & ( !\c~0_combout\ & ( !\PrefixNetwork|Gk[1][2]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \c[11]~1_combout\);

-- Location: IOIBUF_X39_Y0_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X54_Y10_N38
\p[3]\ : arriaii_lcell_comb
-- Equation(s):
-- p(3) = ( \A[3]~input_o\ & ( !\B[3]~input_o\ ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => p(3));

-- Location: LABCELL_X53_Y10_N14
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( p(3) & ( \c[11]~1_combout\ ) ) # ( !p(3) & ( !\c[11]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_c[11]~1_combout\,
	dataf => ALT_INV_p(3),
	combout => \S~3_combout\);

-- Location: MLABCELL_X52_Y11_N16
\PrefixNetwork|Gk[1][3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][3]~1_combout\ = ( \B[3]~input_o\ & ( ((\A[2]~input_o\ & \B[2]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\A[2]~input_o\ & (\B[2]~input_o\ & \A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \PrefixNetwork|Gk[1][3]~1_combout\);

-- Location: LABCELL_X53_Y12_N10
\PrefixNetwork|Gpre[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[1]~0_combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)) # (\B[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \PrefixNetwork|Gpre[1]~0_combout\);

-- Location: LABCELL_X53_Y12_N34
\PrefixNetwork|Gk~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~2_combout\ = ( p(3) & ( (\PrefixNetwork|Gpre[1]~0_combout\ & p(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	datad => ALT_INV_p(2),
	dataf => ALT_INV_p(3),
	combout => \PrefixNetwork|Gk~2_combout\);

-- Location: LABCELL_X53_Y12_N28
\c~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c~2_combout\ = ( \c~0_combout\ & ( (\Cin~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \c~2_combout\);

-- Location: LABCELL_X53_Y12_N8
\c[4]\ : arriaii_lcell_comb
-- Equation(s):
-- c(4) = ( \c~2_combout\ & ( (!\PrefixNetwork|Gk[1][3]~1_combout\ & (!p(3) & !\PrefixNetwork|Gk~2_combout\)) ) ) # ( !\c~2_combout\ & ( (!\PrefixNetwork|Gk[1][3]~1_combout\ & !\PrefixNetwork|Gk~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	datac => ALT_INV_p(3),
	datad => \PrefixNetwork|ALT_INV_Gk~2_combout\,
	dataf => \ALT_INV_c~2_combout\,
	combout => c(4));

-- Location: IOIBUF_X54_Y0_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y10_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X53_Y12_N36
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \B[4]~input_o\ & ( !c(4) $ (!\A[4]~input_o\) ) ) # ( !\B[4]~input_o\ & ( !c(4) $ (\A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_c(4),
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y12_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y12_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X58_Y12_N26
\p[5]\ : arriaii_lcell_comb
-- Equation(s):
-- p(5) = ( !\B[5]~input_o\ & ( \A[5]~input_o\ ) ) # ( \B[5]~input_o\ & ( !\A[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => p(5));

-- Location: MLABCELL_X54_Y10_N30
\PrefixNetwork|Gk[1][4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][4]~3_combout\ = ( \A[3]~input_o\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & \B[3]~input_o\)) # (\B[4]~input_o\ & ((\B[3]~input_o\) # (\A[4]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (\B[4]~input_o\ & \A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \PrefixNetwork|Gk[1][4]~3_combout\);

-- Location: MLABCELL_X54_Y10_N18
\PrefixNetwork|Gk~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~4_combout\ = ( \PrefixNetwork|Gk[1][2]~0_combout\ & ( (p(3) & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => ALT_INV_p(3),
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	combout => \PrefixNetwork|Gk~4_combout\);

-- Location: MLABCELL_X54_Y10_N16
\PrefixNetwork|Pk[3][8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[3][8]~0_combout\ = ( \c~0_combout\ & ( (p(3) & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => ALT_INV_p(3),
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_c~0_combout\,
	combout => \PrefixNetwork|Pk[3][8]~0_combout\);

-- Location: MLABCELL_X54_Y10_N14
\c[5]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[5]~DUPLICATE_combout\ = ( \PrefixNetwork|Pk[3][8]~0_combout\ & ( \Cin~input_o\ & ( (!\A[0]~input_o\ & (!\B[0]~input_o\ & (!\PrefixNetwork|Gk[1][4]~3_combout\ & !\PrefixNetwork|Gk~4_combout\))) ) ) ) # ( !\PrefixNetwork|Pk[3][8]~0_combout\ & ( 
-- \Cin~input_o\ & ( (!\PrefixNetwork|Gk[1][4]~3_combout\ & !\PrefixNetwork|Gk~4_combout\) ) ) ) # ( \PrefixNetwork|Pk[3][8]~0_combout\ & ( !\Cin~input_o\ & ( (!\PrefixNetwork|Gk[1][4]~3_combout\ & (!\PrefixNetwork|Gk~4_combout\ & ((!\A[0]~input_o\) # 
-- (!\B[0]~input_o\)))) ) ) ) # ( !\PrefixNetwork|Pk[3][8]~0_combout\ & ( !\Cin~input_o\ & ( (!\PrefixNetwork|Gk[1][4]~3_combout\ & !\PrefixNetwork|Gk~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111000000000000011110000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[3][8]~0_combout\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \c[5]~DUPLICATE_combout\);

-- Location: MLABCELL_X54_Y10_N34
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c[5]~DUPLICATE_combout\ & ( p(5) ) ) # ( !\c[5]~DUPLICATE_combout\ & ( !p(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(5),
	dataf => \ALT_INV_c[5]~DUPLICATE_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y4_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X53_Y12_N18
\PrefixNetwork|Gk[1][5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][5]~5_combout\ = ( \A[4]~input_o\ & ( (!\B[5]~input_o\ & (\B[4]~input_o\ & \A[5]~input_o\)) # (\B[5]~input_o\ & ((\A[5]~input_o\) # (\B[4]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\B[5]~input_o\ & \A[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \PrefixNetwork|Gk[1][5]~5_combout\);

-- Location: MLABCELL_X54_Y10_N4
\PrefixNetwork|Gk~6\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~6_combout\ = ( p(3) & ( (p(5) & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => ALT_INV_p(5),
	datad => \ALT_INV_A[4]~input_o\,
	dataf => ALT_INV_p(3),
	combout => \PrefixNetwork|Gk~6_combout\);

-- Location: MLABCELL_X54_Y13_N26
\PrefixNetwork|Gk~7\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~7_combout\ = ( \PrefixNetwork|Gk[1][3]~1_combout\ & ( (p(5) & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => ALT_INV_p(5),
	dataf => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	combout => \PrefixNetwork|Gk~7_combout\);

-- Location: MLABCELL_X54_Y13_N12
\PrefixNetwork|Gpre[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(5) = ( \PrefixNetwork|Gpre[1]~0_combout\ & ( (!\PrefixNetwork|Gk[1][5]~5_combout\ & (!\PrefixNetwork|Gk~7_combout\ & ((!p(2)) # (!\PrefixNetwork|Gk~6_combout\)))) ) ) # ( !\PrefixNetwork|Gpre[1]~0_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][5]~5_combout\ & !\PrefixNetwork|Gk~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(2),
	datab => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~7_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre[1]~0_combout\,
	combout => \PrefixNetwork|Gpre\(5));

-- Location: IOIBUF_X59_Y10_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X54_Y10_N6
\c~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c~3_combout\ = ( \Cin~input_o\ & ( (\PrefixNetwork|Pk[3][8]~0_combout\ & (!\A[0]~input_o\ $ (!\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[3][8]~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \c~3_combout\);

-- Location: MLABCELL_X54_Y10_N32
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \c~3_combout\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (((!\PrefixNetwork|Gpre\(5)) # (p(5))))) ) ) # ( !\c~3_combout\ & ( !\A[6]~input_o\ $ (!\PrefixNetwork|Gpre\(5) $ (!\B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000110001110011100011000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(5),
	datab => \ALT_INV_A[6]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gpre\(5),
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_c~3_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y15_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X54_Y10_N20
\PrefixNetwork|Gpre[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(2) = ( !\PrefixNetwork|Gk[1][2]~0_combout\ & ( (!\B[0]~input_o\) # ((!\A[0]~input_o\) # (!\c~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100111111111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_c~0_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][2]~0_combout\,
	combout => \PrefixNetwork|Gpre\(2));

-- Location: MLABCELL_X54_Y10_N22
\PrefixNetwork|Gk~9\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~9_combout\ = ( !\PrefixNetwork|Gpre\(2) & ( (\PrefixNetwork|Gk~6_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre\(2),
	combout => \PrefixNetwork|Gk~9_combout\);

-- Location: LABCELL_X53_Y10_N26
\PrefixNetwork|Gk~8\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~8_combout\ = ( \A[6]~input_o\ & ( (!\B[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) ) # ( !\A[6]~input_o\ & ( (\B[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \PrefixNetwork|Gk~8_combout\);

-- Location: LABCELL_X55_Y12_N2
\PrefixNetwork|Gk[1][6]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][6]~10_combout\ = ( \A[6]~input_o\ & ( ((\B[5]~input_o\ & \A[5]~input_o\)) # (\B[6]~input_o\) ) ) # ( !\A[6]~input_o\ & ( (\B[5]~input_o\ & (\A[5]~input_o\ & \B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][6]~10_combout\);

-- Location: MLABCELL_X54_Y10_N2
\PrefixNetwork|Gpre[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~1_combout\ = ( !\PrefixNetwork|Gk[1][6]~10_combout\ & ( (!\PrefixNetwork|Gk~8_combout\) # (!\PrefixNetwork|Gk[1][4]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][6]~10_combout\,
	combout => \PrefixNetwork|Gpre[6]~1_combout\);

-- Location: MLABCELL_X54_Y10_N0
\c~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c~4_combout\ = ( \Cin~input_o\ & ( (\PrefixNetwork|Gk~8_combout\ & (\PrefixNetwork|Pk[3][8]~0_combout\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001000000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[3][8]~0_combout\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \c~4_combout\);

-- Location: IOIBUF_X59_Y13_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X54_Y10_N36
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \B[7]~input_o\ & ( !\A[7]~input_o\ $ ((((!\PrefixNetwork|Gpre[6]~1_combout\) # (\c~4_combout\)) # (\PrefixNetwork|Gk~9_combout\))) ) ) # ( !\B[7]~input_o\ & ( !\A[7]~input_o\ $ (((!\PrefixNetwork|Gk~9_combout\ & 
-- (\PrefixNetwork|Gpre[6]~1_combout\ & !\c~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010101010101001101010101001011001010101010101100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \PrefixNetwork|ALT_INV_Gk~9_combout\,
	datac => \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\,
	datad => \ALT_INV_c~4_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X50_Y0_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X59_Y13_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X53_Y12_N6
\PrefixNetwork|Gk~11\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~11_combout\ = ( \PrefixNetwork|Gk~8_combout\ & ( (!\A[7]~input_o\ & (\B[7]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) # (\A[7]~input_o\ & (!\B[7]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	combout => \PrefixNetwork|Gk~11_combout\);

-- Location: LABCELL_X53_Y12_N30
\c~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c~5_combout\ = ( \c~2_combout\ & ( (\PrefixNetwork|Gk~11_combout\ & p(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~11_combout\,
	datad => ALT_INV_p(3),
	dataf => \ALT_INV_c~2_combout\,
	combout => \c~5_combout\);

-- Location: LABCELL_X53_Y12_N4
\PrefixNetwork|Gk~13\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~13_combout\ = ( \B[6]~input_o\ & ( (\PrefixNetwork|Gk[1][5]~5_combout\ & (!\A[6]~input_o\ & (!\A[7]~input_o\ $ (!\B[7]~input_o\)))) ) ) # ( !\B[6]~input_o\ & ( (\PrefixNetwork|Gk[1][5]~5_combout\ & (\A[6]~input_o\ & (!\A[7]~input_o\ $ 
-- (!\B[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \PrefixNetwork|Gk~13_combout\);

-- Location: LABCELL_X50_Y12_N10
\PrefixNetwork|Gk[1][7]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][7]~12_combout\ = ( \B[6]~input_o\ & ( (!\A[6]~input_o\ & (\B[7]~input_o\ & \A[7]~input_o\)) # (\A[6]~input_o\ & ((\A[7]~input_o\) # (\B[7]~input_o\))) ) ) # ( !\B[6]~input_o\ & ( (\B[7]~input_o\ & \A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][7]~12_combout\);

-- Location: LABCELL_X53_Y12_N38
\PrefixNetwork|Gpre[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(7) = ( \PrefixNetwork|Gk~11_combout\ & ( (!\PrefixNetwork|Gk~13_combout\ & (!\PrefixNetwork|Gk[1][7]~12_combout\ & (!\PrefixNetwork|Gk~2_combout\ & !\PrefixNetwork|Gk[1][3]~1_combout\))) ) ) # ( !\PrefixNetwork|Gk~11_combout\ & ( 
-- (!\PrefixNetwork|Gk~13_combout\ & !\PrefixNetwork|Gk[1][7]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~13_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][7]~12_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~2_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][3]~1_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~11_combout\,
	combout => \PrefixNetwork|Gpre\(7));

-- Location: LABCELL_X53_Y12_N26
\c[8]\ : arriaii_lcell_comb
-- Equation(s):
-- c(8) = ( \PrefixNetwork|Gpre\(7) & ( !\c~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~5_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre\(7),
	combout => c(8));

-- Location: LABCELL_X50_Y12_N28
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( c(8) & ( !\B[8]~input_o\ $ (!\A[8]~input_o\) ) ) # ( !c(8) & ( !\B[8]~input_o\ $ (\A[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	dataf => ALT_INV_c(8),
	combout => \S~8_combout\);

-- Location: IOIBUF_X59_Y9_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y9_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X54_Y13_N24
\PrefixNetwork|Gk~15\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~15_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \PrefixNetwork|Gk~15_combout\);

-- Location: LABCELL_X53_Y10_N36
\PrefixNetwork|Pk[2][8]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][8]~1_combout\ = ( \PrefixNetwork|Gk~15_combout\ & ( \PrefixNetwork|Gk~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~15_combout\,
	combout => \PrefixNetwork|Pk[2][8]~1_combout\);

-- Location: MLABCELL_X54_Y12_N4
\c[25]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c[25]~6_combout\ = ( \PrefixNetwork|Pk[2][8]~1_combout\ & ( (\PrefixNetwork|Pk[3][8]~0_combout\ & ((!\A[0]~input_o\ & (\Cin~input_o\ & \B[0]~input_o\)) # (\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001110000000100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[3][8]~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][8]~1_combout\,
	combout => \c[25]~6_combout\);

-- Location: MLABCELL_X54_Y12_N38
\PrefixNetwork|Gk~16\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~16_combout\ = ( \PrefixNetwork|Gk~15_combout\ & ( \PrefixNetwork|Gk[1][6]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][6]~10_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~15_combout\,
	combout => \PrefixNetwork|Gk~16_combout\);

-- Location: LABCELL_X50_Y11_N34
\PrefixNetwork|Gk[1][8]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][8]~14_combout\ = ( \A[8]~input_o\ & ( ((\A[7]~input_o\ & \B[7]~input_o\)) # (\B[8]~input_o\) ) ) # ( !\A[8]~input_o\ & ( (\B[8]~input_o\ & (\A[7]~input_o\ & \B[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \PrefixNetwork|Gk[1][8]~14_combout\);

-- Location: MLABCELL_X54_Y12_N2
\PrefixNetwork|Gk[3][8]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][8]~combout\ = ( \PrefixNetwork|Gk~4_combout\ & ( (!\PrefixNetwork|Pk[2][8]~1_combout\ & (!\PrefixNetwork|Gk~16_combout\ & !\PrefixNetwork|Gk[1][8]~14_combout\)) ) ) # ( !\PrefixNetwork|Gk~4_combout\ & ( (!\PrefixNetwork|Gk~16_combout\ 
-- & (!\PrefixNetwork|Gk[1][8]~14_combout\ & ((!\PrefixNetwork|Pk[2][8]~1_combout\) # (!\PrefixNetwork|Gk[1][4]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][8]~1_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~16_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	combout => \PrefixNetwork|Gk[3][8]~combout\);

-- Location: LABCELL_X55_Y12_N22
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \PrefixNetwork|Gk[3][8]~combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (\c[25]~6_combout\)) ) ) # ( !\PrefixNetwork|Gk[3][8]~combout\ & ( !\B[9]~input_o\ $ (\A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_c[25]~6_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][8]~combout\,
	combout => \S~9_combout\);

-- Location: MLABCELL_X54_Y13_N32
\PrefixNetwork|Pk[2][9]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][9]~2_combout\ = ( \A[6]~input_o\ & ( (\PrefixNetwork|Gk~15_combout\ & (!\B[6]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) ) ) # ( !\A[6]~input_o\ & ( (\PrefixNetwork|Gk~15_combout\ & (\B[6]~input_o\ & (!\A[9]~input_o\ $ 
-- (!\B[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000000100010000000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~15_combout\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \PrefixNetwork|Pk[2][9]~2_combout\);

-- Location: LABCELL_X55_Y13_N16
\c[10]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c[10]~7_combout\ = ( \c[10]~115_combout\ & ( (p(2) & (\PrefixNetwork|Gk~6_combout\ & \PrefixNetwork|Pk[2][9]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p(2),
	datac => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][9]~2_combout\,
	dataf => \ALT_INV_c[10]~115_combout\,
	combout => \c[10]~7_combout\);

-- Location: IOIBUF_X48_Y0_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X50_Y12_N16
\PrefixNetwork|Gk[1][9]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][9]~17_combout\ = ( \B[9]~input_o\ & ( \A[9]~input_o\ ) ) # ( !\B[9]~input_o\ & ( \A[9]~input_o\ & ( (\B[8]~input_o\ & \A[8]~input_o\) ) ) ) # ( \B[9]~input_o\ & ( !\A[9]~input_o\ & ( (\B[8]~input_o\ & \A[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \PrefixNetwork|Gk[1][9]~17_combout\);

-- Location: LABCELL_X50_Y13_N32
\PrefixNetwork|Gk~18\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~18_combout\ = ( \B[9]~input_o\ & ( \PrefixNetwork|Gk[1][7]~12_combout\ & ( (!\A[9]~input_o\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\))) ) ) ) # ( !\B[9]~input_o\ & ( \PrefixNetwork|Gk[1][7]~12_combout\ & ( (\A[9]~input_o\ & (!\B[8]~input_o\ 
-- $ (!\A[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][7]~12_combout\,
	combout => \PrefixNetwork|Gk~18_combout\);

-- Location: MLABCELL_X54_Y13_N28
\PrefixNetwork|Gk[3][9]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][9]~combout\ = ( !\PrefixNetwork|Gk~18_combout\ & ( (!\PrefixNetwork|Gk[1][9]~17_combout\ & ((!\PrefixNetwork|Pk[2][9]~2_combout\) # ((!\PrefixNetwork|Gk[1][5]~5_combout\ & !\PrefixNetwork|Gk~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010100000111000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][9]~2_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][5]~5_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~7_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~18_combout\,
	combout => \PrefixNetwork|Gk[3][9]~combout\);

-- Location: LABCELL_X55_Y13_N4
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \PrefixNetwork|Gk[3][9]~combout\ & ( !\c[10]~7_combout\ $ (!\A[10]~input_o\ $ (\B[10]~input_o\)) ) ) # ( !\PrefixNetwork|Gk[3][9]~combout\ & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[10]~7_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][9]~combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X32_Y0_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X49_Y11_N16
\PrefixNetwork|Gk~20\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~20_combout\ = ( !\B[9]~input_o\ & ( \A[9]~input_o\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\) ) ) ) # ( \B[9]~input_o\ & ( !\A[9]~input_o\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \PrefixNetwork|Gk~20_combout\);

-- Location: LABCELL_X53_Y10_N8
\PrefixNetwork|Pk[2][10]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][10]~3_combout\ = ( \PrefixNetwork|Gk~20_combout\ & ( \PrefixNetwork|Gk~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	combout => \PrefixNetwork|Pk[2][10]~3_combout\);

-- Location: LABCELL_X53_Y10_N12
\c[11]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c[11]~8_combout\ = ( \PrefixNetwork|Pk[2][10]~3_combout\ & ( (\PrefixNetwork|Gk~6_combout\ & (!\c[11]~1_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~6_combout\,
	datad => \ALT_INV_c[11]~1_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][10]~3_combout\,
	combout => \c[11]~8_combout\);

-- Location: LABCELL_X50_Y8_N24
\PrefixNetwork|Gk[1][10]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][10]~19_combout\ = ( \A[9]~input_o\ & ( \B[9]~input_o\ & ( (\A[10]~input_o\) # (\B[10]~input_o\) ) ) ) # ( !\A[9]~input_o\ & ( \B[9]~input_o\ & ( (\B[10]~input_o\ & \A[10]~input_o\) ) ) ) # ( \A[9]~input_o\ & ( !\B[9]~input_o\ & ( 
-- (\B[10]~input_o\ & \A[10]~input_o\) ) ) ) # ( !\A[9]~input_o\ & ( !\B[9]~input_o\ & ( (\B[10]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \PrefixNetwork|Gk[1][10]~19_combout\);

-- Location: LABCELL_X50_Y11_N12
\PrefixNetwork|Gk~21\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~21_combout\ = ( \PrefixNetwork|Gk~20_combout\ & ( \PrefixNetwork|Gk[1][8]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	combout => \PrefixNetwork|Gk~21_combout\);

-- Location: LABCELL_X53_Y10_N20
\PrefixNetwork|Gk[3][10]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][10]~combout\ = ( !\PrefixNetwork|Gk~21_combout\ & ( \PrefixNetwork|Pk[2][10]~3_combout\ & ( (!\PrefixNetwork|Gk[1][10]~19_combout\ & (!\PrefixNetwork|Gk[1][6]~10_combout\ & ((!\PrefixNetwork|Gk[1][4]~3_combout\) # 
-- (!\PrefixNetwork|Gk~8_combout\)))) ) ) ) # ( !\PrefixNetwork|Gk~21_combout\ & ( !\PrefixNetwork|Pk[2][10]~3_combout\ & ( !\PrefixNetwork|Gk[1][10]~19_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010100000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][6]~10_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~8_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~21_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][10]~3_combout\,
	combout => \PrefixNetwork|Gk[3][10]~combout\);

-- Location: LABCELL_X53_Y10_N32
\c[27]~9DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[27]~9DUPLICATE_combout\ = ( !\c[11]~8_combout\ & ( \PrefixNetwork|Gk[3][10]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_c[11]~8_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][10]~combout\,
	combout => \c[27]~9DUPLICATE_combout\);

-- Location: LABCELL_X27_Y2_N16
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \A[11]~input_o\ & ( \c[27]~9DUPLICATE_combout\ & ( !\B[11]~input_o\ ) ) ) # ( !\A[11]~input_o\ & ( \c[27]~9DUPLICATE_combout\ & ( \B[11]~input_o\ ) ) ) # ( \A[11]~input_o\ & ( !\c[27]~9DUPLICATE_combout\ & ( \B[11]~input_o\ ) ) ) # ( 
-- !\A[11]~input_o\ & ( !\c[27]~9DUPLICATE_combout\ & ( !\B[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_c[27]~9DUPLICATE_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X59_Y12_N94
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X49_Y12_N4
\PrefixNetwork|Gk~23\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~23_combout\ = ( !\B[11]~input_o\ & ( \A[11]~input_o\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\) ) ) ) # ( \B[11]~input_o\ & ( !\A[11]~input_o\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \PrefixNetwork|Gk~23_combout\);

-- Location: LABCELL_X50_Y12_N30
\PrefixNetwork|Pk[2][11]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][11]~4_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (\PrefixNetwork|Gk~23_combout\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\)))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & (\PrefixNetwork|Gk~23_combout\ & (!\B[8]~input_o\ $ 
-- (!\A[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Gk~23_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \PrefixNetwork|Pk[2][11]~4_combout\);

-- Location: MLABCELL_X49_Y12_N8
\PrefixNetwork|Gk[1][11]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][11]~22_combout\ = ( \B[11]~input_o\ & ( \A[11]~input_o\ ) ) # ( !\B[11]~input_o\ & ( \A[11]~input_o\ & ( (\B[10]~input_o\ & \A[10]~input_o\) ) ) ) # ( \B[11]~input_o\ & ( !\A[11]~input_o\ & ( (\B[10]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \PrefixNetwork|Gk[1][11]~22_combout\);

-- Location: LABCELL_X50_Y12_N8
\PrefixNetwork|Gk~24\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~24_combout\ = ( \PrefixNetwork|Gk[1][9]~17_combout\ & ( \PrefixNetwork|Gk~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~23_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\,
	combout => \PrefixNetwork|Gk~24_combout\);

-- Location: LABCELL_X50_Y12_N14
\PrefixNetwork|Gk[3][11]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][11]~combout\ = ( !\PrefixNetwork|Gk~24_combout\ & ( \PrefixNetwork|Gk~13_combout\ & ( (!\PrefixNetwork|Pk[2][11]~4_combout\ & !\PrefixNetwork|Gk[1][11]~22_combout\) ) ) ) # ( !\PrefixNetwork|Gk~24_combout\ & ( 
-- !\PrefixNetwork|Gk~13_combout\ & ( (!\PrefixNetwork|Gk[1][11]~22_combout\ & ((!\PrefixNetwork|Gk[1][7]~12_combout\) # (!\PrefixNetwork|Pk[2][11]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][7]~12_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][11]~22_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~24_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~13_combout\,
	combout => \PrefixNetwork|Gk[3][11]~combout\);

-- Location: MLABCELL_X57_Y12_N10
\c[12]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c[12]~10_combout\ = ( !c(4) & ( (\PrefixNetwork|Gk~11_combout\ & \PrefixNetwork|Pk[2][11]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~11_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\,
	dataf => ALT_INV_c(4),
	combout => \c[12]~10_combout\);

-- Location: MLABCELL_X57_Y12_N20
\c[36]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c[36]~11_combout\ = ( !\c[12]~10_combout\ & ( \PrefixNetwork|Gk[3][11]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[3][11]~combout\,
	dataf => \ALT_INV_c[12]~10_combout\,
	combout => \c[36]~11_combout\);

-- Location: MLABCELL_X57_Y12_N22
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \c[36]~11_combout\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\) ) ) # ( !\c[36]~11_combout\ & ( !\A[12]~input_o\ $ (\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_c[36]~11_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X47_Y0_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X59_Y23_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X49_Y11_N22
\PrefixNetwork|Gk[1][12]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][12]~26_combout\ = ( \B[11]~input_o\ & ( (!\A[11]~input_o\ & (\A[12]~input_o\ & \B[12]~input_o\)) # (\A[11]~input_o\ & ((\B[12]~input_o\) # (\A[12]~input_o\))) ) ) # ( !\B[11]~input_o\ & ( (\A[12]~input_o\ & \B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \PrefixNetwork|Gk[1][12]~26_combout\);

-- Location: LABCELL_X50_Y11_N24
\PrefixNetwork|Gk~25\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~25_combout\ = ( \B[11]~input_o\ & ( (!\A[11]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\))) ) ) # ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \PrefixNetwork|Gk~25_combout\);

-- Location: LABCELL_X50_Y11_N36
\PrefixNetwork|Gk~27\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~27_combout\ = ( \PrefixNetwork|Gk[1][10]~19_combout\ & ( \PrefixNetwork|Gk~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~25_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\,
	combout => \PrefixNetwork|Gk~27_combout\);

-- Location: LABCELL_X50_Y11_N26
\PrefixNetwork|Pk[2][12]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][12]~5_combout\ = ( \PrefixNetwork|Gk~25_combout\ & ( \PrefixNetwork|Gk~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~20_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~25_combout\,
	combout => \PrefixNetwork|Pk[2][12]~5_combout\);

-- Location: LABCELL_X50_Y11_N18
\PrefixNetwork|Gk[3][12]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][12]~combout\ = ( \PrefixNetwork|Gk~16_combout\ & ( (!\PrefixNetwork|Gk[1][12]~26_combout\ & (!\PrefixNetwork|Gk~27_combout\ & !\PrefixNetwork|Pk[2][12]~5_combout\)) ) ) # ( !\PrefixNetwork|Gk~16_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][12]~26_combout\ & (!\PrefixNetwork|Gk~27_combout\ & ((!\PrefixNetwork|Gk[1][8]~14_combout\) # (!\PrefixNetwork|Pk[2][12]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][8]~14_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~27_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][12]~5_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~16_combout\,
	combout => \PrefixNetwork|Gk[3][12]~combout\);

-- Location: MLABCELL_X54_Y10_N12
\c[5]\ : arriaii_lcell_comb
-- Equation(s):
-- c(5) = ( \PrefixNetwork|Pk[3][8]~0_combout\ & ( \Cin~input_o\ & ( (!\A[0]~input_o\ & (!\B[0]~input_o\ & (!\PrefixNetwork|Gk~4_combout\ & !\PrefixNetwork|Gk[1][4]~3_combout\))) ) ) ) # ( !\PrefixNetwork|Pk[3][8]~0_combout\ & ( \Cin~input_o\ & ( 
-- (!\PrefixNetwork|Gk~4_combout\ & !\PrefixNetwork|Gk[1][4]~3_combout\) ) ) ) # ( \PrefixNetwork|Pk[3][8]~0_combout\ & ( !\Cin~input_o\ & ( (!\PrefixNetwork|Gk~4_combout\ & (!\PrefixNetwork|Gk[1][4]~3_combout\ & ((!\A[0]~input_o\) # (!\B[0]~input_o\)))) ) ) 
-- ) # ( !\PrefixNetwork|Pk[3][8]~0_combout\ & ( !\Cin~input_o\ & ( (!\PrefixNetwork|Gk~4_combout\ & !\PrefixNetwork|Gk[1][4]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111000000000000011110000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~4_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][4]~3_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[3][8]~0_combout\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => c(5));

-- Location: MLABCELL_X54_Y10_N28
\c[13]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c[13]~12_combout\ = ( \PrefixNetwork|Pk[2][12]~5_combout\ & ( (!c(5) & \PrefixNetwork|Pk[2][8]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_c(5),
	datad => \PrefixNetwork|ALT_INV_Pk[2][8]~1_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][12]~5_combout\,
	combout => \c[13]~12_combout\);

-- Location: LABCELL_X55_Y10_N32
\c[37]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c[37]~13_combout\ = ( \PrefixNetwork|Gk[3][12]~combout\ & ( !\c[13]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[3][12]~combout\,
	dataf => \ALT_INV_c[13]~12_combout\,
	combout => \c[37]~13_combout\);

-- Location: LABCELL_X55_Y10_N4
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \B[13]~input_o\ & ( \c[37]~13_combout\ & ( !\A[13]~input_o\ ) ) ) # ( !\B[13]~input_o\ & ( \c[37]~13_combout\ & ( \A[13]~input_o\ ) ) ) # ( \B[13]~input_o\ & ( !\c[37]~13_combout\ & ( \A[13]~input_o\ ) ) ) # ( !\B[13]~input_o\ & ( 
-- !\c[37]~13_combout\ & ( !\A[13]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_c[37]~13_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X50_Y0_N1
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X47_Y12_N24
\PrefixNetwork|Gk~28\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~28_combout\ = ( !\A[13]~input_o\ & ( \B[13]~input_o\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\) ) ) ) # ( \A[13]~input_o\ & ( !\B[13]~input_o\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \PrefixNetwork|Gk~28_combout\);

-- Location: MLABCELL_X49_Y12_N18
\PrefixNetwork|Pk[2][13]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][13]~6_combout\ = ( \PrefixNetwork|Gk~23_combout\ & ( \PrefixNetwork|Gk~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~23_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~28_combout\,
	combout => \PrefixNetwork|Pk[2][13]~6_combout\);

-- Location: MLABCELL_X54_Y13_N10
\c~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c~14_combout\ = ( \c~3_combout\ & ( (\PrefixNetwork|Pk[2][9]~2_combout\ & (\PrefixNetwork|Pk[2][13]~6_combout\ & p(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][9]~2_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][13]~6_combout\,
	datad => ALT_INV_p(5),
	dataf => \ALT_INV_c~3_combout\,
	combout => \c~14_combout\);

-- Location: LABCELL_X47_Y12_N28
\PrefixNetwork|Gk[1][13]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][13]~30_combout\ = ( \A[13]~input_o\ & ( \B[13]~input_o\ ) ) # ( !\A[13]~input_o\ & ( \B[13]~input_o\ & ( (\B[12]~input_o\ & \A[12]~input_o\) ) ) ) # ( \A[13]~input_o\ & ( !\B[13]~input_o\ & ( (\B[12]~input_o\ & \A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \PrefixNetwork|Gk[1][13]~30_combout\);

-- Location: MLABCELL_X49_Y12_N12
\PrefixNetwork|Gk~31\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~31_combout\ = ( \PrefixNetwork|Gk~28_combout\ & ( \PrefixNetwork|Gk[1][11]~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][11]~22_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~28_combout\,
	combout => \PrefixNetwork|Gk~31_combout\);

-- Location: MLABCELL_X54_Y13_N36
\PrefixNetwork|Gk[3][13]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][13]~combout\ = ( \PrefixNetwork|Pk[2][13]~6_combout\ & ( (!\PrefixNetwork|Gk[1][9]~17_combout\ & (!\PrefixNetwork|Gk[1][13]~30_combout\ & (!\PrefixNetwork|Gk~18_combout\ & !\PrefixNetwork|Gk~31_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][13]~6_combout\ & ( (!\PrefixNetwork|Gk[1][13]~30_combout\ & !\PrefixNetwork|Gk~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][9]~17_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][13]~30_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~18_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~31_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][13]~6_combout\,
	combout => \PrefixNetwork|Gk[3][13]~combout\);

-- Location: MLABCELL_X54_Y13_N14
\PrefixNetwork|Gk~29\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~29_combout\ = ( \PrefixNetwork|Pk[2][13]~6_combout\ & ( (\PrefixNetwork|Pk[2][9]~2_combout\ & !\PrefixNetwork|Gpre\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][9]~2_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre\(5),
	dataf => \PrefixNetwork|ALT_INV_Pk[2][13]~6_combout\,
	combout => \PrefixNetwork|Gk~29_combout\);

-- Location: MLABCELL_X54_Y13_N38
\c[14]\ : arriaii_lcell_comb
-- Equation(s):
-- c(14) = ( !\PrefixNetwork|Gk~29_combout\ & ( (!\c~14_combout\ & \PrefixNetwork|Gk[3][13]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~14_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][13]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~29_combout\,
	combout => c(14));

-- Location: LABCELL_X53_Y13_N8
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( c(14) & ( !\B[14]~input_o\ $ (!\A[14]~input_o\) ) ) # ( !c(14) & ( !\B[14]~input_o\ $ (\A[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => ALT_INV_c(14),
	combout => \S~14_combout\);

-- Location: IOIBUF_X35_Y0_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X48_Y0_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X50_Y11_N10
\PrefixNetwork|Gk[1][14]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][14]~34_combout\ = ( \B[13]~input_o\ & ( (!\A[13]~input_o\ & (\B[14]~input_o\ & \A[14]~input_o\)) # (\A[13]~input_o\ & ((\A[14]~input_o\) # (\B[14]~input_o\))) ) ) # ( !\B[13]~input_o\ & ( (\B[14]~input_o\ & \A[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \PrefixNetwork|Gk[1][14]~34_combout\);

-- Location: LABCELL_X50_Y11_N32
\PrefixNetwork|Gk~32\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~32_combout\ = ( \B[13]~input_o\ & ( (!\A[13]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) ) # ( !\B[13]~input_o\ & ( (\A[13]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \PrefixNetwork|Gk~32_combout\);

-- Location: LABCELL_X50_Y11_N22
\PrefixNetwork|Pk[2][14]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][14]~7_combout\ = ( \PrefixNetwork|Gk~32_combout\ & ( \PrefixNetwork|Gk~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~25_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~32_combout\,
	combout => \PrefixNetwork|Pk[2][14]~7_combout\);

-- Location: LABCELL_X50_Y11_N30
\PrefixNetwork|Gk~35\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~35_combout\ = ( \PrefixNetwork|Gk~32_combout\ & ( \PrefixNetwork|Gk[1][12]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~32_combout\,
	combout => \PrefixNetwork|Gk~35_combout\);

-- Location: LABCELL_X50_Y11_N2
\PrefixNetwork|Gk[3][14]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][14]~combout\ = ( \PrefixNetwork|Gk~21_combout\ & ( (!\PrefixNetwork|Gk[1][14]~34_combout\ & (!\PrefixNetwork|Pk[2][14]~7_combout\ & !\PrefixNetwork|Gk~35_combout\)) ) ) # ( !\PrefixNetwork|Gk~21_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][14]~34_combout\ & (!\PrefixNetwork|Gk~35_combout\ & ((!\PrefixNetwork|Gk[1][10]~19_combout\) # (!\PrefixNetwork|Pk[2][14]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][10]~19_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][14]~34_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][14]~7_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~35_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~21_combout\,
	combout => \PrefixNetwork|Gk[3][14]~combout\);

-- Location: LABCELL_X53_Y11_N0
\c~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c~15_combout\ = ( \c~4_combout\ & ( (\PrefixNetwork|Pk[2][10]~3_combout\ & \PrefixNetwork|Pk[2][14]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][10]~3_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][14]~7_combout\,
	dataf => \ALT_INV_c~4_combout\,
	combout => \c~15_combout\);

-- Location: LABCELL_X53_Y10_N10
\PrefixNetwork|Gk~33\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~33_combout\ = ( \PrefixNetwork|Gk~9_combout\ & ( (\PrefixNetwork|Pk[2][14]~7_combout\ & \PrefixNetwork|Pk[2][10]~3_combout\) ) ) # ( !\PrefixNetwork|Gk~9_combout\ & ( (!\PrefixNetwork|Gpre[6]~1_combout\ & 
-- (\PrefixNetwork|Pk[2][14]~7_combout\ & \PrefixNetwork|Pk[2][10]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][14]~7_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][10]~3_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~9_combout\,
	combout => \PrefixNetwork|Gk~33_combout\);

-- Location: LABCELL_X50_Y11_N0
\c[15]\ : arriaii_lcell_comb
-- Equation(s):
-- c(15) = ( !\PrefixNetwork|Gk~33_combout\ & ( (\PrefixNetwork|Gk[3][14]~combout\ & !\c~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[3][14]~combout\,
	datad => \ALT_INV_c~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~33_combout\,
	combout => c(15));

-- Location: MLABCELL_X49_Y11_N34
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \A[15]~input_o\ & ( c(15) & ( !\B[15]~input_o\ ) ) ) # ( !\A[15]~input_o\ & ( c(15) & ( \B[15]~input_o\ ) ) ) # ( \A[15]~input_o\ & ( !c(15) & ( \B[15]~input_o\ ) ) ) # ( !\A[15]~input_o\ & ( !c(15) & ( !\B[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => ALT_INV_c(15),
	combout => \S~15_combout\);

-- Location: IOIBUF_X48_Y0_N94
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X45_Y0_N32
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: MLABCELL_X49_Y12_N34
\PrefixNetwork|Gk~36\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~36_combout\ = ( \B[15]~input_o\ & ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & !\A[15]~input_o\) ) ) ) # ( !\B[15]~input_o\ & ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & \A[15]~input_o\) ) ) ) # ( \B[15]~input_o\ & ( !\A[14]~input_o\ & ( 
-- (\B[14]~input_o\ & !\A[15]~input_o\) ) ) ) # ( !\B[15]~input_o\ & ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & \A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \PrefixNetwork|Gk~36_combout\);

-- Location: LABCELL_X50_Y12_N2
\PrefixNetwork|Pk[2][15]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][15]~8_combout\ = ( \PrefixNetwork|Gk~36_combout\ & ( \PrefixNetwork|Gk~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~36_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~28_combout\,
	combout => \PrefixNetwork|Pk[2][15]~8_combout\);

-- Location: LABCELL_X55_Y12_N8
\c~16DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c~16DUPLICATE_combout\ = ( \PrefixNetwork|Pk[2][15]~8_combout\ & ( \c~5_combout\ & ( \PrefixNetwork|Pk[2][11]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][15]~8_combout\,
	dataf => \ALT_INV_c~5_combout\,
	combout => \c~16DUPLICATE_combout\);

-- Location: MLABCELL_X49_Y12_N22
\PrefixNetwork|Gk[1][15]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][15]~38_combout\ = ( \B[15]~input_o\ & ( \A[14]~input_o\ & ( (\A[15]~input_o\) # (\B[14]~input_o\) ) ) ) # ( !\B[15]~input_o\ & ( \A[14]~input_o\ & ( (\B[14]~input_o\ & \A[15]~input_o\) ) ) ) # ( \B[15]~input_o\ & ( !\A[14]~input_o\ & 
-- ( \A[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \PrefixNetwork|Gk[1][15]~38_combout\);

-- Location: MLABCELL_X49_Y12_N0
\PrefixNetwork|Gk~39\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~39_combout\ = ( \PrefixNetwork|Gk[1][13]~30_combout\ & ( \PrefixNetwork|Gk~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~36_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][13]~30_combout\,
	combout => \PrefixNetwork|Gk~39_combout\);

-- Location: LABCELL_X50_Y12_N6
\PrefixNetwork|Gk[3][15]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][15]~combout\ = ( !\PrefixNetwork|Gk~39_combout\ & ( \PrefixNetwork|Pk[2][15]~8_combout\ & ( (!\PrefixNetwork|Gk[1][11]~22_combout\ & (!\PrefixNetwork|Gk[1][15]~38_combout\ & !\PrefixNetwork|Gk~24_combout\)) ) ) ) # ( 
-- !\PrefixNetwork|Gk~39_combout\ & ( !\PrefixNetwork|Pk[2][15]~8_combout\ & ( !\PrefixNetwork|Gk[1][15]~38_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][11]~22_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][15]~38_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~24_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~39_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][15]~8_combout\,
	combout => \PrefixNetwork|Gk[3][15]~combout\);

-- Location: LABCELL_X53_Y12_N14
\PrefixNetwork|Gk~37\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~37_combout\ = ( !\PrefixNetwork|Gpre\(7) & ( (\PrefixNetwork|Pk[2][15]~8_combout\ & \PrefixNetwork|Pk[2][11]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][15]~8_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre\(7),
	combout => \PrefixNetwork|Gk~37_combout\);

-- Location: LABCELL_X55_Y12_N20
\c[16]\ : arriaii_lcell_comb
-- Equation(s):
-- c(16) = ( !\PrefixNetwork|Gk~37_combout\ & ( (!\c~16DUPLICATE_combout\ & \PrefixNetwork|Gk[3][15]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~16DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][15]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~37_combout\,
	combout => c(16));

-- Location: LABCELL_X55_Y12_N14
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( \A[16]~input_o\ & ( c(16) & ( !\B[16]~input_o\ ) ) ) # ( !\A[16]~input_o\ & ( c(16) & ( \B[16]~input_o\ ) ) ) # ( \A[16]~input_o\ & ( !c(16) & ( \B[16]~input_o\ ) ) ) # ( !\A[16]~input_o\ & ( !c(16) & ( !\B[16]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => ALT_INV_c(16),
	combout => \S~16_combout\);

-- Location: IOIBUF_X43_Y0_N1
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X43_Y0_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LABCELL_X47_Y1_N0
\PrefixNetwork|Gk~40\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~40_combout\ = ( \A[16]~input_o\ & ( \B[15]~input_o\ & ( (!\A[15]~input_o\ & !\B[16]~input_o\) ) ) ) # ( !\A[16]~input_o\ & ( \B[15]~input_o\ & ( (!\A[15]~input_o\ & \B[16]~input_o\) ) ) ) # ( \A[16]~input_o\ & ( !\B[15]~input_o\ & ( 
-- (\A[15]~input_o\ & !\B[16]~input_o\) ) ) ) # ( !\A[16]~input_o\ & ( !\B[15]~input_o\ & ( (\A[15]~input_o\ & \B[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \PrefixNetwork|Gk~40_combout\);

-- Location: MLABCELL_X54_Y11_N8
\PrefixNetwork|Pk[2][16]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][16]~9_combout\ = ( \PrefixNetwork|Gk~40_combout\ & ( \PrefixNetwork|Gk~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~32_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~40_combout\,
	combout => \PrefixNetwork|Pk[2][16]~9_combout\);

-- Location: MLABCELL_X54_Y12_N16
\PrefixNetwork|Gk~41\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~41_combout\ = ( \PrefixNetwork|Pk[2][16]~9_combout\ & ( \PrefixNetwork|Pk[2][12]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][12]~5_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][16]~9_combout\,
	combout => \PrefixNetwork|Gk~41_combout\);

-- Location: MLABCELL_X49_Y11_N30
\PrefixNetwork|Gk[1][16]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][16]~42_combout\ = ( \B[15]~input_o\ & ( \B[16]~input_o\ & ( (\A[16]~input_o\) # (\A[15]~input_o\) ) ) ) # ( !\B[15]~input_o\ & ( \B[16]~input_o\ & ( \A[16]~input_o\ ) ) ) # ( \B[15]~input_o\ & ( !\B[16]~input_o\ & ( (\A[15]~input_o\ & 
-- \A[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \PrefixNetwork|Gk[1][16]~42_combout\);

-- Location: MLABCELL_X52_Y11_N30
\PrefixNetwork|Gk~43\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~43_combout\ = ( \PrefixNetwork|Gk[1][14]~34_combout\ & ( \PrefixNetwork|Gk~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[1][14]~34_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~40_combout\,
	combout => \PrefixNetwork|Gk~43_combout\);

-- Location: LABCELL_X53_Y11_N20
\PrefixNetwork|Gk[3][16]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][16]~combout\ = ( \PrefixNetwork|Pk[2][16]~9_combout\ & ( (!\PrefixNetwork|Gk[1][12]~26_combout\ & (!\PrefixNetwork|Gk[1][16]~42_combout\ & (!\PrefixNetwork|Gk~43_combout\ & !\PrefixNetwork|Gk~27_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][16]~9_combout\ & ( (!\PrefixNetwork|Gk[1][16]~42_combout\ & !\PrefixNetwork|Gk~43_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][12]~26_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][16]~42_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~43_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~27_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][16]~9_combout\,
	combout => \PrefixNetwork|Gk[3][16]~combout\);

-- Location: MLABCELL_X54_Y12_N22
\c[17]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \c[17]~17_combout\ = ( \PrefixNetwork|Gk[3][8]~combout\ & ( (\PrefixNetwork|Gk[3][16]~combout\ & ((!\c[25]~6_combout\) # (!\PrefixNetwork|Gk~41_combout\))) ) ) # ( !\PrefixNetwork|Gk[3][8]~combout\ & ( (!\PrefixNetwork|Gk~41_combout\ & 
-- \PrefixNetwork|Gk[3][16]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[25]~6_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~41_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][16]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][8]~combout\,
	combout => \c[17]~17_combout\);

-- Location: LABCELL_X53_Y12_N0
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \c[17]~17_combout\ & ( !\B[17]~input_o\ $ (!\A[17]~input_o\) ) ) # ( !\c[17]~17_combout\ & ( !\B[17]~input_o\ $ (\A[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_c[17]~17_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X43_Y0_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X43_Y0_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X47_Y4_N16
\PrefixNetwork|Gk~44\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~44_combout\ = ( !\B[17]~input_o\ & ( \A[17]~input_o\ & ( !\A[16]~input_o\ $ (!\B[16]~input_o\) ) ) ) # ( \B[17]~input_o\ & ( !\A[17]~input_o\ & ( !\A[16]~input_o\ $ (!\B[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \PrefixNetwork|Gk~44_combout\);

-- Location: MLABCELL_X49_Y12_N36
\PrefixNetwork|Pk[2][17]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][17]~10_combout\ = ( \PrefixNetwork|Gk~36_combout\ & ( \PrefixNetwork|Gk~44_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~36_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~44_combout\,
	combout => \PrefixNetwork|Pk[2][17]~10_combout\);

-- Location: LABCELL_X50_Y12_N24
\PrefixNetwork|Gk~45\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~45_combout\ = ( \PrefixNetwork|Pk[2][13]~6_combout\ & ( \PrefixNetwork|Pk[2][17]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][17]~10_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][13]~6_combout\,
	combout => \PrefixNetwork|Gk~45_combout\);

-- Location: LABCELL_X47_Y1_N36
\PrefixNetwork|Gk[1][17]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][17]~46_combout\ = ( \A[17]~input_o\ & ( \B[17]~input_o\ ) ) # ( !\A[17]~input_o\ & ( \B[17]~input_o\ & ( (\A[16]~input_o\ & \B[16]~input_o\) ) ) ) # ( \A[17]~input_o\ & ( !\B[17]~input_o\ & ( (\A[16]~input_o\ & \B[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \PrefixNetwork|Gk[1][17]~46_combout\);

-- Location: MLABCELL_X49_Y12_N14
\PrefixNetwork|Gk~47\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~47_combout\ = ( \PrefixNetwork|Gk~44_combout\ & ( \PrefixNetwork|Gk[1][15]~38_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][15]~38_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~44_combout\,
	combout => \PrefixNetwork|Gk~47_combout\);

-- Location: MLABCELL_X49_Y12_N2
\PrefixNetwork|Gk[3][17]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][17]~combout\ = ( \PrefixNetwork|Pk[2][17]~10_combout\ & ( (!\PrefixNetwork|Gk[1][13]~30_combout\ & (!\PrefixNetwork|Gk[1][17]~46_combout\ & (!\PrefixNetwork|Gk~47_combout\ & !\PrefixNetwork|Gk~31_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][17]~10_combout\ & ( (!\PrefixNetwork|Gk[1][17]~46_combout\ & !\PrefixNetwork|Gk~47_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][13]~30_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][17]~46_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~47_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~31_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][17]~10_combout\,
	combout => \PrefixNetwork|Gk[3][17]~combout\);

-- Location: LABCELL_X53_Y13_N6
\c[18]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \c[18]~18_combout\ = ( \PrefixNetwork|Gk[3][17]~combout\ & ( (!\PrefixNetwork|Gk~45_combout\) # ((!\c[10]~7_combout\ & \PrefixNetwork|Gk[3][9]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[10]~7_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~45_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][9]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][17]~combout\,
	combout => \c[18]~18_combout\);

-- Location: LABCELL_X53_Y13_N32
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \c[18]~18_combout\ & ( !\B[18]~input_o\ $ (!\A[18]~input_o\) ) ) # ( !\c[18]~18_combout\ & ( !\B[18]~input_o\ $ (\A[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_c[18]~18_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X47_Y0_N32
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X47_Y3_N0
\PrefixNetwork|Gk~48\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~48_combout\ = ( \B[18]~input_o\ & ( \B[17]~input_o\ & ( (!\A[18]~input_o\ & !\A[17]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( \B[17]~input_o\ & ( (\A[18]~input_o\ & !\A[17]~input_o\) ) ) ) # ( \B[18]~input_o\ & ( !\B[17]~input_o\ & ( 
-- (!\A[18]~input_o\ & \A[17]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( !\B[17]~input_o\ & ( (\A[18]~input_o\ & \A[17]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \PrefixNetwork|Gk~48_combout\);

-- Location: MLABCELL_X49_Y11_N2
\PrefixNetwork|Pk[2][18]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][18]~11_combout\ = ( \PrefixNetwork|Gk~48_combout\ & ( \PrefixNetwork|Gk~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~48_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~40_combout\,
	combout => \PrefixNetwork|Pk[2][18]~11_combout\);

-- Location: MLABCELL_X49_Y11_N6
\PrefixNetwork|Gk~49\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~49_combout\ = ( \PrefixNetwork|Pk[2][14]~7_combout\ & ( \PrefixNetwork|Pk[2][18]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Pk[2][14]~7_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][18]~11_combout\,
	combout => \PrefixNetwork|Gk~49_combout\);

-- Location: MLABCELL_X52_Y10_N12
\PrefixNetwork|Gk~50\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~50_combout\ = ( !\PrefixNetwork|Gk[3][10]~combout\ & ( \PrefixNetwork|Gk~49_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[3][10]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~49_combout\,
	combout => \PrefixNetwork|Gk~50_combout\);

-- Location: LABCELL_X47_Y3_N20
\PrefixNetwork|Gk[1][18]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][18]~51_combout\ = ( \B[18]~input_o\ & ( \A[18]~input_o\ ) ) # ( !\B[18]~input_o\ & ( \A[18]~input_o\ & ( (\B[17]~input_o\ & \A[17]~input_o\) ) ) ) # ( \B[18]~input_o\ & ( !\A[18]~input_o\ & ( (\B[17]~input_o\ & \A[17]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \PrefixNetwork|Gk[1][18]~51_combout\);

-- Location: MLABCELL_X49_Y11_N20
\PrefixNetwork|Gk~52\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~52_combout\ = ( \PrefixNetwork|Gk~48_combout\ & ( \PrefixNetwork|Gk[1][16]~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][16]~42_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~48_combout\,
	combout => \PrefixNetwork|Gk~52_combout\);

-- Location: MLABCELL_X52_Y10_N8
\PrefixNetwork|Gk[3][18]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][18]~combout\ = ( \PrefixNetwork|Pk[2][18]~11_combout\ & ( (!\PrefixNetwork|Gk[1][18]~51_combout\ & (!\PrefixNetwork|Gk[1][14]~34_combout\ & (!\PrefixNetwork|Gk~35_combout\ & !\PrefixNetwork|Gk~52_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][18]~11_combout\ & ( (!\PrefixNetwork|Gk[1][18]~51_combout\ & !\PrefixNetwork|Gk~52_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][18]~51_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][14]~34_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~35_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~52_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][18]~11_combout\,
	combout => \PrefixNetwork|Gk[3][18]~combout\);

-- Location: MLABCELL_X52_Y10_N16
\c[35]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \c[35]~19_combout\ = ( \PrefixNetwork|Gk~49_combout\ & ( \c[11]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[11]~8_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~49_combout\,
	combout => \c[35]~19_combout\);

-- Location: MLABCELL_X52_Y10_N28
\c[19]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \c[19]~20_combout\ = ( !\c[35]~19_combout\ & ( (!\PrefixNetwork|Gk~50_combout\ & \PrefixNetwork|Gk[3][18]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~50_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][18]~combout\,
	dataf => \ALT_INV_c[35]~19_combout\,
	combout => \c[19]~20_combout\);

-- Location: MLABCELL_X52_Y10_N34
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \c[19]~20_combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\) ) ) # ( !\c[19]~20_combout\ & ( !\B[19]~input_o\ $ (\A[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_c[19]~20_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X59_Y25_N63
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X59_Y23_N32
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LABCELL_X50_Y12_N12
\PrefixNetwork|Gk[3][11]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][11]~DUPLICATE_combout\ = ( !\PrefixNetwork|Gk~24_combout\ & ( \PrefixNetwork|Gk~13_combout\ & ( (!\PrefixNetwork|Gk[1][11]~22_combout\ & !\PrefixNetwork|Pk[2][11]~4_combout\) ) ) ) # ( !\PrefixNetwork|Gk~24_combout\ & ( 
-- !\PrefixNetwork|Gk~13_combout\ & ( (!\PrefixNetwork|Gk[1][11]~22_combout\ & ((!\PrefixNetwork|Gk[1][7]~12_combout\) # (!\PrefixNetwork|Pk[2][11]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][7]~12_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][11]~22_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~24_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~13_combout\,
	combout => \PrefixNetwork|Gk[3][11]~DUPLICATE_combout\);

-- Location: MLABCELL_X44_Y1_N18
\PrefixNetwork|Gk~53\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~53_combout\ = ( \B[18]~input_o\ & ( \A[19]~input_o\ & ( (!\A[18]~input_o\ & !\B[19]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( \A[19]~input_o\ & ( (\A[18]~input_o\ & !\B[19]~input_o\) ) ) ) # ( \B[18]~input_o\ & ( !\A[19]~input_o\ & ( 
-- (!\A[18]~input_o\ & \B[19]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( !\A[19]~input_o\ & ( (\A[18]~input_o\ & \B[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \PrefixNetwork|Gk~53_combout\);

-- Location: LABCELL_X50_Y12_N38
\PrefixNetwork|Pk[2][19]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][19]~12_combout\ = ( \PrefixNetwork|Gk~44_combout\ & ( \PrefixNetwork|Gk~53_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~44_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~53_combout\,
	combout => \PrefixNetwork|Pk[2][19]~12_combout\);

-- Location: LABCELL_X50_Y12_N26
\PrefixNetwork|Gk~54\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~54_combout\ = ( \PrefixNetwork|Pk[2][19]~12_combout\ & ( \PrefixNetwork|Pk[2][15]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][15]~8_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][19]~12_combout\,
	combout => \PrefixNetwork|Gk~54_combout\);

-- Location: MLABCELL_X44_Y1_N30
\PrefixNetwork|Gk[1][19]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][19]~55_combout\ = ( \A[19]~input_o\ & ( \B[18]~input_o\ & ( (\B[19]~input_o\) # (\A[18]~input_o\) ) ) ) # ( !\A[19]~input_o\ & ( \B[18]~input_o\ & ( (\A[18]~input_o\ & \B[19]~input_o\) ) ) ) # ( \A[19]~input_o\ & ( !\B[18]~input_o\ & 
-- ( \B[19]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \PrefixNetwork|Gk[1][19]~55_combout\);

-- Location: MLABCELL_X49_Y12_N26
\PrefixNetwork|Gk~56\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~56_combout\ = ( \PrefixNetwork|Gk[1][17]~46_combout\ & ( \PrefixNetwork|Gk~53_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[1][17]~46_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~53_combout\,
	combout => \PrefixNetwork|Gk~56_combout\);

-- Location: MLABCELL_X49_Y12_N30
\PrefixNetwork|Gk[3][19]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][19]~combout\ = ( !\PrefixNetwork|Gk~56_combout\ & ( \PrefixNetwork|Pk[2][19]~12_combout\ & ( (!\PrefixNetwork|Gk[1][15]~38_combout\ & (!\PrefixNetwork|Gk[1][19]~55_combout\ & !\PrefixNetwork|Gk~39_combout\)) ) ) ) # ( 
-- !\PrefixNetwork|Gk~56_combout\ & ( !\PrefixNetwork|Pk[2][19]~12_combout\ & ( !\PrefixNetwork|Gk[1][19]~55_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][15]~38_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][19]~55_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~39_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~56_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][19]~12_combout\,
	combout => \PrefixNetwork|Gk[3][19]~combout\);

-- Location: MLABCELL_X57_Y12_N32
\c[20]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \c[20]~21_combout\ = ( \PrefixNetwork|Gk[3][19]~combout\ & ( (!\PrefixNetwork|Gk~54_combout\) # ((\PrefixNetwork|Gk[3][11]~DUPLICATE_combout\ & !\c[12]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111010100001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][11]~DUPLICATE_combout\,
	datac => \ALT_INV_c[12]~10_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~54_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][19]~combout\,
	combout => \c[20]~21_combout\);

-- Location: MLABCELL_X57_Y12_N38
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \A[20]~input_o\ & ( \c[20]~21_combout\ & ( !\B[20]~input_o\ ) ) ) # ( !\A[20]~input_o\ & ( \c[20]~21_combout\ & ( \B[20]~input_o\ ) ) ) # ( \A[20]~input_o\ & ( !\c[20]~21_combout\ & ( \B[20]~input_o\ ) ) ) # ( !\A[20]~input_o\ & ( 
-- !\c[20]~21_combout\ & ( !\B[20]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[20]~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_c[20]~21_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X59_Y15_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X59_Y13_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X47_Y11_N26
\PrefixNetwork|Gk~57\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~57_combout\ = ( \A[19]~input_o\ & ( \B[20]~input_o\ & ( (!\B[19]~input_o\ & !\A[20]~input_o\) ) ) ) # ( !\A[19]~input_o\ & ( \B[20]~input_o\ & ( (\B[19]~input_o\ & !\A[20]~input_o\) ) ) ) # ( \A[19]~input_o\ & ( !\B[20]~input_o\ & ( 
-- (!\B[19]~input_o\ & \A[20]~input_o\) ) ) ) # ( !\A[19]~input_o\ & ( !\B[20]~input_o\ & ( (\B[19]~input_o\ & \A[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \PrefixNetwork|Gk~57_combout\);

-- Location: MLABCELL_X52_Y11_N26
\PrefixNetwork|Pk[2][20]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][20]~13_combout\ = ( \PrefixNetwork|Gk~57_combout\ & ( \PrefixNetwork|Gk~48_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~48_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~57_combout\,
	combout => \PrefixNetwork|Pk[2][20]~13_combout\);

-- Location: MLABCELL_X52_Y11_N6
\PrefixNetwork|Gk[1][20]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][20]~58_combout\ = ( \B[20]~input_o\ & ( ((\B[19]~input_o\ & \A[19]~input_o\)) # (\A[20]~input_o\) ) ) # ( !\B[20]~input_o\ & ( (\B[19]~input_o\ & (\A[19]~input_o\ & \A[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \PrefixNetwork|Gk[1][20]~58_combout\);

-- Location: MLABCELL_X52_Y11_N4
\PrefixNetwork|Gk~59\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~59_combout\ = ( \PrefixNetwork|Gk[1][18]~51_combout\ & ( \PrefixNetwork|Gk~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~57_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][18]~51_combout\,
	combout => \PrefixNetwork|Gk~59_combout\);

-- Location: MLABCELL_X52_Y11_N28
\PrefixNetwork|Gk~43DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~43DUPLICATE_combout\ = ( \PrefixNetwork|Gk[1][14]~34_combout\ & ( \PrefixNetwork|Gk~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[1][14]~34_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~40_combout\,
	combout => \PrefixNetwork|Gk~43DUPLICATE_combout\);

-- Location: LABCELL_X53_Y11_N16
\PrefixNetwork|Gk[3][20]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][20]~combout\ = ( \PrefixNetwork|Gk~43DUPLICATE_combout\ & ( (!\PrefixNetwork|Gk[1][20]~58_combout\ & (!\PrefixNetwork|Pk[2][20]~13_combout\ & !\PrefixNetwork|Gk~59_combout\)) ) ) # ( !\PrefixNetwork|Gk~43DUPLICATE_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][20]~58_combout\ & (!\PrefixNetwork|Gk~59_combout\ & ((!\PrefixNetwork|Gk[1][16]~42_combout\) # (!\PrefixNetwork|Pk[2][20]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][20]~58_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][16]~42_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][20]~13_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~59_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~43DUPLICATE_combout\,
	combout => \PrefixNetwork|Gk[3][20]~combout\);

-- Location: MLABCELL_X54_Y12_N0
\c[21]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~22_combout\ = ( \PrefixNetwork|Gk~41_combout\ & ( (\PrefixNetwork|Pk[2][8]~1_combout\ & (!c(5) & \PrefixNetwork|Pk[2][20]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][8]~1_combout\,
	datac => ALT_INV_c(5),
	datad => \PrefixNetwork|ALT_INV_Pk[2][20]~13_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~41_combout\,
	combout => \c[21]~22_combout\);

-- Location: MLABCELL_X54_Y12_N8
\c[21]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~23_combout\ = ( !\c[21]~22_combout\ & ( (\PrefixNetwork|Gk[3][20]~combout\ & ((!\PrefixNetwork|Pk[2][20]~13_combout\) # ((!\PrefixNetwork|Pk[2][16]~9_combout\) # (\PrefixNetwork|Gk[3][12]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][20]~13_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][16]~9_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][12]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][20]~combout\,
	dataf => \ALT_INV_c[21]~22_combout\,
	combout => \c[21]~23_combout\);

-- Location: LABCELL_X53_Y12_N16
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \c[21]~23_combout\ & ( !\A[21]~input_o\ $ (!\B[21]~input_o\) ) ) # ( !\c[21]~23_combout\ & ( !\A[21]~input_o\ $ (\B[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_c[21]~23_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X59_Y18_N63
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X59_Y18_N94
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X58_Y13_N18
\PrefixNetwork|Gk~60\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~60_combout\ = ( !\B[20]~input_o\ & ( \A[20]~input_o\ & ( !\A[21]~input_o\ $ (!\B[21]~input_o\) ) ) ) # ( \B[20]~input_o\ & ( !\A[20]~input_o\ & ( !\A[21]~input_o\ $ (!\B[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \PrefixNetwork|Gk~60_combout\);

-- Location: MLABCELL_X57_Y13_N28
\PrefixNetwork|Gk~63\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~63_combout\ = ( \PrefixNetwork|Gk[1][19]~55_combout\ & ( \PrefixNetwork|Gk~60_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~60_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][19]~55_combout\,
	combout => \PrefixNetwork|Gk~63_combout\);

-- Location: MLABCELL_X44_Y1_N16
\PrefixNetwork|Gk~53DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~53DUPLICATE_combout\ = ( \B[18]~input_o\ & ( \A[19]~input_o\ & ( (!\B[19]~input_o\ & !\A[18]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( \A[19]~input_o\ & ( (!\B[19]~input_o\ & \A[18]~input_o\) ) ) ) # ( \B[18]~input_o\ & ( !\A[19]~input_o\ 
-- & ( (\B[19]~input_o\ & !\A[18]~input_o\) ) ) ) # ( !\B[18]~input_o\ & ( !\A[19]~input_o\ & ( (\B[19]~input_o\ & \A[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \PrefixNetwork|Gk~53DUPLICATE_combout\);

-- Location: MLABCELL_X57_Y13_N10
\PrefixNetwork|Pk[2][21]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][21]~14_combout\ = ( \PrefixNetwork|Gk~53DUPLICATE_combout\ & ( \PrefixNetwork|Gk~60_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~60_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~53DUPLICATE_combout\,
	combout => \PrefixNetwork|Pk[2][21]~14_combout\);

-- Location: LABCELL_X58_Y13_N26
\PrefixNetwork|Gk[1][21]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][21]~62_combout\ = ( \B[20]~input_o\ & ( \A[20]~input_o\ & ( (\B[21]~input_o\) # (\A[21]~input_o\) ) ) ) # ( !\B[20]~input_o\ & ( \A[20]~input_o\ & ( (\A[21]~input_o\ & \B[21]~input_o\) ) ) ) # ( \B[20]~input_o\ & ( !\A[20]~input_o\ & 
-- ( (\A[21]~input_o\ & \B[21]~input_o\) ) ) ) # ( !\B[20]~input_o\ & ( !\A[20]~input_o\ & ( (\A[21]~input_o\ & \B[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \PrefixNetwork|Gk[1][21]~62_combout\);

-- Location: MLABCELL_X57_Y13_N24
\PrefixNetwork|Gk[3][21]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][21]~combout\ = ( !\PrefixNetwork|Gk[1][21]~62_combout\ & ( \PrefixNetwork|Gk~47_combout\ & ( (!\PrefixNetwork|Gk~63_combout\ & !\PrefixNetwork|Pk[2][21]~14_combout\) ) ) ) # ( !\PrefixNetwork|Gk[1][21]~62_combout\ & ( 
-- !\PrefixNetwork|Gk~47_combout\ & ( (!\PrefixNetwork|Gk~63_combout\ & ((!\PrefixNetwork|Gk[1][17]~46_combout\) # (!\PrefixNetwork|Pk[2][21]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][17]~46_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~63_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][21]~14_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][21]~62_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~47_combout\,
	combout => \PrefixNetwork|Gk[3][21]~combout\);

-- Location: LABCELL_X58_Y13_N12
\PrefixNetwork|Gk~61\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~61_combout\ = ( !\PrefixNetwork|Gk[3][13]~combout\ & ( (\PrefixNetwork|Pk[2][21]~14_combout\ & \PrefixNetwork|Pk[2][17]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][21]~14_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][17]~10_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][13]~combout\,
	combout => \PrefixNetwork|Gk~61_combout\);

-- Location: MLABCELL_X54_Y13_N18
\c[38]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \c[38]~24_combout\ = ( \PrefixNetwork|Pk[2][21]~14_combout\ & ( \PrefixNetwork|Gk~45_combout\ & ( (\PrefixNetwork|Pk[2][9]~2_combout\ & ((!\PrefixNetwork|Gpre\(5)) # ((p(5) & \c~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][9]~2_combout\,
	datab => ALT_INV_p(5),
	datac => \ALT_INV_c~3_combout\,
	datad => \PrefixNetwork|ALT_INV_Gpre\(5),
	datae => \PrefixNetwork|ALT_INV_Pk[2][21]~14_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~45_combout\,
	combout => \c[38]~24_combout\);

-- Location: LABCELL_X58_Y13_N6
\c[22]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \c[22]~25_combout\ = ( !\c[38]~24_combout\ & ( (\PrefixNetwork|Gk[3][21]~combout\ & !\PrefixNetwork|Gk~61_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[3][21]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~61_combout\,
	dataf => \ALT_INV_c[38]~24_combout\,
	combout => \c[22]~25_combout\);

-- Location: LABCELL_X58_Y13_N0
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \c[22]~25_combout\ & ( !\B[22]~input_o\ $ (!\A[22]~input_o\) ) ) # ( !\c[22]~25_combout\ & ( !\B[22]~input_o\ $ (\A[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_c[22]~25_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X59_Y18_N32
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y18_N1
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X55_Y11_N24
\PrefixNetwork|Gk[1][22]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][22]~66_combout\ = ( \B[22]~input_o\ & ( ((\B[21]~input_o\ & \A[21]~input_o\)) # (\A[22]~input_o\) ) ) # ( !\B[22]~input_o\ & ( (\B[21]~input_o\ & (\A[22]~input_o\ & \A[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \PrefixNetwork|Gk[1][22]~66_combout\);

-- Location: MLABCELL_X54_Y11_N22
\PrefixNetwork|Gk~64\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~64_combout\ = ( \B[22]~input_o\ & ( (!\A[22]~input_o\ & (!\B[21]~input_o\ $ (!\A[21]~input_o\))) ) ) # ( !\B[22]~input_o\ & ( (\A[22]~input_o\ & (!\B[21]~input_o\ $ (!\A[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \PrefixNetwork|Gk~64_combout\);

-- Location: MLABCELL_X52_Y11_N0
\PrefixNetwork|Pk[2][22]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][22]~15_combout\ = ( \PrefixNetwork|Gk~64_combout\ & ( \PrefixNetwork|Gk~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~57_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~64_combout\,
	combout => \PrefixNetwork|Pk[2][22]~15_combout\);

-- Location: MLABCELL_X52_Y11_N36
\PrefixNetwork|Gk~67\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~67_combout\ = ( \PrefixNetwork|Gk[1][20]~58_combout\ & ( \PrefixNetwork|Gk~64_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~64_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][20]~58_combout\,
	combout => \PrefixNetwork|Gk~67_combout\);

-- Location: MLABCELL_X52_Y11_N38
\PrefixNetwork|Gk[3][22]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][22]~combout\ = ( \PrefixNetwork|Gk~52_combout\ & ( (!\PrefixNetwork|Gk[1][22]~66_combout\ & (!\PrefixNetwork|Pk[2][22]~15_combout\ & !\PrefixNetwork|Gk~67_combout\)) ) ) # ( !\PrefixNetwork|Gk~52_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][22]~66_combout\ & (!\PrefixNetwork|Gk~67_combout\ & ((!\PrefixNetwork|Gk[1][18]~51_combout\) # (!\PrefixNetwork|Pk[2][22]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][22]~66_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][18]~51_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][22]~15_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~67_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~52_combout\,
	combout => \PrefixNetwork|Gk[3][22]~combout\);

-- Location: MLABCELL_X49_Y11_N10
\PrefixNetwork|Gk~65\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~65_combout\ = ( !\PrefixNetwork|Gk[3][14]~combout\ & ( \PrefixNetwork|Pk[2][22]~15_combout\ & ( \PrefixNetwork|Pk[2][18]~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][18]~11_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][14]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][22]~15_combout\,
	combout => \PrefixNetwork|Gk~65_combout\);

-- Location: LABCELL_X50_Y10_N32
\c[39]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \c[39]~26_combout\ = ( \PrefixNetwork|Gk~49_combout\ & ( \PrefixNetwork|Pk[2][22]~15_combout\ & ( (\PrefixNetwork|Pk[2][10]~3_combout\ & (((!\PrefixNetwork|Gpre[6]~1_combout\) # (\c~4_combout\)) # (\PrefixNetwork|Gk~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~9_combout\,
	datab => \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][10]~3_combout\,
	datad => \ALT_INV_c~4_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~49_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][22]~15_combout\,
	combout => \c[39]~26_combout\);

-- Location: LABCELL_X50_Y10_N20
\c[23]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \c[23]~27_combout\ = ( !\PrefixNetwork|Gk~65_combout\ & ( !\c[39]~26_combout\ & ( \PrefixNetwork|Gk[3][22]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[3][22]~combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~65_combout\,
	dataf => \ALT_INV_c[39]~26_combout\,
	combout => \c[23]~27_combout\);

-- Location: LABCELL_X50_Y10_N16
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \B[23]~input_o\ & ( \c[23]~27_combout\ & ( !\A[23]~input_o\ ) ) ) # ( !\B[23]~input_o\ & ( \c[23]~27_combout\ & ( \A[23]~input_o\ ) ) ) # ( \B[23]~input_o\ & ( !\c[23]~27_combout\ & ( \A[23]~input_o\ ) ) ) # ( !\B[23]~input_o\ & ( 
-- !\c[23]~27_combout\ & ( !\A[23]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_c[23]~27_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X59_Y25_N94
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X59_Y25_N32
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LABCELL_X58_Y18_N16
\PrefixNetwork|Gk~68DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~68DUPLICATE_combout\ = ( !\B[22]~input_o\ & ( \A[22]~input_o\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\) ) ) ) # ( \B[22]~input_o\ & ( !\A[22]~input_o\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	datae => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \PrefixNetwork|Gk~68DUPLICATE_combout\);

-- Location: LABCELL_X55_Y13_N10
\PrefixNetwork|Pk[2][23]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][23]~16_combout\ = ( \PrefixNetwork|Gk~60_combout\ & ( \PrefixNetwork|Gk~68DUPLICATE_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~68DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~60_combout\,
	combout => \PrefixNetwork|Pk[2][23]~16_combout\);

-- Location: LABCELL_X55_Y12_N10
\c~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c~16_combout\ = ( \PrefixNetwork|Pk[2][15]~8_combout\ & ( \c~5_combout\ & ( \PrefixNetwork|Pk[2][11]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][15]~8_combout\,
	dataf => \ALT_INV_c~5_combout\,
	combout => \c~16_combout\);

-- Location: LABCELL_X58_Y18_N30
\PrefixNetwork|Gk[1][23]~69DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][23]~69DUPLICATE_combout\ = ( \A[23]~input_o\ & ( \A[22]~input_o\ & ( (\B[22]~input_o\) # (\B[23]~input_o\) ) ) ) # ( !\A[23]~input_o\ & ( \A[22]~input_o\ & ( (\B[23]~input_o\ & \B[22]~input_o\) ) ) ) # ( \A[23]~input_o\ & ( 
-- !\A[22]~input_o\ & ( \B[23]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \PrefixNetwork|Gk[1][23]~69DUPLICATE_combout\);

-- Location: LABCELL_X58_Y18_N18
\PrefixNetwork|Gk~68\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~68_combout\ = ( !\B[22]~input_o\ & ( \A[22]~input_o\ & ( !\B[23]~input_o\ $ (!\A[23]~input_o\) ) ) ) # ( \B[22]~input_o\ & ( !\A[22]~input_o\ & ( !\B[23]~input_o\ $ (!\A[23]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \PrefixNetwork|Gk~68_combout\);

-- Location: LABCELL_X58_Y13_N24
\PrefixNetwork|Gk[1][21]~62DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][21]~62DUPLICATE_combout\ = ( \B[20]~input_o\ & ( \A[20]~input_o\ & ( (\A[21]~input_o\) # (\B[21]~input_o\) ) ) ) # ( !\B[20]~input_o\ & ( \A[20]~input_o\ & ( (\B[21]~input_o\ & \A[21]~input_o\) ) ) ) # ( \B[20]~input_o\ & ( 
-- !\A[20]~input_o\ & ( (\B[21]~input_o\ & \A[21]~input_o\) ) ) ) # ( !\B[20]~input_o\ & ( !\A[20]~input_o\ & ( (\B[21]~input_o\ & \A[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \PrefixNetwork|Gk[1][21]~62DUPLICATE_combout\);

-- Location: MLABCELL_X54_Y12_N26
\PrefixNetwork|Gk~70\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~70_combout\ = ( \PrefixNetwork|Gk[1][21]~62DUPLICATE_combout\ & ( \PrefixNetwork|Gk~68_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~68_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][21]~62DUPLICATE_combout\,
	combout => \PrefixNetwork|Gk~70_combout\);

-- Location: MLABCELL_X49_Y12_N24
\PrefixNetwork|Gk~56DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~56DUPLICATE_combout\ = ( \PrefixNetwork|Gk[1][17]~46_combout\ & ( \PrefixNetwork|Gk~53_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[1][17]~46_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~53_combout\,
	combout => \PrefixNetwork|Gk~56DUPLICATE_combout\);

-- Location: MLABCELL_X54_Y12_N30
\PrefixNetwork|Gk[3][23]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][23]~combout\ = ( !\PrefixNetwork|Gk~70_combout\ & ( \PrefixNetwork|Gk~56DUPLICATE_combout\ & ( (!\PrefixNetwork|Gk[1][23]~69DUPLICATE_combout\ & !\PrefixNetwork|Pk[2][23]~16_combout\) ) ) ) # ( !\PrefixNetwork|Gk~70_combout\ & ( 
-- !\PrefixNetwork|Gk~56DUPLICATE_combout\ & ( (!\PrefixNetwork|Gk[1][23]~69DUPLICATE_combout\ & ((!\PrefixNetwork|Pk[2][23]~16_combout\) # (!\PrefixNetwork|Gk[1][19]~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][23]~69DUPLICATE_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][23]~16_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][19]~55_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~70_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~56DUPLICATE_combout\,
	combout => \PrefixNetwork|Gk[3][23]~combout\);

-- Location: LABCELL_X53_Y12_N24
\c[24]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \c[24]~28_combout\ = ( \PrefixNetwork|Gk[3][23]~combout\ & ( ((!\PrefixNetwork|Pk[2][23]~16_combout\) # ((!\PrefixNetwork|Gk~54_combout\) # (!\PrefixNetwork|Pk[2][11]~4_combout\))) # (\PrefixNetwork|Gpre\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gpre\(7),
	datab => \PrefixNetwork|ALT_INV_Pk[2][23]~16_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~54_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][23]~combout\,
	combout => \c[24]~28_combout\);

-- Location: MLABCELL_X54_Y16_N2
\c[24]\ : arriaii_lcell_comb
-- Equation(s):
-- c(24) = ( \c[24]~28_combout\ & ( (!\PrefixNetwork|Pk[2][23]~16_combout\) # ((!\PrefixNetwork|Pk[2][19]~12_combout\) # ((!\c~16_combout\ & \PrefixNetwork|Gk[3][15]~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111111101110111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][23]~16_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][19]~12_combout\,
	datac => \ALT_INV_c~16_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][15]~combout\,
	dataf => \ALT_INV_c[24]~28_combout\,
	combout => c(24));

-- Location: MLABCELL_X54_Y16_N22
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( c(24) & ( !\A[24]~input_o\ $ (!\B[24]~input_o\) ) ) # ( !c(24) & ( !\A[24]~input_o\ $ (\B[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => ALT_INV_c(24),
	combout => \S~24_combout\);

-- Location: IOIBUF_X39_Y0_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X59_Y9_N1
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X55_Y11_N22
\PrefixNetwork|Gk~71\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~71_combout\ = ( \B[24]~input_o\ & ( (!\A[24]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (\A[24]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \PrefixNetwork|Gk~71_combout\);

-- Location: MLABCELL_X54_Y11_N18
\PrefixNetwork|Pk[2][24]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][24]~17_combout\ = ( \PrefixNetwork|Gk~71_combout\ & ( \PrefixNetwork|Gk~64_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~64_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~71_combout\,
	combout => \PrefixNetwork|Pk[2][24]~17_combout\);

-- Location: LABCELL_X53_Y11_N28
\PrefixNetwork|Gk~72\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~72_combout\ = ( \PrefixNetwork|Pk[2][20]~13_combout\ & ( \PrefixNetwork|Pk[2][24]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][24]~17_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][20]~13_combout\,
	combout => \PrefixNetwork|Gk~72_combout\);

-- Location: LABCELL_X55_Y11_N10
\PrefixNetwork|Gk[1][24]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][24]~73_combout\ = ( \B[24]~input_o\ & ( ((\B[23]~input_o\ & \A[23]~input_o\)) # (\A[24]~input_o\) ) ) # ( !\B[24]~input_o\ & ( (\A[24]~input_o\ & (\B[23]~input_o\ & \A[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \PrefixNetwork|Gk[1][24]~73_combout\);

-- Location: MLABCELL_X54_Y11_N14
\PrefixNetwork|Gk~74\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~74_combout\ = ( \PrefixNetwork|Gk~71_combout\ & ( \PrefixNetwork|Gk[1][22]~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][22]~66_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~71_combout\,
	combout => \PrefixNetwork|Gk~74_combout\);

-- Location: LABCELL_X53_Y11_N24
\PrefixNetwork|Gk[3][24]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][24]~combout\ = ( !\PrefixNetwork|Gk~74_combout\ & ( (!\PrefixNetwork|Gk[1][24]~73_combout\ & ((!\PrefixNetwork|Pk[2][24]~17_combout\) # ((!\PrefixNetwork|Gk[1][20]~58_combout\ & !\PrefixNetwork|Gk~59_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011000000110010001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][20]~58_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][24]~73_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][24]~17_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~59_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~74_combout\,
	combout => \PrefixNetwork|Gk[3][24]~combout\);

-- Location: MLABCELL_X54_Y12_N6
\c[41]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \c[41]~29_combout\ = ( \PrefixNetwork|Gk[3][8]~combout\ & ( (\PrefixNetwork|Gk~41_combout\ & \c[25]~6_combout\) ) ) # ( !\PrefixNetwork|Gk[3][8]~combout\ & ( \PrefixNetwork|Gk~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~41_combout\,
	datad => \ALT_INV_c[25]~6_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][8]~combout\,
	combout => \c[41]~29_combout\);

-- Location: LABCELL_X53_Y11_N30
\c[25]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \c[25]~30_combout\ = ( \c[41]~29_combout\ & ( (!\PrefixNetwork|Gk~72_combout\ & \PrefixNetwork|Gk[3][24]~combout\) ) ) # ( !\c[41]~29_combout\ & ( (\PrefixNetwork|Gk[3][24]~combout\ & ((!\PrefixNetwork|Gk~72_combout\) # 
-- (\PrefixNetwork|Gk[3][16]~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~72_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][24]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][16]~combout\,
	dataf => \ALT_INV_c[41]~29_combout\,
	combout => \c[25]~30_combout\);

-- Location: MLABCELL_X54_Y11_N32
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \c[25]~30_combout\ & ( !\B[25]~input_o\ $ (!\A[25]~input_o\) ) ) # ( !\c[25]~30_combout\ & ( !\B[25]~input_o\ $ (\A[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_c[25]~30_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X59_Y23_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: MLABCELL_X57_Y13_N20
\PrefixNetwork|Gk[1][25]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][25]~77_combout\ = ( \B[24]~input_o\ & ( (!\B[25]~input_o\ & (\A[25]~input_o\ & \A[24]~input_o\)) # (\B[25]~input_o\ & ((\A[24]~input_o\) # (\A[25]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (\B[25]~input_o\ & \A[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \PrefixNetwork|Gk[1][25]~77_combout\);

-- Location: MLABCELL_X57_Y13_N4
\PrefixNetwork|Gk~75\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~75_combout\ = ( \B[24]~input_o\ & ( (!\A[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (\A[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \PrefixNetwork|Gk~75_combout\);

-- Location: MLABCELL_X57_Y13_N16
\PrefixNetwork|Pk[2][25]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][25]~18_combout\ = ( \PrefixNetwork|Gk~75_combout\ & ( \PrefixNetwork|Gk~68DUPLICATE_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~68DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~75_combout\,
	combout => \PrefixNetwork|Pk[2][25]~18_combout\);

-- Location: LABCELL_X58_Y18_N28
\PrefixNetwork|Gk[1][23]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][23]~69_combout\ = ( \A[23]~input_o\ & ( \A[22]~input_o\ & ( (\B[23]~input_o\) # (\B[22]~input_o\) ) ) ) # ( !\A[23]~input_o\ & ( \A[22]~input_o\ & ( (\B[22]~input_o\ & \B[23]~input_o\) ) ) ) # ( \A[23]~input_o\ & ( !\A[22]~input_o\ & 
-- ( \B[23]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \PrefixNetwork|Gk[1][23]~69_combout\);

-- Location: MLABCELL_X57_Y13_N6
\PrefixNetwork|Gk~78\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~78_combout\ = ( \PrefixNetwork|Gk~75_combout\ & ( \PrefixNetwork|Gk[1][23]~69_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][23]~69_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~75_combout\,
	combout => \PrefixNetwork|Gk~78_combout\);

-- Location: MLABCELL_X57_Y13_N32
\PrefixNetwork|Gk[3][25]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][25]~combout\ = ( \PrefixNetwork|Gk~63_combout\ & ( (!\PrefixNetwork|Gk[1][25]~77_combout\ & (!\PrefixNetwork|Pk[2][25]~18_combout\ & !\PrefixNetwork|Gk~78_combout\)) ) ) # ( !\PrefixNetwork|Gk~63_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][25]~77_combout\ & (!\PrefixNetwork|Gk~78_combout\ & ((!\PrefixNetwork|Pk[2][25]~18_combout\) # (!\PrefixNetwork|Gk[1][21]~62_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][25]~77_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][25]~18_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~78_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][21]~62_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~63_combout\,
	combout => \PrefixNetwork|Gk[3][25]~combout\);

-- Location: LABCELL_X53_Y13_N4
\c[42]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \c[42]~31_combout\ = ( \PrefixNetwork|Gk~45_combout\ & ( (!\PrefixNetwork|Gk[3][9]~combout\) # (\c[10]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[10]~7_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][9]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~45_combout\,
	combout => \c[42]~31_combout\);

-- Location: MLABCELL_X57_Y13_N22
\PrefixNetwork|Gk~76\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~76_combout\ = ( \PrefixNetwork|Pk[2][21]~14_combout\ & ( \PrefixNetwork|Pk[2][25]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][25]~18_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][21]~14_combout\,
	combout => \PrefixNetwork|Gk~76_combout\);

-- Location: LABCELL_X53_Y13_N28
\c[26]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~32_combout\ = ( \PrefixNetwork|Gk[3][17]~combout\ & ( (\PrefixNetwork|Gk[3][25]~combout\ & ((!\c[42]~31_combout\) # (!\PrefixNetwork|Gk~76_combout\))) ) ) # ( !\PrefixNetwork|Gk[3][17]~combout\ & ( (\PrefixNetwork|Gk[3][25]~combout\ & 
-- !\PrefixNetwork|Gk~76_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[3][25]~combout\,
	datac => \ALT_INV_c[42]~31_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~76_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][17]~combout\,
	combout => \c[26]~32_combout\);

-- Location: LABCELL_X53_Y13_N26
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \c[26]~32_combout\ & ( !\B[26]~input_o\ $ (!\A[26]~input_o\) ) ) # ( !\c[26]~32_combout\ & ( !\B[26]~input_o\ $ (\A[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_c[26]~32_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X59_Y16_N63
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X59_Y37_N1
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X55_Y11_N26
\PrefixNetwork|Gk~79\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~79_combout\ = ( \A[26]~input_o\ & ( (!\B[26]~input_o\ & (!\B[25]~input_o\ $ (!\A[25]~input_o\))) ) ) # ( !\A[26]~input_o\ & ( (\B[26]~input_o\ & (!\B[25]~input_o\ $ (!\A[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \PrefixNetwork|Gk~79_combout\);

-- Location: LABCELL_X55_Y11_N30
\PrefixNetwork|Pk[2][26]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][26]~19_combout\ = ( \PrefixNetwork|Gk~71_combout\ & ( \PrefixNetwork|Gk~79_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~79_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~71_combout\,
	combout => \PrefixNetwork|Pk[2][26]~19_combout\);

-- Location: MLABCELL_X52_Y10_N20
\PrefixNetwork|Gk~80\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~80_combout\ = ( \PrefixNetwork|Pk[2][26]~19_combout\ & ( \PrefixNetwork|Pk[2][22]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][22]~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][26]~19_combout\,
	combout => \PrefixNetwork|Gk~80_combout\);

-- Location: MLABCELL_X54_Y8_N26
\PrefixNetwork|Gk[1][26]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][26]~81_combout\ = ( \B[25]~input_o\ & ( \A[26]~input_o\ & ( (\B[26]~input_o\) # (\A[25]~input_o\) ) ) ) # ( !\B[25]~input_o\ & ( \A[26]~input_o\ & ( \B[26]~input_o\ ) ) ) # ( \B[25]~input_o\ & ( !\A[26]~input_o\ & ( (\A[25]~input_o\ & 
-- \B[26]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	datae => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \PrefixNetwork|Gk[1][26]~81_combout\);

-- Location: LABCELL_X55_Y11_N0
\PrefixNetwork|Gk~82\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~82_combout\ = ( \PrefixNetwork|Gk[1][24]~73_combout\ & ( \PrefixNetwork|Gk~79_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~79_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][24]~73_combout\,
	combout => \PrefixNetwork|Gk~82_combout\);

-- Location: LABCELL_X55_Y11_N2
\PrefixNetwork|Gk[3][26]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][26]~combout\ = ( \PrefixNetwork|Gk~67_combout\ & ( (!\PrefixNetwork|Gk[1][26]~81_combout\ & (!\PrefixNetwork|Pk[2][26]~19_combout\ & !\PrefixNetwork|Gk~82_combout\)) ) ) # ( !\PrefixNetwork|Gk~67_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][26]~81_combout\ & (!\PrefixNetwork|Gk~82_combout\ & ((!\PrefixNetwork|Gk[1][22]~66_combout\) # (!\PrefixNetwork|Pk[2][26]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][26]~81_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][22]~66_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][26]~19_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~82_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~67_combout\,
	combout => \PrefixNetwork|Gk[3][26]~combout\);

-- Location: LABCELL_X53_Y10_N34
\c[27]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c[27]~9_combout\ = ( !\c[11]~8_combout\ & ( \PrefixNetwork|Gk[3][10]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_c[11]~8_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][10]~combout\,
	combout => \c[27]~9_combout\);

-- Location: LABCELL_X53_Y10_N38
\c[27]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \c[27]~33_combout\ = ( \PrefixNetwork|Gk~49_combout\ & ( (\PrefixNetwork|Gk[3][26]~combout\ & ((!\PrefixNetwork|Gk~80_combout\) # ((\c[27]~9_combout\ & \PrefixNetwork|Gk[3][18]~combout\)))) ) ) # ( !\PrefixNetwork|Gk~49_combout\ & ( 
-- (\PrefixNetwork|Gk[3][26]~combout\ & ((!\PrefixNetwork|Gk~80_combout\) # (\PrefixNetwork|Gk[3][18]~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011001000100011001100100010001000110010001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~80_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][26]~combout\,
	datac => \ALT_INV_c[27]~9_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][18]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~49_combout\,
	combout => \c[27]~33_combout\);

-- Location: LABCELL_X53_Y10_N4
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \c[27]~33_combout\ & ( !\B[27]~input_o\ $ (!\A[27]~input_o\) ) ) # ( !\c[27]~33_combout\ & ( !\B[27]~input_o\ $ (\A[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_c[27]~33_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X59_Y6_N1
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X55_Y13_N14
\PrefixNetwork|Gk~83\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~83_combout\ = ( \A[27]~input_o\ & ( (!\B[27]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\))) ) ) # ( !\A[27]~input_o\ & ( (\B[27]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \PrefixNetwork|Gk~83_combout\);

-- Location: LABCELL_X55_Y13_N6
\PrefixNetwork|Pk[2][27]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][27]~20_combout\ = ( \PrefixNetwork|Gk~83_combout\ & ( \PrefixNetwork|Gk~75_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~75_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~83_combout\,
	combout => \PrefixNetwork|Pk[2][27]~20_combout\);

-- Location: LABCELL_X55_Y13_N34
\PrefixNetwork|Gk~84\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~84_combout\ = ( \PrefixNetwork|Pk[2][23]~16_combout\ & ( \PrefixNetwork|Pk[2][27]~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][27]~20_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][23]~16_combout\,
	combout => \PrefixNetwork|Gk~84_combout\);

-- Location: LABCELL_X55_Y12_N18
\PrefixNetwork|Pk[4][27]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][27]~21_combout\ = ( \PrefixNetwork|Gk~54_combout\ & ( \PrefixNetwork|Gk~84_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~84_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~54_combout\,
	combout => \PrefixNetwork|Pk[4][27]~21_combout\);

-- Location: LABCELL_X55_Y13_N18
\PrefixNetwork|Gk~87\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~87_combout\ = ( \PrefixNetwork|Gk[1][25]~77_combout\ & ( \PrefixNetwork|Gk~83_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~83_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][25]~77_combout\,
	combout => \PrefixNetwork|Gk~87_combout\);

-- Location: LABCELL_X55_Y13_N8
\PrefixNetwork|Gk[1][27]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][27]~86_combout\ = ( \A[27]~input_o\ & ( ((\A[26]~input_o\ & \B[26]~input_o\)) # (\B[27]~input_o\) ) ) # ( !\A[27]~input_o\ & ( (\A[26]~input_o\ & (\B[26]~input_o\ & \B[27]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \PrefixNetwork|Gk[1][27]~86_combout\);

-- Location: LABCELL_X55_Y13_N22
\PrefixNetwork|Gk[3][27]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][27]~combout\ = ( \PrefixNetwork|Gk~70_combout\ & ( (!\PrefixNetwork|Pk[2][27]~20_combout\ & (!\PrefixNetwork|Gk~87_combout\ & !\PrefixNetwork|Gk[1][27]~86_combout\)) ) ) # ( !\PrefixNetwork|Gk~70_combout\ & ( 
-- (!\PrefixNetwork|Gk~87_combout\ & (!\PrefixNetwork|Gk[1][27]~86_combout\ & ((!\PrefixNetwork|Gk[1][23]~69DUPLICATE_combout\) # (!\PrefixNetwork|Pk[2][27]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][23]~69DUPLICATE_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][27]~20_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~87_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][27]~86_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~70_combout\,
	combout => \PrefixNetwork|Gk[3][27]~combout\);

-- Location: MLABCELL_X49_Y12_N28
\PrefixNetwork|Gk[3][19]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][19]~DUPLICATE_combout\ = ( !\PrefixNetwork|Gk~56_combout\ & ( \PrefixNetwork|Pk[2][19]~12_combout\ & ( (!\PrefixNetwork|Gk[1][15]~38_combout\ & (!\PrefixNetwork|Gk~39_combout\ & !\PrefixNetwork|Gk[1][19]~55_combout\)) ) ) ) # ( 
-- !\PrefixNetwork|Gk~56_combout\ & ( !\PrefixNetwork|Pk[2][19]~12_combout\ & ( !\PrefixNetwork|Gk[1][19]~55_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][15]~38_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~39_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][19]~55_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~56_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][19]~12_combout\,
	combout => \PrefixNetwork|Gk[3][19]~DUPLICATE_combout\);

-- Location: LABCELL_X50_Y12_N32
\PrefixNetwork|Gk~85\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~85_combout\ = ( !\PrefixNetwork|Gk[3][19]~DUPLICATE_combout\ & ( \PrefixNetwork|Gk~84_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[3][19]~DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~84_combout\,
	combout => \PrefixNetwork|Gk~85_combout\);

-- Location: MLABCELL_X57_Y12_N2
\c[28]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \c[28]~34_combout\ = ( !\PrefixNetwork|Gk~85_combout\ & ( (\PrefixNetwork|Gk[3][27]~combout\ & ((!\PrefixNetwork|Pk[4][27]~21_combout\) # ((\PrefixNetwork|Gk[3][11]~DUPLICATE_combout\ & !\c[12]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110100000000001111010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][11]~DUPLICATE_combout\,
	datab => \ALT_INV_c[12]~10_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][27]~21_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][27]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~85_combout\,
	combout => \c[28]~34_combout\);

-- Location: MLABCELL_X57_Y12_N6
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( \c[28]~34_combout\ & ( !\B[28]~input_o\ $ (!\A[28]~input_o\) ) ) # ( !\c[28]~34_combout\ & ( !\B[28]~input_o\ $ (\A[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_c[28]~34_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X59_Y6_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X55_Y0_N32
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LABCELL_X55_Y11_N36
\PrefixNetwork|Gk~88\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~88_combout\ = ( \A[27]~input_o\ & ( (!\B[27]~input_o\ & (!\A[28]~input_o\ $ (!\B[28]~input_o\))) ) ) # ( !\A[27]~input_o\ & ( (\B[27]~input_o\ & (!\A[28]~input_o\ $ (!\B[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \PrefixNetwork|Gk~88_combout\);

-- Location: LABCELL_X55_Y11_N32
\PrefixNetwork|Pk[2][28]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][28]~22_combout\ = ( \PrefixNetwork|Gk~88_combout\ & ( \PrefixNetwork|Gk~79_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~79_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~88_combout\,
	combout => \PrefixNetwork|Pk[2][28]~22_combout\);

-- Location: MLABCELL_X54_Y11_N4
\PrefixNetwork|Gk~89\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~89_combout\ = ( \PrefixNetwork|Pk[2][28]~22_combout\ & ( \PrefixNetwork|Pk[2][24]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][24]~17_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][28]~22_combout\,
	combout => \PrefixNetwork|Gk~89_combout\);

-- Location: MLABCELL_X54_Y11_N24
\PrefixNetwork|Pk[4][28]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][28]~23_combout\ = ( \PrefixNetwork|Gk~89_combout\ & ( (\PrefixNetwork|Pk[2][16]~9_combout\ & \PrefixNetwork|Pk[2][20]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][16]~9_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][20]~13_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~89_combout\,
	combout => \PrefixNetwork|Pk[4][28]~23_combout\);

-- Location: MLABCELL_X54_Y11_N36
\PrefixNetwork|Gk~90\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~90_combout\ = ( !\PrefixNetwork|Gk[3][20]~combout\ & ( \PrefixNetwork|Gk~89_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~89_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][20]~combout\,
	combout => \PrefixNetwork|Gk~90_combout\);

-- Location: LABCELL_X55_Y8_N16
\PrefixNetwork|Gk[1][28]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][28]~91_combout\ = ( \B[28]~input_o\ & ( \A[27]~input_o\ & ( (\B[27]~input_o\) # (\A[28]~input_o\) ) ) ) # ( !\B[28]~input_o\ & ( \A[27]~input_o\ & ( (\A[28]~input_o\ & \B[27]~input_o\) ) ) ) # ( \B[28]~input_o\ & ( !\A[27]~input_o\ & 
-- ( \A[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	datae => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \PrefixNetwork|Gk[1][28]~91_combout\);

-- Location: MLABCELL_X54_Y8_N22
\PrefixNetwork|Gk~92DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~92DUPLICATE_combout\ = ( \PrefixNetwork|Gk[1][26]~81_combout\ & ( \PrefixNetwork|Gk~88_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[1][26]~81_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~88_combout\,
	combout => \PrefixNetwork|Gk~92DUPLICATE_combout\);

-- Location: LABCELL_X55_Y11_N34
\PrefixNetwork|Gk[3][28]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][28]~combout\ = ( !\PrefixNetwork|Gk~92DUPLICATE_combout\ & ( (!\PrefixNetwork|Gk[1][28]~91_combout\ & ((!\PrefixNetwork|Pk[2][28]~22_combout\) # ((!\PrefixNetwork|Gk[1][24]~73_combout\ & !\PrefixNetwork|Gk~74_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000111010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][28]~22_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][24]~73_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~74_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][28]~91_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~92DUPLICATE_combout\,
	combout => \PrefixNetwork|Gk[3][28]~combout\);

-- Location: LABCELL_X55_Y10_N2
\c[29]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \c[29]~35_combout\ = ( !\PrefixNetwork|Gk~90_combout\ & ( \PrefixNetwork|Gk[3][28]~combout\ & ( (!\PrefixNetwork|Pk[4][28]~23_combout\) # ((!\c[13]~12_combout\ & \PrefixNetwork|Gk[3][12]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[13]~12_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][12]~combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][28]~23_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~90_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][28]~combout\,
	combout => \c[29]~35_combout\);

-- Location: LABCELL_X55_Y10_N14
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \A[29]~input_o\ & ( \c[29]~35_combout\ & ( !\B[29]~input_o\ ) ) ) # ( !\A[29]~input_o\ & ( \c[29]~35_combout\ & ( \B[29]~input_o\ ) ) ) # ( \A[29]~input_o\ & ( !\c[29]~35_combout\ & ( \B[29]~input_o\ ) ) ) # ( !\A[29]~input_o\ & ( 
-- !\c[29]~35_combout\ & ( !\B[29]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[29]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_c[29]~35_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y4_N1
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X59_Y4_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X58_Y5_N34
\PrefixNetwork|Gk~93\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~93_combout\ = ( \B[29]~input_o\ & ( \B[28]~input_o\ & ( (!\A[28]~input_o\ & !\A[29]~input_o\) ) ) ) # ( !\B[29]~input_o\ & ( \B[28]~input_o\ & ( (!\A[28]~input_o\ & \A[29]~input_o\) ) ) ) # ( \B[29]~input_o\ & ( !\B[28]~input_o\ & ( 
-- (\A[28]~input_o\ & !\A[29]~input_o\) ) ) ) # ( !\B[29]~input_o\ & ( !\B[28]~input_o\ & ( (\A[28]~input_o\ & \A[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \PrefixNetwork|Gk~93_combout\);

-- Location: LABCELL_X55_Y13_N0
\PrefixNetwork|Pk[2][29]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][29]~24_combout\ = ( \PrefixNetwork|Gk~93_combout\ & ( \PrefixNetwork|Gk~83_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~83_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~93_combout\,
	combout => \PrefixNetwork|Pk[2][29]~24_combout\);

-- Location: LABCELL_X58_Y5_N12
\PrefixNetwork|Gk[1][29]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][29]~96_combout\ = ( \B[29]~input_o\ & ( \B[28]~input_o\ & ( (\A[28]~input_o\) # (\A[29]~input_o\) ) ) ) # ( !\B[29]~input_o\ & ( \B[28]~input_o\ & ( (\A[29]~input_o\ & \A[28]~input_o\) ) ) ) # ( \B[29]~input_o\ & ( !\B[28]~input_o\ & 
-- ( \A[29]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \PrefixNetwork|Gk[1][29]~96_combout\);

-- Location: LABCELL_X55_Y13_N12
\PrefixNetwork|Gk~97\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~97_combout\ = ( \PrefixNetwork|Gk~93_combout\ & ( \PrefixNetwork|Gk[1][27]~86_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][27]~86_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~93_combout\,
	combout => \PrefixNetwork|Gk~97_combout\);

-- Location: MLABCELL_X57_Y13_N38
\PrefixNetwork|Gk[3][29]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][29]~combout\ = ( \PrefixNetwork|Gk[1][25]~77_combout\ & ( (!\PrefixNetwork|Pk[2][29]~24_combout\ & (!\PrefixNetwork|Gk[1][29]~96_combout\ & !\PrefixNetwork|Gk~97_combout\)) ) ) # ( !\PrefixNetwork|Gk[1][25]~77_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][29]~96_combout\ & (!\PrefixNetwork|Gk~97_combout\ & ((!\PrefixNetwork|Pk[2][29]~24_combout\) # (!\PrefixNetwork|Gk~78_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][29]~24_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][29]~96_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~97_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~78_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][25]~77_combout\,
	combout => \PrefixNetwork|Gk[3][29]~combout\);

-- Location: MLABCELL_X57_Y13_N36
\PrefixNetwork|Gk~94\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~94_combout\ = ( \PrefixNetwork|Pk[2][25]~18_combout\ & ( \PrefixNetwork|Pk[2][29]~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][29]~24_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][25]~18_combout\,
	combout => \PrefixNetwork|Gk~94_combout\);

-- Location: MLABCELL_X54_Y13_N30
\PrefixNetwork|Pk[4][29]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][29]~25_combout\ = ( \PrefixNetwork|Gk~94_combout\ & ( (\PrefixNetwork|Pk[2][17]~10_combout\ & \PrefixNetwork|Pk[2][21]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][17]~10_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][21]~14_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~94_combout\,
	combout => \PrefixNetwork|Pk[4][29]~25_combout\);

-- Location: MLABCELL_X57_Y13_N8
\PrefixNetwork|Gk~95\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~95_combout\ = ( !\PrefixNetwork|Gk[3][21]~combout\ & ( \PrefixNetwork|Gk~94_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~94_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][21]~combout\,
	combout => \PrefixNetwork|Gk~95_combout\);

-- Location: MLABCELL_X54_Y13_N20
\c[30]\ : arriaii_lcell_comb
-- Equation(s):
-- c(30) = ( \PrefixNetwork|Pk[4][29]~25_combout\ & ( !\PrefixNetwork|Gk~95_combout\ & ( (\PrefixNetwork|Gk[3][13]~combout\ & (!\c~14_combout\ & (\PrefixNetwork|Gk[3][29]~combout\ & !\PrefixNetwork|Gk~29_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Pk[4][29]~25_combout\ & ( !\PrefixNetwork|Gk~95_combout\ & ( \PrefixNetwork|Gk[3][29]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][13]~combout\,
	datab => \ALT_INV_c~14_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][29]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~29_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][29]~25_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~95_combout\,
	combout => c(30));

-- Location: MLABCELL_X54_Y13_N34
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( c(30) & ( !\B[30]~input_o\ $ (!\A[30]~input_o\) ) ) # ( !c(30) & ( !\B[30]~input_o\ $ (\A[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => ALT_INV_c(30),
	combout => \S~30_combout\);

-- Location: IOIBUF_X59_Y7_N32
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y4_N32
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X55_Y11_N8
\PrefixNetwork|Gk~98\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~98_combout\ = ( \A[30]~input_o\ & ( (!\B[30]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[30]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \PrefixNetwork|Gk~98_combout\);

-- Location: LABCELL_X55_Y11_N12
\PrefixNetwork|Pk[2][30]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][30]~26_combout\ = ( \PrefixNetwork|Gk~88_combout\ & ( \PrefixNetwork|Gk~98_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~98_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~88_combout\,
	combout => \PrefixNetwork|Pk[2][30]~26_combout\);

-- Location: LABCELL_X50_Y11_N20
\PrefixNetwork|Gk~99\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~99_combout\ = ( \PrefixNetwork|Pk[2][30]~26_combout\ & ( \PrefixNetwork|Pk[2][26]~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][26]~19_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][30]~26_combout\,
	combout => \PrefixNetwork|Gk~99_combout\);

-- Location: LABCELL_X50_Y11_N16
\PrefixNetwork|Pk[4][30]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][30]~27_combout\ = ( \PrefixNetwork|Gk~99_combout\ & ( (\PrefixNetwork|Pk[2][22]~15_combout\ & \PrefixNetwork|Pk[2][18]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][22]~15_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][18]~11_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~99_combout\,
	combout => \PrefixNetwork|Pk[4][30]~27_combout\);

-- Location: LABCELL_X55_Y8_N36
\PrefixNetwork|Gk[1][30]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][30]~101_combout\ = ( \A[30]~input_o\ & ( \B[30]~input_o\ ) ) # ( !\A[30]~input_o\ & ( \B[30]~input_o\ & ( (\B[29]~input_o\ & \A[29]~input_o\) ) ) ) # ( \A[30]~input_o\ & ( !\B[30]~input_o\ & ( (\B[29]~input_o\ & \A[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \PrefixNetwork|Gk[1][30]~101_combout\);

-- Location: LABCELL_X55_Y8_N18
\PrefixNetwork|Gk[1][28]~91DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][28]~91DUPLICATE_combout\ = ( \B[28]~input_o\ & ( \A[27]~input_o\ & ( (\A[28]~input_o\) # (\B[27]~input_o\) ) ) ) # ( !\B[28]~input_o\ & ( \A[27]~input_o\ & ( (\B[27]~input_o\ & \A[28]~input_o\) ) ) ) # ( \B[28]~input_o\ & ( 
-- !\A[27]~input_o\ & ( \A[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \PrefixNetwork|Gk[1][28]~91DUPLICATE_combout\);

-- Location: LABCELL_X55_Y11_N16
\PrefixNetwork|Gk~102\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~102_combout\ = ( \PrefixNetwork|Gk[1][28]~91DUPLICATE_combout\ & ( \PrefixNetwork|Gk~98_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~98_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][28]~91DUPLICATE_combout\,
	combout => \PrefixNetwork|Gk~102_combout\);

-- Location: LABCELL_X55_Y11_N18
\PrefixNetwork|Gk[3][30]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][30]~combout\ = ( !\PrefixNetwork|Gk~102_combout\ & ( (!\PrefixNetwork|Gk[1][30]~101_combout\ & ((!\PrefixNetwork|Pk[2][30]~26_combout\) # ((!\PrefixNetwork|Gk[1][26]~81_combout\ & !\PrefixNetwork|Gk~82_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][30]~26_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][30]~101_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][26]~81_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~82_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~102_combout\,
	combout => \PrefixNetwork|Gk[3][30]~combout\);

-- Location: LABCELL_X50_Y11_N8
\PrefixNetwork|Gk~100\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~100_combout\ = ( !\PrefixNetwork|Gk[3][22]~combout\ & ( \PrefixNetwork|Gk~99_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~99_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][22]~combout\,
	combout => \PrefixNetwork|Gk~100_combout\);

-- Location: LABCELL_X50_Y11_N28
\PrefixNetwork|Gpre[30]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(30) = ( \PrefixNetwork|Gk~33_combout\ & ( (!\PrefixNetwork|Pk[4][30]~27_combout\ & (\PrefixNetwork|Gk[3][30]~combout\ & !\PrefixNetwork|Gk~100_combout\)) ) ) # ( !\PrefixNetwork|Gk~33_combout\ & ( (\PrefixNetwork|Gk[3][30]~combout\ & 
-- (!\PrefixNetwork|Gk~100_combout\ & ((!\PrefixNetwork|Pk[4][30]~27_combout\) # (\PrefixNetwork|Gk[3][14]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000000000011010000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][14]~combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[4][30]~27_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][30]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~100_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~33_combout\,
	combout => \PrefixNetwork|Gpre\(30));

-- Location: LABCELL_X50_Y11_N38
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \PrefixNetwork|Gpre\(30) & ( !\A[31]~input_o\ $ (!\B[31]~input_o\ $ (((\PrefixNetwork|Pk[4][30]~27_combout\ & \c~15_combout\)))) ) ) # ( !\PrefixNetwork|Gpre\(30) & ( !\A[31]~input_o\ $ (\B[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][30]~27_combout\,
	datad => \ALT_INV_c~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre\(30),
	combout => \S~31_combout\);

-- Location: IOIBUF_X41_Y0_N63
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X58_Y5_N16
\PrefixNetwork|Gk~103\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~103_combout\ = ( !\B[30]~input_o\ & ( \A[30]~input_o\ & ( !\B[31]~input_o\ $ (!\A[31]~input_o\) ) ) ) # ( \B[30]~input_o\ & ( !\A[30]~input_o\ & ( !\B[31]~input_o\ $ (!\A[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \PrefixNetwork|Gk~103_combout\);

-- Location: LABCELL_X58_Y5_N28
\PrefixNetwork|Pk[2][31]~28DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][31]~28DUPLICATE_combout\ = ( \PrefixNetwork|Gk~93_combout\ & ( \PrefixNetwork|Gk~103_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~93_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~103_combout\,
	combout => \PrefixNetwork|Pk[2][31]~28DUPLICATE_combout\);

-- Location: LABCELL_X55_Y13_N36
\PrefixNetwork|Pk[4][31]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][31]~29_combout\ = ( \PrefixNetwork|Pk[2][19]~12_combout\ & ( (\PrefixNetwork|Pk[2][31]~28DUPLICATE_combout\ & \PrefixNetwork|Gk~84_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][31]~28DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~84_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][19]~12_combout\,
	combout => \PrefixNetwork|Pk[4][31]~29_combout\);

-- Location: IOIBUF_X54_Y0_N63
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LABCELL_X58_Y4_N18
\PrefixNetwork|Gk[1][31]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][31]~105_combout\ = ( \B[30]~input_o\ & ( \A[31]~input_o\ & ( (\A[30]~input_o\) # (\B[31]~input_o\) ) ) ) # ( !\B[30]~input_o\ & ( \A[31]~input_o\ & ( \B[31]~input_o\ ) ) ) # ( \B[30]~input_o\ & ( !\A[31]~input_o\ & ( (\B[31]~input_o\ 
-- & \A[30]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \PrefixNetwork|Gk[1][31]~105_combout\);

-- Location: LABCELL_X58_Y5_N10
\PrefixNetwork|Gk~106\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~106_combout\ = ( \PrefixNetwork|Gk[1][29]~96_combout\ & ( \PrefixNetwork|Gk~103_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[1][29]~96_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~103_combout\,
	combout => \PrefixNetwork|Gk~106_combout\);

-- Location: LABCELL_X55_Y13_N2
\PrefixNetwork|Gk[3][31]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][31]~combout\ = ( \PrefixNetwork|Pk[2][31]~28DUPLICATE_combout\ & ( (!\PrefixNetwork|Gk[1][31]~105_combout\ & (!\PrefixNetwork|Gk[1][27]~86_combout\ & (!\PrefixNetwork|Gk~106_combout\ & !\PrefixNetwork|Gk~87_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][31]~28DUPLICATE_combout\ & ( (!\PrefixNetwork|Gk[1][31]~105_combout\ & !\PrefixNetwork|Gk~106_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][31]~105_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][27]~86_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~106_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~87_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][31]~28DUPLICATE_combout\,
	combout => \PrefixNetwork|Gk[3][31]~combout\);

-- Location: LABCELL_X58_Y5_N30
\PrefixNetwork|Pk[2][31]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][31]~28_combout\ = ( \PrefixNetwork|Gk~93_combout\ & ( \PrefixNetwork|Gk~103_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~93_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~103_combout\,
	combout => \PrefixNetwork|Pk[2][31]~28_combout\);

-- Location: LABCELL_X55_Y12_N0
\PrefixNetwork|Gk~104\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~104_combout\ = ( !\PrefixNetwork|Gk[3][23]~combout\ & ( (\PrefixNetwork|Pk[2][31]~28_combout\ & \PrefixNetwork|Pk[2][27]~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][31]~28_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][27]~20_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][23]~combout\,
	combout => \PrefixNetwork|Gk~104_combout\);

-- Location: LABCELL_X55_Y12_N28
\PrefixNetwork|Gpre[31]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(31) = ( !\PrefixNetwork|Gk~104_combout\ & ( \PrefixNetwork|Pk[4][31]~29_combout\ & ( (\PrefixNetwork|Gk[3][15]~combout\ & (\PrefixNetwork|Gk[3][31]~combout\ & !\PrefixNetwork|Gk~37_combout\)) ) ) ) # ( !\PrefixNetwork|Gk~104_combout\ 
-- & ( !\PrefixNetwork|Pk[4][31]~29_combout\ & ( \PrefixNetwork|Gk[3][31]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][15]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][31]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~37_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~104_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][31]~29_combout\,
	combout => \PrefixNetwork|Gpre\(31));

-- Location: LABCELL_X55_Y12_N24
\S~32\ : arriaii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = ( \c~16DUPLICATE_combout\ & ( \PrefixNetwork|Gpre\(31) & ( !\A[32]~input_o\ $ (!\PrefixNetwork|Pk[4][31]~29_combout\ $ (\B[32]~input_o\)) ) ) ) # ( !\c~16DUPLICATE_combout\ & ( \PrefixNetwork|Gpre\(31) & ( !\A[32]~input_o\ $ 
-- (!\B[32]~input_o\) ) ) ) # ( \c~16DUPLICATE_combout\ & ( !\PrefixNetwork|Gpre\(31) & ( !\A[32]~input_o\ $ (\B[32]~input_o\) ) ) ) # ( !\c~16DUPLICATE_combout\ & ( !\PrefixNetwork|Gpre\(31) & ( !\A[32]~input_o\ $ (\B[32]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][31]~29_combout\,
	datad => \ALT_INV_B[32]~input_o\,
	datae => \ALT_INV_c~16DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gpre\(31),
	combout => \S~32_combout\);

-- Location: IOIBUF_X41_Y0_N94
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LABCELL_X53_Y8_N0
\PrefixNetwork|Gk[1][32]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][32]~109_combout\ = ( \B[32]~input_o\ & ( ((\A[31]~input_o\ & \B[31]~input_o\)) # (\A[32]~input_o\) ) ) # ( !\B[32]~input_o\ & ( (\A[31]~input_o\ & (\B[31]~input_o\ & \A[32]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[32]~input_o\,
	combout => \PrefixNetwork|Gk[1][32]~109_combout\);

-- Location: MLABCELL_X54_Y8_N34
\PrefixNetwork|Gk~107\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~107_combout\ = ( \B[31]~input_o\ & ( \A[32]~input_o\ & ( (!\A[31]~input_o\ & !\B[32]~input_o\) ) ) ) # ( !\B[31]~input_o\ & ( \A[32]~input_o\ & ( (\A[31]~input_o\ & !\B[32]~input_o\) ) ) ) # ( \B[31]~input_o\ & ( !\A[32]~input_o\ & ( 
-- (!\A[31]~input_o\ & \B[32]~input_o\) ) ) ) # ( !\B[31]~input_o\ & ( !\A[32]~input_o\ & ( (\A[31]~input_o\ & \B[32]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[32]~input_o\,
	datae => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \PrefixNetwork|Gk~107_combout\);

-- Location: MLABCELL_X54_Y8_N36
\PrefixNetwork|Gk~110DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~110DUPLICATE_combout\ = ( \PrefixNetwork|Gk~107_combout\ & ( \PrefixNetwork|Gk[1][30]~101_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~107_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][30]~101_combout\,
	combout => \PrefixNetwork|Gk~110DUPLICATE_combout\);

-- Location: LABCELL_X55_Y11_N28
\PrefixNetwork|Pk[2][32]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][32]~30_combout\ = ( \PrefixNetwork|Gk~107_combout\ & ( \PrefixNetwork|Gk~98_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~98_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~107_combout\,
	combout => \PrefixNetwork|Pk[2][32]~30_combout\);

-- Location: MLABCELL_X54_Y8_N20
\PrefixNetwork|Gk~92\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~92_combout\ = ( \PrefixNetwork|Gk[1][26]~81_combout\ & ( \PrefixNetwork|Gk~88_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[1][26]~81_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~88_combout\,
	combout => \PrefixNetwork|Gk~92_combout\);

-- Location: MLABCELL_X54_Y8_N8
\PrefixNetwork|Gk[3][32]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][32]~combout\ = ( !\PrefixNetwork|Pk[2][32]~30_combout\ & ( \PrefixNetwork|Gk~92_combout\ & ( (!\PrefixNetwork|Gk[1][32]~109_combout\ & !\PrefixNetwork|Gk~110DUPLICATE_combout\) ) ) ) # ( \PrefixNetwork|Pk[2][32]~30_combout\ & ( 
-- !\PrefixNetwork|Gk~92_combout\ & ( (!\PrefixNetwork|Gk[1][32]~109_combout\ & (!\PrefixNetwork|Gk[1][28]~91DUPLICATE_combout\ & !\PrefixNetwork|Gk~110DUPLICATE_combout\)) ) ) ) # ( !\PrefixNetwork|Pk[2][32]~30_combout\ & ( !\PrefixNetwork|Gk~92_combout\ & 
-- ( (!\PrefixNetwork|Gk[1][32]~109_combout\ & !\PrefixNetwork|Gk~110DUPLICATE_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][32]~109_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][28]~91DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~110DUPLICATE_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][32]~30_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~92_combout\,
	combout => \PrefixNetwork|Gk[3][32]~combout\);

-- Location: IOIBUF_X54_Y0_N94
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LABCELL_X53_Y11_N4
\PrefixNetwork|Gk~108\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~108_combout\ = ( !\PrefixNetwork|Gk[3][24]~combout\ & ( (\PrefixNetwork|Pk[2][32]~30_combout\ & \PrefixNetwork|Pk[2][28]~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][32]~30_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][28]~22_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][24]~combout\,
	combout => \PrefixNetwork|Gk~108_combout\);

-- Location: LABCELL_X53_Y11_N18
\PrefixNetwork|Pk[4][32]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][32]~31_combout\ = ( \PrefixNetwork|Gk~72_combout\ & ( (\PrefixNetwork|Pk[2][28]~22_combout\ & \PrefixNetwork|Pk[2][32]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][28]~22_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][32]~30_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~72_combout\,
	combout => \PrefixNetwork|Pk[4][32]~31_combout\);

-- Location: LABCELL_X50_Y12_N22
\c[33]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \c[33]~36_combout\ = ( \PrefixNetwork|Pk[4][32]~31_combout\ & ( \PrefixNetwork|Gk[3][16]~combout\ & ( (\PrefixNetwork|Gk~41_combout\ & ((!\PrefixNetwork|Gk[3][8]~combout\) # (\c[25]~6_combout\))) ) ) ) # ( \PrefixNetwork|Pk[4][32]~31_combout\ & ( 
-- !\PrefixNetwork|Gk[3][16]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[25]~6_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][8]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~41_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][32]~31_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][16]~combout\,
	combout => \c[33]~36_combout\);

-- Location: MLABCELL_X46_Y4_N26
\S~33\ : arriaii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = ( \PrefixNetwork|Gk~108_combout\ & ( \c[33]~36_combout\ & ( !\B[33]~input_o\ $ (\A[33]~input_o\) ) ) ) # ( !\PrefixNetwork|Gk~108_combout\ & ( \c[33]~36_combout\ & ( !\B[33]~input_o\ $ (\A[33]~input_o\) ) ) ) # ( 
-- \PrefixNetwork|Gk~108_combout\ & ( !\c[33]~36_combout\ & ( !\B[33]~input_o\ $ (\A[33]~input_o\) ) ) ) # ( !\PrefixNetwork|Gk~108_combout\ & ( !\c[33]~36_combout\ & ( !\B[33]~input_o\ $ (!\PrefixNetwork|Gk[3][32]~combout\ $ (!\A[33]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110011000011001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[33]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][32]~combout\,
	datad => \ALT_INV_A[33]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gk~108_combout\,
	dataf => \ALT_INV_c[33]~36_combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X35_Y0_N32
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X45_Y0_N63
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LABCELL_X53_Y8_N14
\PrefixNetwork|Gk~111\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~111_combout\ = ( \A[32]~input_o\ & ( \B[33]~input_o\ & ( (!\B[32]~input_o\ & !\A[33]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( \B[33]~input_o\ & ( (\B[32]~input_o\ & !\A[33]~input_o\) ) ) ) # ( \A[32]~input_o\ & ( !\B[33]~input_o\ & ( 
-- (!\B[32]~input_o\ & \A[33]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( !\B[33]~input_o\ & ( (\B[32]~input_o\ & \A[33]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[32]~input_o\,
	datad => \ALT_INV_A[33]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \PrefixNetwork|Gk~111_combout\);

-- Location: LABCELL_X53_Y13_N14
\PrefixNetwork|Pk[2][33]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][33]~32_combout\ = ( \PrefixNetwork|Gk~111_combout\ & ( \PrefixNetwork|Gk~103_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~103_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~111_combout\,
	combout => \PrefixNetwork|Pk[2][33]~32_combout\);

-- Location: LABCELL_X55_Y13_N20
\PrefixNetwork|Pk[4][33]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][33]~33_combout\ = ( \PrefixNetwork|Pk[2][33]~32_combout\ & ( \PrefixNetwork|Pk[2][29]~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][29]~24_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][33]~32_combout\,
	combout => \PrefixNetwork|Pk[4][33]~33_combout\);

-- Location: LABCELL_X55_Y13_N38
\PrefixNetwork|Gk~112\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~112_combout\ = ( \PrefixNetwork|Pk[4][33]~33_combout\ & ( !\PrefixNetwork|Gk[3][25]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[3][25]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][33]~33_combout\,
	combout => \PrefixNetwork|Gk~112_combout\);

-- Location: LABCELL_X53_Y13_N30
\PrefixNetwork|Gk~114\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~114_combout\ = ( \PrefixNetwork|Gk~111_combout\ & ( \PrefixNetwork|Gk[1][31]~105_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][31]~105_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~111_combout\,
	combout => \PrefixNetwork|Gk~114_combout\);

-- Location: LABCELL_X53_Y8_N10
\PrefixNetwork|Gk[1][33]~113\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][33]~113_combout\ = ( \A[33]~input_o\ & ( ((\B[32]~input_o\ & \A[32]~input_o\)) # (\B[33]~input_o\) ) ) # ( !\A[33]~input_o\ & ( (\B[32]~input_o\ & (\B[33]~input_o\ & \A[32]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[32]~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \PrefixNetwork|Gk[1][33]~113_combout\);

-- Location: LABCELL_X53_Y13_N10
\PrefixNetwork|Gk[3][33]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][33]~combout\ = ( \PrefixNetwork|Pk[2][33]~32_combout\ & ( (!\PrefixNetwork|Gk[1][29]~96_combout\ & (!\PrefixNetwork|Gk~114_combout\ & (!\PrefixNetwork|Gk~97_combout\ & !\PrefixNetwork|Gk[1][33]~113_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][33]~32_combout\ & ( (!\PrefixNetwork|Gk~114_combout\ & !\PrefixNetwork|Gk[1][33]~113_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][29]~96_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~114_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~97_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][33]~113_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][33]~32_combout\,
	combout => \PrefixNetwork|Gk[3][33]~combout\);

-- Location: LABCELL_X55_Y13_N24
\c[34]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \c[34]~37_combout\ = ( \PrefixNetwork|Gk[3][17]~combout\ & ( \PrefixNetwork|Pk[4][33]~33_combout\ & ( (\PrefixNetwork|Gk~45_combout\ & (\PrefixNetwork|Gk~76_combout\ & ((!\PrefixNetwork|Gk[3][9]~combout\) # (\c[10]~7_combout\)))) ) ) ) # ( 
-- !\PrefixNetwork|Gk[3][17]~combout\ & ( \PrefixNetwork|Pk[4][33]~33_combout\ & ( \PrefixNetwork|Gk~76_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][9]~combout\,
	datab => \ALT_INV_c[10]~7_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~45_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~76_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][17]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][33]~33_combout\,
	combout => \c[34]~37_combout\);

-- Location: LABCELL_X55_Y13_N28
\S~34\ : arriaii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = ( \c[34]~37_combout\ & ( !\A[34]~input_o\ $ (\B[34]~input_o\) ) ) # ( !\c[34]~37_combout\ & ( !\A[34]~input_o\ $ (!\B[34]~input_o\ $ (((!\PrefixNetwork|Gk[3][33]~combout\) # (\PrefixNetwork|Gk~112_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101101001100110010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[34]~input_o\,
	datab => \ALT_INV_B[34]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~112_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][33]~combout\,
	dataf => \ALT_INV_c[34]~37_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X47_Y0_N63
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LABCELL_X53_Y8_N36
\PrefixNetwork|Gk~115\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~115_combout\ = ( \B[34]~input_o\ & ( (!\A[34]~input_o\ & (!\A[33]~input_o\ $ (!\B[33]~input_o\))) ) ) # ( !\B[34]~input_o\ & ( (\A[34]~input_o\ & (!\A[33]~input_o\ $ (!\B[33]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \PrefixNetwork|Gk~115_combout\);

-- Location: LABCELL_X53_Y8_N24
\PrefixNetwork|Pk[2][34]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][34]~34_combout\ = ( \PrefixNetwork|Gk~107_combout\ & ( \PrefixNetwork|Gk~115_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~115_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~107_combout\,
	combout => \PrefixNetwork|Pk[2][34]~34_combout\);

-- Location: MLABCELL_X52_Y10_N2
\PrefixNetwork|Pk[4][34]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][34]~35_combout\ = ( \PrefixNetwork|Gk~80_combout\ & ( (\PrefixNetwork|Pk[2][30]~26_combout\ & \PrefixNetwork|Pk[2][34]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][30]~26_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][34]~34_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~80_combout\,
	combout => \PrefixNetwork|Pk[4][34]~35_combout\);

-- Location: MLABCELL_X52_Y10_N10
\PrefixNetwork|Gk~118\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~118_combout\ = ( !\PrefixNetwork|Gk[3][26]~combout\ & ( (\PrefixNetwork|Pk[2][34]~34_combout\ & \PrefixNetwork|Pk[2][30]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][34]~34_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][30]~26_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][26]~combout\,
	combout => \PrefixNetwork|Gk~118_combout\);

-- Location: MLABCELL_X52_Y10_N22
\c[35]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \c[35]~38_combout\ = ( \c[35]~19_combout\ & ( (!\PrefixNetwork|Pk[4][34]~35_combout\ & !\PrefixNetwork|Gk~118_combout\) ) ) # ( !\c[35]~19_combout\ & ( (!\PrefixNetwork|Gk~118_combout\ & ((!\PrefixNetwork|Pk[4][34]~35_combout\) # 
-- ((\PrefixNetwork|Gk[3][18]~combout\ & !\PrefixNetwork|Gk~50_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011000000110100001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][18]~combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[4][34]~35_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~118_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~50_combout\,
	dataf => \ALT_INV_c[35]~19_combout\,
	combout => \c[35]~38_combout\);

-- Location: LABCELL_X53_Y8_N28
\PrefixNetwork|Gk[1][34]~116\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][34]~116_combout\ = ( \B[34]~input_o\ & ( ((\A[33]~input_o\ & \B[33]~input_o\)) # (\A[34]~input_o\) ) ) # ( !\B[34]~input_o\ & ( (\A[33]~input_o\ & (\A[34]~input_o\ & \B[33]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \PrefixNetwork|Gk[1][34]~116_combout\);

-- Location: LABCELL_X53_Y8_N38
\PrefixNetwork|Gk~117\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~117_combout\ = ( \PrefixNetwork|Gk[1][32]~109_combout\ & ( \PrefixNetwork|Gk~115_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~115_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][32]~109_combout\,
	combout => \PrefixNetwork|Gk~117_combout\);

-- Location: LABCELL_X53_Y8_N16
\PrefixNetwork|Gk[3][34]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][34]~combout\ = ( \PrefixNetwork|Gk~102_combout\ & ( (!\PrefixNetwork|Pk[2][34]~34_combout\ & (!\PrefixNetwork|Gk[1][34]~116_combout\ & !\PrefixNetwork|Gk~117_combout\)) ) ) # ( !\PrefixNetwork|Gk~102_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][34]~116_combout\ & (!\PrefixNetwork|Gk~117_combout\ & ((!\PrefixNetwork|Pk[2][34]~34_combout\) # (!\PrefixNetwork|Gk[1][30]~101_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][34]~34_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][30]~101_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][34]~116_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~117_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~102_combout\,
	combout => \PrefixNetwork|Gk[3][34]~combout\);

-- Location: MLABCELL_X52_Y10_N0
\S~35\ : arriaii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = ( \PrefixNetwork|Gk[3][34]~combout\ & ( !\B[35]~input_o\ $ (!\A[35]~input_o\ $ (!\c[35]~38_combout\)) ) ) # ( !\PrefixNetwork|Gk[3][34]~combout\ & ( !\B[35]~input_o\ $ (\A[35]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[35]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_c[35]~38_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][34]~combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X39_Y0_N1
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X55_Y0_N94
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: MLABCELL_X52_Y8_N16
\PrefixNetwork|Gk~119\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~119_combout\ = ( \B[34]~input_o\ & ( (!\A[34]~input_o\ & (!\A[35]~input_o\ $ (!\B[35]~input_o\))) ) ) # ( !\B[34]~input_o\ & ( (\A[34]~input_o\ & (!\A[35]~input_o\ $ (!\B[35]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \PrefixNetwork|Gk~119_combout\);

-- Location: MLABCELL_X52_Y8_N36
\PrefixNetwork|Pk[2][35]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][35]~36_combout\ = ( \PrefixNetwork|Gk~119_combout\ & ( \PrefixNetwork|Gk~111_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~111_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~119_combout\,
	combout => \PrefixNetwork|Pk[2][35]~36_combout\);

-- Location: LABCELL_X55_Y13_N30
\PrefixNetwork|Pk[4][35]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][35]~37_combout\ = ( \PrefixNetwork|Pk[2][35]~36_combout\ & ( (\PrefixNetwork|Gk~84_combout\ & \PrefixNetwork|Pk[2][31]~28DUPLICATE_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~84_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][31]~28DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][35]~36_combout\,
	combout => \PrefixNetwork|Pk[4][35]~37_combout\);

-- Location: MLABCELL_X52_Y8_N2
\PrefixNetwork|Gk[1][35]~121\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][35]~121_combout\ = ( \B[34]~input_o\ & ( (!\A[35]~input_o\ & (\B[35]~input_o\ & \A[34]~input_o\)) # (\A[35]~input_o\ & ((\A[34]~input_o\) # (\B[35]~input_o\))) ) ) # ( !\B[34]~input_o\ & ( (\A[35]~input_o\ & \B[35]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \PrefixNetwork|Gk[1][35]~121_combout\);

-- Location: MLABCELL_X52_Y8_N22
\PrefixNetwork|Gk~122\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~122_combout\ = ( \PrefixNetwork|Gk[1][33]~113_combout\ & ( \PrefixNetwork|Gk~119_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~119_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][33]~113_combout\,
	combout => \PrefixNetwork|Gk~122_combout\);

-- Location: MLABCELL_X52_Y8_N32
\PrefixNetwork|Gk[3][35]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][35]~combout\ = ( \PrefixNetwork|Gk~106_combout\ & ( (!\PrefixNetwork|Gk[1][35]~121_combout\ & (!\PrefixNetwork|Pk[2][35]~36_combout\ & !\PrefixNetwork|Gk~122_combout\)) ) ) # ( !\PrefixNetwork|Gk~106_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][35]~121_combout\ & (!\PrefixNetwork|Gk~122_combout\ & ((!\PrefixNetwork|Gk[1][31]~105_combout\) # (!\PrefixNetwork|Pk[2][35]~36_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][31]~105_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][35]~121_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][35]~36_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~122_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~106_combout\,
	combout => \PrefixNetwork|Gk[3][35]~combout\);

-- Location: MLABCELL_X57_Y12_N24
\PrefixNetwork|Gk~120\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~120_combout\ = ( !\PrefixNetwork|Gk[3][27]~combout\ & ( (\PrefixNetwork|Pk[2][35]~36_combout\ & \PrefixNetwork|Pk[2][31]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][35]~36_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][31]~28_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][27]~combout\,
	combout => \PrefixNetwork|Gk~120_combout\);

-- Location: LABCELL_X58_Y12_N20
\c[36]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \c[36]~39_combout\ = ( \PrefixNetwork|Pk[4][35]~37_combout\ & ( !\PrefixNetwork|Gk~120_combout\ & ( (\PrefixNetwork|Gk[3][19]~combout\ & \PrefixNetwork|Gk[3][35]~combout\) ) ) ) # ( !\PrefixNetwork|Pk[4][35]~37_combout\ & ( !\PrefixNetwork|Gk~120_combout\ 
-- & ( \PrefixNetwork|Gk[3][35]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[3][19]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][35]~combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][35]~37_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~120_combout\,
	combout => \c[36]~39_combout\);

-- Location: LABCELL_X58_Y12_N16
\S~36\ : arriaii_lcell_comb
-- Equation(s):
-- \S~36_combout\ = ( \PrefixNetwork|Pk[4][35]~37_combout\ & ( \c[36]~39_combout\ & ( !\B[36]~input_o\ $ (!\A[36]~input_o\ $ (((!\c[36]~11_combout\ & \PrefixNetwork|Gk~54_combout\)))) ) ) ) # ( !\PrefixNetwork|Pk[4][35]~37_combout\ & ( \c[36]~39_combout\ & ( 
-- !\B[36]~input_o\ $ (!\A[36]~input_o\) ) ) ) # ( \PrefixNetwork|Pk[4][35]~37_combout\ & ( !\c[36]~39_combout\ & ( !\B[36]~input_o\ $ (\A[36]~input_o\) ) ) ) # ( !\PrefixNetwork|Pk[4][35]~37_combout\ & ( !\c[36]~39_combout\ & ( !\B[36]~input_o\ $ 
-- (\A[36]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[36]~input_o\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_c[36]~11_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~54_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][35]~37_combout\,
	dataf => \ALT_INV_c[36]~39_combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X52_Y0_N63
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X52_Y0_N32
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LABCELL_X53_Y8_N2
\PrefixNetwork|Gk~123\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~123_combout\ = ( \B[36]~input_o\ & ( (!\A[36]~input_o\ & (!\B[35]~input_o\ $ (!\A[35]~input_o\))) ) ) # ( !\B[36]~input_o\ & ( (\A[36]~input_o\ & (!\B[35]~input_o\ $ (!\A[35]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_A[35]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \PrefixNetwork|Gk~123_combout\);

-- Location: LABCELL_X53_Y8_N20
\PrefixNetwork|Pk[2][36]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][36]~38_combout\ = ( \PrefixNetwork|Gk~123_combout\ & ( \PrefixNetwork|Gk~115_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~115_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~123_combout\,
	combout => \PrefixNetwork|Pk[2][36]~38_combout\);

-- Location: MLABCELL_X54_Y11_N0
\PrefixNetwork|Pk[4][36]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][36]~39_combout\ = ( \PrefixNetwork|Pk[2][36]~38_combout\ & ( \PrefixNetwork|Pk[2][32]~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][32]~30_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][36]~38_combout\,
	combout => \PrefixNetwork|Pk[4][36]~39_combout\);

-- Location: MLABCELL_X54_Y11_N20
\c[37]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \c[37]~40_combout\ = ( \PrefixNetwork|Gk~89_combout\ & ( (\PrefixNetwork|Pk[2][20]~13_combout\ & (\PrefixNetwork|Pk[4][36]~39_combout\ & \PrefixNetwork|Pk[2][16]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][20]~13_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][36]~39_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][16]~9_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~89_combout\,
	combout => \c[37]~40_combout\);

-- Location: MLABCELL_X52_Y8_N18
\PrefixNetwork|Gk[1][36]~124\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][36]~124_combout\ = ( \B[36]~input_o\ & ( ((\A[35]~input_o\ & \B[35]~input_o\)) # (\A[36]~input_o\) ) ) # ( !\B[36]~input_o\ & ( (\A[35]~input_o\ & (\A[36]~input_o\ & \B[35]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \PrefixNetwork|Gk[1][36]~124_combout\);

-- Location: MLABCELL_X54_Y8_N38
\PrefixNetwork|Gk~110\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~110_combout\ = ( \PrefixNetwork|Gk~107_combout\ & ( \PrefixNetwork|Gk[1][30]~101_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~107_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][30]~101_combout\,
	combout => \PrefixNetwork|Gk~110_combout\);

-- Location: LABCELL_X53_Y8_N34
\PrefixNetwork|Gk~125\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~125_combout\ = ( \PrefixNetwork|Gk[1][34]~116_combout\ & ( \PrefixNetwork|Gk~123_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~123_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][34]~116_combout\,
	combout => \PrefixNetwork|Gk~125_combout\);

-- Location: LABCELL_X53_Y8_N32
\PrefixNetwork|Gk[3][36]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][36]~combout\ = ( \PrefixNetwork|Pk[2][36]~38_combout\ & ( (!\PrefixNetwork|Gk[1][32]~109_combout\ & (!\PrefixNetwork|Gk[1][36]~124_combout\ & (!\PrefixNetwork|Gk~110_combout\ & !\PrefixNetwork|Gk~125_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][36]~38_combout\ & ( (!\PrefixNetwork|Gk[1][36]~124_combout\ & !\PrefixNetwork|Gk~125_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][32]~109_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][36]~124_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~110_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~125_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][36]~38_combout\,
	combout => \PrefixNetwork|Gk[3][36]~combout\);

-- Location: MLABCELL_X54_Y11_N26
\c[37]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \c[37]~41_combout\ = ( \PrefixNetwork|Gk[3][28]~combout\ & ( (\PrefixNetwork|Gk[3][36]~combout\ & ((!\PrefixNetwork|Gk~89_combout\) # ((!\PrefixNetwork|Pk[4][36]~39_combout\) # (\PrefixNetwork|Gk[3][20]~combout\)))) ) ) # ( 
-- !\PrefixNetwork|Gk[3][28]~combout\ & ( (\PrefixNetwork|Gk[3][36]~combout\ & !\PrefixNetwork|Pk[4][36]~39_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011001000110011001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~89_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][36]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][20]~combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][36]~39_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][28]~combout\,
	combout => \c[37]~41_combout\);

-- Location: LABCELL_X55_Y10_N34
\c[37]~13DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[37]~13DUPLICATE_combout\ = ( \PrefixNetwork|Gk[3][12]~combout\ & ( !\c[13]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk[3][12]~combout\,
	dataf => \ALT_INV_c[13]~12_combout\,
	combout => \c[37]~13DUPLICATE_combout\);

-- Location: MLABCELL_X54_Y11_N16
\S~37\ : arriaii_lcell_comb
-- Equation(s):
-- \S~37_combout\ = ( \c[37]~13DUPLICATE_combout\ & ( !\B[37]~input_o\ $ (!\A[37]~input_o\ $ (!\c[37]~41_combout\)) ) ) # ( !\c[37]~13DUPLICATE_combout\ & ( !\B[37]~input_o\ $ (!\A[37]~input_o\ $ (((!\c[37]~41_combout\) # (\c[37]~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101101001100110010110100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_c[37]~40_combout\,
	datad => \ALT_INV_c[37]~41_combout\,
	dataf => \ALT_INV_c[37]~13DUPLICATE_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X35_Y0_N63
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X33_Y0_N63
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: MLABCELL_X52_Y8_N8
\PrefixNetwork|Gk[1][37]~127\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][37]~127_combout\ = ( \B[36]~input_o\ & ( (!\A[36]~input_o\ & (\B[37]~input_o\ & \A[37]~input_o\)) # (\A[36]~input_o\ & ((\A[37]~input_o\) # (\B[37]~input_o\))) ) ) # ( !\B[36]~input_o\ & ( (\B[37]~input_o\ & \A[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \PrefixNetwork|Gk[1][37]~127_combout\);

-- Location: MLABCELL_X52_Y8_N0
\PrefixNetwork|Gk~126\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~126_combout\ = ( \B[36]~input_o\ & ( (!\A[36]~input_o\ & (!\A[37]~input_o\ $ (!\B[37]~input_o\))) ) ) # ( !\B[36]~input_o\ & ( (\A[36]~input_o\ & (!\A[37]~input_o\ $ (!\B[37]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \PrefixNetwork|Gk~126_combout\);

-- Location: MLABCELL_X52_Y8_N4
\PrefixNetwork|Pk[2][37]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][37]~40_combout\ = ( \PrefixNetwork|Gk~119_combout\ & ( \PrefixNetwork|Gk~126_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~126_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~119_combout\,
	combout => \PrefixNetwork|Pk[2][37]~40_combout\);

-- Location: MLABCELL_X52_Y8_N14
\PrefixNetwork|Gk~128\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~128_combout\ = ( \PrefixNetwork|Gk[1][35]~121_combout\ & ( \PrefixNetwork|Gk~126_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~126_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][35]~121_combout\,
	combout => \PrefixNetwork|Gk~128_combout\);

-- Location: MLABCELL_X57_Y8_N16
\PrefixNetwork|Gk[3][37]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][37]~combout\ = ( !\PrefixNetwork|Gk~128_combout\ & ( \PrefixNetwork|Gk~114_combout\ & ( (!\PrefixNetwork|Gk[1][37]~127_combout\ & !\PrefixNetwork|Pk[2][37]~40_combout\) ) ) ) # ( !\PrefixNetwork|Gk~128_combout\ & ( 
-- !\PrefixNetwork|Gk~114_combout\ & ( (!\PrefixNetwork|Gk[1][37]~127_combout\ & ((!\PrefixNetwork|Gk[1][33]~113_combout\) # (!\PrefixNetwork|Pk[2][37]~40_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000000000000000000011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][37]~127_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][33]~113_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][37]~40_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~128_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~114_combout\,
	combout => \PrefixNetwork|Gk[3][37]~combout\);

-- Location: MLABCELL_X57_Y13_N18
\PrefixNetwork|Pk[4][37]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][37]~41_combout\ = ( \PrefixNetwork|Pk[2][33]~32_combout\ & ( \PrefixNetwork|Pk[2][37]~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][37]~40_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][33]~32_combout\,
	combout => \PrefixNetwork|Pk[4][37]~41_combout\);

-- Location: MLABCELL_X57_Y13_N30
\PrefixNetwork|Pk[4][37]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][37]~42_combout\ = ( \PrefixNetwork|Pk[4][37]~41_combout\ & ( \PrefixNetwork|Gk~94_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~94_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][37]~41_combout\,
	combout => \PrefixNetwork|Pk[4][37]~42_combout\);

-- Location: MLABCELL_X57_Y13_N34
\PrefixNetwork|Gk~129\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~129_combout\ = ( \PrefixNetwork|Pk[4][37]~41_combout\ & ( !\PrefixNetwork|Gk[3][29]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[3][29]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][37]~41_combout\,
	combout => \PrefixNetwork|Gk~129_combout\);

-- Location: LABCELL_X58_Y13_N28
\c[38]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \c[38]~42_combout\ = ( \c[38]~24_combout\ & ( (!\PrefixNetwork|Pk[4][37]~42_combout\ & !\PrefixNetwork|Gk~129_combout\) ) ) # ( !\c[38]~24_combout\ & ( (!\PrefixNetwork|Gk~129_combout\ & ((!\PrefixNetwork|Pk[4][37]~42_combout\) # 
-- ((\PrefixNetwork|Gk[3][21]~combout\ & !\PrefixNetwork|Gk~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101000000000101110100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[4][37]~42_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][21]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~61_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~129_combout\,
	dataf => \ALT_INV_c[38]~24_combout\,
	combout => \c[38]~42_combout\);

-- Location: LABCELL_X58_Y13_N34
\S~38\ : arriaii_lcell_comb
-- Equation(s):
-- \S~38_combout\ = ( \c[38]~42_combout\ & ( !\B[38]~input_o\ $ (!\A[38]~input_o\ $ (!\PrefixNetwork|Gk[3][37]~combout\)) ) ) # ( !\c[38]~42_combout\ & ( !\B[38]~input_o\ $ (\A[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[38]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][37]~combout\,
	dataf => \ALT_INV_c[38]~42_combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X33_Y0_N94
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X33_Y0_N32
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: MLABCELL_X52_Y8_N38
\PrefixNetwork|Gk~130\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~130_combout\ = ( \B[37]~input_o\ & ( (!\A[37]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\))) ) ) # ( !\B[37]~input_o\ & ( (\A[37]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \PrefixNetwork|Gk~130_combout\);

-- Location: MLABCELL_X52_Y8_N26
\PrefixNetwork|Pk[2][38]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][38]~43_combout\ = ( \PrefixNetwork|Gk~123_combout\ & ( \PrefixNetwork|Gk~130_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~123_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~130_combout\,
	combout => \PrefixNetwork|Pk[2][38]~43_combout\);

-- Location: LABCELL_X53_Y8_N30
\PrefixNetwork|Pk[4][38]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][38]~44_combout\ = ( \PrefixNetwork|Pk[2][38]~43_combout\ & ( \PrefixNetwork|Pk[2][34]~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][34]~34_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][38]~43_combout\,
	combout => \PrefixNetwork|Pk[4][38]~44_combout\);

-- Location: MLABCELL_X49_Y11_N38
\PrefixNetwork|Pk[4][38]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][38]~45_combout\ = ( \PrefixNetwork|Gk~99_combout\ & ( \PrefixNetwork|Pk[4][38]~44_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~99_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][38]~44_combout\,
	combout => \PrefixNetwork|Pk[4][38]~45_combout\);

-- Location: LABCELL_X50_Y8_N30
\PrefixNetwork|Gk[1][38]~131\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][38]~131_combout\ = ( \B[38]~input_o\ & ( \A[38]~input_o\ ) ) # ( !\B[38]~input_o\ & ( \A[38]~input_o\ & ( (\B[37]~input_o\ & \A[37]~input_o\) ) ) ) # ( \B[38]~input_o\ & ( !\A[38]~input_o\ & ( (\B[37]~input_o\ & \A[37]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	datae => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \PrefixNetwork|Gk[1][38]~131_combout\);

-- Location: LABCELL_X53_Y8_N8
\PrefixNetwork|Gk~132\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~132_combout\ = ( \PrefixNetwork|Gk[1][36]~124_combout\ & ( \PrefixNetwork|Gk~130_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~130_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][36]~124_combout\,
	combout => \PrefixNetwork|Gk~132_combout\);

-- Location: LABCELL_X53_Y8_N26
\PrefixNetwork|Gk[3][38]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][38]~combout\ = ( \PrefixNetwork|Pk[2][38]~43_combout\ & ( (!\PrefixNetwork|Gk[1][34]~116_combout\ & (!\PrefixNetwork|Gk[1][38]~131_combout\ & (!\PrefixNetwork|Gk~117_combout\ & !\PrefixNetwork|Gk~132_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][38]~43_combout\ & ( (!\PrefixNetwork|Gk[1][38]~131_combout\ & !\PrefixNetwork|Gk~132_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][34]~116_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][38]~131_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~117_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~132_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][38]~43_combout\,
	combout => \PrefixNetwork|Gk[3][38]~combout\);

-- Location: MLABCELL_X49_Y11_N26
\c[39]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \c[39]~43_combout\ = ( \PrefixNetwork|Gk[3][22]~combout\ & ( \PrefixNetwork|Gk[3][30]~combout\ & ( (\PrefixNetwork|Gk[3][38]~combout\ & ((!\PrefixNetwork|Gk~65_combout\) # ((!\PrefixNetwork|Gk~99_combout\) # (!\PrefixNetwork|Pk[4][38]~44_combout\)))) ) ) 
-- ) # ( !\PrefixNetwork|Gk[3][22]~combout\ & ( \PrefixNetwork|Gk[3][30]~combout\ & ( (\PrefixNetwork|Gk[3][38]~combout\ & ((!\PrefixNetwork|Gk~99_combout\) # (!\PrefixNetwork|Pk[4][38]~44_combout\))) ) ) ) # ( \PrefixNetwork|Gk[3][22]~combout\ & ( 
-- !\PrefixNetwork|Gk[3][30]~combout\ & ( (\PrefixNetwork|Gk[3][38]~combout\ & !\PrefixNetwork|Pk[4][38]~44_combout\) ) ) ) # ( !\PrefixNetwork|Gk[3][22]~combout\ & ( !\PrefixNetwork|Gk[3][30]~combout\ & ( (\PrefixNetwork|Gk[3][38]~combout\ & 
-- !\PrefixNetwork|Pk[4][38]~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101010100000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][38]~combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~65_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~99_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][38]~44_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][22]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][30]~combout\,
	combout => \c[39]~43_combout\);

-- Location: LABCELL_X50_Y10_N34
\c[39]~26DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[39]~26DUPLICATE_combout\ = ( \PrefixNetwork|Gk~49_combout\ & ( \PrefixNetwork|Pk[2][22]~15_combout\ & ( (\PrefixNetwork|Pk[2][10]~3_combout\ & (((!\PrefixNetwork|Gpre[6]~1_combout\) # (\c~4_combout\)) # (\PrefixNetwork|Gk~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~9_combout\,
	datab => \PrefixNetwork|ALT_INV_Gpre[6]~1_combout\,
	datac => \ALT_INV_c~4_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][10]~3_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~49_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][22]~15_combout\,
	combout => \c[39]~26DUPLICATE_combout\);

-- Location: MLABCELL_X49_Y11_N14
\S~39\ : arriaii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = ( \c[39]~43_combout\ & ( \c[39]~26DUPLICATE_combout\ & ( !\A[39]~input_o\ $ (!\B[39]~input_o\ $ (\PrefixNetwork|Pk[4][38]~45_combout\)) ) ) ) # ( !\c[39]~43_combout\ & ( \c[39]~26DUPLICATE_combout\ & ( !\A[39]~input_o\ $ (\B[39]~input_o\) 
-- ) ) ) # ( \c[39]~43_combout\ & ( !\c[39]~26DUPLICATE_combout\ & ( !\A[39]~input_o\ $ (!\B[39]~input_o\) ) ) ) # ( !\c[39]~43_combout\ & ( !\c[39]~26DUPLICATE_combout\ & ( !\A[39]~input_o\ $ (\B[39]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101010110100101101010100101101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][38]~45_combout\,
	datae => \ALT_INV_c[39]~43_combout\,
	dataf => \ALT_INV_c[39]~26DUPLICATE_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X37_Y0_N32
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X39_Y0_N63
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: MLABCELL_X34_Y4_N10
\PrefixNetwork|Gk~133\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~133_combout\ = ( \A[39]~input_o\ & ( \A[38]~input_o\ & ( (!\B[39]~input_o\ & !\B[38]~input_o\) ) ) ) # ( !\A[39]~input_o\ & ( \A[38]~input_o\ & ( (\B[39]~input_o\ & !\B[38]~input_o\) ) ) ) # ( \A[39]~input_o\ & ( !\A[38]~input_o\ & ( 
-- (!\B[39]~input_o\ & \B[38]~input_o\) ) ) ) # ( !\A[39]~input_o\ & ( !\A[38]~input_o\ & ( (\B[39]~input_o\ & \B[38]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	datae => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \PrefixNetwork|Gk~133_combout\);

-- Location: MLABCELL_X52_Y8_N12
\PrefixNetwork|Pk[2][39]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][39]~46_combout\ = ( \PrefixNetwork|Gk~133_combout\ & ( \PrefixNetwork|Gk~126_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~126_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~133_combout\,
	combout => \PrefixNetwork|Pk[2][39]~46_combout\);

-- Location: MLABCELL_X52_Y8_N20
\PrefixNetwork|Pk[4][39]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][39]~47_combout\ = ( \PrefixNetwork|Pk[2][39]~46_combout\ & ( \PrefixNetwork|Pk[2][35]~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][35]~36_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][39]~46_combout\,
	combout => \PrefixNetwork|Pk[4][39]~47_combout\);

-- Location: LABCELL_X53_Y16_N2
\PrefixNetwork|Pk[4][39]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][39]~48_combout\ = ( \PrefixNetwork|Pk[2][31]~28DUPLICATE_combout\ & ( \PrefixNetwork|Pk[4][39]~47_combout\ & ( \PrefixNetwork|Pk[2][27]~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][27]~20_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][31]~28DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][39]~47_combout\,
	combout => \PrefixNetwork|Pk[4][39]~48_combout\);

-- Location: LABCELL_X53_Y12_N12
\c[40]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \c[40]~44_combout\ = ( \PrefixNetwork|Pk[4][39]~48_combout\ & ( (\PrefixNetwork|Pk[2][23]~16_combout\ & (\PrefixNetwork|Pk[2][11]~4_combout\ & (\PrefixNetwork|Gk~54_combout\ & !c(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][23]~16_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][11]~4_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~54_combout\,
	datad => ALT_INV_c(8),
	dataf => \PrefixNetwork|ALT_INV_Pk[4][39]~48_combout\,
	combout => \c[40]~44_combout\);

-- Location: MLABCELL_X34_Y4_N20
\PrefixNetwork|Gk[1][39]~134\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][39]~134_combout\ = ( \A[38]~input_o\ & ( \A[39]~input_o\ & ( (\B[38]~input_o\) # (\B[39]~input_o\) ) ) ) # ( !\A[38]~input_o\ & ( \A[39]~input_o\ & ( \B[39]~input_o\ ) ) ) # ( \A[38]~input_o\ & ( !\A[39]~input_o\ & ( (\B[39]~input_o\ 
-- & \B[38]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	datae => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \PrefixNetwork|Gk[1][39]~134_combout\);

-- Location: MLABCELL_X52_Y8_N34
\PrefixNetwork|Gk~135\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~135_combout\ = ( \PrefixNetwork|Gk~133_combout\ & ( \PrefixNetwork|Gk[1][37]~127_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][37]~127_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~133_combout\,
	combout => \PrefixNetwork|Gk~135_combout\);

-- Location: MLABCELL_X52_Y8_N6
\PrefixNetwork|Gk[3][39]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][39]~combout\ = ( !\PrefixNetwork|Gk~135_combout\ & ( (!\PrefixNetwork|Gk[1][39]~134_combout\ & ((!\PrefixNetwork|Pk[2][39]~46_combout\) # ((!\PrefixNetwork|Gk[1][35]~121_combout\ & !\PrefixNetwork|Gk~122_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][35]~121_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~122_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][39]~134_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][39]~46_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~135_combout\,
	combout => \PrefixNetwork|Gk[3][39]~combout\);

-- Location: LABCELL_X53_Y12_N22
\PrefixNetwork|Gk~136\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~136_combout\ = ( !\PrefixNetwork|Gk[3][15]~combout\ & ( (\PrefixNetwork|Pk[2][23]~16_combout\ & \PrefixNetwork|Pk[2][19]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][23]~16_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][19]~12_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][15]~combout\,
	combout => \PrefixNetwork|Gk~136_combout\);

-- Location: LABCELL_X53_Y12_N32
\c[40]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \c[40]~45_combout\ = ( \PrefixNetwork|Pk[4][39]~48_combout\ & ( (\PrefixNetwork|Gk[3][23]~combout\ & (!\PrefixNetwork|Gk~136_combout\ & ((!\PrefixNetwork|Pk[4][39]~47_combout\) # (\PrefixNetwork|Gk[3][31]~combout\)))) ) ) # ( 
-- !\PrefixNetwork|Pk[4][39]~48_combout\ & ( (!\PrefixNetwork|Pk[4][39]~47_combout\) # (\PrefixNetwork|Gk[3][31]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111101000101000000000100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][23]~combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[4][39]~47_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][31]~combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~136_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][39]~48_combout\,
	combout => \c[40]~45_combout\);

-- Location: LABCELL_X53_Y12_N20
\S~40\ : arriaii_lcell_comb
-- Equation(s):
-- \S~40_combout\ = ( \c[40]~45_combout\ & ( !\A[40]~input_o\ $ (!\B[40]~input_o\ $ (((!\PrefixNetwork|Gk[3][39]~combout\) # (\c[40]~44_combout\)))) ) ) # ( !\c[40]~45_combout\ & ( !\A[40]~input_o\ $ (\B[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[40]~input_o\,
	datab => \ALT_INV_B[40]~input_o\,
	datac => \ALT_INV_c[40]~44_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][39]~combout\,
	dataf => \ALT_INV_c[40]~45_combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X59_Y7_N1
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: MLABCELL_X52_Y11_N10
\PrefixNetwork|Gk~137\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~137_combout\ = ( \B[39]~input_o\ & ( (!\A[39]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\))) ) ) # ( !\B[39]~input_o\ & ( (\A[39]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[39]~input_o\,
	combout => \PrefixNetwork|Gk~137_combout\);

-- Location: MLABCELL_X52_Y11_N18
\PrefixNetwork|Pk[2][40]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][40]~49_combout\ = ( \PrefixNetwork|Gk~130_combout\ & ( \PrefixNetwork|Gk~137_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~137_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~130_combout\,
	combout => \PrefixNetwork|Pk[2][40]~49_combout\);

-- Location: MLABCELL_X54_Y12_N10
\PrefixNetwork|Gk~138\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~138_combout\ = ( !\PrefixNetwork|Gk[3][32]~combout\ & ( \PrefixNetwork|Pk[2][36]~38_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][36]~38_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][32]~combout\,
	combout => \PrefixNetwork|Gk~138_combout\);

-- Location: IOIBUF_X50_Y0_N32
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: MLABCELL_X52_Y11_N2
\PrefixNetwork|Gk[1][40]~139\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][40]~139_combout\ = ( \B[39]~input_o\ & ( (!\A[39]~input_o\ & (\B[40]~input_o\ & \A[40]~input_o\)) # (\A[39]~input_o\ & ((\A[40]~input_o\) # (\B[40]~input_o\))) ) ) # ( !\B[39]~input_o\ & ( (\B[40]~input_o\ & \A[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[39]~input_o\,
	combout => \PrefixNetwork|Gk[1][40]~139_combout\);

-- Location: MLABCELL_X52_Y11_N22
\PrefixNetwork|Gk~140\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~140_combout\ = ( \PrefixNetwork|Gk[1][38]~131_combout\ & ( \PrefixNetwork|Gk~137_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~137_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][38]~131_combout\,
	combout => \PrefixNetwork|Gk~140_combout\);

-- Location: MLABCELL_X52_Y11_N20
\PrefixNetwork|Gk[3][40]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][40]~combout\ = ( \PrefixNetwork|Gk~125_combout\ & ( (!\PrefixNetwork|Gk[1][40]~139_combout\ & (!\PrefixNetwork|Pk[2][40]~49_combout\ & !\PrefixNetwork|Gk~140_combout\)) ) ) # ( !\PrefixNetwork|Gk~125_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][40]~139_combout\ & (!\PrefixNetwork|Gk~140_combout\ & ((!\PrefixNetwork|Gk[1][36]~124_combout\) # (!\PrefixNetwork|Pk[2][40]~49_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][36]~124_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][40]~139_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][40]~49_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~140_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~125_combout\,
	combout => \PrefixNetwork|Gk[3][40]~combout\);

-- Location: MLABCELL_X52_Y11_N8
\PrefixNetwork|Pk[4][40]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][40]~50_combout\ = ( \PrefixNetwork|Pk[4][36]~39_combout\ & ( (\PrefixNetwork|Pk[2][40]~49_combout\ & \PrefixNetwork|Pk[2][28]~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][40]~49_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][28]~22_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][36]~39_combout\,
	combout => \PrefixNetwork|Pk[4][40]~50_combout\);

-- Location: LABCELL_X53_Y11_N32
\c[41]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \c[41]~46_combout\ = ( \PrefixNetwork|Pk[4][40]~50_combout\ & ( \c[41]~29_combout\ & ( (\PrefixNetwork|Gk[3][40]~combout\ & (!\PrefixNetwork|Gk~72_combout\ & \PrefixNetwork|Gk[3][24]~combout\)) ) ) ) # ( !\PrefixNetwork|Pk[4][40]~50_combout\ & ( 
-- \c[41]~29_combout\ & ( \PrefixNetwork|Gk[3][40]~combout\ ) ) ) # ( \PrefixNetwork|Pk[4][40]~50_combout\ & ( !\c[41]~29_combout\ & ( (\PrefixNetwork|Gk[3][40]~combout\ & (\PrefixNetwork|Gk[3][24]~combout\ & ((!\PrefixNetwork|Gk~72_combout\) # 
-- (\PrefixNetwork|Gk[3][16]~combout\)))) ) ) ) # ( !\PrefixNetwork|Pk[4][40]~50_combout\ & ( !\c[41]~29_combout\ & ( \PrefixNetwork|Gk[3][40]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000101000101010101010101010000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][40]~combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][16]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~72_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][24]~combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][40]~50_combout\,
	dataf => \ALT_INV_c[41]~29_combout\,
	combout => \c[41]~46_combout\);

-- Location: LABCELL_X53_Y11_N2
\S~41\ : arriaii_lcell_comb
-- Equation(s):
-- \S~41_combout\ = ( \c[41]~46_combout\ & ( !\B[41]~input_o\ $ (!\A[41]~input_o\ $ (((\PrefixNetwork|Pk[2][40]~49_combout\ & \PrefixNetwork|Gk~138_combout\)))) ) ) # ( !\c[41]~46_combout\ & ( !\B[41]~input_o\ $ (\A[41]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010110101010010101011010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][40]~49_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~138_combout\,
	datad => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_c[41]~46_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X59_Y23_N63
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: MLABCELL_X52_Y12_N12
\PrefixNetwork|Gk~141\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~141_combout\ = ( \B[40]~input_o\ & ( (!\A[40]~input_o\ & (!\A[41]~input_o\ $ (!\B[41]~input_o\))) ) ) # ( !\B[40]~input_o\ & ( (\A[40]~input_o\ & (!\A[41]~input_o\ $ (!\B[41]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \PrefixNetwork|Gk~141_combout\);

-- Location: MLABCELL_X52_Y12_N24
\PrefixNetwork|Pk[2][41]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][41]~51_combout\ = ( \PrefixNetwork|Gk~133_combout\ & ( \PrefixNetwork|Gk~141_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~141_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~133_combout\,
	combout => \PrefixNetwork|Pk[2][41]~51_combout\);

-- Location: LABCELL_X53_Y13_N0
\PrefixNetwork|Gk~142\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~142_combout\ = ( !\PrefixNetwork|Gk[3][33]~combout\ & ( \PrefixNetwork|Pk[2][37]~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][37]~40_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][33]~combout\,
	combout => \PrefixNetwork|Gk~142_combout\);

-- Location: MLABCELL_X52_Y12_N6
\PrefixNetwork|Gk[1][41]~143\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][41]~143_combout\ = ( \B[40]~input_o\ & ( (!\A[41]~input_o\ & (\B[41]~input_o\ & \A[40]~input_o\)) # (\A[41]~input_o\ & ((\A[40]~input_o\) # (\B[41]~input_o\))) ) ) # ( !\B[40]~input_o\ & ( (\A[41]~input_o\ & \B[41]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \PrefixNetwork|Gk[1][41]~143_combout\);

-- Location: MLABCELL_X52_Y12_N18
\PrefixNetwork|Gk~144\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~144_combout\ = (\PrefixNetwork|Gk[1][39]~134_combout\ & \PrefixNetwork|Gk~141_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][39]~134_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~141_combout\,
	combout => \PrefixNetwork|Gk~144_combout\);

-- Location: MLABCELL_X52_Y12_N20
\PrefixNetwork|Gk[3][41]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][41]~combout\ = ( \PrefixNetwork|Pk[2][41]~51_combout\ & ( (!\PrefixNetwork|Gk[1][37]~127_combout\ & (!\PrefixNetwork|Gk[1][41]~143_combout\ & (!\PrefixNetwork|Gk~144_combout\ & !\PrefixNetwork|Gk~128_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][41]~51_combout\ & ( (!\PrefixNetwork|Gk[1][41]~143_combout\ & !\PrefixNetwork|Gk~144_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][37]~127_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][41]~143_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~144_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~128_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][41]~51_combout\,
	combout => \PrefixNetwork|Gk[3][41]~combout\);

-- Location: LABCELL_X53_Y13_N38
\PrefixNetwork|Pk[4][41]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][41]~52_combout\ = ( \PrefixNetwork|Pk[4][37]~41_combout\ & ( (\PrefixNetwork|Pk[2][29]~24_combout\ & \PrefixNetwork|Pk[2][41]~51_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][29]~24_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][41]~51_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][37]~41_combout\,
	combout => \PrefixNetwork|Pk[4][41]~52_combout\);

-- Location: MLABCELL_X52_Y12_N2
\c[42]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \c[42]~47_combout\ = ( \c[42]~31_combout\ & ( \PrefixNetwork|Pk[4][41]~52_combout\ & ( (\PrefixNetwork|Gk[3][41]~combout\ & (!\PrefixNetwork|Gk~76_combout\ & \PrefixNetwork|Gk[3][25]~combout\)) ) ) ) # ( !\c[42]~31_combout\ & ( 
-- \PrefixNetwork|Pk[4][41]~52_combout\ & ( (\PrefixNetwork|Gk[3][41]~combout\ & (\PrefixNetwork|Gk[3][25]~combout\ & ((!\PrefixNetwork|Gk~76_combout\) # (\PrefixNetwork|Gk[3][17]~combout\)))) ) ) ) # ( \c[42]~31_combout\ & ( 
-- !\PrefixNetwork|Pk[4][41]~52_combout\ & ( \PrefixNetwork|Gk[3][41]~combout\ ) ) ) # ( !\c[42]~31_combout\ & ( !\PrefixNetwork|Pk[4][41]~52_combout\ & ( \PrefixNetwork|Gk[3][41]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000010100010000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][41]~combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][17]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~76_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][25]~combout\,
	datae => \ALT_INV_c[42]~31_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][41]~52_combout\,
	combout => \c[42]~47_combout\);

-- Location: MLABCELL_X52_Y12_N36
\S~42\ : arriaii_lcell_comb
-- Equation(s):
-- \S~42_combout\ = ( \c[42]~47_combout\ & ( !\A[42]~input_o\ $ (!\B[42]~input_o\ $ (((\PrefixNetwork|Pk[2][41]~51_combout\ & \PrefixNetwork|Gk~142_combout\)))) ) ) # ( !\c[42]~47_combout\ & ( !\A[42]~input_o\ $ (\B[42]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datab => \ALT_INV_B[42]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][41]~51_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~142_combout\,
	dataf => \ALT_INV_c[42]~47_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X59_Y19_N63
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: MLABCELL_X52_Y11_N34
\PrefixNetwork|Gk~145\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~145_combout\ = ( \B[41]~input_o\ & ( (!\A[41]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) ) # ( !\B[41]~input_o\ & ( (\A[41]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datac => \ALT_INV_A[41]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[41]~input_o\,
	combout => \PrefixNetwork|Gk~145_combout\);

-- Location: MLABCELL_X52_Y11_N32
\PrefixNetwork|Pk[2][42]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][42]~53_combout\ = ( \PrefixNetwork|Gk~137_combout\ & ( \PrefixNetwork|Gk~145_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~145_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~137_combout\,
	combout => \PrefixNetwork|Pk[2][42]~53_combout\);

-- Location: LABCELL_X53_Y10_N24
\PrefixNetwork|Pk[4][42]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][42]~54_combout\ = ( \PrefixNetwork|Pk[2][42]~53_combout\ & ( (\PrefixNetwork|Pk[4][38]~44_combout\ & \PrefixNetwork|Pk[2][30]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[4][38]~44_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][30]~26_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\,
	combout => \PrefixNetwork|Pk[4][42]~54_combout\);

-- Location: LABCELL_X53_Y10_N6
\c[43]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \c[43]~49_combout\ = ( \c[27]~9DUPLICATE_combout\ & ( (\PrefixNetwork|Pk[4][42]~54_combout\ & (\PrefixNetwork|Gk~80_combout\ & !\PrefixNetwork|Gk[3][18]~combout\)) ) ) # ( !\c[27]~9DUPLICATE_combout\ & ( (\PrefixNetwork|Pk[4][42]~54_combout\ & 
-- (\PrefixNetwork|Gk~80_combout\ & ((!\PrefixNetwork|Gk[3][18]~combout\) # (\PrefixNetwork|Gk~49_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000001000100010000000100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[4][42]~54_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~80_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~49_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][18]~combout\,
	dataf => \ALT_INV_c[27]~9DUPLICATE_combout\,
	combout => \c[43]~49_combout\);

-- Location: IOIBUF_X59_Y7_N63
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: MLABCELL_X52_Y11_N14
\PrefixNetwork|Gk~148\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~148_combout\ = ( \PrefixNetwork|Gk[1][40]~139_combout\ & ( \PrefixNetwork|Gk~145_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~145_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][40]~139_combout\,
	combout => \PrefixNetwork|Gk~148_combout\);

-- Location: MLABCELL_X52_Y12_N26
\PrefixNetwork|Gk[1][42]~147\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][42]~147_combout\ = ( \B[42]~input_o\ & ( ((\A[41]~input_o\ & \B[41]~input_o\)) # (\A[42]~input_o\) ) ) # ( !\B[42]~input_o\ & ( (\A[41]~input_o\ & (\B[41]~input_o\ & \A[42]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[42]~input_o\,
	combout => \PrefixNetwork|Gk[1][42]~147_combout\);

-- Location: MLABCELL_X52_Y10_N30
\PrefixNetwork|Gk[3][42]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][42]~combout\ = ( \PrefixNetwork|Gk~132_combout\ & ( (!\PrefixNetwork|Gk~148_combout\ & (!\PrefixNetwork|Gk[1][42]~147_combout\ & !\PrefixNetwork|Pk[2][42]~53_combout\)) ) ) # ( !\PrefixNetwork|Gk~132_combout\ & ( 
-- (!\PrefixNetwork|Gk~148_combout\ & (!\PrefixNetwork|Gk[1][42]~147_combout\ & ((!\PrefixNetwork|Gk[1][38]~131_combout\) # (!\PrefixNetwork|Pk[2][42]~53_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~148_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][38]~131_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][42]~147_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~132_combout\,
	combout => \PrefixNetwork|Gk[3][42]~combout\);

-- Location: MLABCELL_X57_Y10_N34
\c[43]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \c[43]~48_combout\ = ( \PrefixNetwork|Gk[3][26]~combout\ & ( \PrefixNetwork|Pk[4][42]~54_combout\ & ( \PrefixNetwork|Gk[3][42]~combout\ ) ) ) # ( \PrefixNetwork|Gk[3][26]~combout\ & ( !\PrefixNetwork|Pk[4][42]~54_combout\ & ( 
-- \PrefixNetwork|Gk[3][42]~combout\ ) ) ) # ( !\PrefixNetwork|Gk[3][26]~combout\ & ( !\PrefixNetwork|Pk[4][42]~54_combout\ & ( \PrefixNetwork|Gk[3][42]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[3][42]~combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][26]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][42]~54_combout\,
	combout => \c[43]~48_combout\);

-- Location: LABCELL_X53_Y8_N18
\PrefixNetwork|Gk~146\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~146_combout\ = ( !\PrefixNetwork|Gk[3][34]~combout\ & ( (\PrefixNetwork|Pk[2][38]~43_combout\ & \PrefixNetwork|Pk[2][42]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][38]~43_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][34]~combout\,
	combout => \PrefixNetwork|Gk~146_combout\);

-- Location: LABCELL_X58_Y10_N10
\S~43\ : arriaii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = ( \c[43]~48_combout\ & ( \PrefixNetwork|Gk~146_combout\ & ( !\B[43]~input_o\ $ (\A[43]~input_o\) ) ) ) # ( !\c[43]~48_combout\ & ( \PrefixNetwork|Gk~146_combout\ & ( !\B[43]~input_o\ $ (\A[43]~input_o\) ) ) ) # ( \c[43]~48_combout\ & ( 
-- !\PrefixNetwork|Gk~146_combout\ & ( !\B[43]~input_o\ $ (!\c[43]~49_combout\ $ (\A[43]~input_o\)) ) ) ) # ( !\c[43]~48_combout\ & ( !\PrefixNetwork|Gk~146_combout\ & ( !\B[43]~input_o\ $ (\A[43]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011001111001100001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[43]~input_o\,
	datac => \ALT_INV_c[43]~49_combout\,
	datad => \ALT_INV_A[43]~input_o\,
	datae => \ALT_INV_c[43]~48_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~146_combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X59_Y9_N94
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X59_Y19_N94
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: MLABCELL_X52_Y12_N16
\PrefixNetwork|Gk~149\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~149_combout\ = ( \B[43]~input_o\ & ( (!\A[43]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) ) # ( !\B[43]~input_o\ & ( (\A[43]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[43]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \PrefixNetwork|Gk~149_combout\);

-- Location: MLABCELL_X52_Y12_N14
\PrefixNetwork|Pk[2][43]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][43]~55_combout\ = ( \PrefixNetwork|Gk~149_combout\ & ( \PrefixNetwork|Gk~141_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~141_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~149_combout\,
	combout => \PrefixNetwork|Pk[2][43]~55_combout\);

-- Location: MLABCELL_X52_Y8_N10
\PrefixNetwork|Pk[4][43]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][43]~56_combout\ = ( \PrefixNetwork|Pk[2][43]~55_combout\ & ( (\PrefixNetwork|Pk[4][39]~47_combout\ & \PrefixNetwork|Pk[2][31]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[4][39]~47_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][31]~28_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	combout => \PrefixNetwork|Pk[4][43]~56_combout\);

-- Location: MLABCELL_X52_Y8_N28
\PrefixNetwork|Gk~150\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~150_combout\ = ( \PrefixNetwork|Pk[2][39]~46_combout\ & ( \PrefixNetwork|Pk[2][43]~55_combout\ & ( !\PrefixNetwork|Gk[3][35]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[3][35]~combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][39]~46_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	combout => \PrefixNetwork|Gk~150_combout\);

-- Location: MLABCELL_X52_Y12_N34
\PrefixNetwork|Gk[1][43]~151\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][43]~151_combout\ = ( \B[43]~input_o\ & ( ((\A[42]~input_o\ & \B[42]~input_o\)) # (\A[43]~input_o\) ) ) # ( !\B[43]~input_o\ & ( (\A[42]~input_o\ & (\A[43]~input_o\ & \B[42]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_B[42]~input_o\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \PrefixNetwork|Gk[1][43]~151_combout\);

-- Location: MLABCELL_X52_Y12_N10
\PrefixNetwork|Gk~152\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~152_combout\ = ( \PrefixNetwork|Gk~149_combout\ & ( \PrefixNetwork|Gk[1][41]~143_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][41]~143_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~149_combout\,
	combout => \PrefixNetwork|Gk~152_combout\);

-- Location: MLABCELL_X52_Y12_N28
\PrefixNetwork|Gk[3][43]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][43]~combout\ = ( \PrefixNetwork|Gk~135_combout\ & ( (!\PrefixNetwork|Gk[1][43]~151_combout\ & (!\PrefixNetwork|Pk[2][43]~55_combout\ & !\PrefixNetwork|Gk~152_combout\)) ) ) # ( !\PrefixNetwork|Gk~135_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][43]~151_combout\ & (!\PrefixNetwork|Gk~152_combout\ & ((!\PrefixNetwork|Gk[1][39]~134_combout\) # (!\PrefixNetwork|Pk[2][43]~55_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][39]~134_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][43]~151_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~152_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~135_combout\,
	combout => \PrefixNetwork|Gk[3][43]~combout\);

-- Location: LABCELL_X55_Y8_N32
\c[44]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \c[44]~50_combout\ = ( \PrefixNetwork|Gk[3][27]~combout\ & ( \PrefixNetwork|Gk~85_combout\ & ( (!\PrefixNetwork|Gk~150_combout\ & (!\PrefixNetwork|Pk[4][43]~56_combout\ & \PrefixNetwork|Gk[3][43]~combout\)) ) ) ) # ( !\PrefixNetwork|Gk[3][27]~combout\ & ( 
-- \PrefixNetwork|Gk~85_combout\ & ( (!\PrefixNetwork|Gk~150_combout\ & (!\PrefixNetwork|Pk[4][43]~56_combout\ & \PrefixNetwork|Gk[3][43]~combout\)) ) ) ) # ( \PrefixNetwork|Gk[3][27]~combout\ & ( !\PrefixNetwork|Gk~85_combout\ & ( 
-- (!\PrefixNetwork|Gk~150_combout\ & \PrefixNetwork|Gk[3][43]~combout\) ) ) ) # ( !\PrefixNetwork|Gk[3][27]~combout\ & ( !\PrefixNetwork|Gk~85_combout\ & ( (!\PrefixNetwork|Gk~150_combout\ & (!\PrefixNetwork|Pk[4][43]~56_combout\ & 
-- \PrefixNetwork|Gk[3][43]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100110000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk~150_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][43]~56_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][43]~combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][27]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~85_combout\,
	combout => \c[44]~50_combout\);

-- Location: LABCELL_X55_Y8_N4
\S~44\ : arriaii_lcell_comb
-- Equation(s):
-- \S~44_combout\ = ( \c[36]~11_combout\ & ( \c[44]~50_combout\ & ( !\A[44]~input_o\ $ (!\B[44]~input_o\) ) ) ) # ( !\c[36]~11_combout\ & ( \c[44]~50_combout\ & ( !\A[44]~input_o\ $ (!\B[44]~input_o\ $ (((\PrefixNetwork|Pk[4][43]~56_combout\ & 
-- \PrefixNetwork|Pk[4][27]~21_combout\)))) ) ) ) # ( \c[36]~11_combout\ & ( !\c[44]~50_combout\ & ( !\A[44]~input_o\ $ (\B[44]~input_o\) ) ) ) # ( !\c[36]~11_combout\ & ( !\c[44]~50_combout\ & ( !\A[44]~input_o\ $ (\B[44]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][43]~56_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][27]~21_combout\,
	datae => \ALT_INV_c[36]~11_combout\,
	dataf => \ALT_INV_c[44]~50_combout\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X37_Y0_N63
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X52_Y0_N94
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: MLABCELL_X52_Y11_N24
\PrefixNetwork|Gk~153\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~153_combout\ = ( \A[43]~input_o\ & ( (!\B[43]~input_o\ & (!\A[44]~input_o\ $ (!\B[44]~input_o\))) ) ) # ( !\A[43]~input_o\ & ( (\B[43]~input_o\ & (!\A[44]~input_o\ $ (!\B[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datac => \ALT_INV_B[43]~input_o\,
	datad => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \PrefixNetwork|Gk~153_combout\);

-- Location: MLABCELL_X52_Y11_N12
\PrefixNetwork|Pk[2][44]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][44]~57_combout\ = ( \PrefixNetwork|Gk~153_combout\ & ( \PrefixNetwork|Gk~145_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk~145_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~153_combout\,
	combout => \PrefixNetwork|Pk[2][44]~57_combout\);

-- Location: LABCELL_X53_Y11_N6
\PrefixNetwork|Gk~154\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~154_combout\ = ( \PrefixNetwork|Pk[2][40]~49_combout\ & ( \PrefixNetwork|Pk[2][44]~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][44]~57_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][40]~49_combout\,
	combout => \PrefixNetwork|Gk~154_combout\);

-- Location: LABCELL_X55_Y11_N38
\PrefixNetwork|Pk[4][44]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][44]~58_combout\ = ( \PrefixNetwork|Gk~154_combout\ & ( \PrefixNetwork|Pk[4][36]~39_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[4][36]~39_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~154_combout\,
	combout => \PrefixNetwork|Pk[4][44]~58_combout\);

-- Location: LABCELL_X55_Y10_N16
\PrefixNetwork|Gk[1][44]~155\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][44]~155_combout\ = ( \B[44]~input_o\ & ( \B[43]~input_o\ & ( (\A[43]~input_o\) # (\A[44]~input_o\) ) ) ) # ( !\B[44]~input_o\ & ( \B[43]~input_o\ & ( (\A[44]~input_o\ & \A[43]~input_o\) ) ) ) # ( \B[44]~input_o\ & ( !\B[43]~input_o\ & 
-- ( \A[44]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_A[43]~input_o\,
	datae => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \PrefixNetwork|Gk[1][44]~155_combout\);

-- Location: MLABCELL_X52_Y12_N4
\PrefixNetwork|Gk~156\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~156_combout\ = ( \PrefixNetwork|Gk~153_combout\ & ( \PrefixNetwork|Gk[1][42]~147_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][42]~147_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~153_combout\,
	combout => \PrefixNetwork|Gk~156_combout\);

-- Location: LABCELL_X55_Y11_N14
\PrefixNetwork|Gk[3][44]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][44]~combout\ = ( \PrefixNetwork|Gk~140_combout\ & ( (!\PrefixNetwork|Gk[1][44]~155_combout\ & (!\PrefixNetwork|Gk~156_combout\ & !\PrefixNetwork|Pk[2][44]~57_combout\)) ) ) # ( !\PrefixNetwork|Gk~140_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][44]~155_combout\ & (!\PrefixNetwork|Gk~156_combout\ & ((!\PrefixNetwork|Gk[1][40]~139_combout\) # (!\PrefixNetwork|Pk[2][44]~57_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][44]~155_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][40]~139_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~156_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][44]~57_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~140_combout\,
	combout => \PrefixNetwork|Gk[3][44]~combout\);

-- Location: MLABCELL_X54_Y11_N28
\c[45]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \c[45]~51_combout\ = ( \PrefixNetwork|Gk[3][44]~combout\ & ( \PrefixNetwork|Gk[3][28]~combout\ & ( (!\PrefixNetwork|Gk~154_combout\) # ((\PrefixNetwork|Gk[3][36]~combout\ & ((!\PrefixNetwork|Pk[4][36]~39_combout\) # (!\PrefixNetwork|Gk~90_combout\)))) ) ) 
-- ) # ( \PrefixNetwork|Gk[3][44]~combout\ & ( !\PrefixNetwork|Gk[3][28]~combout\ & ( (!\PrefixNetwork|Gk~154_combout\) # ((\PrefixNetwork|Gk[3][36]~combout\ & !\PrefixNetwork|Pk[4][36]~39_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110101011101000000000000000001011101110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~154_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][36]~combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][36]~39_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~90_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][44]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][28]~combout\,
	combout => \c[45]~51_combout\);

-- Location: LABCELL_X55_Y11_N6
\S~45\ : arriaii_lcell_comb
-- Equation(s):
-- \S~45_combout\ = ( \c[37]~13DUPLICATE_combout\ & ( \c[45]~51_combout\ & ( !\B[45]~input_o\ $ (!\A[45]~input_o\) ) ) ) # ( !\c[37]~13DUPLICATE_combout\ & ( \c[45]~51_combout\ & ( !\B[45]~input_o\ $ (!\A[45]~input_o\ $ 
-- (((\PrefixNetwork|Pk[4][28]~23_combout\ & \PrefixNetwork|Pk[4][44]~58_combout\)))) ) ) ) # ( \c[37]~13DUPLICATE_combout\ & ( !\c[45]~51_combout\ & ( !\B[45]~input_o\ $ (\A[45]~input_o\) ) ) ) # ( !\c[37]~13DUPLICATE_combout\ & ( !\c[45]~51_combout\ & ( 
-- !\B[45]~input_o\ $ (\A[45]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[45]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][28]~23_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][44]~58_combout\,
	datae => \ALT_INV_c[37]~13DUPLICATE_combout\,
	dataf => \ALT_INV_c[45]~51_combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: MLABCELL_X52_Y12_N32
\PrefixNetwork|Gk~157\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~157_combout\ = ( \B[44]~input_o\ & ( (!\A[44]~input_o\ & (!\A[45]~input_o\ $ (!\B[45]~input_o\))) ) ) # ( !\B[44]~input_o\ & ( (\A[44]~input_o\ & (!\A[45]~input_o\ $ (!\B[45]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_B[45]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[44]~input_o\,
	combout => \PrefixNetwork|Gk~157_combout\);

-- Location: MLABCELL_X52_Y12_N22
\PrefixNetwork|Pk[2][45]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][45]~59_combout\ = ( \PrefixNetwork|Gk~149_combout\ & ( \PrefixNetwork|Gk~157_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~157_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~149_combout\,
	combout => \PrefixNetwork|Pk[2][45]~59_combout\);

-- Location: LABCELL_X53_Y14_N24
\PrefixNetwork|Gk~158\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~158_combout\ = ( \PrefixNetwork|Pk[2][45]~59_combout\ & ( \PrefixNetwork|Pk[2][41]~51_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Pk[2][45]~59_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][41]~51_combout\,
	combout => \PrefixNetwork|Gk~158_combout\);

-- Location: MLABCELL_X57_Y13_N2
\PrefixNetwork|Pk[4][45]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][45]~60_combout\ = ( \PrefixNetwork|Pk[4][37]~41_combout\ & ( \PrefixNetwork|Gk~158_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Pk[4][37]~41_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~158_combout\,
	combout => \PrefixNetwork|Pk[4][45]~60_combout\);

-- Location: LABCELL_X55_Y8_N26
\PrefixNetwork|Gk[1][45]~159\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][45]~159_combout\ = ( \A[45]~input_o\ & ( \B[44]~input_o\ & ( (\B[45]~input_o\) # (\A[44]~input_o\) ) ) ) # ( !\A[45]~input_o\ & ( \B[44]~input_o\ & ( (\A[44]~input_o\ & \B[45]~input_o\) ) ) ) # ( \A[45]~input_o\ & ( !\B[44]~input_o\ & 
-- ( \B[45]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_B[45]~input_o\,
	datae => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_B[44]~input_o\,
	combout => \PrefixNetwork|Gk[1][45]~159_combout\);

-- Location: MLABCELL_X52_Y12_N30
\PrefixNetwork|Gk~160\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~160_combout\ = ( \PrefixNetwork|Gk~157_combout\ & ( \PrefixNetwork|Gk[1][43]~151_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][43]~151_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~157_combout\,
	combout => \PrefixNetwork|Gk~160_combout\);

-- Location: LABCELL_X53_Y12_N2
\PrefixNetwork|Gk[3][45]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][45]~combout\ = ( \PrefixNetwork|Gk~144_combout\ & ( (!\PrefixNetwork|Pk[2][45]~59_combout\ & (!\PrefixNetwork|Gk[1][45]~159_combout\ & !\PrefixNetwork|Gk~160_combout\)) ) ) # ( !\PrefixNetwork|Gk~144_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][45]~159_combout\ & (!\PrefixNetwork|Gk~160_combout\ & ((!\PrefixNetwork|Pk[2][45]~59_combout\) # (!\PrefixNetwork|Gk[1][41]~143_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][45]~59_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][45]~159_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~160_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][41]~143_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~144_combout\,
	combout => \PrefixNetwork|Gk[3][45]~combout\);

-- Location: MLABCELL_X54_Y13_N2
\c[46]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \c[46]~52_combout\ = ( \PrefixNetwork|Gk~158_combout\ & ( \PrefixNetwork|Gk[3][37]~combout\ & ( (\PrefixNetwork|Gk[3][45]~combout\ & ((!\PrefixNetwork|Pk[4][37]~41_combout\) # ((\PrefixNetwork|Gk[3][29]~combout\ & !\PrefixNetwork|Gk~95_combout\)))) ) ) ) 
-- # ( !\PrefixNetwork|Gk~158_combout\ & ( \PrefixNetwork|Gk[3][37]~combout\ & ( \PrefixNetwork|Gk[3][45]~combout\ ) ) ) # ( !\PrefixNetwork|Gk~158_combout\ & ( !\PrefixNetwork|Gk[3][37]~combout\ & ( \PrefixNetwork|Gk[3][45]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111110000000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][29]~combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[4][37]~41_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~95_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][45]~combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~158_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][37]~combout\,
	combout => \c[46]~52_combout\);

-- Location: MLABCELL_X54_Y13_N4
\S~46\ : arriaii_lcell_comb
-- Equation(s):
-- \S~46_combout\ = ( \PrefixNetwork|Pk[4][45]~60_combout\ & ( \c[46]~52_combout\ & ( !\B[46]~input_o\ $ (!\A[46]~input_o\ $ (((!c(14) & \PrefixNetwork|Pk[4][29]~25_combout\)))) ) ) ) # ( !\PrefixNetwork|Pk[4][45]~60_combout\ & ( \c[46]~52_combout\ & ( 
-- !\B[46]~input_o\ $ (!\A[46]~input_o\) ) ) ) # ( \PrefixNetwork|Pk[4][45]~60_combout\ & ( !\c[46]~52_combout\ & ( !\B[46]~input_o\ $ (\A[46]~input_o\) ) ) ) # ( !\PrefixNetwork|Pk[4][45]~60_combout\ & ( !\c[46]~52_combout\ & ( !\B[46]~input_o\ $ 
-- (\A[46]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_c(14),
	datab => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][29]~25_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][45]~60_combout\,
	dataf => \ALT_INV_c[46]~52_combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X59_Y19_N32
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LABCELL_X53_Y11_N14
\PrefixNetwork|Gk~161\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~161_combout\ = ( \B[45]~input_o\ & ( (!\A[45]~input_o\ & (!\A[46]~input_o\ $ (!\B[46]~input_o\))) ) ) # ( !\B[45]~input_o\ & ( (\A[45]~input_o\ & (!\A[46]~input_o\ $ (!\B[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	datad => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \PrefixNetwork|Gk~161_combout\);

-- Location: LABCELL_X53_Y11_N26
\PrefixNetwork|Pk[2][46]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][46]~61_combout\ = ( \PrefixNetwork|Gk~153_combout\ & ( \PrefixNetwork|Gk~161_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~161_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~153_combout\,
	combout => \PrefixNetwork|Pk[2][46]~61_combout\);

-- Location: LABCELL_X53_Y8_N6
\PrefixNetwork|Pk[4][46]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][46]~62_combout\ = ( \PrefixNetwork|Pk[2][46]~61_combout\ & ( \PrefixNetwork|Pk[2][42]~53_combout\ & ( \PrefixNetwork|Pk[4][38]~44_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[4][38]~44_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\,
	combout => \PrefixNetwork|Pk[4][46]~62_combout\);

-- Location: MLABCELL_X52_Y10_N32
\PrefixNetwork|Gk[1][46]~163\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][46]~163_combout\ = ( \B[45]~input_o\ & ( (!\A[45]~input_o\ & (\B[46]~input_o\ & \A[46]~input_o\)) # (\A[45]~input_o\ & ((\A[46]~input_o\) # (\B[46]~input_o\))) ) ) # ( !\B[45]~input_o\ & ( (\B[46]~input_o\ & \A[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \PrefixNetwork|Gk[1][46]~163_combout\);

-- Location: MLABCELL_X54_Y10_N26
\PrefixNetwork|Gk~164\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~164_combout\ = ( \PrefixNetwork|Gk~161_combout\ & ( \PrefixNetwork|Gk[1][44]~155_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Gk[1][44]~155_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~161_combout\,
	combout => \PrefixNetwork|Gk~164_combout\);

-- Location: LABCELL_X50_Y10_N30
\PrefixNetwork|Gk[3][46]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][46]~combout\ = ( \PrefixNetwork|Pk[2][46]~61_combout\ & ( !\PrefixNetwork|Gk~164_combout\ & ( (!\PrefixNetwork|Gk[1][46]~163_combout\ & (!\PrefixNetwork|Gk~148_combout\ & !\PrefixNetwork|Gk[1][42]~147_combout\)) ) ) ) # ( 
-- !\PrefixNetwork|Pk[2][46]~61_combout\ & ( !\PrefixNetwork|Gk~164_combout\ & ( !\PrefixNetwork|Gk[1][46]~163_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][46]~163_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~148_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][42]~147_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~164_combout\,
	combout => \PrefixNetwork|Gk[3][46]~combout\);

-- Location: LABCELL_X53_Y8_N22
\PrefixNetwork|Gk~162\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~162_combout\ = ( \PrefixNetwork|Pk[2][42]~53_combout\ & ( (!\PrefixNetwork|Gk[3][38]~combout\ & \PrefixNetwork|Pk[2][46]~61_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[3][38]~combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\,
	combout => \PrefixNetwork|Gk~162_combout\);

-- Location: LABCELL_X50_Y11_N14
\c[47]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \c[47]~53_combout\ = ( !\PrefixNetwork|Gk~162_combout\ & ( (\PrefixNetwork|Gk[3][46]~combout\ & ((!\PrefixNetwork|Pk[4][46]~62_combout\) # ((\PrefixNetwork|Gk[3][30]~combout\ & !\PrefixNetwork|Gk~100_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110000001100010011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][30]~combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][46]~combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][46]~62_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~100_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~162_combout\,
	combout => \c[47]~53_combout\);

-- Location: LABCELL_X50_Y11_N4
\S~47\ : arriaii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = ( \PrefixNetwork|Pk[4][46]~62_combout\ & ( \c[47]~53_combout\ & ( !\B[47]~input_o\ $ (!\A[47]~input_o\ $ (((!c(15) & \PrefixNetwork|Pk[4][30]~27_combout\)))) ) ) ) # ( !\PrefixNetwork|Pk[4][46]~62_combout\ & ( \c[47]~53_combout\ & ( 
-- !\B[47]~input_o\ $ (!\A[47]~input_o\) ) ) ) # ( \PrefixNetwork|Pk[4][46]~62_combout\ & ( !\c[47]~53_combout\ & ( !\B[47]~input_o\ $ (\A[47]~input_o\) ) ) ) # ( !\PrefixNetwork|Pk[4][46]~62_combout\ & ( !\c[47]~53_combout\ & ( !\B[47]~input_o\ $ 
-- (\A[47]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => ALT_INV_c(15),
	datad => \PrefixNetwork|ALT_INV_Pk[4][30]~27_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][46]~62_combout\,
	dataf => \ALT_INV_c[47]~53_combout\,
	combout => \S~47_combout\);

-- Location: IOIBUF_X59_Y21_N1
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X59_Y22_N32
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: MLABCELL_X57_Y12_N14
\PrefixNetwork|Gk~165\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~165_combout\ = ( \A[46]~input_o\ & ( (!\B[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) ) # ( !\A[46]~input_o\ & ( (\B[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_A[46]~input_o\,
	combout => \PrefixNetwork|Gk~165_combout\);

-- Location: MLABCELL_X57_Y12_N4
\PrefixNetwork|Pk[2][47]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][47]~63_combout\ = ( \PrefixNetwork|Gk~157_combout\ & ( \PrefixNetwork|Gk~165_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~165_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~157_combout\,
	combout => \PrefixNetwork|Pk[2][47]~63_combout\);

-- Location: LABCELL_X55_Y12_N36
\PrefixNetwork|Pk[4][47]~64DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][47]~64DUPLICATE_combout\ = ( \PrefixNetwork|Pk[2][47]~63_combout\ & ( \PrefixNetwork|Pk[4][39]~47_combout\ & ( \PrefixNetwork|Pk[2][43]~55_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][39]~47_combout\,
	combout => \PrefixNetwork|Pk[4][47]~64DUPLICATE_combout\);

-- Location: MLABCELL_X57_Y12_N18
\PrefixNetwork|Gk[1][47]~167\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][47]~167_combout\ = ( \A[46]~input_o\ & ( (!\B[46]~input_o\ & (\B[47]~input_o\ & \A[47]~input_o\)) # (\B[46]~input_o\ & ((\A[47]~input_o\) # (\B[47]~input_o\))) ) ) # ( !\A[46]~input_o\ & ( (\B[47]~input_o\ & \A[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_A[46]~input_o\,
	combout => \PrefixNetwork|Gk[1][47]~167_combout\);

-- Location: MLABCELL_X57_Y12_N0
\PrefixNetwork|Gk~168\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~168_combout\ = ( \PrefixNetwork|Gk~165_combout\ & ( \PrefixNetwork|Gk[1][45]~159_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][45]~159_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~165_combout\,
	combout => \PrefixNetwork|Gk~168_combout\);

-- Location: MLABCELL_X57_Y12_N26
\PrefixNetwork|Gk[3][47]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][47]~combout\ = ( \PrefixNetwork|Gk~152_combout\ & ( (!\PrefixNetwork|Gk[1][47]~167_combout\ & (!\PrefixNetwork|Pk[2][47]~63_combout\ & !\PrefixNetwork|Gk~168_combout\)) ) ) # ( !\PrefixNetwork|Gk~152_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][47]~167_combout\ & (!\PrefixNetwork|Gk~168_combout\ & ((!\PrefixNetwork|Gk[1][43]~151_combout\) # (!\PrefixNetwork|Pk[2][47]~63_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][47]~167_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][43]~151_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~168_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~152_combout\,
	combout => \PrefixNetwork|Gk[3][47]~combout\);

-- Location: LABCELL_X55_Y12_N32
\PrefixNetwork|Gk~166DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~166DUPLICATE_combout\ = ( \PrefixNetwork|Pk[2][47]~63_combout\ & ( !\PrefixNetwork|Gk[3][39]~combout\ & ( \PrefixNetwork|Pk[2][43]~55_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][39]~combout\,
	combout => \PrefixNetwork|Gk~166DUPLICATE_combout\);

-- Location: LABCELL_X55_Y12_N38
\PrefixNetwork|Pk[4][47]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][47]~64_combout\ = ( \PrefixNetwork|Pk[2][47]~63_combout\ & ( \PrefixNetwork|Pk[4][39]~47_combout\ & ( \PrefixNetwork|Pk[2][43]~55_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][39]~47_combout\,
	combout => \PrefixNetwork|Pk[4][47]~64_combout\);

-- Location: LABCELL_X55_Y12_N16
\c[48]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \c[48]~54_combout\ = ( \PrefixNetwork|Pk[4][47]~64_combout\ & ( (\PrefixNetwork|Gk[3][31]~combout\ & (\PrefixNetwork|Gk[3][47]~combout\ & (!\PrefixNetwork|Gk~166DUPLICATE_combout\ & !\PrefixNetwork|Gk~104_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[4][47]~64_combout\ & ( (\PrefixNetwork|Gk[3][47]~combout\ & !\PrefixNetwork|Gk~166DUPLICATE_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][31]~combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][47]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~166DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~104_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][47]~64_combout\,
	combout => \c[48]~54_combout\);

-- Location: LABCELL_X55_Y12_N4
\S~48\ : arriaii_lcell_comb
-- Equation(s):
-- \S~48_combout\ = ( \PrefixNetwork|Pk[4][31]~29_combout\ & ( \c[48]~54_combout\ & ( !\B[48]~input_o\ $ (!\A[48]~input_o\ $ (((!c(16) & \PrefixNetwork|Pk[4][47]~64DUPLICATE_combout\)))) ) ) ) # ( !\PrefixNetwork|Pk[4][31]~29_combout\ & ( \c[48]~54_combout\ 
-- & ( !\B[48]~input_o\ $ (!\A[48]~input_o\) ) ) ) # ( \PrefixNetwork|Pk[4][31]~29_combout\ & ( !\c[48]~54_combout\ & ( !\B[48]~input_o\ $ (\A[48]~input_o\) ) ) ) # ( !\PrefixNetwork|Pk[4][31]~29_combout\ & ( !\c[48]~54_combout\ & ( !\B[48]~input_o\ $ 
-- (\A[48]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => ALT_INV_c(16),
	datad => \PrefixNetwork|ALT_INV_Pk[4][47]~64DUPLICATE_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][31]~29_combout\,
	dataf => \ALT_INV_c[48]~54_combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X59_Y21_N32
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X59_Y21_N63
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LABCELL_X55_Y14_N24
\PrefixNetwork|Gk~169\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~169_combout\ = ( \B[47]~input_o\ & ( (!\A[47]~input_o\ & (!\A[48]~input_o\ $ (!\B[48]~input_o\))) ) ) # ( !\B[47]~input_o\ & ( (\A[47]~input_o\ & (!\A[48]~input_o\ $ (!\B[48]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_B[47]~input_o\,
	combout => \PrefixNetwork|Gk~169_combout\);

-- Location: MLABCELL_X54_Y11_N38
\PrefixNetwork|Pk[2][48]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][48]~65_combout\ = ( \PrefixNetwork|Gk~169_combout\ & ( \PrefixNetwork|Gk~161_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~161_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~169_combout\,
	combout => \PrefixNetwork|Pk[2][48]~65_combout\);

-- Location: LABCELL_X53_Y11_N22
\c[49]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \c[49]~55_combout\ = ( \PrefixNetwork|Pk[2][48]~65_combout\ & ( \PrefixNetwork|Gk~154_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~154_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][48]~65_combout\,
	combout => \c[49]~55_combout\);

-- Location: LABCELL_X55_Y14_N12
\PrefixNetwork|Gk[1][48]~170\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][48]~170_combout\ = ( \B[47]~input_o\ & ( (!\A[47]~input_o\ & (\A[48]~input_o\ & \B[48]~input_o\)) # (\A[47]~input_o\ & ((\B[48]~input_o\) # (\A[48]~input_o\))) ) ) # ( !\B[47]~input_o\ & ( (\A[48]~input_o\ & \B[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_B[47]~input_o\,
	combout => \PrefixNetwork|Gk[1][48]~170_combout\);

-- Location: LABCELL_X55_Y14_N18
\PrefixNetwork|Gk~171\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~171_combout\ = ( \PrefixNetwork|Gk~169_combout\ & ( \PrefixNetwork|Gk[1][46]~163_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][46]~163_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~169_combout\,
	combout => \PrefixNetwork|Gk~171_combout\);

-- Location: MLABCELL_X54_Y11_N2
\PrefixNetwork|Gk[3][48]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][48]~combout\ = ( \PrefixNetwork|Pk[2][48]~65_combout\ & ( (!\PrefixNetwork|Gk[1][44]~155_combout\ & (!\PrefixNetwork|Gk[1][48]~170_combout\ & (!\PrefixNetwork|Gk~156_combout\ & !\PrefixNetwork|Gk~171_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][48]~65_combout\ & ( (!\PrefixNetwork|Gk[1][48]~170_combout\ & !\PrefixNetwork|Gk~171_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][44]~155_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][48]~170_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~156_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~171_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][48]~65_combout\,
	combout => \PrefixNetwork|Gk[3][48]~combout\);

-- Location: MLABCELL_X54_Y12_N36
\c[49]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \c[49]~58_combout\ = ( \PrefixNetwork|Gk[3][48]~combout\ & ( (!\c[49]~55_combout\) # ((!\PrefixNetwork|Gk~138_combout\ & ((!\PrefixNetwork|Pk[2][36]~38_combout\) # (!\PrefixNetwork|Gk~108_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111110001111101011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~138_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][36]~38_combout\,
	datac => \ALT_INV_c[49]~55_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~108_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][48]~combout\,
	combout => \c[49]~58_combout\);

-- Location: LABCELL_X53_Y11_N12
\c[49]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \c[49]~57_combout\ = ( !\PrefixNetwork|Gk[3][40]~combout\ & ( (\PrefixNetwork|Pk[2][48]~65_combout\ & \PrefixNetwork|Pk[2][44]~57_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][48]~65_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][44]~57_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][40]~combout\,
	combout => \c[49]~57_combout\);

-- Location: MLABCELL_X54_Y12_N20
\c[49]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \c[49]~56_combout\ = ( \c[49]~55_combout\ & ( (\PrefixNetwork|Pk[2][36]~38_combout\ & (\PrefixNetwork|Pk[4][32]~31_combout\ & !\c[17]~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][36]~38_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][32]~31_combout\,
	datad => \ALT_INV_c[17]~17_combout\,
	dataf => \ALT_INV_c[49]~55_combout\,
	combout => \c[49]~56_combout\);

-- Location: MLABCELL_X54_Y12_N18
\S~49\ : arriaii_lcell_comb
-- Equation(s):
-- \S~49_combout\ = ( \c[49]~56_combout\ & ( !\B[49]~input_o\ $ (\A[49]~input_o\) ) ) # ( !\c[49]~56_combout\ & ( !\B[49]~input_o\ $ (!\A[49]~input_o\ $ (((!\c[49]~58_combout\) # (\c[49]~57_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010011001100101101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datab => \ALT_INV_A[49]~input_o\,
	datac => \ALT_INV_c[49]~58_combout\,
	datad => \ALT_INV_c[49]~57_combout\,
	dataf => \ALT_INV_c[49]~56_combout\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X59_Y15_N94
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X59_Y22_N94
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LABCELL_X58_Y21_N34
\PrefixNetwork|Gk~172\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~172_combout\ = ( \B[49]~input_o\ & ( \A[48]~input_o\ & ( (!\B[48]~input_o\ & !\A[49]~input_o\) ) ) ) # ( !\B[49]~input_o\ & ( \A[48]~input_o\ & ( (!\B[48]~input_o\ & \A[49]~input_o\) ) ) ) # ( \B[49]~input_o\ & ( !\A[48]~input_o\ & ( 
-- (\B[48]~input_o\ & !\A[49]~input_o\) ) ) ) # ( !\B[49]~input_o\ & ( !\A[48]~input_o\ & ( (\B[48]~input_o\ & \A[49]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	datae => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \PrefixNetwork|Gk~172_combout\);

-- Location: MLABCELL_X57_Y12_N34
\PrefixNetwork|Pk[2][49]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][49]~66_combout\ = ( \PrefixNetwork|Gk~172_combout\ & ( \PrefixNetwork|Gk~165_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~165_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~172_combout\,
	combout => \PrefixNetwork|Pk[2][49]~66_combout\);

-- Location: LABCELL_X58_Y21_N14
\PrefixNetwork|Gk[1][49]~173\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][49]~173_combout\ = ( \B[49]~input_o\ & ( \A[48]~input_o\ & ( (\A[49]~input_o\) # (\B[48]~input_o\) ) ) ) # ( !\B[49]~input_o\ & ( \A[48]~input_o\ & ( (\B[48]~input_o\ & \A[49]~input_o\) ) ) ) # ( \B[49]~input_o\ & ( !\A[48]~input_o\ & 
-- ( \A[49]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	datae => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \PrefixNetwork|Gk[1][49]~173_combout\);

-- Location: LABCELL_X58_Y13_N30
\PrefixNetwork|Gk~174\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~174_combout\ = ( \PrefixNetwork|Gk[1][47]~167_combout\ & ( \PrefixNetwork|Gk~172_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~172_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][47]~167_combout\,
	combout => \PrefixNetwork|Gk~174_combout\);

-- Location: LABCELL_X53_Y13_N34
\PrefixNetwork|Gk[3][49]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][49]~combout\ = ( \PrefixNetwork|Gk~160_combout\ & ( (!\PrefixNetwork|Pk[2][49]~66_combout\ & (!\PrefixNetwork|Gk[1][49]~173_combout\ & !\PrefixNetwork|Gk~174_combout\)) ) ) # ( !\PrefixNetwork|Gk~160_combout\ & ( 
-- (!\PrefixNetwork|Gk[1][49]~173_combout\ & (!\PrefixNetwork|Gk~174_combout\ & ((!\PrefixNetwork|Pk[2][49]~66_combout\) # (!\PrefixNetwork|Gk[1][45]~159_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][49]~66_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][49]~173_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~174_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][45]~159_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~160_combout\,
	combout => \PrefixNetwork|Gk[3][49]~combout\);

-- Location: MLABCELL_X54_Y13_N8
\c[50]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \c[50]~59_combout\ = ( \PrefixNetwork|Gk~158_combout\ & ( \PrefixNetwork|Pk[2][49]~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][49]~66_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~158_combout\,
	combout => \c[50]~59_combout\);

-- Location: LABCELL_X53_Y13_N24
\c[50]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \c[50]~62_combout\ = ( \c[50]~59_combout\ & ( (!\PrefixNetwork|Gk~142_combout\ & (\PrefixNetwork|Gk[3][49]~combout\ & ((!\PrefixNetwork|Pk[2][37]~40_combout\) # (!\PrefixNetwork|Gk~112_combout\)))) ) ) # ( !\c[50]~59_combout\ & ( 
-- \PrefixNetwork|Gk[3][49]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000101010000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~142_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][37]~40_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~112_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][49]~combout\,
	dataf => \ALT_INV_c[50]~59_combout\,
	combout => \c[50]~62_combout\);

-- Location: MLABCELL_X52_Y12_N38
\c[50]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \c[50]~61_combout\ = ( !\PrefixNetwork|Gk[3][41]~combout\ & ( (\PrefixNetwork|Pk[2][45]~59_combout\ & \PrefixNetwork|Pk[2][49]~66_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][45]~59_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][49]~66_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][41]~combout\,
	combout => \c[50]~61_combout\);

-- Location: LABCELL_X53_Y13_N2
\c[50]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \c[50]~60_combout\ = ( \c[50]~59_combout\ & ( (\PrefixNetwork|Pk[4][33]~33_combout\ & (\PrefixNetwork|Pk[2][37]~40_combout\ & (!\c[18]~18_combout\ & \PrefixNetwork|Gk~76_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[4][33]~33_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][37]~40_combout\,
	datac => \ALT_INV_c[18]~18_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~76_combout\,
	dataf => \ALT_INV_c[50]~59_combout\,
	combout => \c[50]~60_combout\);

-- Location: LABCELL_X53_Y13_N36
\S~50\ : arriaii_lcell_comb
-- Equation(s):
-- \S~50_combout\ = ( \c[50]~60_combout\ & ( !\A[50]~input_o\ $ (\B[50]~input_o\) ) ) # ( !\c[50]~60_combout\ & ( !\A[50]~input_o\ $ (!\B[50]~input_o\ $ (((!\c[50]~62_combout\) # (\c[50]~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010011001100101101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_B[50]~input_o\,
	datac => \ALT_INV_c[50]~62_combout\,
	datad => \ALT_INV_c[50]~61_combout\,
	dataf => \ALT_INV_c[50]~60_combout\,
	combout => \S~50_combout\);

-- Location: IOIBUF_X59_Y22_N1
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X59_Y26_N1
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LABCELL_X55_Y14_N30
\PrefixNetwork|Gk~175\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~175_combout\ = ( !\B[49]~input_o\ & ( \A[49]~input_o\ & ( !\A[50]~input_o\ $ (!\B[50]~input_o\) ) ) ) # ( \B[49]~input_o\ & ( !\A[49]~input_o\ & ( !\A[50]~input_o\ $ (!\B[50]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[50]~input_o\,
	datae => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \PrefixNetwork|Gk~175_combout\);

-- Location: LABCELL_X55_Y14_N34
\PrefixNetwork|Pk[2][50]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][50]~67_combout\ = ( \PrefixNetwork|Gk~169_combout\ & ( \PrefixNetwork|Gk~175_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~175_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~169_combout\,
	combout => \PrefixNetwork|Pk[2][50]~67_combout\);

-- Location: MLABCELL_X52_Y10_N4
\c[51]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \c[51]~63_combout\ = ( \PrefixNetwork|Pk[2][50]~67_combout\ & ( (\PrefixNetwork|Pk[2][46]~61_combout\ & (\PrefixNetwork|Pk[2][38]~43_combout\ & \PrefixNetwork|Pk[2][42]~53_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][38]~43_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][50]~67_combout\,
	combout => \c[51]~63_combout\);

-- Location: LABCELL_X58_Y18_N32
\PrefixNetwork|Gk[1][50]~176\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][50]~176_combout\ = ( \A[49]~input_o\ & ( \A[50]~input_o\ & ( (\B[49]~input_o\) # (\B[50]~input_o\) ) ) ) # ( !\A[49]~input_o\ & ( \A[50]~input_o\ & ( \B[50]~input_o\ ) ) ) # ( \A[49]~input_o\ & ( !\A[50]~input_o\ & ( (\B[50]~input_o\ 
-- & \B[49]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \PrefixNetwork|Gk[1][50]~176_combout\);

-- Location: LABCELL_X55_Y14_N28
\PrefixNetwork|Gk~175DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~175DUPLICATE_combout\ = ( !\B[49]~input_o\ & ( \A[49]~input_o\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\) ) ) ) # ( \B[49]~input_o\ & ( !\A[49]~input_o\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_A[50]~input_o\,
	datae => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \PrefixNetwork|Gk~175DUPLICATE_combout\);

-- Location: LABCELL_X50_Y10_N2
\PrefixNetwork|Gk~177\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~177_combout\ = ( \PrefixNetwork|Gk~175DUPLICATE_combout\ & ( \PrefixNetwork|Gk[1][48]~170_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~175DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][48]~170_combout\,
	combout => \PrefixNetwork|Gk~177_combout\);

-- Location: MLABCELL_X52_Y10_N24
\PrefixNetwork|Gk[3][50]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][50]~combout\ = ( !\PrefixNetwork|Gk~177_combout\ & ( \PrefixNetwork|Pk[2][50]~67_combout\ & ( (!\PrefixNetwork|Gk[1][46]~163_combout\ & (!\PrefixNetwork|Gk~164_combout\ & !\PrefixNetwork|Gk[1][50]~176_combout\)) ) ) ) # ( 
-- !\PrefixNetwork|Gk~177_combout\ & ( !\PrefixNetwork|Pk[2][50]~67_combout\ & ( !\PrefixNetwork|Gk[1][50]~176_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][46]~163_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~164_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][50]~176_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~177_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][50]~67_combout\,
	combout => \PrefixNetwork|Gk[3][50]~combout\);

-- Location: MLABCELL_X52_Y10_N18
\c[51]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \c[51]~64_combout\ = ( \PrefixNetwork|Gk[3][50]~combout\ & ( (!\PrefixNetwork|Pk[2][46]~61_combout\) # ((!\PrefixNetwork|Pk[2][50]~67_combout\) # (\PrefixNetwork|Gk[3][42]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][50]~67_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][42]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][50]~combout\,
	combout => \c[51]~64_combout\);

-- Location: MLABCELL_X52_Y10_N6
\c[51]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \c[51]~65_combout\ = ( \PrefixNetwork|Gk[3][34]~combout\ & ( (\c[51]~64_combout\ & ((!\c[51]~63_combout\) # (!\PrefixNetwork|Gk~118_combout\))) ) ) # ( !\PrefixNetwork|Gk[3][34]~combout\ & ( (!\c[51]~63_combout\ & \c[51]~64_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[51]~63_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~118_combout\,
	datad => \ALT_INV_c[51]~64_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][34]~combout\,
	combout => \c[51]~65_combout\);

-- Location: MLABCELL_X52_Y10_N36
\S~51\ : arriaii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = ( \PrefixNetwork|Pk[4][34]~35_combout\ & ( \c[51]~65_combout\ & ( !\A[51]~input_o\ $ (!\B[51]~input_o\ $ (((!\c[19]~20_combout\ & \c[51]~63_combout\)))) ) ) ) # ( !\PrefixNetwork|Pk[4][34]~35_combout\ & ( \c[51]~65_combout\ & ( 
-- !\A[51]~input_o\ $ (!\B[51]~input_o\) ) ) ) # ( \PrefixNetwork|Pk[4][34]~35_combout\ & ( !\c[51]~65_combout\ & ( !\A[51]~input_o\ $ (\B[51]~input_o\) ) ) ) # ( !\PrefixNetwork|Pk[4][34]~35_combout\ & ( !\c[51]~65_combout\ & ( !\A[51]~input_o\ $ 
-- (\B[51]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_c[19]~20_combout\,
	datad => \ALT_INV_c[51]~63_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][34]~35_combout\,
	dataf => \ALT_INV_c[51]~65_combout\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X59_Y28_N32
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X59_Y22_N63
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: MLABCELL_X54_Y14_N16
\PrefixNetwork|Gk~178\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~178_combout\ = ( !\A[51]~input_o\ & ( \B[51]~input_o\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\) ) ) ) # ( \A[51]~input_o\ & ( !\B[51]~input_o\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_A[50]~input_o\,
	datae => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_B[51]~input_o\,
	combout => \PrefixNetwork|Gk~178_combout\);

-- Location: MLABCELL_X54_Y16_N32
\PrefixNetwork|Pk[2][51]~68DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][51]~68DUPLICATE_combout\ = ( \PrefixNetwork|Gk~178_combout\ & ( \PrefixNetwork|Gk~172_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~178_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~172_combout\,
	combout => \PrefixNetwork|Pk[2][51]~68DUPLICATE_combout\);

-- Location: LABCELL_X53_Y16_N38
\c[52]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \c[52]~66_combout\ = ( \PrefixNetwork|Pk[2][47]~63_combout\ & ( \PrefixNetwork|Pk[2][39]~46_combout\ & ( (\PrefixNetwork|Pk[2][43]~55_combout\ & \PrefixNetwork|Pk[2][51]~68DUPLICATE_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][51]~68DUPLICATE_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][39]~46_combout\,
	combout => \c[52]~66_combout\);

-- Location: LABCELL_X55_Y14_N26
\PrefixNetwork|Gk[1][51]~179\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][51]~179_combout\ = ( \B[51]~input_o\ & ( ((\B[50]~input_o\ & \A[50]~input_o\)) # (\A[51]~input_o\) ) ) # ( !\B[51]~input_o\ & ( (\B[50]~input_o\ & (\A[50]~input_o\ & \A[51]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[50]~input_o\,
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_B[51]~input_o\,
	combout => \PrefixNetwork|Gk[1][51]~179_combout\);

-- Location: MLABCELL_X54_Y16_N0
\PrefixNetwork|Gk~180\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~180_combout\ = ( \PrefixNetwork|Gk[1][49]~173_combout\ & ( \PrefixNetwork|Gk~178_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~178_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][49]~173_combout\,
	combout => \PrefixNetwork|Gk~180_combout\);

-- Location: MLABCELL_X57_Y12_N8
\PrefixNetwork|Gk[3][51]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][51]~combout\ = ( \PrefixNetwork|Pk[2][51]~68DUPLICATE_combout\ & ( (!\PrefixNetwork|Gk[1][47]~167_combout\ & (!\PrefixNetwork|Gk[1][51]~179_combout\ & (!\PrefixNetwork|Gk~180_combout\ & !\PrefixNetwork|Gk~168_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][51]~68DUPLICATE_combout\ & ( (!\PrefixNetwork|Gk[1][51]~179_combout\ & !\PrefixNetwork|Gk~180_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][47]~167_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][51]~179_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~180_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~168_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][51]~68DUPLICATE_combout\,
	combout => \PrefixNetwork|Gk[3][51]~combout\);

-- Location: MLABCELL_X57_Y12_N12
\c[52]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \c[52]~67_combout\ = ( \PrefixNetwork|Gk[3][43]~combout\ & ( \PrefixNetwork|Gk[3][51]~combout\ ) ) # ( !\PrefixNetwork|Gk[3][43]~combout\ & ( (\PrefixNetwork|Gk[3][51]~combout\ & ((!\PrefixNetwork|Pk[2][51]~68DUPLICATE_combout\) # 
-- (!\PrefixNetwork|Pk[2][47]~63_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][51]~68DUPLICATE_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][51]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][43]~combout\,
	combout => \c[52]~67_combout\);

-- Location: MLABCELL_X57_Y12_N16
\c[52]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \c[52]~68_combout\ = ( \c[52]~66_combout\ & ( (\PrefixNetwork|Gk[3][35]~combout\ & (!\PrefixNetwork|Gk~120_combout\ & \c[52]~67_combout\)) ) ) # ( !\c[52]~66_combout\ & ( \c[52]~67_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[3][35]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~120_combout\,
	datad => \ALT_INV_c[52]~67_combout\,
	dataf => \ALT_INV_c[52]~66_combout\,
	combout => \c[52]~68_combout\);

-- Location: MLABCELL_X57_Y16_N32
\S~52\ : arriaii_lcell_comb
-- Equation(s):
-- \S~52_combout\ = ( \c[52]~66_combout\ & ( \c[52]~68_combout\ & ( !\B[52]~input_o\ $ (!\A[52]~input_o\ $ (((\PrefixNetwork|Pk[4][35]~37_combout\ & !\c[20]~21_combout\)))) ) ) ) # ( !\c[52]~66_combout\ & ( \c[52]~68_combout\ & ( !\B[52]~input_o\ $ 
-- (!\A[52]~input_o\) ) ) ) # ( \c[52]~66_combout\ & ( !\c[52]~68_combout\ & ( !\B[52]~input_o\ $ (\A[52]~input_o\) ) ) ) # ( !\c[52]~66_combout\ & ( !\c[52]~68_combout\ & ( !\B[52]~input_o\ $ (\A[52]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][35]~37_combout\,
	datad => \ALT_INV_c[20]~21_combout\,
	datae => \ALT_INV_c[52]~66_combout\,
	dataf => \ALT_INV_c[52]~68_combout\,
	combout => \S~52_combout\);

-- Location: IOIBUF_X59_Y39_N94
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X59_Y30_N63
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LABCELL_X55_Y14_N16
\PrefixNetwork|Pk[2][52]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][52]~69_combout\ = ( \PrefixNetwork|Gk~175DUPLICATE_combout\ & ( (!\B[52]~input_o\ & (\A[52]~input_o\ & (!\B[51]~input_o\ $ (!\A[51]~input_o\)))) # (\B[52]~input_o\ & (!\A[52]~input_o\ & (!\B[51]~input_o\ $ (!\A[51]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~175DUPLICATE_combout\,
	combout => \PrefixNetwork|Pk[2][52]~69_combout\);

-- Location: MLABCELL_X54_Y11_N34
\c[57]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \c[57]~69_combout\ = ( \PrefixNetwork|Pk[2][48]~65_combout\ & ( (\PrefixNetwork|Pk[2][52]~69_combout\ & \PrefixNetwork|Gk~154_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][52]~69_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~154_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][48]~65_combout\,
	combout => \c[57]~69_combout\);

-- Location: MLABCELL_X54_Y11_N12
\c[53]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \c[53]~70_combout\ = ( \c[57]~69_combout\ & ( (\PrefixNetwork|Gk~89_combout\ & \PrefixNetwork|Pk[4][36]~39_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~89_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][36]~39_combout\,
	dataf => \ALT_INV_c[57]~69_combout\,
	combout => \c[53]~70_combout\);

-- Location: LABCELL_X55_Y11_N20
\c[53]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \c[53]~71_combout\ = ( !\PrefixNetwork|Gk[3][44]~combout\ & ( (\PrefixNetwork|Pk[2][52]~69_combout\ & \PrefixNetwork|Pk[2][48]~65_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][52]~69_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][48]~65_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][44]~combout\,
	combout => \c[53]~71_combout\);

-- Location: LABCELL_X55_Y14_N14
\PrefixNetwork|Gk[1][52]~181\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][52]~181_combout\ = ( \A[52]~input_o\ & ( ((\B[51]~input_o\ & \A[51]~input_o\)) # (\B[52]~input_o\) ) ) # ( !\A[52]~input_o\ & ( (\B[51]~input_o\ & (\B[52]~input_o\ & \A[51]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \PrefixNetwork|Gk[1][52]~181_combout\);

-- Location: LABCELL_X55_Y14_N32
\PrefixNetwork|Gk~182\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~182_combout\ = ( \B[52]~input_o\ & ( (!\A[52]~input_o\ & (\PrefixNetwork|Gk[1][50]~176_combout\ & (!\B[51]~input_o\ $ (!\A[51]~input_o\)))) ) ) # ( !\B[52]~input_o\ & ( (\A[52]~input_o\ & (\PrefixNetwork|Gk[1][50]~176_combout\ & 
-- (!\B[51]~input_o\ $ (!\A[51]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000000010000010000000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][50]~176_combout\,
	datad => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_B[52]~input_o\,
	combout => \PrefixNetwork|Gk~182_combout\);

-- Location: LABCELL_X55_Y14_N6
\PrefixNetwork|Gk[3][52]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][52]~combout\ = ( !\PrefixNetwork|Gk~182_combout\ & ( (!\PrefixNetwork|Gk[1][52]~181_combout\ & ((!\PrefixNetwork|Pk[2][52]~69_combout\) # ((!\PrefixNetwork|Gk[1][48]~170_combout\ & !\PrefixNetwork|Gk~171_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011000000110010001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][48]~170_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][52]~181_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][52]~69_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~171_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~182_combout\,
	combout => \PrefixNetwork|Gk[3][52]~combout\);

-- Location: MLABCELL_X54_Y12_N32
\c[53]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \c[53]~72_combout\ = ( \c[57]~69_combout\ & ( \PrefixNetwork|Gk[3][28]~combout\ & ( (\PrefixNetwork|Gk[3][36]~combout\ & \PrefixNetwork|Gk[3][52]~combout\) ) ) ) # ( !\c[57]~69_combout\ & ( \PrefixNetwork|Gk[3][28]~combout\ & ( 
-- \PrefixNetwork|Gk[3][52]~combout\ ) ) ) # ( \c[57]~69_combout\ & ( !\PrefixNetwork|Gk[3][28]~combout\ & ( (\PrefixNetwork|Gk[3][36]~combout\ & (!\PrefixNetwork|Pk[4][36]~39_combout\ & \PrefixNetwork|Gk[3][52]~combout\)) ) ) ) # ( !\c[57]~69_combout\ & ( 
-- !\PrefixNetwork|Gk[3][28]~combout\ & ( \PrefixNetwork|Gk[3][52]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000011000000000000111111110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[3][36]~combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][36]~39_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][52]~combout\,
	datae => \ALT_INV_c[57]~69_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][28]~combout\,
	combout => \c[53]~72_combout\);

-- Location: MLABCELL_X54_Y12_N14
\S~53\ : arriaii_lcell_comb
-- Equation(s):
-- \S~53_combout\ = ( \c[53]~71_combout\ & ( \c[53]~72_combout\ & ( !\B[53]~input_o\ $ (\A[53]~input_o\) ) ) ) # ( !\c[53]~71_combout\ & ( \c[53]~72_combout\ & ( !\B[53]~input_o\ $ (!\A[53]~input_o\ $ (((\c[53]~70_combout\ & !\c[21]~23_combout\)))) ) ) ) # ( 
-- \c[53]~71_combout\ & ( !\c[53]~72_combout\ & ( !\B[53]~input_o\ $ (\A[53]~input_o\) ) ) ) # ( !\c[53]~71_combout\ & ( !\c[53]~72_combout\ & ( !\B[53]~input_o\ $ (\A[53]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101101001011001101001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[53]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_c[53]~70_combout\,
	datad => \ALT_INV_c[21]~23_combout\,
	datae => \ALT_INV_c[53]~71_combout\,
	dataf => \ALT_INV_c[53]~72_combout\,
	combout => \S~53_combout\);

-- Location: IOIBUF_X59_Y31_N1
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: MLABCELL_X54_Y14_N36
\PrefixNetwork|Pk[2][53]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][53]~70_combout\ = ( \B[52]~input_o\ & ( \B[53]~input_o\ & ( (!\A[53]~input_o\ & (!\A[52]~input_o\ & \PrefixNetwork|Gk~178_combout\)) ) ) ) # ( !\B[52]~input_o\ & ( \B[53]~input_o\ & ( (!\A[53]~input_o\ & (\A[52]~input_o\ & 
-- \PrefixNetwork|Gk~178_combout\)) ) ) ) # ( \B[52]~input_o\ & ( !\B[53]~input_o\ & ( (\A[53]~input_o\ & (!\A[52]~input_o\ & \PrefixNetwork|Gk~178_combout\)) ) ) ) # ( !\B[52]~input_o\ & ( !\B[53]~input_o\ & ( (\A[53]~input_o\ & (\A[52]~input_o\ & 
-- \PrefixNetwork|Gk~178_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000101000000000000000010100000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \PrefixNetwork|ALT_INV_Gk~178_combout\,
	datae => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_B[53]~input_o\,
	combout => \PrefixNetwork|Pk[2][53]~70_combout\);

-- Location: MLABCELL_X54_Y14_N2
\c[58]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \c[58]~73_combout\ = ( \PrefixNetwork|Pk[2][49]~66_combout\ & ( \PrefixNetwork|Gk~158_combout\ & ( \PrefixNetwork|Pk[2][53]~70_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][53]~70_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][49]~66_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~158_combout\,
	combout => \c[58]~73_combout\);

-- Location: LABCELL_X55_Y15_N16
\PrefixNetwork|Gk[1][53]~183\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][53]~183_combout\ = ( \A[52]~input_o\ & ( \B[52]~input_o\ & ( (\A[53]~input_o\) # (\B[53]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( \B[52]~input_o\ & ( (\B[53]~input_o\ & \A[53]~input_o\) ) ) ) # ( \A[52]~input_o\ & ( !\B[52]~input_o\ & 
-- ( (\B[53]~input_o\ & \A[53]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( !\B[52]~input_o\ & ( (\B[53]~input_o\ & \A[53]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_B[52]~input_o\,
	combout => \PrefixNetwork|Gk[1][53]~183_combout\);

-- Location: LABCELL_X58_Y13_N2
\PrefixNetwork|Gk~184\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~184_combout\ = ( \PrefixNetwork|Gk[1][51]~179_combout\ & ( (!\A[52]~input_o\ & (\B[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) # (\A[52]~input_o\ & (!\B[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][51]~179_combout\,
	combout => \PrefixNetwork|Gk~184_combout\);

-- Location: LABCELL_X58_Y13_N4
\PrefixNetwork|Gk[3][53]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][53]~combout\ = ( \PrefixNetwork|Pk[2][53]~70_combout\ & ( (!\PrefixNetwork|Gk[1][53]~183_combout\ & (!\PrefixNetwork|Gk[1][49]~173_combout\ & (!\PrefixNetwork|Gk~184_combout\ & !\PrefixNetwork|Gk~174_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][53]~70_combout\ & ( (!\PrefixNetwork|Gk[1][53]~183_combout\ & !\PrefixNetwork|Gk~184_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][53]~183_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][49]~173_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~184_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~174_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][53]~70_combout\,
	combout => \PrefixNetwork|Gk[3][53]~combout\);

-- Location: LABCELL_X58_Y13_N36
\c[54]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \c[54]~74_combout\ = ( !\PrefixNetwork|Gk[3][45]~combout\ & ( (\PrefixNetwork|Pk[2][53]~70_combout\ & \PrefixNetwork|Pk[2][49]~66_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][53]~70_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][49]~66_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][45]~combout\,
	combout => \c[54]~74_combout\);

-- Location: LABCELL_X58_Y13_N10
\c[54]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \c[54]~75_combout\ = ( !\c[54]~74_combout\ & ( \c[58]~73_combout\ & ( (\PrefixNetwork|Gk[3][53]~combout\ & (!\PrefixNetwork|Gk~129_combout\ & \PrefixNetwork|Gk[3][37]~combout\)) ) ) ) # ( !\c[54]~74_combout\ & ( !\c[58]~73_combout\ & ( 
-- \PrefixNetwork|Gk[3][53]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][53]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~129_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][37]~combout\,
	datae => \ALT_INV_c[54]~74_combout\,
	dataf => \ALT_INV_c[58]~73_combout\,
	combout => \c[54]~75_combout\);

-- Location: LABCELL_X58_Y13_N22
\S~54\ : arriaii_lcell_comb
-- Equation(s):
-- \S~54_combout\ = ( \c[58]~73_combout\ & ( \c[54]~75_combout\ & ( !\B[54]~input_o\ $ (!\A[54]~input_o\ $ (((!\c[22]~25_combout\ & \PrefixNetwork|Pk[4][37]~42_combout\)))) ) ) ) # ( !\c[58]~73_combout\ & ( \c[54]~75_combout\ & ( !\B[54]~input_o\ $ 
-- (!\A[54]~input_o\) ) ) ) # ( \c[58]~73_combout\ & ( !\c[54]~75_combout\ & ( !\B[54]~input_o\ $ (\A[54]~input_o\) ) ) ) # ( !\c[58]~73_combout\ & ( !\c[54]~75_combout\ & ( !\B[54]~input_o\ $ (\A[54]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[54]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_c[22]~25_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][37]~42_combout\,
	datae => \ALT_INV_c[58]~73_combout\,
	dataf => \ALT_INV_c[54]~75_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X59_Y36_N32
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X59_Y28_N63
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LABCELL_X55_Y14_N2
\PrefixNetwork|Gk~185DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~185DUPLICATE_combout\ = ( \A[54]~input_o\ & ( \A[53]~input_o\ & ( (!\B[53]~input_o\ & !\B[54]~input_o\) ) ) ) # ( !\A[54]~input_o\ & ( \A[53]~input_o\ & ( (!\B[53]~input_o\ & \B[54]~input_o\) ) ) ) # ( \A[54]~input_o\ & ( 
-- !\A[53]~input_o\ & ( (\B[53]~input_o\ & !\B[54]~input_o\) ) ) ) # ( !\A[54]~input_o\ & ( !\A[53]~input_o\ & ( (\B[53]~input_o\ & \B[54]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_B[54]~input_o\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \PrefixNetwork|Gk~185DUPLICATE_combout\);

-- Location: LABCELL_X55_Y14_N20
\PrefixNetwork|Pk[2][54]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][54]~71_combout\ = ( \A[51]~input_o\ & ( \PrefixNetwork|Gk~185DUPLICATE_combout\ & ( (!\B[51]~input_o\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) ) ) # ( !\A[51]~input_o\ & ( \PrefixNetwork|Gk~185DUPLICATE_combout\ & ( 
-- (\B[51]~input_o\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011001100000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	datae => \ALT_INV_A[51]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~185DUPLICATE_combout\,
	combout => \PrefixNetwork|Pk[2][54]~71_combout\);

-- Location: LABCELL_X55_Y14_N0
\PrefixNetwork|Gk~185\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~185_combout\ = ( \A[54]~input_o\ & ( \A[53]~input_o\ & ( (!\B[54]~input_o\ & !\B[53]~input_o\) ) ) ) # ( !\A[54]~input_o\ & ( \A[53]~input_o\ & ( (\B[54]~input_o\ & !\B[53]~input_o\) ) ) ) # ( \A[54]~input_o\ & ( !\A[53]~input_o\ & ( 
-- (!\B[54]~input_o\ & \B[53]~input_o\) ) ) ) # ( !\A[54]~input_o\ & ( !\A[53]~input_o\ & ( (\B[54]~input_o\ & \B[53]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \PrefixNetwork|Gk~185_combout\);

-- Location: LABCELL_X55_Y15_N22
\PrefixNetwork|Gk[1][54]~186\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][54]~186_combout\ = ( \A[54]~input_o\ & ( \B[54]~input_o\ ) ) # ( !\A[54]~input_o\ & ( \B[54]~input_o\ & ( (\A[53]~input_o\ & \B[53]~input_o\) ) ) ) # ( \A[54]~input_o\ & ( !\B[54]~input_o\ & ( (\A[53]~input_o\ & \B[53]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \PrefixNetwork|Gk[1][54]~186_combout\);

-- Location: LABCELL_X50_Y10_N8
\PrefixNetwork|Gk[3][54]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][54]~combout\ = ( !\PrefixNetwork|Gk[1][54]~186_combout\ & ( \PrefixNetwork|Gk~177_combout\ & ( (!\PrefixNetwork|Pk[2][54]~71_combout\ & ((!\PrefixNetwork|Gk[1][52]~181_combout\) # (!\PrefixNetwork|Gk~185_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Gk[1][54]~186_combout\ & ( !\PrefixNetwork|Gk~177_combout\ & ( (!\PrefixNetwork|Gk[1][52]~181_combout\ & ((!\PrefixNetwork|Gk[1][50]~176_combout\) # ((!\PrefixNetwork|Pk[2][54]~71_combout\)))) # (\PrefixNetwork|Gk[1][52]~181_combout\ & 
-- (!\PrefixNetwork|Gk~185_combout\ & ((!\PrefixNetwork|Gk[1][50]~176_combout\) # (!\PrefixNetwork|Pk[2][54]~71_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000000000000000000011110000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][52]~181_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][50]~176_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][54]~71_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~185_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][54]~186_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~177_combout\,
	combout => \PrefixNetwork|Gk[3][54]~combout\);

-- Location: LABCELL_X55_Y14_N4
\c[55]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \c[55]~76_combout\ = ( \PrefixNetwork|Pk[2][54]~71_combout\ & ( \PrefixNetwork|Pk[2][50]~67_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[2][50]~67_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][54]~71_combout\,
	combout => \c[55]~76_combout\);

-- Location: LABCELL_X50_Y10_N6
\c[55]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \c[55]~78_combout\ = ( \PrefixNetwork|Gk[3][54]~combout\ & ( \c[55]~76_combout\ & ( (\PrefixNetwork|Gk[3][46]~combout\ & ((!\PrefixNetwork|Pk[2][42]~53_combout\) # ((!\PrefixNetwork|Pk[2][46]~61_combout\) # (\PrefixNetwork|Gk[3][38]~combout\)))) ) ) ) # ( 
-- \PrefixNetwork|Gk[3][54]~combout\ & ( !\c[55]~76_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][46]~combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][38]~combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][54]~combout\,
	dataf => \ALT_INV_c[55]~76_combout\,
	combout => \c[55]~78_combout\);

-- Location: LABCELL_X50_Y10_N26
\c[55]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \c[55]~79_combout\ = ( \PrefixNetwork|Gk[3][30]~combout\ & ( \c[55]~78_combout\ ) ) # ( !\PrefixNetwork|Gk[3][30]~combout\ & ( \c[55]~78_combout\ & ( (!\PrefixNetwork|Pk[2][54]~71_combout\) # ((!\PrefixNetwork|Pk[2][34]~34_combout\) # 
-- (!\c[51]~63_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][54]~71_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][34]~34_combout\,
	datad => \ALT_INV_c[51]~63_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][30]~combout\,
	dataf => \ALT_INV_c[55]~78_combout\,
	combout => \c[55]~79_combout\);

-- Location: LABCELL_X50_Y10_N38
\c[55]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \c[55]~77_combout\ = ( \PrefixNetwork|Pk[4][38]~45_combout\ & ( \c[55]~76_combout\ & ( (\PrefixNetwork|Pk[2][46]~61_combout\ & \PrefixNetwork|Pk[2][42]~53_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][38]~45_combout\,
	dataf => \ALT_INV_c[55]~76_combout\,
	combout => \c[55]~77_combout\);

-- Location: LABCELL_X50_Y10_N14
\S~55\ : arriaii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = ( \c[55]~79_combout\ & ( \c[55]~77_combout\ & ( !\A[55]~input_o\ $ (!\B[55]~input_o\ $ (!\c[23]~27_combout\)) ) ) ) # ( !\c[55]~79_combout\ & ( \c[55]~77_combout\ & ( !\A[55]~input_o\ $ (\B[55]~input_o\) ) ) ) # ( \c[55]~79_combout\ & ( 
-- !\c[55]~77_combout\ & ( !\A[55]~input_o\ $ (!\B[55]~input_o\) ) ) ) # ( !\c[55]~79_combout\ & ( !\c[55]~77_combout\ & ( !\A[55]~input_o\ $ (\B[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011001111000011110011000011110000111100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_c[23]~27_combout\,
	datae => \ALT_INV_c[55]~79_combout\,
	dataf => \ALT_INV_c[55]~77_combout\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X59_Y31_N94
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: MLABCELL_X54_Y16_N34
\PrefixNetwork|Pk[2][51]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][51]~68_combout\ = ( \PrefixNetwork|Gk~178_combout\ & ( \PrefixNetwork|Gk~172_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Gk~178_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~172_combout\,
	combout => \PrefixNetwork|Pk[2][51]~68_combout\);

-- Location: MLABCELL_X54_Y16_N38
\PrefixNetwork|Gk~187\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~187_combout\ = ( !\B[54]~input_o\ & ( \A[54]~input_o\ & ( !\A[55]~input_o\ $ (!\B[55]~input_o\) ) ) ) # ( \B[54]~input_o\ & ( !\A[54]~input_o\ & ( !\A[55]~input_o\ $ (!\B[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	datae => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \PrefixNetwork|Gk~187_combout\);

-- Location: MLABCELL_X54_Y16_N24
\PrefixNetwork|Pk[2][55]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][55]~72_combout\ = ( \B[53]~input_o\ & ( \PrefixNetwork|Gk~187_combout\ & ( (!\A[53]~input_o\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) ) ) # ( !\B[53]~input_o\ & ( \PrefixNetwork|Gk~187_combout\ & ( (\A[53]~input_o\ & 
-- (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000010100101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	datae => \ALT_INV_B[53]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~187_combout\,
	combout => \PrefixNetwork|Pk[2][55]~72_combout\);

-- Location: MLABCELL_X54_Y16_N12
\c[56]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \c[56]~80_combout\ = ( \PrefixNetwork|Pk[2][51]~68_combout\ & ( \PrefixNetwork|Pk[2][55]~72_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Pk[2][51]~68_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][55]~72_combout\,
	combout => \c[56]~80_combout\);

-- Location: MLABCELL_X54_Y16_N20
\c[56]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \c[56]~81_combout\ = ( \PrefixNetwork|Pk[4][39]~48_combout\ & ( (\PrefixNetwork|Pk[2][43]~55_combout\ & (\c[56]~80_combout\ & \PrefixNetwork|Pk[2][47]~63_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datac => \ALT_INV_c[56]~80_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][39]~48_combout\,
	combout => \c[56]~81_combout\);

-- Location: IOIBUF_X59_Y39_N63
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: MLABCELL_X54_Y16_N26
\PrefixNetwork|Pk[2][55]~72DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][55]~72DUPLICATE_combout\ = ( \B[53]~input_o\ & ( \PrefixNetwork|Gk~187_combout\ & ( (!\A[53]~input_o\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) ) ) # ( !\B[53]~input_o\ & ( \PrefixNetwork|Gk~187_combout\ & ( (\A[53]~input_o\ & 
-- (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_B[53]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~187_combout\,
	combout => \PrefixNetwork|Pk[2][55]~72DUPLICATE_combout\);

-- Location: LABCELL_X58_Y20_N2
\PrefixNetwork|Gk[1][55]~188\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][55]~188_combout\ = ( \B[54]~input_o\ & ( \A[55]~input_o\ & ( (\B[55]~input_o\) # (\A[54]~input_o\) ) ) ) # ( !\B[54]~input_o\ & ( \A[55]~input_o\ & ( \B[55]~input_o\ ) ) ) # ( \B[54]~input_o\ & ( !\A[55]~input_o\ & ( (\A[54]~input_o\ 
-- & \B[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[54]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	datae => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \PrefixNetwork|Gk[1][55]~188_combout\);

-- Location: MLABCELL_X54_Y16_N18
\PrefixNetwork|Gk[3][55]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][55]~combout\ = ( \PrefixNetwork|Gk[1][53]~183_combout\ & ( !\PrefixNetwork|Gk[1][55]~188_combout\ & ( (!\PrefixNetwork|Gk~187_combout\ & ((!\PrefixNetwork|Pk[2][55]~72DUPLICATE_combout\) # ((!\PrefixNetwork|Gk[1][51]~179_combout\ & 
-- !\PrefixNetwork|Gk~180_combout\)))) ) ) ) # ( !\PrefixNetwork|Gk[1][53]~183_combout\ & ( !\PrefixNetwork|Gk[1][55]~188_combout\ & ( (!\PrefixNetwork|Pk[2][55]~72DUPLICATE_combout\) # ((!\PrefixNetwork|Gk[1][51]~179_combout\ & 
-- !\PrefixNetwork|Gk~180_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000101010001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~187_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][51]~179_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][55]~72DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~180_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][53]~183_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][55]~188_combout\,
	combout => \PrefixNetwork|Gk[3][55]~combout\);

-- Location: MLABCELL_X54_Y16_N6
\c[56]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \c[56]~82_combout\ = ( \PrefixNetwork|Gk[3][39]~combout\ & ( \PrefixNetwork|Gk[3][47]~combout\ & ( \PrefixNetwork|Gk[3][55]~combout\ ) ) ) # ( !\PrefixNetwork|Gk[3][39]~combout\ & ( \PrefixNetwork|Gk[3][47]~combout\ & ( (\PrefixNetwork|Gk[3][55]~combout\ 
-- & ((!\PrefixNetwork|Pk[2][47]~63_combout\) # ((!\c[56]~80_combout\) # (!\PrefixNetwork|Pk[2][43]~55_combout\)))) ) ) ) # ( \PrefixNetwork|Gk[3][39]~combout\ & ( !\PrefixNetwork|Gk[3][47]~combout\ & ( (!\c[56]~80_combout\ & 
-- \PrefixNetwork|Gk[3][55]~combout\) ) ) ) # ( !\PrefixNetwork|Gk[3][39]~combout\ & ( !\PrefixNetwork|Gk[3][47]~combout\ & ( (!\c[56]~80_combout\ & \PrefixNetwork|Gk[3][55]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000111111100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	datab => \ALT_INV_c[56]~80_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][55]~combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][39]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][47]~combout\,
	combout => \c[56]~82_combout\);

-- Location: MLABCELL_X54_Y16_N8
\c[56]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \c[56]~83_combout\ = ( \c[52]~66_combout\ & ( \c[56]~82_combout\ & ( (!\PrefixNetwork|Pk[2][35]~36_combout\) # ((!\PrefixNetwork|Pk[2][55]~72_combout\) # (\PrefixNetwork|Gk[3][31]~combout\)) ) ) ) # ( !\c[52]~66_combout\ & ( \c[56]~82_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[2][35]~36_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][55]~72_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][31]~combout\,
	datae => \ALT_INV_c[52]~66_combout\,
	dataf => \ALT_INV_c[56]~82_combout\,
	combout => \c[56]~83_combout\);

-- Location: MLABCELL_X54_Y16_N28
\S~56\ : arriaii_lcell_comb
-- Equation(s):
-- \S~56_combout\ = ( \c[56]~83_combout\ & ( c(24) & ( !\B[56]~input_o\ $ (!\A[56]~input_o\) ) ) ) # ( !\c[56]~83_combout\ & ( c(24) & ( !\B[56]~input_o\ $ (\A[56]~input_o\) ) ) ) # ( \c[56]~83_combout\ & ( !c(24) & ( !\B[56]~input_o\ $ (!\c[56]~81_combout\ 
-- $ (\A[56]~input_o\)) ) ) ) # ( !\c[56]~83_combout\ & ( !c(24) & ( !\B[56]~input_o\ $ (\A[56]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101010110101010010110101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_c[56]~81_combout\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_c[56]~83_combout\,
	dataf => ALT_INV_c(24),
	combout => \S~56_combout\);

-- Location: IOIBUF_X59_Y34_N32
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LABCELL_X58_Y20_N14
\p[57]\ : arriaii_lcell_comb
-- Equation(s):
-- p(57) = ( !\A[57]~input_o\ & ( \B[57]~input_o\ ) ) # ( \A[57]~input_o\ & ( !\B[57]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_B[57]~input_o\,
	combout => p(57));

-- Location: MLABCELL_X54_Y14_N6
\PrefixNetwork|Pk[2][56]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][56]~73_combout\ = ( \A[55]~input_o\ & ( \PrefixNetwork|Gk~185_combout\ & ( (!\B[55]~input_o\ & (!\B[56]~input_o\ $ (!\A[56]~input_o\))) ) ) ) # ( !\A[55]~input_o\ & ( \PrefixNetwork|Gk~185_combout\ & ( (\B[55]~input_o\ & 
-- (!\B[56]~input_o\ $ (!\A[56]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_A[55]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~185_combout\,
	combout => \PrefixNetwork|Pk[2][56]~73_combout\);

-- Location: MLABCELL_X54_Y11_N10
\c[57]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \c[57]~84_combout\ = ( \PrefixNetwork|Pk[2][56]~73_combout\ & ( (\PrefixNetwork|Pk[2][48]~65_combout\ & (\PrefixNetwork|Pk[2][52]~69_combout\ & \PrefixNetwork|Pk[2][44]~57_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][48]~65_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][52]~69_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][44]~57_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][56]~73_combout\,
	combout => \c[57]~84_combout\);

-- Location: MLABCELL_X54_Y14_N10
\PrefixNetwork|Gk[1][56]~189\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][56]~189_combout\ = ( \B[55]~input_o\ & ( \A[55]~input_o\ & ( (\A[56]~input_o\) # (\B[56]~input_o\) ) ) ) # ( !\B[55]~input_o\ & ( \A[55]~input_o\ & ( (\B[56]~input_o\ & \A[56]~input_o\) ) ) ) # ( \B[55]~input_o\ & ( !\A[55]~input_o\ & 
-- ( (\B[56]~input_o\ & \A[56]~input_o\) ) ) ) # ( !\B[55]~input_o\ & ( !\A[55]~input_o\ & ( (\B[56]~input_o\ & \A[56]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \PrefixNetwork|Gk[1][56]~189_combout\);

-- Location: LABCELL_X55_Y15_N26
\PrefixNetwork|Gk~190\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~190_combout\ = ( \PrefixNetwork|Gk[1][54]~186_combout\ & ( \A[55]~input_o\ & ( (!\B[55]~input_o\ & (!\A[56]~input_o\ $ (!\B[56]~input_o\))) ) ) ) # ( \PrefixNetwork|Gk[1][54]~186_combout\ & ( !\A[55]~input_o\ & ( (\B[55]~input_o\ & 
-- (!\A[56]~input_o\ $ (!\B[56]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101101000000000000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][54]~186_combout\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \PrefixNetwork|Gk~190_combout\);

-- Location: MLABCELL_X54_Y11_N6
\c[57]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \c[57]~85_combout\ = ( \PrefixNetwork|Pk[2][56]~73_combout\ & ( (!\PrefixNetwork|Gk[1][56]~189_combout\ & (!\PrefixNetwork|Gk[1][52]~181_combout\ & (!\PrefixNetwork|Gk~190_combout\ & !\PrefixNetwork|Gk~182_combout\))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][56]~73_combout\ & ( (!\PrefixNetwork|Gk[1][56]~189_combout\ & !\PrefixNetwork|Gk~190_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][56]~189_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][52]~181_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~190_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~182_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][56]~73_combout\,
	combout => \c[57]~85_combout\);

-- Location: LABCELL_X53_Y11_N10
\c[57]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \c[57]~86_combout\ = ( \PrefixNetwork|Gk[3][48]~combout\ & ( \PrefixNetwork|Gk~138_combout\ & ( (\c[57]~85_combout\ & ((!\PrefixNetwork|Pk[2][56]~73_combout\) # (!\c[57]~69_combout\))) ) ) ) # ( !\PrefixNetwork|Gk[3][48]~combout\ & ( 
-- \PrefixNetwork|Gk~138_combout\ & ( (\c[57]~85_combout\ & ((!\PrefixNetwork|Pk[2][56]~73_combout\) # ((!\PrefixNetwork|Pk[2][52]~69_combout\ & !\c[57]~69_combout\)))) ) ) ) # ( \PrefixNetwork|Gk[3][48]~combout\ & ( !\PrefixNetwork|Gk~138_combout\ & ( 
-- \c[57]~85_combout\ ) ) ) # ( !\PrefixNetwork|Gk[3][48]~combout\ & ( !\PrefixNetwork|Gk~138_combout\ & ( (\c[57]~85_combout\ & ((!\PrefixNetwork|Pk[2][56]~73_combout\) # (!\PrefixNetwork|Pk[2][52]~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011110000111100001110000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][56]~73_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][52]~69_combout\,
	datac => \ALT_INV_c[57]~85_combout\,
	datad => \ALT_INV_c[57]~69_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[3][48]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~138_combout\,
	combout => \c[57]~86_combout\);

-- Location: LABCELL_X53_Y11_N36
\S~57\ : arriaii_lcell_comb
-- Equation(s):
-- \S~57_combout\ = ( \c[25]~30_combout\ & ( \c[57]~86_combout\ & ( !p(57) $ (((!\c[57]~84_combout\) # (\PrefixNetwork|Gk[3][40]~combout\))) ) ) ) # ( !\c[25]~30_combout\ & ( \c[57]~86_combout\ & ( !p(57) $ (((!\c[57]~84_combout\) # 
-- ((!\PrefixNetwork|Pk[4][40]~50_combout\ & \PrefixNetwork|Gk[3][40]~combout\)))) ) ) ) # ( \c[25]~30_combout\ & ( !\c[57]~86_combout\ & ( !p(57) ) ) ) # ( !\c[25]~30_combout\ & ( !\c[57]~86_combout\ & ( !p(57) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011110001100011001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[4][40]~50_combout\,
	datab => ALT_INV_p(57),
	datac => \PrefixNetwork|ALT_INV_Gk[3][40]~combout\,
	datad => \ALT_INV_c[57]~84_combout\,
	datae => \ALT_INV_c[25]~30_combout\,
	dataf => \ALT_INV_c[57]~86_combout\,
	combout => \S~57_combout\);

-- Location: IOIBUF_X59_Y30_N32
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X59_Y33_N94
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LABCELL_X58_Y17_N16
\p[58]\ : arriaii_lcell_comb
-- Equation(s):
-- p(58) = ( \B[58]~input_o\ & ( !\A[58]~input_o\ ) ) # ( !\B[58]~input_o\ & ( \A[58]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_B[58]~input_o\,
	combout => p(58));

-- Location: MLABCELL_X54_Y14_N14
\PrefixNetwork|Pk[2][57]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][57]~74_combout\ = ( \PrefixNetwork|Gk~187_combout\ & ( p(57) & ( !\B[56]~input_o\ $ (!\A[56]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Gk~187_combout\,
	dataf => ALT_INV_p(57),
	combout => \PrefixNetwork|Pk[2][57]~74_combout\);

-- Location: LABCELL_X53_Y14_N28
\c[58]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \c[58]~87_combout\ = ( \PrefixNetwork|Pk[2][57]~74_combout\ & ( \PrefixNetwork|Pk[2][53]~70_combout\ & ( (\PrefixNetwork|Pk[2][45]~59_combout\ & \PrefixNetwork|Pk[2][49]~66_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][45]~59_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][49]~66_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][57]~74_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][53]~70_combout\,
	combout => \c[58]~87_combout\);

-- Location: LABCELL_X58_Y17_N30
\PrefixNetwork|Gk[1][57]~191\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][57]~191_combout\ = ( \A[57]~input_o\ & ( ((\A[56]~input_o\ & \B[56]~input_o\)) # (\B[57]~input_o\) ) ) # ( !\A[57]~input_o\ & ( (\A[56]~input_o\ & (\B[57]~input_o\ & \B[56]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \PrefixNetwork|Gk[1][57]~191_combout\);

-- Location: LABCELL_X58_Y20_N16
\PrefixNetwork|Gk~192\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~192_combout\ = ( \B[56]~input_o\ & ( \PrefixNetwork|Gk[1][55]~188_combout\ & ( (!\A[56]~input_o\ & p(57)) ) ) ) # ( !\B[56]~input_o\ & ( \PrefixNetwork|Gk[1][55]~188_combout\ & ( (\A[56]~input_o\ & p(57)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[56]~input_o\,
	datad => ALT_INV_p(57),
	datae => \ALT_INV_B[56]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][55]~188_combout\,
	combout => \PrefixNetwork|Gk~192_combout\);

-- Location: LABCELL_X53_Y13_N12
\c[58]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \c[58]~88_combout\ = ( !\PrefixNetwork|Gk~192_combout\ & ( (!\PrefixNetwork|Gk[1][57]~191_combout\ & ((!\PrefixNetwork|Pk[2][57]~74_combout\) # ((!\PrefixNetwork|Gk~184_combout\ & !\PrefixNetwork|Gk[1][53]~183_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~184_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][53]~183_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][57]~191_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][57]~74_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~192_combout\,
	combout => \c[58]~88_combout\);

-- Location: LABCELL_X53_Y13_N16
\c[58]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \c[58]~89_combout\ = ( \c[58]~88_combout\ & ( \c[58]~73_combout\ & ( (!\PrefixNetwork|Pk[2][57]~74_combout\) # ((!\PrefixNetwork|Gk~142_combout\ & ((!\PrefixNetwork|Pk[2][53]~70_combout\) # (\PrefixNetwork|Gk[3][49]~combout\)))) ) ) ) # ( 
-- \c[58]~88_combout\ & ( !\c[58]~73_combout\ & ( (!\PrefixNetwork|Pk[2][57]~74_combout\) # ((!\PrefixNetwork|Pk[2][53]~70_combout\) # (\PrefixNetwork|Gk[3][49]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000001111101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][57]~74_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][49]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~142_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][53]~70_combout\,
	datae => \ALT_INV_c[58]~88_combout\,
	dataf => \ALT_INV_c[58]~73_combout\,
	combout => \c[58]~89_combout\);

-- Location: LABCELL_X53_Y13_N20
\S~58\ : arriaii_lcell_comb
-- Equation(s):
-- \S~58_combout\ = ( \c[58]~87_combout\ & ( \c[58]~89_combout\ & ( !p(58) $ (((\PrefixNetwork|Gk[3][41]~combout\ & ((!\PrefixNetwork|Pk[4][41]~52_combout\) # (\c[26]~32_combout\))))) ) ) ) # ( !\c[58]~87_combout\ & ( \c[58]~89_combout\ & ( p(58) ) ) ) # ( 
-- \c[58]~87_combout\ & ( !\c[58]~89_combout\ & ( !p(58) ) ) ) # ( !\c[58]~87_combout\ & ( !\c[58]~89_combout\ & ( !p(58) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100111001100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][41]~combout\,
	datab => ALT_INV_p(58),
	datac => \ALT_INV_c[26]~32_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][41]~52_combout\,
	datae => \ALT_INV_c[58]~87_combout\,
	dataf => \ALT_INV_c[58]~89_combout\,
	combout => \S~58_combout\);

-- Location: IOIBUF_X59_Y30_N94
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LABCELL_X58_Y17_N24
\p[59]\ : arriaii_lcell_comb
-- Equation(s):
-- p(59) = ( \A[59]~input_o\ & ( !\B[59]~input_o\ ) ) # ( !\A[59]~input_o\ & ( \B[59]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => p(59));

-- Location: LABCELL_X58_Y18_N36
\PrefixNetwork|Pk[1][58]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[1][58]~combout\ = ( !\B[57]~input_o\ & ( \A[57]~input_o\ & ( !\B[58]~input_o\ $ (!\A[58]~input_o\) ) ) ) # ( \B[57]~input_o\ & ( !\A[57]~input_o\ & ( !\B[58]~input_o\ $ (!\A[58]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[58]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \PrefixNetwork|Pk[1][58]~combout\);

-- Location: LABCELL_X58_Y16_N2
\PrefixNetwork|Pk[2][58]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][58]~75_combout\ = ( \PrefixNetwork|Pk[1][58]~combout\ & ( (!\A[55]~input_o\ & (\B[55]~input_o\ & (!\A[56]~input_o\ $ (!\B[56]~input_o\)))) # (\A[55]~input_o\ & (!\B[55]~input_o\ & (!\A[56]~input_o\ $ (!\B[56]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Pk[1][58]~combout\,
	combout => \PrefixNetwork|Pk[2][58]~75_combout\);

-- Location: LABCELL_X55_Y10_N30
\c[59]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \c[59]~90_combout\ = ( \PrefixNetwork|Pk[2][58]~75_combout\ & ( \c[55]~76_combout\ & ( \PrefixNetwork|Pk[2][46]~61_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][58]~75_combout\,
	dataf => \ALT_INV_c[55]~76_combout\,
	combout => \c[59]~90_combout\);

-- Location: LABCELL_X58_Y34_N16
\PrefixNetwork|Gk[1][58]~193\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][58]~193_combout\ = ( \A[58]~input_o\ & ( \B[58]~input_o\ ) ) # ( !\A[58]~input_o\ & ( \B[58]~input_o\ & ( (\A[57]~input_o\ & \B[57]~input_o\) ) ) ) # ( \A[58]~input_o\ & ( !\B[58]~input_o\ & ( (\A[57]~input_o\ & \B[57]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_B[57]~input_o\,
	datae => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_B[58]~input_o\,
	combout => \PrefixNetwork|Gk[1][58]~193_combout\);

-- Location: LABCELL_X53_Y10_N16
\c[59]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \c[59]~91_combout\ = ( \PrefixNetwork|Pk[1][58]~combout\ & ( (!\PrefixNetwork|Gk[1][56]~189_combout\ & !\PrefixNetwork|Gk[1][58]~193_combout\) ) ) # ( !\PrefixNetwork|Pk[1][58]~combout\ & ( !\PrefixNetwork|Gk[1][58]~193_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][56]~189_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][58]~193_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[1][58]~combout\,
	combout => \c[59]~91_combout\);

-- Location: LABCELL_X53_Y10_N18
\c[59]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \c[59]~92_combout\ = ( \PrefixNetwork|Pk[2][58]~75_combout\ & ( (!\PrefixNetwork|Gk[1][54]~186_combout\ & (\c[59]~91_combout\ & ((!\PrefixNetwork|Gk[1][52]~181_combout\) # (!\PrefixNetwork|Gk~185DUPLICATE_combout\)))) ) ) # ( 
-- !\PrefixNetwork|Pk[2][58]~75_combout\ & ( \c[59]~91_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][52]~181_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[1][54]~186_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~185DUPLICATE_combout\,
	datad => \ALT_INV_c[59]~91_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][58]~75_combout\,
	combout => \c[59]~92_combout\);

-- Location: LABCELL_X53_Y10_N30
\c[59]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \c[59]~93_combout\ = ( \c[59]~92_combout\ & ( \PrefixNetwork|Gk[3][34]~combout\ & ( (!\PrefixNetwork|Pk[2][54]~71_combout\) # ((!\PrefixNetwork|Pk[2][58]~75_combout\) # (\PrefixNetwork|Gk[3][50]~combout\)) ) ) ) # ( \c[59]~92_combout\ & ( 
-- !\PrefixNetwork|Gk[3][34]~combout\ & ( (!\PrefixNetwork|Pk[2][54]~71_combout\) # ((!\PrefixNetwork|Pk[2][58]~75_combout\) # ((!\c[51]~63_combout\ & \PrefixNetwork|Gk[3][50]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111111000000000000000001111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[51]~63_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][54]~71_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][58]~75_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][50]~combout\,
	datae => \ALT_INV_c[59]~92_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][34]~combout\,
	combout => \c[59]~93_combout\);

-- Location: LABCELL_X55_Y10_N26
\S~59\ : arriaii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = ( \c[59]~90_combout\ & ( \c[59]~93_combout\ & ( !p(59) $ (((\PrefixNetwork|Gk[3][42]~combout\ & ((!\PrefixNetwork|Pk[4][42]~54_combout\) # (\c[27]~33_combout\))))) ) ) ) # ( !\c[59]~90_combout\ & ( \c[59]~93_combout\ & ( p(59) ) ) ) # ( 
-- \c[59]~90_combout\ & ( !\c[59]~93_combout\ & ( !p(59) ) ) ) # ( !\c[59]~90_combout\ & ( !\c[59]~93_combout\ & ( !p(59) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101011010101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(59),
	datab => \PrefixNetwork|ALT_INV_Pk[4][42]~54_combout\,
	datac => \ALT_INV_c[27]~33_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][42]~combout\,
	datae => \ALT_INV_c[59]~90_combout\,
	dataf => \ALT_INV_c[59]~93_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X59_Y37_N32
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LABCELL_X58_Y17_N12
\p[60]\ : arriaii_lcell_comb
-- Equation(s):
-- p(60) = ( !\A[60]~input_o\ & ( \B[60]~input_o\ ) ) # ( \A[60]~input_o\ & ( !\B[60]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_B[60]~input_o\,
	combout => p(60));

-- Location: LABCELL_X58_Y17_N8
\PrefixNetwork|Pk[1][59]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[1][59]~combout\ = ( \A[59]~input_o\ & ( (!\B[59]~input_o\ & (!\A[58]~input_o\ $ (!\B[58]~input_o\))) ) ) # ( !\A[59]~input_o\ & ( (\B[59]~input_o\ & (!\A[58]~input_o\ $ (!\B[58]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[59]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \PrefixNetwork|Pk[1][59]~combout\);

-- Location: LABCELL_X58_Y20_N20
\PrefixNetwork|Pk[2][59]~76DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\ = ( \PrefixNetwork|Pk[1][59]~combout\ & ( p(57) & ( !\A[56]~input_o\ $ (!\B[56]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Pk[1][59]~combout\,
	dataf => ALT_INV_p(57),
	combout => \PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\);

-- Location: MLABCELL_X57_Y16_N38
\c[60]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \c[60]~94_combout\ = ( \PrefixNetwork|Pk[2][47]~63_combout\ & ( \PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\ & ( \c[56]~80_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_c[56]~80_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][59]~76DUPLICATE_combout\,
	combout => \c[60]~94_combout\);

-- Location: LABCELL_X58_Y17_N18
\PrefixNetwork|Gk[1][59]~194\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][59]~194_combout\ = ( \A[59]~input_o\ & ( ((\B[58]~input_o\ & \A[58]~input_o\)) # (\B[59]~input_o\) ) ) # ( !\A[59]~input_o\ & ( (\B[58]~input_o\ & (\B[59]~input_o\ & \A[58]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datac => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \PrefixNetwork|Gk[1][59]~194_combout\);

-- Location: LABCELL_X58_Y17_N28
\c[60]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \c[60]~95_combout\ = ( \PrefixNetwork|Gk[1][57]~191_combout\ & ( (!\PrefixNetwork|Gk[1][59]~194_combout\ & !\PrefixNetwork|Pk[1][59]~combout\) ) ) # ( !\PrefixNetwork|Gk[1][57]~191_combout\ & ( !\PrefixNetwork|Gk[1][59]~194_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk[1][59]~194_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[1][59]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[1][57]~191_combout\,
	combout => \c[60]~95_combout\);

-- Location: LABCELL_X58_Y12_N12
\c[60]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \c[60]~96_combout\ = ( \PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\ & ( \c[60]~95_combout\ & ( (!\PrefixNetwork|Gk[1][55]~188_combout\ & ((!\PrefixNetwork|Gk~187_combout\) # (!\PrefixNetwork|Gk[1][53]~183_combout\))) ) ) ) # ( 
-- !\PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\ & ( \c[60]~95_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk~187_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][55]~188_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][53]~183_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][59]~76DUPLICATE_combout\,
	dataf => \ALT_INV_c[60]~95_combout\,
	combout => \c[60]~96_combout\);

-- Location: LABCELL_X53_Y16_N36
\c[52]~66DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[52]~66DUPLICATE_combout\ = ( \PrefixNetwork|Pk[2][47]~63_combout\ & ( \PrefixNetwork|Pk[2][39]~46_combout\ & ( (\PrefixNetwork|Pk[2][51]~68DUPLICATE_combout\ & \PrefixNetwork|Pk[2][43]~55_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][51]~68DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][39]~46_combout\,
	combout => \c[52]~66DUPLICATE_combout\);

-- Location: LABCELL_X58_Y12_N8
\c[60]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \c[60]~97_combout\ = ( \PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\ & ( \c[52]~66DUPLICATE_combout\ & ( (\c[60]~96_combout\ & ((!\PrefixNetwork|Pk[2][55]~72_combout\) # ((\PrefixNetwork|Gk[3][51]~combout\ & \PrefixNetwork|Gk[3][35]~combout\)))) ) ) ) # ( 
-- !\PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\ & ( \c[52]~66DUPLICATE_combout\ & ( \c[60]~96_combout\ ) ) ) # ( \PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\ & ( !\c[52]~66DUPLICATE_combout\ & ( (\c[60]~96_combout\ & 
-- ((!\PrefixNetwork|Pk[2][55]~72_combout\) # (\PrefixNetwork|Gk[3][51]~combout\))) ) ) ) # ( !\PrefixNetwork|Pk[2][59]~76DUPLICATE_combout\ & ( !\c[52]~66DUPLICATE_combout\ & ( \c[60]~96_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011010000110100001111000011110000110000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][51]~combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][55]~72_combout\,
	datac => \ALT_INV_c[60]~96_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][35]~combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][59]~76DUPLICATE_combout\,
	dataf => \ALT_INV_c[52]~66DUPLICATE_combout\,
	combout => \c[60]~97_combout\);

-- Location: MLABCELL_X57_Y12_N28
\S~60\ : arriaii_lcell_comb
-- Equation(s):
-- \S~60_combout\ = ( \PrefixNetwork|Pk[4][43]~56_combout\ & ( \c[60]~97_combout\ & ( !p(60) $ (((!\c[60]~94_combout\) # ((\PrefixNetwork|Gk[3][43]~combout\ & \c[28]~34_combout\)))) ) ) ) # ( !\PrefixNetwork|Pk[4][43]~56_combout\ & ( \c[60]~97_combout\ & ( 
-- !p(60) $ (((!\c[60]~94_combout\) # (\PrefixNetwork|Gk[3][43]~combout\))) ) ) ) # ( \PrefixNetwork|Pk[4][43]~56_combout\ & ( !\c[60]~97_combout\ & ( !p(60) ) ) ) # ( !\PrefixNetwork|Pk[4][43]~56_combout\ & ( !\c[60]~97_combout\ & ( !p(60) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000111001001110010011110000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][43]~combout\,
	datab => ALT_INV_p(60),
	datac => \ALT_INV_c[60]~94_combout\,
	datad => \ALT_INV_c[28]~34_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][43]~56_combout\,
	dataf => \ALT_INV_c[60]~97_combout\,
	combout => \S~60_combout\);

-- Location: IOIBUF_X59_Y49_N32
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X59_Y49_N1
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LABCELL_X58_Y17_N38
\p[61]\ : arriaii_lcell_comb
-- Equation(s):
-- p(61) = ( \A[61]~input_o\ & ( !\B[61]~input_o\ ) ) # ( !\A[61]~input_o\ & ( \B[61]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[61]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => p(61));

-- Location: LABCELL_X58_Y17_N32
\PrefixNetwork|Pk[1][60]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[1][60]~combout\ = ( p(60) & ( p(59) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_p(60),
	dataf => ALT_INV_p(59),
	combout => \PrefixNetwork|Pk[1][60]~combout\);

-- Location: LABCELL_X58_Y17_N26
\c[61]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \c[61]~98_combout\ = ( \PrefixNetwork|Pk[1][60]~combout\ & ( \PrefixNetwork|Pk[1][58]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[1][58]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[1][60]~combout\,
	combout => \c[61]~98_combout\);

-- Location: MLABCELL_X54_Y14_N4
\PrefixNetwork|Pk[2][56]~73DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][56]~73DUPLICATE_combout\ = ( \A[55]~input_o\ & ( \PrefixNetwork|Gk~185_combout\ & ( (!\B[55]~input_o\ & (!\B[56]~input_o\ $ (!\A[56]~input_o\))) ) ) ) # ( !\A[55]~input_o\ & ( \PrefixNetwork|Gk~185_combout\ & ( (\B[55]~input_o\ & 
-- (!\B[56]~input_o\ $ (!\A[56]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	datae => \ALT_INV_A[55]~input_o\,
	dataf => \PrefixNetwork|ALT_INV_Gk~185_combout\,
	combout => \PrefixNetwork|Pk[2][56]~73DUPLICATE_combout\);

-- Location: LABCELL_X58_Y15_N34
\c[61]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \c[61]~99_combout\ = ( \c[61]~98_combout\ & ( \PrefixNetwork|Pk[2][56]~73DUPLICATE_combout\ & ( (\PrefixNetwork|Pk[2][48]~65_combout\ & \PrefixNetwork|Pk[2][52]~69_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][48]~65_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][52]~69_combout\,
	datae => \ALT_INV_c[61]~98_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][56]~73DUPLICATE_combout\,
	combout => \c[61]~99_combout\);

-- Location: LABCELL_X58_Y17_N36
\PrefixNetwork|Gk[1][60]~195\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][60]~195_combout\ = ( \B[60]~input_o\ & ( ((\B[59]~input_o\ & \A[59]~input_o\)) # (\A[60]~input_o\) ) ) # ( !\B[60]~input_o\ & ( (\B[59]~input_o\ & (\A[60]~input_o\ & \A[59]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[59]~input_o\,
	datac => \ALT_INV_A[60]~input_o\,
	datad => \ALT_INV_A[59]~input_o\,
	dataf => \ALT_INV_B[60]~input_o\,
	combout => \PrefixNetwork|Gk[1][60]~195_combout\);

-- Location: MLABCELL_X57_Y14_N34
\c[61]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \c[61]~100_combout\ = ( !\PrefixNetwork|Gk[1][58]~193_combout\ & ( \PrefixNetwork|Pk[1][60]~combout\ & ( (!\PrefixNetwork|Gk[1][60]~195_combout\ & ((!\PrefixNetwork|Pk[1][58]~combout\) # (!\PrefixNetwork|Gk[1][56]~189_combout\))) ) ) ) # ( 
-- \PrefixNetwork|Gk[1][58]~193_combout\ & ( !\PrefixNetwork|Pk[1][60]~combout\ & ( !\PrefixNetwork|Gk[1][60]~195_combout\ ) ) ) # ( !\PrefixNetwork|Gk[1][58]~193_combout\ & ( !\PrefixNetwork|Pk[1][60]~combout\ & ( !\PrefixNetwork|Gk[1][60]~195_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[1][58]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][56]~189_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][60]~195_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk[1][58]~193_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[1][60]~combout\,
	combout => \c[61]~100_combout\);

-- Location: LABCELL_X55_Y14_N8
\c[61]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \c[61]~101_combout\ = ( \c[61]~98_combout\ & ( \c[61]~100_combout\ & ( (!\PrefixNetwork|Gk~190_combout\ & ((!\PrefixNetwork|Pk[2][56]~73DUPLICATE_combout\) # (\PrefixNetwork|Gk[3][52]~combout\))) ) ) ) # ( !\c[61]~98_combout\ & ( \c[61]~100_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[3][52]~combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][56]~73DUPLICATE_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~190_combout\,
	datae => \ALT_INV_c[61]~98_combout\,
	dataf => \ALT_INV_c[61]~100_combout\,
	combout => \c[61]~101_combout\);

-- Location: LABCELL_X55_Y14_N38
\c[61]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \c[61]~102_combout\ = ( \c[61]~101_combout\ & ( \c[57]~69_combout\ & ( (!\c[61]~98_combout\) # ((!\PrefixNetwork|Pk[2][56]~73DUPLICATE_combout\) # (\PrefixNetwork|Gk[3][36]~combout\)) ) ) ) # ( \c[61]~101_combout\ & ( !\c[57]~69_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[61]~98_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][36]~combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[2][56]~73DUPLICATE_combout\,
	datae => \ALT_INV_c[61]~101_combout\,
	dataf => \ALT_INV_c[57]~69_combout\,
	combout => \c[61]~102_combout\);

-- Location: LABCELL_X58_Y15_N30
\S~61\ : arriaii_lcell_comb
-- Equation(s):
-- \S~61_combout\ = ( \c[61]~102_combout\ & ( \c[29]~35_combout\ & ( !p(61) $ (((!\c[61]~99_combout\) # (\PrefixNetwork|Gk[3][44]~combout\))) ) ) ) # ( !\c[61]~102_combout\ & ( \c[29]~35_combout\ & ( !p(61) ) ) ) # ( \c[61]~102_combout\ & ( 
-- !\c[29]~35_combout\ & ( !p(61) $ (((!\c[61]~99_combout\) # ((\PrefixNetwork|Gk[3][44]~combout\ & !\PrefixNetwork|Pk[4][44]~58_combout\)))) ) ) ) # ( !\c[61]~102_combout\ & ( !\c[29]~35_combout\ & ( !p(61) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001110010011110011001100110011000011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][44]~combout\,
	datab => ALT_INV_p(61),
	datac => \ALT_INV_c[61]~99_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][44]~58_combout\,
	datae => \ALT_INV_c[61]~102_combout\,
	dataf => \ALT_INV_c[29]~35_combout\,
	combout => \S~61_combout\);

-- Location: IOIBUF_X59_Y48_N94
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X59_Y46_N63
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LABCELL_X58_Y20_N24
\p[62]\ : arriaii_lcell_comb
-- Equation(s):
-- p(62) = ( !\B[62]~input_o\ & ( \A[62]~input_o\ ) ) # ( \B[62]~input_o\ & ( !\A[62]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[62]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => p(62));

-- Location: LABCELL_X58_Y17_N20
\PrefixNetwork|Pk[1][61]\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[1][61]~combout\ = ( p(60) & ( p(61) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_p(60),
	dataf => ALT_INV_p(61),
	combout => \PrefixNetwork|Pk[1][61]~combout\);

-- Location: LABCELL_X58_Y17_N10
\c[62]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \c[62]~103_combout\ = ( \PrefixNetwork|Pk[1][61]~combout\ & ( \PrefixNetwork|Pk[1][59]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[1][59]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[1][61]~combout\,
	combout => \c[62]~103_combout\);

-- Location: LABCELL_X58_Y13_N32
\c[62]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \c[62]~104_combout\ = ( \PrefixNetwork|Pk[2][57]~74_combout\ & ( (\PrefixNetwork|Pk[2][53]~70_combout\ & (\PrefixNetwork|Pk[2][49]~66_combout\ & \c[62]~103_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][53]~70_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[2][49]~66_combout\,
	datad => \ALT_INV_c[62]~103_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][57]~74_combout\,
	combout => \c[62]~104_combout\);

-- Location: LABCELL_X58_Y17_N2
\PrefixNetwork|Gk[1][61]~196\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][61]~196_combout\ = ( \B[61]~input_o\ & ( \B[60]~input_o\ & ( (\A[60]~input_o\) # (\A[61]~input_o\) ) ) ) # ( !\B[61]~input_o\ & ( \B[60]~input_o\ & ( (\A[61]~input_o\ & \A[60]~input_o\) ) ) ) # ( \B[61]~input_o\ & ( !\B[60]~input_o\ & 
-- ( \A[61]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	datae => \ALT_INV_B[61]~input_o\,
	dataf => \ALT_INV_B[60]~input_o\,
	combout => \PrefixNetwork|Gk[1][61]~196_combout\);

-- Location: LABCELL_X58_Y17_N4
\c[62]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \c[62]~105_combout\ = ( \PrefixNetwork|Pk[1][59]~combout\ & ( \PrefixNetwork|Pk[1][61]~combout\ & ( (!\PrefixNetwork|Gk[1][57]~191_combout\ & (!\PrefixNetwork|Gk[1][59]~194_combout\ & !\PrefixNetwork|Gk[1][61]~196_combout\)) ) ) ) # ( 
-- !\PrefixNetwork|Pk[1][59]~combout\ & ( \PrefixNetwork|Pk[1][61]~combout\ & ( (!\PrefixNetwork|Gk[1][59]~194_combout\ & !\PrefixNetwork|Gk[1][61]~196_combout\) ) ) ) # ( \PrefixNetwork|Pk[1][59]~combout\ & ( !\PrefixNetwork|Pk[1][61]~combout\ & ( 
-- !\PrefixNetwork|Gk[1][61]~196_combout\ ) ) ) # ( !\PrefixNetwork|Pk[1][59]~combout\ & ( !\PrefixNetwork|Pk[1][61]~combout\ & ( !\PrefixNetwork|Gk[1][61]~196_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Gk[1][57]~191_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[1][59]~194_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[1][61]~196_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[1][59]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[1][61]~combout\,
	combout => \c[62]~105_combout\);

-- Location: LABCELL_X58_Y13_N14
\c[62]~106\ : arriaii_lcell_comb
-- Equation(s):
-- \c[62]~106_combout\ = ( \PrefixNetwork|Pk[2][57]~74_combout\ & ( (\c[62]~105_combout\ & ((!\c[62]~103_combout\) # ((\PrefixNetwork|Gk[3][53]~combout\ & !\PrefixNetwork|Gk~192_combout\)))) ) ) # ( !\PrefixNetwork|Pk[2][57]~74_combout\ & ( 
-- (\c[62]~105_combout\ & ((!\PrefixNetwork|Gk~192_combout\) # (!\c[62]~103_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111000001000000111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][53]~combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~192_combout\,
	datac => \ALT_INV_c[62]~105_combout\,
	datad => \ALT_INV_c[62]~103_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][57]~74_combout\,
	combout => \c[62]~106_combout\);

-- Location: LABCELL_X58_Y13_N38
\c[62]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \c[62]~107_combout\ = ( \c[58]~73_combout\ & ( (\c[62]~106_combout\ & ((!\c[62]~103_combout\) # ((!\PrefixNetwork|Pk[2][57]~74_combout\) # (\PrefixNetwork|Gk[3][37]~combout\)))) ) ) # ( !\c[58]~73_combout\ & ( \c[62]~106_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[62]~103_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][57]~74_combout\,
	datac => \ALT_INV_c[62]~106_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][37]~combout\,
	dataf => \ALT_INV_c[58]~73_combout\,
	combout => \c[62]~107_combout\);

-- Location: MLABCELL_X57_Y13_N14
\S~62\ : arriaii_lcell_comb
-- Equation(s):
-- \S~62_combout\ = ( c(30) & ( \c[62]~107_combout\ & ( !p(62) $ (((!\c[62]~104_combout\) # (\PrefixNetwork|Gk[3][45]~combout\))) ) ) ) # ( !c(30) & ( \c[62]~107_combout\ & ( !p(62) $ (((!\c[62]~104_combout\) # ((\PrefixNetwork|Gk[3][45]~combout\ & 
-- !\PrefixNetwork|Pk[4][45]~60_combout\)))) ) ) ) # ( c(30) & ( !\c[62]~107_combout\ & ( !p(62) ) ) ) # ( !c(30) & ( !\c[62]~107_combout\ & ( !p(62) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011100111000011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][45]~combout\,
	datab => ALT_INV_p(62),
	datac => \PrefixNetwork|ALT_INV_Pk[4][45]~60_combout\,
	datad => \ALT_INV_c[62]~104_combout\,
	datae => ALT_INV_c(30),
	dataf => \ALT_INV_c[62]~107_combout\,
	combout => \S~62_combout\);

-- Location: IOIBUF_X59_Y46_N94
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X59_Y48_N32
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LABCELL_X58_Y16_N38
\PrefixNetwork|Pk[4][62]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][62]~77_combout\ = ( p(62) & ( p(61) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_p(61),
	dataf => ALT_INV_p(62),
	combout => \PrefixNetwork|Pk[4][62]~77_combout\);

-- Location: LABCELL_X58_Y16_N26
\PrefixNetwork|Pk[4][62]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][62]~78_combout\ = ( \PrefixNetwork|Pk[2][58]~75_combout\ & ( \PrefixNetwork|Pk[1][60]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[1][60]~combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[2][58]~75_combout\,
	combout => \PrefixNetwork|Pk[4][62]~78_combout\);

-- Location: LABCELL_X58_Y16_N30
\PrefixNetwork|Gk~197\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~197_combout\ = ( \PrefixNetwork|Pk[4][62]~78_combout\ & ( \c[55]~76_combout\ & ( (\PrefixNetwork|Pk[2][46]~61_combout\ & (\PrefixNetwork|Pk[2][42]~53_combout\ & (\PrefixNetwork|Pk[4][38]~44_combout\ & 
-- \PrefixNetwork|Pk[4][62]~77_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][46]~61_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][42]~53_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][38]~44_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][62]~77_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][62]~78_combout\,
	dataf => \ALT_INV_c[55]~76_combout\,
	combout => \PrefixNetwork|Gk~197_combout\);

-- Location: LABCELL_X58_Y16_N10
\PrefixNetwork|Gk~198\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~198_combout\ = ( \PrefixNetwork|Pk[4][30]~27_combout\ & ( \PrefixNetwork|Gk~100_combout\ & ( \PrefixNetwork|Gk~197_combout\ ) ) ) # ( !\PrefixNetwork|Pk[4][30]~27_combout\ & ( \PrefixNetwork|Gk~100_combout\ & ( 
-- \PrefixNetwork|Gk~197_combout\ ) ) ) # ( \PrefixNetwork|Pk[4][30]~27_combout\ & ( !\PrefixNetwork|Gk~100_combout\ & ( (\PrefixNetwork|Gk~197_combout\ & ((!\PrefixNetwork|Gk[3][14]~combout\) # ((!\PrefixNetwork|Gk[3][30]~combout\) # 
-- (\PrefixNetwork|Gk~33_combout\)))) ) ) ) # ( !\PrefixNetwork|Pk[4][30]~27_combout\ & ( !\PrefixNetwork|Gk~100_combout\ & ( (!\PrefixNetwork|Gk[3][30]~combout\ & \PrefixNetwork|Gk~197_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011100000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][14]~combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][30]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~197_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~33_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][30]~27_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~100_combout\,
	combout => \PrefixNetwork|Gk~198_combout\);

-- Location: LABCELL_X58_Y16_N22
\c~108\ : arriaii_lcell_comb
-- Equation(s):
-- \c~108_combout\ = ( \PrefixNetwork|Pk[4][30]~27_combout\ & ( (\PrefixNetwork|Gk~197_combout\ & \c~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Gk~197_combout\,
	datad => \ALT_INV_c~15_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][30]~27_combout\,
	combout => \c~108_combout\);

-- Location: LABCELL_X58_Y20_N36
\PrefixNetwork|Gk[1][62]~199\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][62]~199_combout\ = ( \B[61]~input_o\ & ( \A[61]~input_o\ & ( (\A[62]~input_o\) # (\B[62]~input_o\) ) ) ) # ( !\B[61]~input_o\ & ( \A[61]~input_o\ & ( (\B[62]~input_o\ & \A[62]~input_o\) ) ) ) # ( \B[61]~input_o\ & ( !\A[61]~input_o\ & 
-- ( (\B[62]~input_o\ & \A[62]~input_o\) ) ) ) # ( !\B[61]~input_o\ & ( !\A[61]~input_o\ & ( (\B[62]~input_o\ & \A[62]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[62]~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	datae => \ALT_INV_B[61]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \PrefixNetwork|Gk[1][62]~199_combout\);

-- Location: LABCELL_X58_Y16_N32
\PrefixNetwork|Pk[4][62]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][62]~79_combout\ = ( \c[55]~76_combout\ & ( (\PrefixNetwork|Pk[4][62]~77_combout\ & \PrefixNetwork|Pk[4][62]~78_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[4][62]~77_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][62]~78_combout\,
	dataf => \ALT_INV_c[55]~76_combout\,
	combout => \PrefixNetwork|Pk[4][62]~79_combout\);

-- Location: LABCELL_X58_Y16_N14
\c[63]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \c[63]~109_combout\ = ( \PrefixNetwork|Gk[3][54]~combout\ & ( (\PrefixNetwork|Pk[4][62]~77_combout\ & !\c[61]~100_combout\) ) ) # ( !\PrefixNetwork|Gk[3][54]~combout\ & ( (\PrefixNetwork|Pk[4][62]~77_combout\ & ((!\c[61]~100_combout\) # 
-- (\PrefixNetwork|Pk[4][62]~78_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[4][62]~77_combout\,
	datac => \ALT_INV_c[61]~100_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][62]~78_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][54]~combout\,
	combout => \c[63]~109_combout\);

-- Location: LABCELL_X58_Y16_N24
\c[63]~110\ : arriaii_lcell_comb
-- Equation(s):
-- \c[63]~110_combout\ = ( !\c[63]~109_combout\ & ( (!\PrefixNetwork|Gk[1][62]~199_combout\ & ((!\PrefixNetwork|Pk[4][62]~79_combout\) # ((!\PrefixNetwork|Gk~162_combout\ & \PrefixNetwork|Gk[3][46]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101000101000001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][62]~199_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk~162_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][62]~79_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk[3][46]~combout\,
	dataf => \ALT_INV_c[63]~109_combout\,
	combout => \c[63]~110_combout\);

-- Location: LABCELL_X58_Y16_N34
\S~63\ : arriaii_lcell_comb
-- Equation(s):
-- \S~63_combout\ = ( \c[63]~110_combout\ & ( !\B[63]~input_o\ $ (!\A[63]~input_o\ $ (((\c~108_combout\) # (\PrefixNetwork|Gk~198_combout\)))) ) ) # ( !\c[63]~110_combout\ & ( !\B[63]~input_o\ $ (\A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \PrefixNetwork|ALT_INV_Gk~198_combout\,
	datad => \ALT_INV_c~108_combout\,
	dataf => \ALT_INV_c[63]~110_combout\,
	combout => \S~63_combout\);

-- Location: LABCELL_X58_Y20_N26
\p[62]~DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \p[62]~DUPLICATE_combout\ = ( !\B[62]~input_o\ & ( \A[62]~input_o\ ) ) # ( \B[62]~input_o\ & ( !\A[62]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[62]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \p[62]~DUPLICATE_combout\);

-- Location: LABCELL_X58_Y20_N6
\PrefixNetwork|Pk[4][63]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][63]~81_combout\ = ( \p[62]~DUPLICATE_combout\ & ( \A[63]~input_o\ & ( !\B[63]~input_o\ ) ) ) # ( \p[62]~DUPLICATE_combout\ & ( !\A[63]~input_o\ & ( \B[63]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[63]~input_o\,
	datae => \ALT_INV_p[62]~DUPLICATE_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \PrefixNetwork|Pk[4][63]~81_combout\);

-- Location: LABCELL_X58_Y20_N22
\PrefixNetwork|Pk[2][59]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][59]~76_combout\ = ( \PrefixNetwork|Pk[1][59]~combout\ & ( p(57) & ( !\B[56]~input_o\ $ (!\A[56]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \PrefixNetwork|ALT_INV_Pk[1][59]~combout\,
	dataf => ALT_INV_p(57),
	combout => \PrefixNetwork|Pk[2][59]~76_combout\);

-- Location: LABCELL_X58_Y20_N32
\PrefixNetwork|Pk[4][63]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][63]~80_combout\ = ( \PrefixNetwork|Pk[2][59]~76_combout\ & ( \PrefixNetwork|Pk[1][61]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PrefixNetwork|ALT_INV_Pk[2][59]~76_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[1][61]~combout\,
	combout => \PrefixNetwork|Pk[4][63]~80_combout\);

-- Location: MLABCELL_X57_Y16_N2
\PrefixNetwork|Gk~200\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~200_combout\ = ( \PrefixNetwork|Pk[4][39]~47_combout\ & ( \PrefixNetwork|Pk[4][63]~80_combout\ & ( (\PrefixNetwork|Pk[2][43]~55_combout\ & (\PrefixNetwork|Pk[2][47]~63_combout\ & (\PrefixNetwork|Pk[4][63]~81_combout\ & 
-- \c[56]~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datab => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][63]~81_combout\,
	datad => \ALT_INV_c[56]~80_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[4][39]~47_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][63]~80_combout\,
	combout => \PrefixNetwork|Gk~200_combout\);

-- Location: LABCELL_X58_Y16_N0
\c~111\ : arriaii_lcell_comb
-- Equation(s):
-- \c~111_combout\ = ( \PrefixNetwork|Gk~200_combout\ & ( (\PrefixNetwork|Pk[4][31]~29_combout\ & \c~16DUPLICATE_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[4][31]~29_combout\,
	datad => \ALT_INV_c~16DUPLICATE_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~200_combout\,
	combout => \c~111_combout\);

-- Location: LABCELL_X58_Y16_N18
\PrefixNetwork|Gk~201\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~201_combout\ = ( \PrefixNetwork|Gk~104_combout\ & ( \PrefixNetwork|Gk~200_combout\ ) ) # ( !\PrefixNetwork|Gk~104_combout\ & ( \PrefixNetwork|Gk~200_combout\ & ( (!\PrefixNetwork|Gk[3][31]~combout\) # 
-- ((\PrefixNetwork|Pk[4][31]~29_combout\ & ((!\PrefixNetwork|Gk[3][15]~combout\) # (\PrefixNetwork|Gk~37_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[3][15]~combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][31]~combout\,
	datac => \PrefixNetwork|ALT_INV_Gk~37_combout\,
	datad => \PrefixNetwork|ALT_INV_Pk[4][31]~29_combout\,
	datae => \PrefixNetwork|ALT_INV_Gk~104_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~200_combout\,
	combout => \PrefixNetwork|Gk~201_combout\);

-- Location: LABCELL_X58_Y20_N10
\PrefixNetwork|Gk[1][63]~202\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][63]~202_combout\ = ( \A[63]~input_o\ & ( \A[62]~input_o\ & ( (\B[62]~input_o\) # (\B[63]~input_o\) ) ) ) # ( !\A[63]~input_o\ & ( \A[62]~input_o\ & ( (\B[63]~input_o\ & \B[62]~input_o\) ) ) ) # ( \A[63]~input_o\ & ( !\A[62]~input_o\ & 
-- ( \B[63]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[63]~input_o\,
	datad => \ALT_INV_B[62]~input_o\,
	datae => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \PrefixNetwork|Gk[1][63]~202_combout\);

-- Location: LABCELL_X58_Y20_N28
\PrefixNetwork|Pk[4][63]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][63]~82_combout\ = ( \c[56]~80_combout\ & ( \PrefixNetwork|Pk[4][63]~80_combout\ & ( \PrefixNetwork|Pk[4][63]~81_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PrefixNetwork|ALT_INV_Pk[4][63]~81_combout\,
	datae => \ALT_INV_c[56]~80_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][63]~80_combout\,
	combout => \PrefixNetwork|Pk[4][63]~82_combout\);

-- Location: LABCELL_X58_Y20_N4
\PrefixNetwork|Pk[4][63]~81DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][63]~81DUPLICATE_combout\ = ( \p[62]~DUPLICATE_combout\ & ( \A[63]~input_o\ & ( !\B[63]~input_o\ ) ) ) # ( \p[62]~DUPLICATE_combout\ & ( !\A[63]~input_o\ & ( \B[63]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[63]~input_o\,
	datae => \ALT_INV_p[62]~DUPLICATE_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \PrefixNetwork|Pk[4][63]~81DUPLICATE_combout\);

-- Location: LABCELL_X58_Y16_N12
\c~112\ : arriaii_lcell_comb
-- Equation(s):
-- \c~112_combout\ = ( \PrefixNetwork|Pk[4][63]~80_combout\ & ( (\PrefixNetwork|Pk[4][63]~81DUPLICATE_combout\ & ((!\PrefixNetwork|Gk[3][55]~combout\) # (!\c[62]~105_combout\))) ) ) # ( !\PrefixNetwork|Pk[4][63]~80_combout\ & ( 
-- (\PrefixNetwork|Pk[4][63]~81DUPLICATE_combout\ & !\c[62]~105_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|ALT_INV_Pk[4][63]~81DUPLICATE_combout\,
	datac => \PrefixNetwork|ALT_INV_Gk[3][55]~combout\,
	datad => \ALT_INV_c[62]~105_combout\,
	dataf => \PrefixNetwork|ALT_INV_Pk[4][63]~80_combout\,
	combout => \c~112_combout\);

-- Location: LABCELL_X55_Y12_N34
\PrefixNetwork|Gk~166\ : arriaii_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~166_combout\ = ( \PrefixNetwork|Pk[2][47]~63_combout\ & ( !\PrefixNetwork|Gk[3][39]~combout\ & ( \PrefixNetwork|Pk[2][43]~55_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|ALT_INV_Pk[2][43]~55_combout\,
	datae => \PrefixNetwork|ALT_INV_Pk[2][47]~63_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk[3][39]~combout\,
	combout => \PrefixNetwork|Gk~166_combout\);

-- Location: LABCELL_X58_Y16_N20
\c~113\ : arriaii_lcell_comb
-- Equation(s):
-- \c~113_combout\ = ( \PrefixNetwork|Gk~166_combout\ & ( (!\PrefixNetwork|Gk[1][63]~202_combout\ & (!\PrefixNetwork|Pk[4][63]~82_combout\ & !\c~112_combout\)) ) ) # ( !\PrefixNetwork|Gk~166_combout\ & ( (!\PrefixNetwork|Gk[1][63]~202_combout\ & 
-- (!\c~112_combout\ & ((!\PrefixNetwork|Pk[4][63]~82_combout\) # (\PrefixNetwork|Gk[3][47]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk[1][63]~202_combout\,
	datab => \PrefixNetwork|ALT_INV_Gk[3][47]~combout\,
	datac => \PrefixNetwork|ALT_INV_Pk[4][63]~82_combout\,
	datad => \ALT_INV_c~112_combout\,
	dataf => \PrefixNetwork|ALT_INV_Gk~166_combout\,
	combout => \c~113_combout\);

-- Location: LABCELL_X58_Y16_N36
\c~114\ : arriaii_lcell_comb
-- Equation(s):
-- \c~114_combout\ = ( \c~113_combout\ & ( (\PrefixNetwork|Gk~201_combout\) # (\c~111_combout\) ) ) # ( !\c~113_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c~111_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~201_combout\,
	dataf => \ALT_INV_c~113_combout\,
	combout => \c~114_combout\);

-- Location: LABCELL_X58_Y16_N4
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \c~108_combout\ & ( \c[63]~110_combout\ & ( (!\PrefixNetwork|Gk~201_combout\ & (!\c~111_combout\ & \c~113_combout\)) ) ) ) # ( !\c~108_combout\ & ( \c[63]~110_combout\ & ( !\PrefixNetwork|Gk~198_combout\ $ 
-- (((!\PrefixNetwork|Gk~201_combout\ & (!\c~111_combout\ & \c~113_combout\)))) ) ) ) # ( \c~108_combout\ & ( !\c[63]~110_combout\ & ( (!\PrefixNetwork|Gk~201_combout\ & (!\c~111_combout\ & \c~113_combout\)) ) ) ) # ( !\c~108_combout\ & ( 
-- !\c[63]~110_combout\ & ( (!\PrefixNetwork|Gk~201_combout\ & (!\c~111_combout\ & \c~113_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011110111000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|ALT_INV_Gk~201_combout\,
	datab => \ALT_INV_c~111_combout\,
	datac => \ALT_INV_c~113_combout\,
	datad => \PrefixNetwork|ALT_INV_Gk~198_combout\,
	datae => \ALT_INV_c~108_combout\,
	dataf => \ALT_INV_c[63]~110_combout\,
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


