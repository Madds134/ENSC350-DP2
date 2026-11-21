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

-- DATE "11/21/2026 11:12:36"

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
	S : BUFFER std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[4]~combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[5]~combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[6]~combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[6]~combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[8]~combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[8]~combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[9]~combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[10]~combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[11]~combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[12]~combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[12]~combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[13]~combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[14]~combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[0]~combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[1]~combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[2]~combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[3]~combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[4]~combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[4]~combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[5]~combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[6]~combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[7]~combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[8]~combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[9]~combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[10]~combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[11]~combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[12]~combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[13]~combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[14]~combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[15]~combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[16]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[16]~combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[17]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[17]~combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[18]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[18]~combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[19]~combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[19]~combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[20]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[20]~combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[21]~combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[21]~combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[22]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[22]~combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[23]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[23]~combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[24]~combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[24]~combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[25]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[25]~combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[26]~combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[26]~combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[27]~combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[27]~combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[28]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[28]~combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[29]~combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[29]~combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[30]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[30]~combout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M0[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:M1[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M1[31]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:M0[31]~combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
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
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[31]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[31]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[30]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[30]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[29]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[29]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[28]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[28]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[27]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[27]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[26]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[26]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[25]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[25]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[24]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[24]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[23]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[23]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[22]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[22]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[21]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[21]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[20]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[20]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[19]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[19]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[18]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[18]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[17]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[17]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[16]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[16]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[14]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[13]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[12]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[11]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[10]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[9]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[8]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ : std_logic;

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
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[7]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[7]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[6]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[6]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[5]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[5]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[4]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[15]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[15]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[15]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[15]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[14]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[14]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[14]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[14]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[13]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[13]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[13]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[13]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[12]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[12]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[12]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[11]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[11]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[11]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[11]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[10]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[10]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[10]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[10]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[9]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[9]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[9]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[9]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[8]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[8]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[8]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[8]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[6]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[4]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[7]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[7]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[6]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[5]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[5]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[4]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[31]~combout\ <= NOT \CarryNetwork|Recur:M0[31]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[31]~combout\ <= NOT \CarryNetwork|Recur:M1[31]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[30]~combout\ <= NOT \CarryNetwork|Recur:M0[30]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[30]~combout\ <= NOT \CarryNetwork|Recur:M1[30]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[29]~combout\ <= NOT \CarryNetwork|Recur:M0[29]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[29]~combout\ <= NOT \CarryNetwork|Recur:M1[29]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[28]~combout\ <= NOT \CarryNetwork|Recur:M0[28]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[28]~combout\ <= NOT \CarryNetwork|Recur:M1[28]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[27]~combout\ <= NOT \CarryNetwork|Recur:M0[27]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[27]~combout\ <= NOT \CarryNetwork|Recur:M1[27]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[26]~combout\ <= NOT \CarryNetwork|Recur:M0[26]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[26]~combout\ <= NOT \CarryNetwork|Recur:M1[26]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[25]~combout\ <= NOT \CarryNetwork|Recur:M0[25]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[25]~combout\ <= NOT \CarryNetwork|Recur:M1[25]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[24]~combout\ <= NOT \CarryNetwork|Recur:M0[24]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[24]~combout\ <= NOT \CarryNetwork|Recur:M1[24]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[23]~combout\ <= NOT \CarryNetwork|Recur:M0[23]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[23]~combout\ <= NOT \CarryNetwork|Recur:M1[23]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[22]~combout\ <= NOT \CarryNetwork|Recur:M0[22]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[22]~combout\ <= NOT \CarryNetwork|Recur:M1[22]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[21]~combout\ <= NOT \CarryNetwork|Recur:M0[21]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[21]~combout\ <= NOT \CarryNetwork|Recur:M1[21]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[20]~combout\ <= NOT \CarryNetwork|Recur:M0[20]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[20]~combout\ <= NOT \CarryNetwork|Recur:M1[20]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[19]~combout\ <= NOT \CarryNetwork|Recur:M0[19]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[19]~combout\ <= NOT \CarryNetwork|Recur:M1[19]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[18]~combout\ <= NOT \CarryNetwork|Recur:M0[18]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[18]~combout\ <= NOT \CarryNetwork|Recur:M1[18]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[17]~combout\ <= NOT \CarryNetwork|Recur:M0[17]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[17]~combout\ <= NOT \CarryNetwork|Recur:M1[17]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[16]~combout\ <= NOT \CarryNetwork|Recur:M0[16]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[16]~combout\ <= NOT \CarryNetwork|Recur:M1[16]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[15]~combout\ <= NOT \CarryNetwork|Recur:M0[15]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[15]~combout\ <= NOT \CarryNetwork|Recur:M1[15]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[14]~combout\ <= NOT \CarryNetwork|Recur:M0[14]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[14]~combout\ <= NOT \CarryNetwork|Recur:M1[14]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[13]~combout\ <= NOT \CarryNetwork|Recur:M0[13]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[13]~combout\ <= NOT \CarryNetwork|Recur:M1[13]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[12]~combout\ <= NOT \CarryNetwork|Recur:M0[12]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[12]~combout\ <= NOT \CarryNetwork|Recur:M1[12]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[11]~combout\ <= NOT \CarryNetwork|Recur:M0[11]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[11]~combout\ <= NOT \CarryNetwork|Recur:M1[11]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[10]~combout\ <= NOT \CarryNetwork|Recur:M0[10]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[10]~combout\ <= NOT \CarryNetwork|Recur:M1[10]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[9]~combout\ <= NOT \CarryNetwork|Recur:M0[9]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[9]~combout\ <= NOT \CarryNetwork|Recur:M1[9]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[8]~combout\ <= NOT \CarryNetwork|Recur:M0[8]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[8]~combout\ <= NOT \CarryNetwork|Recur:M1[8]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[7]~combout\ <= NOT \CarryNetwork|Recur:M0[7]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[7]~combout\ <= NOT \CarryNetwork|Recur:M1[7]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[6]~combout\ <= NOT \CarryNetwork|Recur:M0[6]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[6]~combout\ <= NOT \CarryNetwork|Recur:M1[6]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[5]~combout\ <= NOT \CarryNetwork|Recur:M0[5]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[5]~combout\ <= NOT \CarryNetwork|Recur:M1[5]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[4]~combout\ <= NOT \CarryNetwork|Recur:M0[4]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[4]~combout\ <= NOT \CarryNetwork|Recur:M1[4]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:M0[3]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:M1[3]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:M0[2]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:M1[2]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:M0[1]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:M1[1]~combout\;
\CarryNetwork|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:M0[0]~combout\;
\CarryNetwork|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[14]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[14]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[14]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[14]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[13]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[13]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[13]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[13]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[12]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[12]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[12]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[12]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[11]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[11]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[11]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[11]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[10]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[10]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[10]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[10]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[9]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[9]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[9]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[9]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[8]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[8]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[8]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[8]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[6]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[6]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[5]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[5]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[4]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[4]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\;
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\ <= NOT \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\;

-- Location: IOOBUF_X38_Y56_N36
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

-- Location: IOOBUF_X36_Y56_N36
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

-- Location: IOOBUF_X43_Y0_N98
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

-- Location: IOOBUF_X48_Y0_N67
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

-- Location: IOOBUF_X43_Y0_N67
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

-- Location: IOOBUF_X43_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X45_Y0_N98
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

-- Location: IOOBUF_X45_Y0_N67
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

-- Location: IOOBUF_X45_Y0_N2
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

-- Location: IOOBUF_X47_Y0_N67
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X59_Y25_N36
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

-- Location: IOOBUF_X56_Y56_N33
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

-- Location: IOOBUF_X52_Y0_N67
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X45_Y0_N36
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

-- Location: IOOBUF_X47_Y0_N98
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

-- Location: IOOBUF_X47_Y0_N2
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

-- Location: IOOBUF_X47_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N98
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

-- Location: IOOBUF_X48_Y0_N5
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

-- Location: IOOBUF_X50_Y0_N67
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

-- Location: IOOBUF_X56_Y0_N64
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X50_Y0_N98
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

-- Location: IOOBUF_X56_Y0_N95
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

-- Location: IOOBUF_X56_Y0_N33
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X55_Y0_N98
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

-- Location: IOOBUF_X55_Y0_N67
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

-- Location: IOOBUF_X55_Y0_N33
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

-- Location: IOOBUF_X46_Y56_N67
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

-- Location: IOOBUF_X48_Y56_N5
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

-- Location: IOOBUF_X48_Y56_N33
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

-- Location: IOOBUF_X48_Y56_N98
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

-- Location: IOOBUF_X59_Y48_N2
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

-- Location: IOOBUF_X59_Y48_N67
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

-- Location: IOOBUF_X59_Y46_N2
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

-- Location: IOOBUF_X49_Y56_N67
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

-- Location: IOOBUF_X59_Y48_N36
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

-- Location: IOOBUF_X59_Y51_N98
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

-- Location: IOOBUF_X56_Y56_N95
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

-- Location: IOOBUF_X59_Y48_N98
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

-- Location: IOOBUF_X59_Y36_N36
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

-- Location: IOOBUF_X59_Y46_N36
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

-- Location: IOOBUF_X59_Y46_N67
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

-- Location: IOOBUF_X59_Y46_N98
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

-- Location: IOOBUF_X59_Y39_N5
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

-- Location: IOOBUF_X59_Y39_N33
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

-- Location: IOOBUF_X59_Y39_N67
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

-- Location: IOOBUF_X59_Y39_N98
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

-- Location: IOOBUF_X59_Y30_N98
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

-- Location: IOOBUF_X59_Y31_N67
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

-- Location: IOOBUF_X59_Y31_N98
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

-- Location: IOOBUF_X59_Y34_N36
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

-- Location: IOOBUF_X59_Y30_N2
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

-- Location: IOOBUF_X59_Y36_N2
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

-- Location: IOOBUF_X59_Y31_N36
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

-- Location: IOOBUF_X59_Y31_N2
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

-- Location: IOOBUF_X59_Y33_N98
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

-- Location: IOOBUF_X59_Y34_N2
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

-- Location: IOOBUF_X59_Y36_N98
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

-- Location: IOOBUF_X59_Y33_N33
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

-- Location: IOOBUF_X59_Y33_N67
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y33_N5
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

-- Location: IOIBUF_X59_Y25_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X48_Y0_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y4_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X57_Y21_N16
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \Cin~input_o\ & ( \A[0]~input_o\ & ( \B[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( \A[0]~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( \Cin~input_o\ & ( !\A[0]~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( !\Cin~input_o\ & ( !\A[0]~input_o\ & ( 
-- \B[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X59_Y23_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X57_Y21_N14
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \Cin~input_o\ & ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) ) # ( !\Cin~input_o\ & ( \A[0]~input_o\ & ( !\B[0]~input_o\ $ (!\B[1]~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( \Cin~input_o\ & ( !\A[0]~input_o\ & ( 
-- !\B[0]~input_o\ $ (!\B[1]~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( !\Cin~input_o\ & ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010110101010010101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X59_Y16_N94
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X58_Y19_N38
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \B[0]~input_o\ & ( (\A[1]~input_o\) # (\B[1]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\)) # 
-- (\B[1]~input_o\ & ((\A[1]~input_o\) # (\A[0]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: IOIBUF_X59_Y16_N63
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y19_N16
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))) ) ) # ( 
-- !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y14_N16
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \B[2]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[2]~input_o\ $ (((!\Cin~input_o\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- !\A[2]~input_o\ $ (((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & \Cin~input_o\))) ) ) ) # ( \B[2]~input_o\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[2]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & \Cin~input_o\))) 
-- ) ) ) # ( !\B[2]~input_o\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[2]~input_o\ $ 
-- (((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (!\Cin~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010101010101010010110101010010110100101010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y22_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X54_Y14_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \B[2]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\B[2]~input_o\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \A[2]~input_o\ ) ) ) # ( \B[2]~input_o\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \A[2]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y14_N28
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \B[2]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) # ( !\B[2]~input_o\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \A[2]~input_o\ ) ) ) # ( \B[2]~input_o\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \A[2]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y14_N4
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[3]~input_o\ $ (\B[3]~input_o\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\Cin~input_o\ $ (!\A[3]~input_o\ $ (!\B[3]~input_o\)) ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\Cin~input_o\ $ (!\A[3]~input_o\ $ (\B[3]~input_o\)) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001111000011001111001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X59_Y23_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y21_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X58_Y19_N26
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[2]~input_o\ & ( (\A[3]~input_o\) # (\B[3]~input_o\) ) ) # ( !\A[2]~input_o\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & \A[3]~input_o\)) # 
-- (\B[3]~input_o\ & ((\A[3]~input_o\) # (\B[2]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y19_N36
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \B[3]~input_o\ & ( ((\A[2]~input_o\ & \B[2]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & (\A[2]~input_o\ & 
-- \B[2]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y19_N32
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X58_Y19_N6
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X58_Y19_N34
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\ $ (((!\Cin~input_o\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)))) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\ $ (((\Cin~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100110010110101001011001011010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y21_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y22_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X58_Y19_N30
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\A[4]~input_o\) # (\B[4]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\B[4]~input_o\ & \A[4]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y19_N2
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\A[4]~input_o\) # (\B[4]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\B[4]~input_o\ & \A[4]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y19_N22
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\Cin~input_o\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((!\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010110011001101001011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y23_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y18_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X58_Y19_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[5]~input_o\ & ( ((\A[4]~input_o\ & \B[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\A[4]~input_o\ & (\B[5]~input_o\ & 
-- \B[4]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y19_N24
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[5]~input_o\ & ( ((\A[4]~input_o\) # (\B[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & ((\A[4]~input_o\) 
-- # (\B[4]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X57_Y19_N8
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X58_Y19_N4
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: MLABCELL_X57_Y19_N26
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100110010110101001011001011010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X59_Y7_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X57_Y19_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\B[6]~input_o\) # (\A[6]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\A[6]~input_o\ & \B[6]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X57_Y19_N38
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[6]~input_o\ & ( (\B[6]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ) # ( 
-- !\A[6]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & \B[6]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X57_Y19_N4
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: IOIBUF_X59_Y21_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X57_Y19_N24
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: MLABCELL_X57_Y19_N36
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100110011010011001011001101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	combout => \S~7_combout\);

-- Location: LABCELL_X55_Y19_N28
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[6]~input_o\ & ( (\A[7]~input_o\) # (\B[7]~input_o\) ) ) # ( !\A[6]~input_o\ & ( (!\B[7]~input_o\ & (\A[7]~input_o\ & \B[6]~input_o\)) # 
-- (\B[7]~input_o\ & ((\B[6]~input_o\) # (\A[7]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y19_N32
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[6]~input_o\ & ( (!\B[7]~input_o\ & (\A[7]~input_o\ & \B[6]~input_o\)) # (\B[7]~input_o\ & ((\B[6]~input_o\) # (\A[7]~input_o\))) ) ) # 
-- ( !\A[6]~input_o\ & ( (\B[7]~input_o\ & \A[7]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y19_N36
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y19_N2
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y19_N30
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: IOIBUF_X59_Y4_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X55_Y19_N18
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: MLABCELL_X54_Y19_N2
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( !\A[8]~input_o\ $ (!\B[8]~input_o\ $ (((\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( !\A[8]~input_o\ $ (!\B[8]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110011100011000111001110001101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X52_Y0_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X54_Y19_N28
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( (\A[8]~input_o\) # (\B[8]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( (\B[8]~input_o\ & \A[8]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: IOIBUF_X59_Y4_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X54_Y19_N10
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( (\B[8]~input_o\) # (\A[8]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( (\A[8]~input_o\ & \B[8]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y19_N4
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\Cin~input_o\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (((!\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111000110001110011100011001101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X59_Y22_N32
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y18_N1
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X54_Y19_N38
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[8]~input_o\ & ( (\A[9]~input_o\) # (\B[9]~input_o\) ) ) # ( !\A[8]~input_o\ & ( (!\B[9]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\)) # 
-- (\B[9]~input_o\ & ((\B[8]~input_o\) # (\A[9]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y19_N8
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[9]~input_o\ & ( ((\B[8]~input_o\ & \A[8]~input_o\)) # (\B[9]~input_o\) ) ) # ( !\A[9]~input_o\ & ( (\B[8]~input_o\ & (\A[8]~input_o\ & 
-- \B[9]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y19_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: MLABCELL_X54_Y19_N24
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL((!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- ((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\))) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X54_Y19_N16
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\) # (\Cin~input_o\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\ $ (((!\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010110011001101001011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X59_Y18_N32
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X59_Y18_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: MLABCELL_X54_Y19_N36
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[10]~input_o\ & ( (\B[10]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ) # 
-- ( !\A[10]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & \B[10]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y19_N34
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[10]~input_o\ & ( (\B[10]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ) # 
-- ( !\A[10]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & \B[10]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y19_N32
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: MLABCELL_X54_Y19_N20
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: MLABCELL_X54_Y19_N22
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ & \Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100110011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X59_Y4_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X54_Y19_N14
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[10]~input_o\ & ( (!\A[11]~input_o\ & (\B[11]~input_o\ & \B[10]~input_o\)) # (\A[11]~input_o\ & ((\B[10]~input_o\) # (\B[11]~input_o\))) 
-- ) ) # ( !\A[10]~input_o\ & ( (\A[11]~input_o\ & \B[11]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y19_N30
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[10]~input_o\ & ( (\B[11]~input_o\) # (\A[11]~input_o\) ) ) # ( !\A[10]~input_o\ & ( (!\A[11]~input_o\ & (\B[11]~input_o\ & 
-- \B[10]~input_o\)) # (\A[11]~input_o\ & ((\B[10]~input_o\) # (\B[11]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y19_N26
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X54_Y19_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y19_N10
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: MLABCELL_X57_Y19_N18
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X58_Y25_N2
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( !\B[12]~input_o\ $ (\A[12]~input_o\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( !\Cin~input_o\ $ (!\B[12]~input_o\ $ (!\A[12]~input_o\)) ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( !\Cin~input_o\ $ (!\B[12]~input_o\ $ (\A[12]~input_o\)) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001111000011001111001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X59_Y16_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y22_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X54_Y19_N18
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\B[12]~input_o\) # (\A[12]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\A[12]~input_o\ & \B[12]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y19_N6
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[12]~input_o\ & ( (\B[12]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\) ) ) # ( !\A[12]~input_o\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & \B[12]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y19_N8
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[4]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[4]~combout\);

-- Location: LABCELL_X58_Y19_N20
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[4]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[4]~combout\);

-- Location: LABCELL_X58_Y19_N10
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[4]~combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[4]~combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[4]~combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[4]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100110010110101001011001011010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X59_Y19_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X59_Y19_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X58_Y19_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \B[12]~input_o\ & ( (!\B[13]~input_o\ & (\A[12]~input_o\ & \A[13]~input_o\)) # (\B[13]~input_o\ & ((\A[13]~input_o\) # (\A[12]~input_o\))) 
-- ) ) # ( !\B[12]~input_o\ & ( (\B[13]~input_o\ & \A[13]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y19_N28
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \B[12]~input_o\ & ( (\B[13]~input_o\) # (\A[13]~input_o\) ) ) # ( !\B[12]~input_o\ & ( (!\A[13]~input_o\ & (\B[13]~input_o\ & 
-- \A[12]~input_o\)) # (\A[13]~input_o\ & ((\A[12]~input_o\) # (\B[13]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X57_Y19_N32
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: MLABCELL_X57_Y19_N14
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X57_Y19_N16
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[5]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[5]~combout\);

-- Location: MLABCELL_X57_Y19_N10
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[5]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[5]~combout\);

-- Location: MLABCELL_X57_Y19_N2
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[5]~combout\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (((\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[5]~combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[5]~combout\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[5]~combout\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X59_Y19_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X57_Y19_N22
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[14]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\A[14]~input_o\) ) ) 
-- # ( !\B[14]~input_o\ & ( (\A[14]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X57_Y19_N34
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \B[14]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\A[14]~input_o\) ) ) 
-- # ( !\B[14]~input_o\ & ( (\A[14]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X57_Y19_N30
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: MLABCELL_X57_Y19_N28
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: MLABCELL_X57_Y19_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[6]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[6]~combout\);

-- Location: IOIBUF_X59_Y19_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X57_Y19_N6
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[6]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[6]~combout\);

-- Location: MLABCELL_X57_Y19_N20
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[6]~combout\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[6]~combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[6]~combout\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[6]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100110011010011001011001101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X59_Y6_N1
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X58_Y19_N14
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[14]~input_o\ & ( (\B[15]~input_o\) # (\A[15]~input_o\) ) ) # ( !\B[14]~input_o\ & ( (!\A[15]~input_o\ & (\A[14]~input_o\ & 
-- \B[15]~input_o\)) # (\A[15]~input_o\ & ((\B[15]~input_o\) # (\A[14]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y19_N18
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \B[14]~input_o\ & ( (!\A[14]~input_o\ & (\B[15]~input_o\ & \A[15]~input_o\)) # (\A[14]~input_o\ & ((\A[15]~input_o\) # 
-- (\B[15]~input_o\))) ) ) # ( !\B[14]~input_o\ & ( (\B[15]~input_o\ & \A[15]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y19_N20
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y19_N14
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y19_N0
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X55_Y19_N16
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X55_Y19_N34
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\);

-- Location: LABCELL_X55_Y19_N12
\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\);

-- Location: LABCELL_X50_Y11_N34
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( !\A[16]~input_o\ $ (\B[16]~input_o\) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( !\Cin~input_o\ $ (!\A[16]~input_o\ $ (\B[16]~input_o\)) ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( !\Cin~input_o\ $ (!\A[16]~input_o\ $ (!\B[16]~input_o\)) ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( !\A[16]~input_o\ $ (!\B[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000101001010101101001011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X59_Y9_N94
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X59_Y9_N32
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LABCELL_X50_Y11_N22
\CarryNetwork|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \B[16]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ ) ) # ( !\B[16]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \A[16]~input_o\ ) 
-- ) ) # ( \B[16]~input_o\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \A[16]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X50_Y11_N10
\CarryNetwork|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \B[16]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ) # ( !\B[16]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \A[16]~input_o\ ) 
-- ) ) # ( \B[16]~input_o\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \A[16]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X50_Y11_N6
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\B[17]~input_o\ $ (\A[17]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\Cin~input_o\ $ (!\B[17]~input_o\ $ (\A[17]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\Cin~input_o\ $ 
-- (!\B[17]~input_o\ $ (!\A[17]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\B[17]~input_o\ $ (!\A[17]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000101001010101101001011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X59_Y9_N1
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X55_Y11_N6
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[16]~input_o\ & ( (\A[17]~input_o\) # (\B[17]~input_o\) ) ) # ( !\A[16]~input_o\ & ( (!\B[17]~input_o\ & (\A[17]~input_o\ & 
-- \B[16]~input_o\)) # (\B[17]~input_o\ & ((\B[16]~input_o\) # (\A[17]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y11_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[16]~input_o\ & ( (!\B[17]~input_o\ & (\A[17]~input_o\ & \B[16]~input_o\)) # (\B[17]~input_o\ & ((\B[16]~input_o\) # (\A[17]~input_o\))) 
-- ) ) # ( !\A[16]~input_o\ & ( (\B[17]~input_o\ & \A[17]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X50_Y11_N36
\CarryNetwork|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X50_Y11_N2
\CarryNetwork|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X50_Y11_N24
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[18]~input_o\ $ (\A[18]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[18]~input_o\ $ (!\Cin~input_o\ $ (\A[18]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[18]~input_o\ $ 
-- (!\Cin~input_o\ $ (!\A[18]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\B[18]~input_o\ $ (!\A[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110000110011110000111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X59_Y10_N63
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X59_Y9_N63
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X50_Y11_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\B[18]~input_o\) # (\A[18]~input_o\) ) ) # 
-- ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\A[18]~input_o\ & \B[18]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X50_Y11_N28
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[18]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\B[18]~input_o\) ) ) # 
-- ( !\A[18]~input_o\ & ( (\B[18]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[18]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X50_Y11_N30
\CarryNetwork|Recur:LowHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: LABCELL_X50_Y11_N16
\CarryNetwork|Recur:LowHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: LABCELL_X50_Y11_N14
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ & ( !\B[19]~input_o\ $ (\A[19]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\ $ (\Cin~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ & ( !\B[19]~input_o\ $ 
-- (!\A[19]~input_o\ $ (!\Cin~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[2]~combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001010101101001011010101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X59_Y10_N94
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X55_Y11_N30
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[19]~input_o\ & ( ((\B[19]~input_o\) # (\B[18]~input_o\)) # (\A[18]~input_o\) ) ) # ( !\A[19]~input_o\ & ( (\B[19]~input_o\ & 
-- ((\B[18]~input_o\) # (\A[18]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y11_N34
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[18]~input_o\ & ( (!\B[19]~input_o\ & (\A[19]~input_o\ & \B[18]~input_o\)) # (\B[19]~input_o\ & ((\B[18]~input_o\) # (\A[19]~input_o\))) 
-- ) ) # ( !\A[18]~input_o\ & ( (\B[19]~input_o\ & \A[19]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y11_N28
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y11_N20
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X53_Y11_N24
\CarryNetwork|Recur:LowHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: IOIBUF_X59_Y7_N32
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LABCELL_X53_Y11_N20
\CarryNetwork|Recur:LowHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X53_Y11_N8
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & ( !\B[20]~input_o\ $ (!\A[20]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\)))) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[3]~combout\ & ( 
-- !\B[20]~input_o\ $ (!\A[20]~input_o\ $ (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M1[3]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100110011010011001011001101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X59_Y12_N32
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X59_Y12_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X53_Y11_N0
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \B[20]~input_o\ & ( (\A[20]~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ) # ( !\B[20]~input_o\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & \A[20]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X53_Y11_N30
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\A[20]~input_o\) # (\B[20]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\B[20]~input_o\ & \A[20]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X53_Y11_N12
\CarryNetwork|Recur:LowHalf|Recur:M1[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\);

-- Location: LABCELL_X53_Y11_N16
\CarryNetwork|Recur:LowHalf|Recur:M0[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\);

-- Location: LABCELL_X53_Y11_N22
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\ & ( !\A[21]~input_o\ $ (!\B[21]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\)))) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[4]~combout\ & ( 
-- !\A[21]~input_o\ $ (!\B[21]~input_o\ $ (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M1[4]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100110010110101001011001011010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X59_Y10_N32
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X55_Y11_N32
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \B[21]~input_o\ & ( ((\B[20]~input_o\ & \A[20]~input_o\)) # (\A[21]~input_o\) ) ) # ( !\B[21]~input_o\ & ( (\B[20]~input_o\ & 
-- (\A[21]~input_o\ & \A[20]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y11_N0
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \B[20]~input_o\ & ( (\A[21]~input_o\) # (\B[21]~input_o\) ) ) # ( !\B[20]~input_o\ & ( (!\B[21]~input_o\ & (\A[21]~input_o\ & 
-- \A[20]~input_o\)) # (\B[21]~input_o\ & ((\A[20]~input_o\) # (\A[21]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y11_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: MLABCELL_X54_Y11_N38
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X53_Y11_N32
\CarryNetwork|Recur:LowHalf|Recur:M0[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\);

-- Location: IOIBUF_X59_Y12_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X53_Y11_N38
\CarryNetwork|Recur:LowHalf|Recur:M1[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\);

-- Location: LABCELL_X53_Y11_N2
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\ & ( !\A[22]~input_o\ $ (!\B[22]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[5]~combout\ & ( 
-- !\A[22]~input_o\ $ (!\B[22]~input_o\ $ (((!\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M0[5]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110100110010110011010011001101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X59_Y13_N1
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y12_N1
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X53_Y11_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[22]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\B[22]~input_o\) ) ) 
-- # ( !\A[22]~input_o\ & ( (\B[22]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[22]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X53_Y11_N26
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[22]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\B[22]~input_o\) ) ) 
-- # ( !\A[22]~input_o\ & ( (\B[22]~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[22]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X53_Y11_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: LABCELL_X53_Y11_N10
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: LABCELL_X53_Y11_N34
\CarryNetwork|Recur:LowHalf|Recur:M0[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\);

-- Location: LABCELL_X53_Y11_N6
\CarryNetwork|Recur:LowHalf|Recur:M1[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\);

-- Location: LABCELL_X53_Y11_N28
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[6]~combout\ & ( 
-- !\A[23]~input_o\ $ (!\B[23]~input_o\ $ (((!\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M0[6]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010010110010110101001011001101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X54_Y0_N63
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X55_Y11_N12
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[23]~input_o\ & ( ((\A[22]~input_o\ & \B[22]~input_o\)) # (\B[23]~input_o\) ) ) # ( !\A[23]~input_o\ & ( (\A[22]~input_o\ & 
-- (\B[22]~input_o\ & \B[23]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y11_N16
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[22]~input_o\ & ( (\A[23]~input_o\) # (\B[23]~input_o\) ) ) # ( !\B[22]~input_o\ & ( (!\A[22]~input_o\ & (\B[23]~input_o\ & 
-- \A[23]~input_o\)) # (\A[22]~input_o\ & ((\A[23]~input_o\) # (\B[23]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y11_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y11_N36
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y11_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X55_Y11_N26
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: MLABCELL_X54_Y11_N26
\CarryNetwork|Recur:LowHalf|Recur:M0[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\);

-- Location: MLABCELL_X54_Y11_N6
\CarryNetwork|Recur:LowHalf|Recur:M1[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\);

-- Location: MLABCELL_X54_Y11_N16
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & ( !\B[24]~input_o\ $ (\A[24]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & ( !\B[24]~input_o\ $ (!\Cin~input_o\ $ (\A[24]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & ( !\B[24]~input_o\ $ 
-- (!\Cin~input_o\ $ (!\A[24]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[7]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[7]~combout\ & ( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110000110011110000111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X59_Y6_N63
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X55_Y11_N14
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[24]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) # (\B[24]~input_o\) ) ) # ( !\A[24]~input_o\ & ( (\B[24]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y11_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[24]~input_o\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) # (\B[24]~input_o\) ) ) # ( !\A[24]~input_o\ & ( (\B[24]~input_o\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y11_N22
\CarryNetwork|Recur:LowHalf|Recur:M1[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[8]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[8]~combout\);

-- Location: IOIBUF_X55_Y0_N1
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X55_Y11_N10
\CarryNetwork|Recur:LowHalf|Recur:M0[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[8]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[8]~combout\);

-- Location: LABCELL_X55_Y11_N24
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[8]~combout\ & ( !\B[25]~input_o\ $ (!\A[25]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[8]~combout\)))) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[8]~combout\ & ( 
-- !\B[25]~input_o\ $ (!\A[25]~input_o\ $ (((\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M1[8]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100110011010011001011001101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[8]~combout\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[8]~combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X54_Y0_N32
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X54_Y0_N94
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X55_Y6_N16
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[25]~input_o\ & ( \B[24]~input_o\ ) ) # ( !\A[25]~input_o\ & ( \B[24]~input_o\ & ( \B[25]~input_o\ ) ) ) # ( \A[25]~input_o\ & ( 
-- !\B[24]~input_o\ & ( (\B[25]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( !\B[24]~input_o\ & ( (\A[24]~input_o\ & \B[25]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y6_N28
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[25]~input_o\ & ( \B[24]~input_o\ & ( (\B[25]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( \B[24]~input_o\ & ( 
-- (\A[24]~input_o\ & \B[25]~input_o\) ) ) ) # ( \A[25]~input_o\ & ( !\B[24]~input_o\ & ( \B[25]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y11_N10
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X54_Y11_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: MLABCELL_X54_Y11_N8
\CarryNetwork|Recur:LowHalf|Recur:M0[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[9]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[9]~combout\);

-- Location: MLABCELL_X54_Y11_N28
\CarryNetwork|Recur:LowHalf|Recur:M1[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[9]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[9]~combout\);

-- Location: MLABCELL_X54_Y11_N36
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M1[9]~combout\ & ( !\B[26]~input_o\ $ (!\A[26]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:M0[9]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[9]~combout\ & ( 
-- !\B[26]~input_o\ $ (!\A[26]~input_o\ $ (((!\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M0[9]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010010110010110101001011001101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[9]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[9]~combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X55_Y6_N34
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \B[26]~input_o\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \B[26]~input_o\ & ( \A[26]~input_o\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( !\B[26]~input_o\ & ( \A[26]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[26]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y6_N36
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \A[26]~input_o\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \A[26]~input_o\ & ( \B[26]~input_o\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\A[26]~input_o\ & ( \B[26]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[26]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y11_N12
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # 
-- ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: MLABCELL_X54_Y11_N14
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: MLABCELL_X54_Y11_N0
\CarryNetwork|Recur:LowHalf|Recur:M0[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[10]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[10]~combout\);

-- Location: MLABCELL_X54_Y11_N20
\CarryNetwork|Recur:LowHalf|Recur:M1[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[10]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[10]~combout\);

-- Location: MLABCELL_X54_Y11_N34
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[10]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[10]~combout\ & ( !\A[27]~input_o\ $ (\B[27]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[10]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M1[10]~combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (\Cin~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M0[10]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[10]~combout\ & ( !\A[27]~input_o\ $ 
-- (!\B[27]~input_o\ $ (!\Cin~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[10]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[10]~combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000110011110000111100110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[10]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[10]~combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X59_Y13_N63
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LABCELL_X55_Y6_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[26]~input_o\ & ( \A[27]~input_o\ ) ) # ( !\B[26]~input_o\ & ( \A[27]~input_o\ & ( (\B[27]~input_o\) # (\A[26]~input_o\) ) ) ) # ( 
-- \B[26]~input_o\ & ( !\A[27]~input_o\ & ( \B[27]~input_o\ ) ) ) # ( !\B[26]~input_o\ & ( !\A[27]~input_o\ & ( (\A[26]~input_o\ & \B[27]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	datae => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y6_N12
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \B[26]~input_o\ & ( \A[27]~input_o\ & ( (\B[27]~input_o\) # (\A[26]~input_o\) ) ) ) # ( !\B[26]~input_o\ & ( \A[27]~input_o\ & ( 
-- \B[27]~input_o\ ) ) ) # ( \B[26]~input_o\ & ( !\A[27]~input_o\ & ( (\A[26]~input_o\ & \B[27]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	datae => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y6_N26
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y6_N6
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y3_N32
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X55_Y3_N14
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) # 
-- ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X55_Y3_N4
\CarryNetwork|Recur:LowHalf|Recur:M1[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[11]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[11]~combout\);

-- Location: LABCELL_X55_Y3_N10
\CarryNetwork|Recur:LowHalf|Recur:M0[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[11]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[11]~combout\);

-- Location: LABCELL_X55_Y3_N26
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M1[11]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[11]~combout\ & ( !\A[28]~input_o\ $ (\B[28]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[11]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M0[11]~combout\ & ( !\A[28]~input_o\ $ (!\Cin~input_o\ $ (!\B[28]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M1[11]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[11]~combout\ & ( !\A[28]~input_o\ $ 
-- (!\Cin~input_o\ $ (\B[28]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[11]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[11]~combout\ & ( !\A[28]~input_o\ $ (!\B[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001111001100001111000011001111001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[11]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[11]~combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X59_Y15_N32
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LABCELL_X55_Y15_N20
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\A[28]~input_o\) # (\B[28]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\B[28]~input_o\ & \A[28]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y15_N28
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\B[28]~input_o\) # (\A[28]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\A[28]~input_o\ & \B[28]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y15_N36
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[4]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[4]~combout\);

-- Location: LABCELL_X55_Y15_N32
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]~combout\);

-- Location: LABCELL_X55_Y15_N6
\CarryNetwork|Recur:LowHalf|Recur:M0[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[12]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[4]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[4]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[12]~combout\);

-- Location: IOIBUF_X59_Y13_N32
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LABCELL_X55_Y15_N24
\CarryNetwork|Recur:LowHalf|Recur:M1[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[12]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[4]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[4]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[4]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[12]~combout\);

-- Location: LABCELL_X55_Y15_N34
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M1[12]~combout\ & ( !\B[29]~input_o\ $ (!\A[29]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:M0[12]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[12]~combout\ & ( 
-- !\B[29]~input_o\ $ (!\A[29]~input_o\ $ (((!\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M0[12]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110100110010110011010011001101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[12]~combout\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[12]~combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y7_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y15_N1
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X55_Y15_N12
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[28]~input_o\ & ( (!\B[29]~input_o\ & (\B[28]~input_o\ & \A[29]~input_o\)) # (\B[29]~input_o\ & ((\A[29]~input_o\) # 
-- (\B[28]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[29]~input_o\ & \A[29]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y15_N38
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \B[28]~input_o\ & ( (\A[29]~input_o\) # (\B[29]~input_o\) ) ) # ( !\B[28]~input_o\ & ( (!\B[29]~input_o\ & (\A[28]~input_o\ & 
-- \A[29]~input_o\)) # (\B[29]~input_o\ & ((\A[29]~input_o\) # (\A[28]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y15_N10
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y15_N14
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y15_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[5]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[5]~combout\);

-- Location: LABCELL_X55_Y15_N2
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[5]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[5]~combout\);

-- Location: LABCELL_X55_Y15_N4
\CarryNetwork|Recur:LowHalf|Recur:M0[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[13]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[5]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[5]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[5]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[5]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[13]~combout\);

-- Location: LABCELL_X55_Y15_N16
\CarryNetwork|Recur:LowHalf|Recur:M1[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[13]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[5]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[5]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[5]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[5]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[13]~combout\);

-- Location: LABCELL_X55_Y15_N30
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M1[13]~combout\ & ( !\A[30]~input_o\ $ (!\B[30]~input_o\ $ (((\CarryNetwork|Recur:LowHalf|Recur:M0[13]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[13]~combout\ & ( 
-- !\A[30]~input_o\ $ (!\B[30]~input_o\ $ (((!\Cin~input_o\ & \CarryNetwork|Recur:LowHalf|Recur:M0[13]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010010110010110101001011001101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[13]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[13]~combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X59_Y15_N63
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X55_Y7_N18
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[30]~input_o\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[30]~input_o\ & ( \A[30]~input_o\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\B[30]~input_o\ & ( \A[30]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[30]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y7_N28
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[30]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\A[30]~input_o\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \B[30]~input_o\ ) ) ) # ( \A[30]~input_o\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \B[30]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[30]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y7_N36
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: LABCELL_X55_Y7_N24
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: LABCELL_X55_Y7_N10
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[6]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[6]~combout\);

-- Location: LABCELL_X55_Y7_N22
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ ) ) 
-- # ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\);

-- Location: LABCELL_X55_Y7_N12
\CarryNetwork|Recur:LowHalf|Recur:M1[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[14]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[6]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[6]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[14]~combout\);

-- Location: LABCELL_X55_Y7_N32
\CarryNetwork|Recur:LowHalf|Recur:M0[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[14]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ ) ) # ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[6]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[6]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[6]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[14]~combout\);

-- Location: LABCELL_X55_Y7_N0
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M1[14]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[14]~combout\ & ( !\A[31]~input_o\ $ (\B[31]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[14]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M0[14]~combout\ & ( !\Cin~input_o\ $ (!\A[31]~input_o\ $ (!\B[31]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M1[14]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[14]~combout\ & ( !\Cin~input_o\ $ 
-- (!\A[31]~input_o\ $ (\B[31]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[14]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[14]~combout\ & ( !\A[31]~input_o\ $ (!\B[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001111000011001111001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[14]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[14]~combout\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X44_Y56_N94
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X55_Y15_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[30]~input_o\ & ( (!\B[31]~input_o\ & (\A[31]~input_o\ & \B[30]~input_o\)) # (\B[31]~input_o\ & ((\B[30]~input_o\) # 
-- (\A[31]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[31]~input_o\ & \A[31]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y15_N22
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[30]~input_o\ & ( (\A[31]~input_o\) # (\B[31]~input_o\) ) ) # ( !\A[30]~input_o\ & ( (!\B[31]~input_o\ & (\B[30]~input_o\ & 
-- \A[31]~input_o\)) # (\B[31]~input_o\ & ((\A[31]~input_o\) # (\B[30]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y15_N0
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y19_N38
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y19_N8
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X55_Y19_N22
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X55_Y19_N4
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[7]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[7]~combout\);

-- Location: LABCELL_X55_Y19_N24
\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[7]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[7]~combout\);

-- Location: LABCELL_X55_Y19_N26
\CarryNetwork|Recur:LowHalf|Recur:M0[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[7]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[7]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[7]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[7]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\);

-- Location: LABCELL_X55_Y19_N6
\CarryNetwork|Recur:LowHalf|Recur:M1[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[7]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\) # 
-- (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[7]~combout\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M1[7]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:HighHalf|Recur:M0[7]~combout\ & 
-- !\CarryNetwork|Recur:LowHalf|Recur:LowHalf|Recur:M1[7]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\);

-- Location: LABCELL_X47_Y55_N8
\S~32\ : arriaii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( !\B[32]~input_o\ $ (\A[32]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( !\Cin~input_o\ $ (!\B[32]~input_o\ $ (\A[32]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( !\Cin~input_o\ $ 
-- (!\B[32]~input_o\ $ (!\A[32]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( !\B[32]~input_o\ $ (!\A[32]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000110000110011110000111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[32]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X46_Y56_N94
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X44_Y56_N63
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: MLABCELL_X52_Y43_N12
\CarryNetwork|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( (\A[32]~input_o\) # (\B[32]~input_o\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( (\B[32]~input_o\ & \A[32]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[32]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[0]~combout\);

-- Location: MLABCELL_X52_Y43_N10
\CarryNetwork|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( (\A[32]~input_o\) # (\B[32]~input_o\) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( (\B[32]~input_o\ & \A[32]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[32]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[0]~combout\);

-- Location: MLABCELL_X52_Y43_N34
\S~33\ : arriaii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = ( \CarryNetwork|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:M1[0]~combout\ & ( !\B[33]~input_o\ $ (\A[33]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:M1[0]~combout\ & ( !\Cin~input_o\ $ 
-- (!\B[33]~input_o\ $ (\A[33]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:M1[0]~combout\ & ( !\Cin~input_o\ $ (!\B[33]~input_o\ $ (!\A[33]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M0[0]~combout\ & ( 
-- !\CarryNetwork|Recur:M1[0]~combout\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000101001010101101001011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_A[33]~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[0]~combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X40_Y56_N1
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X38_Y56_N1
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LABCELL_X50_Y48_N32
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[32]~input_o\ & ( \A[33]~input_o\ & ( (\B[33]~input_o\) # (\B[32]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( \A[33]~input_o\ & ( 
-- \B[33]~input_o\ ) ) ) # ( \A[32]~input_o\ & ( !\A[33]~input_o\ & ( (\B[32]~input_o\ & \B[33]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[32]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X47_Y55_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[33]~input_o\ & ( \B[33]~input_o\ ) ) # ( !\A[33]~input_o\ & ( \B[33]~input_o\ & ( (\A[32]~input_o\) # (\B[32]~input_o\) ) ) ) # ( 
-- \A[33]~input_o\ & ( !\B[33]~input_o\ & ( (\A[32]~input_o\) # (\B[32]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[32]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	datae => \ALT_INV_A[33]~input_o\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X52_Y43_N30
\CarryNetwork|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[1]~combout\);

-- Location: MLABCELL_X52_Y43_N2
\CarryNetwork|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[1]~combout\);

-- Location: MLABCELL_X52_Y43_N28
\S~34\ : arriaii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = ( \CarryNetwork|Recur:M1[1]~combout\ & ( !\A[34]~input_o\ $ (!\B[34]~input_o\ $ (((\CarryNetwork|Recur:M0[1]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:M1[1]~combout\ & ( !\A[34]~input_o\ $ (!\B[34]~input_o\ $ 
-- (((!\Cin~input_o\ & \CarryNetwork|Recur:M0[1]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010110011001101001011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[34]~input_o\,
	datab => \ALT_INV_B[34]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \CarryNetwork|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[1]~combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X38_Y56_N94
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X51_Y56_N32
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: MLABCELL_X52_Y43_N22
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[34]~input_o\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\B[34]~input_o\) ) ) # 
-- ( !\A[34]~input_o\ & ( (\B[34]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[34]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X52_Y43_N26
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[34]~input_o\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\B[34]~input_o\) ) ) # 
-- ( !\A[34]~input_o\ & ( (\B[34]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[34]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X52_Y43_N20
\CarryNetwork|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[2]~combout\);

-- Location: MLABCELL_X52_Y43_N14
\CarryNetwork|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[2]~combout\);

-- Location: MLABCELL_X52_Y43_N16
\S~35\ : arriaii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = ( \CarryNetwork|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:M1[2]~combout\ & ( !\A[35]~input_o\ $ (\B[35]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:M1[2]~combout\ & ( !\A[35]~input_o\ $ 
-- (!\Cin~input_o\ $ (\B[35]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:M1[2]~combout\ & ( !\A[35]~input_o\ $ (!\Cin~input_o\ $ (!\B[35]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M0[2]~combout\ & ( 
-- !\CarryNetwork|Recur:M1[2]~combout\ & ( !\A[35]~input_o\ $ (!\B[35]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110000110011110000111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[35]~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[2]~combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X42_Y56_N94
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X42_Y56_N63
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: MLABCELL_X54_Y48_N10
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[35]~input_o\ & ( \B[34]~input_o\ & ( (\A[34]~input_o\) # (\B[35]~input_o\) ) ) ) # ( !\A[35]~input_o\ & ( \B[34]~input_o\ & ( 
-- (\B[35]~input_o\ & \A[34]~input_o\) ) ) ) # ( \A[35]~input_o\ & ( !\B[34]~input_o\ & ( \B[35]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	datae => \ALT_INV_A[35]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y48_N22
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[35]~input_o\ & ( \B[34]~input_o\ ) ) # ( !\A[35]~input_o\ & ( \B[34]~input_o\ & ( \B[35]~input_o\ ) ) ) # ( \A[35]~input_o\ & ( 
-- !\B[34]~input_o\ & ( (\A[34]~input_o\) # (\B[35]~input_o\) ) ) ) # ( !\A[35]~input_o\ & ( !\B[34]~input_o\ & ( (\B[35]~input_o\ & \A[34]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	datae => \ALT_INV_A[35]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y48_N18
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X54_Y48_N36
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y44_N0
\CarryNetwork|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[3]~combout\);

-- Location: LABCELL_X55_Y44_N28
\CarryNetwork|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[3]~combout\);

-- Location: LABCELL_X55_Y44_N26
\S~36\ : arriaii_lcell_comb
-- Equation(s):
-- \S~36_combout\ = ( \CarryNetwork|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:M1[3]~combout\ & ( !\B[36]~input_o\ $ (\A[36]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:M1[3]~combout\ & ( !\B[36]~input_o\ $ 
-- (!\Cin~input_o\ $ (\A[36]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M0[3]~combout\ & ( !\CarryNetwork|Recur:M1[3]~combout\ & ( !\B[36]~input_o\ $ (!\Cin~input_o\ $ (!\A[36]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M0[3]~combout\ & ( 
-- !\CarryNetwork|Recur:M1[3]~combout\ & ( !\B[36]~input_o\ $ (!\A[36]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101001010101101001011010101001011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[36]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[3]~combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X42_Y56_N32
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LABCELL_X55_Y44_N10
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\B[36]~input_o\) # (\A[36]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\A[36]~input_o\ & \B[36]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_B[36]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y44_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\A[36]~input_o\) # (\B[36]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\B[36]~input_o\ & \A[36]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[36]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y44_N8
\CarryNetwork|Recur:M0[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[4]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[4]~combout\);

-- Location: IOIBUF_X40_Y56_N63
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LABCELL_X55_Y44_N38
\CarryNetwork|Recur:M1[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[4]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[4]~combout\);

-- Location: LABCELL_X55_Y44_N4
\S~37\ : arriaii_lcell_comb
-- Equation(s):
-- \S~37_combout\ = ( \CarryNetwork|Recur:M1[4]~combout\ & ( !\B[37]~input_o\ $ (!\A[37]~input_o\ $ (((\CarryNetwork|Recur:M0[4]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:M1[4]~combout\ & ( !\B[37]~input_o\ $ (!\A[37]~input_o\ $ 
-- (((!\Cin~input_o\ & \CarryNetwork|Recur:M0[4]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110100110010110011010011001101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[4]~combout\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[4]~combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X40_Y56_N32
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X51_Y56_N94
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: MLABCELL_X54_Y48_N28
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[37]~input_o\ & ( \A[36]~input_o\ ) ) # ( !\A[37]~input_o\ & ( \A[36]~input_o\ & ( \B[37]~input_o\ ) ) ) # ( \A[37]~input_o\ & ( 
-- !\A[36]~input_o\ & ( (\B[36]~input_o\) # (\B[37]~input_o\) ) ) ) # ( !\A[37]~input_o\ & ( !\A[36]~input_o\ & ( (\B[37]~input_o\ & \B[36]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_B[36]~input_o\,
	datae => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y44_N26
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[37]~input_o\ & ( \B[36]~input_o\ & ( (\B[37]~input_o\) # (\A[36]~input_o\) ) ) ) # ( !\A[37]~input_o\ & ( \B[36]~input_o\ & ( 
-- (\A[36]~input_o\ & \B[37]~input_o\) ) ) ) # ( \A[37]~input_o\ & ( !\B[36]~input_o\ & ( \B[37]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_B[37]~input_o\,
	datae => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y44_N14
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y44_N32
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y44_N34
\CarryNetwork|Recur:M0[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[5]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[5]~combout\);

-- Location: LABCELL_X55_Y44_N20
\CarryNetwork|Recur:M1[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[5]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[5]~combout\);

-- Location: LABCELL_X55_Y44_N16
\S~38\ : arriaii_lcell_comb
-- Equation(s):
-- \S~38_combout\ = ( \CarryNetwork|Recur:M0[5]~combout\ & ( \CarryNetwork|Recur:M1[5]~combout\ & ( !\A[38]~input_o\ $ (\B[38]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M0[5]~combout\ & ( \CarryNetwork|Recur:M1[5]~combout\ & ( !\Cin~input_o\ $ 
-- (!\A[38]~input_o\ $ (\B[38]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M0[5]~combout\ & ( !\CarryNetwork|Recur:M1[5]~combout\ & ( !\Cin~input_o\ $ (!\A[38]~input_o\ $ (!\B[38]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M0[5]~combout\ & ( 
-- !\CarryNetwork|Recur:M1[5]~combout\ & ( !\A[38]~input_o\ $ (!\B[38]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000110000110011110000111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M0[5]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[5]~combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X48_Y56_N63
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X51_Y56_N1
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LABCELL_X53_Y44_N2
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[38]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) # ( !\A[38]~input_o\ 
-- & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[38]~input_o\ ) ) ) # ( \A[38]~input_o\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[38]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[38]~input_o\,
	datae => \ALT_INV_A[38]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y48_N16
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\A[38]~input_o\) # (\B[38]~input_o\) ) ) 
-- # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\B[38]~input_o\ & \A[38]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X52_Y43_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: MLABCELL_X52_Y43_N8
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: MLABCELL_X52_Y43_N38
\CarryNetwork|Recur:M0[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[6]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[6]~combout\);

-- Location: MLABCELL_X52_Y43_N24
\CarryNetwork|Recur:M1[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[6]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[2]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[2]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[6]~combout\);

-- Location: MLABCELL_X52_Y43_N4
\S~39\ : arriaii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = ( \CarryNetwork|Recur:M1[6]~combout\ & ( !\B[39]~input_o\ $ (!\A[39]~input_o\ $ (((\Cin~input_o\) # (\CarryNetwork|Recur:M0[6]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M1[6]~combout\ & ( !\B[39]~input_o\ $ (!\A[39]~input_o\ $ 
-- (((\CarryNetwork|Recur:M0[6]~combout\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[6]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[6]~combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X49_Y56_N94
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X49_Y56_N1
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LABCELL_X55_Y48_N30
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[39]~input_o\ & ( ((\A[38]~input_o\ & \B[38]~input_o\)) # (\B[39]~input_o\) ) ) # ( !\A[39]~input_o\ & ( (\A[38]~input_o\ & 
-- (\B[39]~input_o\ & \B[38]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y48_N38
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[38]~input_o\ & ( (\B[39]~input_o\) # (\A[39]~input_o\) ) ) # ( !\A[38]~input_o\ & ( (!\A[39]~input_o\ & (\B[39]~input_o\ & 
-- \B[38]~input_o\)) # (\A[39]~input_o\ & ((\B[38]~input_o\) # (\B[39]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y48_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y48_N34
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y48_N14
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X55_Y48_N10
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X55_Y48_N8
\CarryNetwork|Recur:M0[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[7]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[7]~combout\);

-- Location: LABCELL_X55_Y48_N28
\CarryNetwork|Recur:M1[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[7]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[7]~combout\);

-- Location: LABCELL_X55_Y48_N18
\S~40\ : arriaii_lcell_comb
-- Equation(s):
-- \S~40_combout\ = ( \CarryNetwork|Recur:M1[7]~combout\ & ( !\B[40]~input_o\ $ (!\A[40]~input_o\ $ (((\CarryNetwork|Recur:M0[7]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:M1[7]~combout\ & ( !\B[40]~input_o\ $ (!\A[40]~input_o\ $ 
-- (((!\Cin~input_o\ & \CarryNetwork|Recur:M0[7]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010110011001101001011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \CarryNetwork|ALT_INV_Recur:M0[7]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[7]~combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X38_Y56_N63
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X53_Y56_N94
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LABCELL_X55_Y48_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( (\B[40]~input_o\) # (\A[40]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( (\A[40]~input_o\ & \B[40]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y48_N32
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( (\B[40]~input_o\) # (\A[40]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( (\A[40]~input_o\ & \B[40]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[40]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y51_N30
\CarryNetwork|Recur:M1[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[8]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[8]~combout\);

-- Location: LABCELL_X58_Y51_N32
\CarryNetwork|Recur:M0[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[8]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[8]~combout\);

-- Location: LABCELL_X58_Y51_N10
\S~41\ : arriaii_lcell_comb
-- Equation(s):
-- \S~41_combout\ = ( \CarryNetwork|Recur:M1[8]~combout\ & ( \CarryNetwork|Recur:M0[8]~combout\ & ( !\A[41]~input_o\ $ (\B[41]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M1[8]~combout\ & ( \CarryNetwork|Recur:M0[8]~combout\ & ( !\A[41]~input_o\ $ 
-- (!\B[41]~input_o\ $ (!\Cin~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M1[8]~combout\ & ( !\CarryNetwork|Recur:M0[8]~combout\ & ( !\A[41]~input_o\ $ (!\B[41]~input_o\ $ (\Cin~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M1[8]~combout\ & ( 
-- !\CarryNetwork|Recur:M0[8]~combout\ & ( !\A[41]~input_o\ $ (!\B[41]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010110100101010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M1[8]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[8]~combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X46_Y56_N32
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X55_Y56_N94
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LABCELL_X53_Y48_N36
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[40]~input_o\ & ( \A[41]~input_o\ & ( (\B[41]~input_o\) # (\B[40]~input_o\) ) ) ) # ( !\A[40]~input_o\ & ( \A[41]~input_o\ & ( 
-- \B[41]~input_o\ ) ) ) # ( \A[40]~input_o\ & ( !\A[41]~input_o\ & ( (\B[40]~input_o\ & \B[41]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[40]~input_o\,
	datad => \ALT_INV_B[41]~input_o\,
	datae => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X53_Y48_N0
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[40]~input_o\ & ( \A[41]~input_o\ ) ) # ( !\A[40]~input_o\ & ( \A[41]~input_o\ & ( (\B[41]~input_o\) # (\B[40]~input_o\) ) ) ) # ( 
-- \A[40]~input_o\ & ( !\A[41]~input_o\ & ( \B[41]~input_o\ ) ) ) # ( !\A[40]~input_o\ & ( !\A[41]~input_o\ & ( (\B[40]~input_o\ & \B[41]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[40]~input_o\,
	datad => \ALT_INV_B[41]~input_o\,
	datae => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y48_N26
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: MLABCELL_X54_Y48_N24
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y51_N0
\CarryNetwork|Recur:M0[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[9]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[9]~combout\);

-- Location: LABCELL_X55_Y51_N20
\CarryNetwork|Recur:M1[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[9]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[9]~combout\);

-- Location: LABCELL_X55_Y51_N8
\S~42\ : arriaii_lcell_comb
-- Equation(s):
-- \S~42_combout\ = ( \CarryNetwork|Recur:M0[9]~combout\ & ( \CarryNetwork|Recur:M1[9]~combout\ & ( !\A[42]~input_o\ $ (\B[42]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M0[9]~combout\ & ( \CarryNetwork|Recur:M1[9]~combout\ & ( !\Cin~input_o\ $ 
-- (!\A[42]~input_o\ $ (\B[42]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M0[9]~combout\ & ( !\CarryNetwork|Recur:M1[9]~combout\ & ( !\Cin~input_o\ $ (!\A[42]~input_o\ $ (!\B[42]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M0[9]~combout\ & ( 
-- !\CarryNetwork|Recur:M1[9]~combout\ & ( !\A[42]~input_o\ $ (!\B[42]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000110000110011110000111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_B[42]~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M0[9]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[9]~combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X53_Y56_N1
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X53_Y56_N32
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: MLABCELL_X54_Y48_N2
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[42]~input_o\ & ( (\B[42]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ) 
-- # ( !\A[42]~input_o\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & \B[42]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \ALT_INV_B[42]~input_o\,
	dataf => \ALT_INV_A[42]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y48_N14
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[42]~input_o\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\B[42]~input_o\) ) ) 
-- # ( !\A[42]~input_o\ & ( (\B[42]~input_o\ & \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \ALT_INV_A[42]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y48_N34
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # 
-- ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: MLABCELL_X54_Y48_N4
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # 
-- ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: LABCELL_X58_Y48_N30
\CarryNetwork|Recur:M1[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[10]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[10]~combout\);

-- Location: LABCELL_X58_Y48_N10
\CarryNetwork|Recur:M0[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[10]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[10]~combout\);

-- Location: LABCELL_X58_Y48_N26
\S~43\ : arriaii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = ( \CarryNetwork|Recur:M1[10]~combout\ & ( \CarryNetwork|Recur:M0[10]~combout\ & ( !\A[43]~input_o\ $ (\B[43]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M1[10]~combout\ & ( \CarryNetwork|Recur:M0[10]~combout\ & ( !\Cin~input_o\ $ 
-- (!\A[43]~input_o\ $ (!\B[43]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M1[10]~combout\ & ( !\CarryNetwork|Recur:M0[10]~combout\ & ( !\Cin~input_o\ $ (!\A[43]~input_o\ $ (\B[43]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M1[10]~combout\ & ( 
-- !\CarryNetwork|Recur:M0[10]~combout\ & ( !\A[43]~input_o\ $ (!\B[43]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001111000011001111001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_B[43]~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M1[10]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[10]~combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X59_Y49_N32
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X59_Y49_N94
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: MLABCELL_X54_Y48_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[42]~input_o\ & ( (!\B[42]~input_o\ & (\B[43]~input_o\ & \A[43]~input_o\)) # (\B[42]~input_o\ & ((\A[43]~input_o\) # 
-- (\B[43]~input_o\))) ) ) # ( !\A[42]~input_o\ & ( (\B[43]~input_o\ & \A[43]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datac => \ALT_INV_B[43]~input_o\,
	datad => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_A[42]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X54_Y48_N32
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[42]~input_o\ & ( (\A[43]~input_o\) # (\B[43]~input_o\) ) ) # ( !\A[42]~input_o\ & ( (!\B[43]~input_o\ & (\A[43]~input_o\ & 
-- \B[42]~input_o\)) # (\B[43]~input_o\ & ((\B[42]~input_o\) # (\A[43]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[43]~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_B[42]~input_o\,
	dataf => \ALT_INV_A[42]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y48_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: MLABCELL_X54_Y48_N0
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X58_Y36_N18
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X58_Y36_N22
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X58_Y36_N8
\CarryNetwork|Recur:M0[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[11]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[11]~combout\);

-- Location: LABCELL_X58_Y36_N6
\CarryNetwork|Recur:M1[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[11]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[11]~combout\);

-- Location: LABCELL_X58_Y36_N2
\S~44\ : arriaii_lcell_comb
-- Equation(s):
-- \S~44_combout\ = ( \CarryNetwork|Recur:M1[11]~combout\ & ( !\B[44]~input_o\ $ (!\A[44]~input_o\ $ (((\CarryNetwork|Recur:M0[11]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:M1[11]~combout\ & ( !\B[44]~input_o\ $ (!\A[44]~input_o\ $ 
-- (((!\Cin~input_o\ & \CarryNetwork|Recur:M0[11]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110010010110001111001001011001101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \CarryNetwork|ALT_INV_Recur:M0[11]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[11]~combout\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X44_Y56_N1
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LABCELL_X58_Y46_N32
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[44]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) # ( !\A[44]~input_o\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \B[44]~input_o\ ) ) ) # ( \A[44]~input_o\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \B[44]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[44]~input_o\,
	datae => \ALT_INV_A[44]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y46_N20
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[44]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( !\A[44]~input_o\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( \B[44]~input_o\ ) ) ) # ( \A[44]~input_o\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \B[44]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[44]~input_o\,
	datae => \ALT_INV_A[44]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y46_N8
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[4]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[4]~combout\);

-- Location: LABCELL_X58_Y46_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\);

-- Location: LABCELL_X58_Y46_N26
\CarryNetwork|Recur:M1[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[12]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[4]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[4]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[12]~combout\);

-- Location: LABCELL_X58_Y46_N6
\CarryNetwork|Recur:M0[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[12]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[4]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[4]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[4]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[4]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[4]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[12]~combout\);

-- Location: LABCELL_X58_Y46_N2
\S~45\ : arriaii_lcell_comb
-- Equation(s):
-- \S~45_combout\ = ( \CarryNetwork|Recur:M1[12]~combout\ & ( \CarryNetwork|Recur:M0[12]~combout\ & ( !\B[45]~input_o\ $ (\A[45]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M1[12]~combout\ & ( \CarryNetwork|Recur:M0[12]~combout\ & ( !\B[45]~input_o\ $ 
-- (!\A[45]~input_o\ $ (!\Cin~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M1[12]~combout\ & ( !\CarryNetwork|Recur:M0[12]~combout\ & ( !\B[45]~input_o\ $ (!\A[45]~input_o\ $ (\Cin~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M1[12]~combout\ & ( 
-- !\CarryNetwork|Recur:M0[12]~combout\ & ( !\B[45]~input_o\ $ (!\A[45]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111001100001111000011001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[45]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M1[12]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[12]~combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X55_Y56_N1
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X51_Y56_N63
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LABCELL_X58_Y49_N8
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[45]~input_o\ & ( \B[45]~input_o\ ) ) # ( !\A[45]~input_o\ & ( \B[45]~input_o\ & ( (\B[44]~input_o\) # (\A[44]~input_o\) ) ) ) # ( 
-- \A[45]~input_o\ & ( !\B[45]~input_o\ & ( (\B[44]~input_o\) # (\A[44]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_B[44]~input_o\,
	datae => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y48_N14
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[44]~input_o\ & ( \B[45]~input_o\ & ( (\B[44]~input_o\) # (\A[45]~input_o\) ) ) ) # ( !\A[44]~input_o\ & ( \B[45]~input_o\ & ( 
-- \A[45]~input_o\ ) ) ) # ( \A[44]~input_o\ & ( !\B[45]~input_o\ & ( (\A[45]~input_o\ & \B[44]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[44]~input_o\,
	datae => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X57_Y46_N0
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: MLABCELL_X57_Y46_N12
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X57_Y46_N6
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]~combout\);

-- Location: MLABCELL_X57_Y46_N10
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]~combout\);

-- Location: LABCELL_X58_Y46_N18
\CarryNetwork|Recur:M1[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[13]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[13]~combout\);

-- Location: MLABCELL_X57_Y46_N18
\CarryNetwork|Recur:M0[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[13]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[5]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[5]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[5]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[5]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[13]~combout\);

-- Location: LABCELL_X58_Y46_N38
\S~46\ : arriaii_lcell_comb
-- Equation(s):
-- \S~46_combout\ = ( \CarryNetwork|Recur:M1[13]~combout\ & ( \CarryNetwork|Recur:M0[13]~combout\ & ( !\A[46]~input_o\ $ (\B[46]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M1[13]~combout\ & ( \CarryNetwork|Recur:M0[13]~combout\ & ( !\A[46]~input_o\ $ 
-- (!\B[46]~input_o\ $ (!\Cin~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M1[13]~combout\ & ( !\CarryNetwork|Recur:M0[13]~combout\ & ( !\A[46]~input_o\ $ (!\B[46]~input_o\ $ (\Cin~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M1[13]~combout\ & ( 
-- !\CarryNetwork|Recur:M0[13]~combout\ & ( !\A[46]~input_o\ $ (!\B[46]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010110100101010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M1[13]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[13]~combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X49_Y56_N32
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X56_Y56_N63
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LABCELL_X58_Y44_N38
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[46]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\A[46]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \B[46]~input_o\ ) ) ) # ( \A[46]~input_o\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( \B[46]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[46]~input_o\,
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y44_N34
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[46]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) # ( 
-- !\A[46]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[46]~input_o\ ) ) ) # ( \A[46]~input_o\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[46]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[46]~input_o\,
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y44_N20
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: LABCELL_X58_Y44_N0
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: LABCELL_X58_Y44_N30
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[6]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[6]~combout\);

-- Location: LABCELL_X58_Y44_N26
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[2]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\);

-- Location: LABCELL_X58_Y44_N12
\CarryNetwork|Recur:M1[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[14]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[6]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[6]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[14]~combout\);

-- Location: LABCELL_X58_Y44_N16
\CarryNetwork|Recur:M0[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[14]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[6]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[6]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[6]~combout\ & ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[6]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[6]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[14]~combout\);

-- Location: LABCELL_X58_Y44_N8
\S~47\ : arriaii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = ( \CarryNetwork|Recur:M1[14]~combout\ & ( \CarryNetwork|Recur:M0[14]~combout\ & ( !\A[47]~input_o\ $ (\B[47]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M1[14]~combout\ & ( \CarryNetwork|Recur:M0[14]~combout\ & ( !\Cin~input_o\ $ 
-- (!\A[47]~input_o\ $ (!\B[47]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M1[14]~combout\ & ( !\CarryNetwork|Recur:M0[14]~combout\ & ( !\Cin~input_o\ $ (!\A[47]~input_o\ $ (\B[47]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M1[14]~combout\ & ( 
-- !\CarryNetwork|Recur:M0[14]~combout\ & ( !\A[47]~input_o\ $ (!\B[47]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001111000011001111001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_B[47]~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M1[14]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[14]~combout\,
	combout => \S~47_combout\);

-- Location: IOIBUF_X44_Y56_N32
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X56_Y56_N1
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LABCELL_X55_Y48_N22
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \B[46]~input_o\ & ( (!\A[46]~input_o\ & (\B[47]~input_o\ & \A[47]~input_o\)) # (\A[46]~input_o\ & ((\A[47]~input_o\) # 
-- (\B[47]~input_o\))) ) ) # ( !\B[46]~input_o\ & ( (\B[47]~input_o\ & \A[47]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y48_N2
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[46]~input_o\ & ( (\A[47]~input_o\) # (\B[47]~input_o\) ) ) # ( !\B[46]~input_o\ & ( (!\A[46]~input_o\ & (\B[47]~input_o\ & 
-- \A[47]~input_o\)) # (\A[46]~input_o\ & ((\A[47]~input_o\) # (\B[47]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y48_N4
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y48_N20
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y48_N24
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X55_Y48_N0
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X55_Y48_N26
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\);

-- Location: LABCELL_X55_Y48_N36
\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[3]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\);

-- Location: LABCELL_X58_Y39_N8
\CarryNetwork|Recur:M1[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[15]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[15]~combout\);

-- Location: LABCELL_X58_Y39_N10
\CarryNetwork|Recur:M0[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[15]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[15]~combout\);

-- Location: LABCELL_X58_Y39_N32
\S~48\ : arriaii_lcell_comb
-- Equation(s):
-- \S~48_combout\ = ( \CarryNetwork|Recur:M0[15]~combout\ & ( !\B[48]~input_o\ $ (!\A[48]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:M1[15]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M0[15]~combout\ & ( !\B[48]~input_o\ $ (!\A[48]~input_o\ $ 
-- (((\CarryNetwork|Recur:M1[15]~combout\ & \Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100110011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M1[15]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[15]~combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X42_Y56_N1
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X59_Y26_N32
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LABCELL_X58_Y39_N4
\CarryNetwork|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( (\B[48]~input_o\) # (\A[48]~input_o\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- (\A[48]~input_o\ & \B[48]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y39_N34
\CarryNetwork|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( (\A[48]~input_o\) # (\B[48]~input_o\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( 
-- (\B[48]~input_o\ & \A[48]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y39_N12
\CarryNetwork|Recur:M0[16]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[16]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[16]~combout\);

-- Location: LABCELL_X58_Y39_N6
\CarryNetwork|Recur:M1[16]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[16]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[16]~combout\);

-- Location: LABCELL_X58_Y39_N14
\S~49\ : arriaii_lcell_comb
-- Equation(s):
-- \S~49_combout\ = ( \CarryNetwork|Recur:M1[16]~combout\ & ( !\A[49]~input_o\ $ (!\B[49]~input_o\ $ (((\Cin~input_o\) # (\CarryNetwork|Recur:M0[16]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M1[16]~combout\ & ( !\A[49]~input_o\ $ (!\B[49]~input_o\ $ 
-- (((\CarryNetwork|Recur:M0[16]~combout\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[16]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[16]~combout\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X59_Y51_N32
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X59_Y26_N63
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: MLABCELL_X57_Y36_N38
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[49]~input_o\ & ( \A[48]~input_o\ & ( (\B[49]~input_o\) # (\B[48]~input_o\) ) ) ) # ( !\A[49]~input_o\ & ( \A[48]~input_o\ & ( 
-- (\B[48]~input_o\ & \B[49]~input_o\) ) ) ) # ( \A[49]~input_o\ & ( !\A[48]~input_o\ & ( \B[49]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X57_Y36_N26
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[48]~input_o\ & ( (\A[49]~input_o\) # (\B[49]~input_o\) ) ) # ( !\A[48]~input_o\ & ( (!\B[49]~input_o\ & (\B[48]~input_o\ & 
-- \A[49]~input_o\)) # (\B[49]~input_o\ & ((\A[49]~input_o\) # (\B[48]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y39_N38
\CarryNetwork|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X58_Y39_N0
\CarryNetwork|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X58_Y39_N30
\CarryNetwork|Recur:M0[17]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[17]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[17]~combout\);

-- Location: LABCELL_X58_Y39_N2
\CarryNetwork|Recur:M1[17]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[17]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[17]~combout\);

-- Location: LABCELL_X58_Y39_N16
\S~50\ : arriaii_lcell_comb
-- Equation(s):
-- \S~50_combout\ = ( \CarryNetwork|Recur:M1[17]~combout\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\ $ (((\CarryNetwork|Recur:M0[17]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:M1[17]~combout\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\ $ 
-- (((!\Cin~input_o\ & \CarryNetwork|Recur:M0[17]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010110011001101001011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \CarryNetwork|ALT_INV_Recur:M0[17]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[17]~combout\,
	combout => \S~50_combout\);

-- Location: IOIBUF_X59_Y25_N94
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X59_Y37_N94
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LABCELL_X58_Y39_N20
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( (\A[50]~input_o\) # (\B[50]~input_o\) ) ) 
-- # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( (\B[50]~input_o\ & \A[50]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_A[50]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y39_N18
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\A[50]~input_o\) # (\B[50]~input_o\) ) ) 
-- # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\B[50]~input_o\ & \A[50]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datac => \ALT_INV_A[50]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y39_N28
\CarryNetwork|Recur:HighHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: LABCELL_X58_Y39_N26
\CarryNetwork|Recur:HighHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: LABCELL_X58_Y39_N36
\CarryNetwork|Recur:M0[18]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[18]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[18]~combout\);

-- Location: LABCELL_X58_Y39_N24
\CarryNetwork|Recur:M1[18]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[18]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[2]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[2]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[18]~combout\);

-- Location: LABCELL_X58_Y39_N22
\S~51\ : arriaii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = ( \CarryNetwork|Recur:M1[18]~combout\ & ( !\A[51]~input_o\ $ (!\B[51]~input_o\ $ (((\Cin~input_o\) # (\CarryNetwork|Recur:M0[18]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M1[18]~combout\ & ( !\A[51]~input_o\ $ (!\B[51]~input_o\ $ 
-- (((\CarryNetwork|Recur:M0[18]~combout\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[18]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[18]~combout\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X59_Y37_N63
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: MLABCELL_X57_Y36_N18
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[50]~input_o\ & ( (!\A[51]~input_o\ & (\B[51]~input_o\ & \B[50]~input_o\)) # (\A[51]~input_o\ & ((\B[50]~input_o\) # 
-- (\B[51]~input_o\))) ) ) # ( !\A[50]~input_o\ & ( (\A[51]~input_o\ & \B[51]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datac => \ALT_INV_B[51]~input_o\,
	datad => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: MLABCELL_X57_Y36_N14
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[50]~input_o\ & ( \A[50]~input_o\ & ( (\A[51]~input_o\) # (\B[51]~input_o\) ) ) ) # ( !\B[50]~input_o\ & ( \A[50]~input_o\ & ( 
-- (\A[51]~input_o\) # (\B[51]~input_o\) ) ) ) # ( \B[50]~input_o\ & ( !\A[50]~input_o\ & ( (\A[51]~input_o\) # (\B[51]~input_o\) ) ) ) # ( !\B[50]~input_o\ & ( !\A[50]~input_o\ & ( (\B[51]~input_o\ & \A[51]~input_o\) ) ) ))

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
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X57_Y36_N32
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X57_Y36_N28
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y31_N36
\CarryNetwork|Recur:HighHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X55_Y31_N24
\CarryNetwork|Recur:HighHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X55_Y31_N26
\CarryNetwork|Recur:M0[19]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[19]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\ & !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:M0[19]~combout\);

-- Location: IOIBUF_X59_Y34_N63
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LABCELL_X55_Y31_N14
\CarryNetwork|Recur:M1[19]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[19]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[3]~combout\ & !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:M1[19]~combout\);

-- Location: LABCELL_X55_Y31_N34
\S~52\ : arriaii_lcell_comb
-- Equation(s):
-- \S~52_combout\ = ( \CarryNetwork|Recur:M1[19]~combout\ & ( !\A[52]~input_o\ $ (!\B[52]~input_o\ $ (((\CarryNetwork|Recur:M0[19]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:M1[19]~combout\ & ( !\A[52]~input_o\ $ (!\B[52]~input_o\ $ 
-- (((!\Cin~input_o\ & \CarryNetwork|Recur:M0[19]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110100110010110011010011001101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[19]~combout\,
	datad => \ALT_INV_B[52]~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[19]~combout\,
	combout => \S~52_combout\);

-- Location: IOIBUF_X59_Y28_N63
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LABCELL_X55_Y31_N6
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\A[52]~input_o\) # (\B[52]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\B[52]~input_o\ & \A[52]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_A[52]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y31_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\B[52]~input_o\) # (\A[52]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( (\A[52]~input_o\ & \B[52]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y31_N30
\CarryNetwork|Recur:HighHalf|Recur:M0[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\);

-- Location: LABCELL_X55_Y31_N2
\CarryNetwork|Recur:HighHalf|Recur:M1[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\);

-- Location: LABCELL_X55_Y31_N28
\CarryNetwork|Recur:M1[20]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[20]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\,
	combout => \CarryNetwork|Recur:M1[20]~combout\);

-- Location: LABCELL_X55_Y31_N16
\CarryNetwork|Recur:M0[20]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[20]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[4]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[4]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\,
	combout => \CarryNetwork|Recur:M0[20]~combout\);

-- Location: LABCELL_X55_Y31_N20
\S~53\ : arriaii_lcell_comb
-- Equation(s):
-- \S~53_combout\ = ( \CarryNetwork|Recur:M0[20]~combout\ & ( !\A[53]~input_o\ $ (!\B[53]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:M1[20]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M0[20]~combout\ & ( !\A[53]~input_o\ $ (!\B[53]~input_o\ $ 
-- (((\CarryNetwork|Recur:M1[20]~combout\ & \Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100110011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datab => \ALT_INV_B[53]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M1[20]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[20]~combout\,
	combout => \S~53_combout\);

-- Location: IOIBUF_X59_Y37_N32
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: MLABCELL_X57_Y36_N8
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[52]~input_o\ & ( \B[52]~input_o\ & ( (\B[53]~input_o\) # (\A[53]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( \B[52]~input_o\ & ( 
-- (\A[53]~input_o\ & \B[53]~input_o\) ) ) ) # ( \A[52]~input_o\ & ( !\B[52]~input_o\ & ( (\A[53]~input_o\ & \B[53]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( !\B[52]~input_o\ & ( (\A[53]~input_o\ & \B[53]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_B[52]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y36_N24
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[53]~input_o\ & ( ((\B[52]~input_o\) # (\B[53]~input_o\)) # (\A[52]~input_o\) ) ) # ( !\A[53]~input_o\ & ( (\B[53]~input_o\ & 
-- ((\B[52]~input_o\) # (\A[52]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y31_N18
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y31_N12
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y31_N8
\CarryNetwork|Recur:HighHalf|Recur:M0[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\);

-- Location: LABCELL_X55_Y31_N32
\CarryNetwork|Recur:HighHalf|Recur:M1[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\);

-- Location: LABCELL_X55_Y31_N4
\CarryNetwork|Recur:M1[21]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[21]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\,
	combout => \CarryNetwork|Recur:M1[21]~combout\);

-- Location: IOIBUF_X59_Y51_N1
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LABCELL_X55_Y31_N10
\CarryNetwork|Recur:M0[21]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[21]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[5]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[5]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\,
	combout => \CarryNetwork|Recur:M0[21]~combout\);

-- Location: LABCELL_X55_Y31_N0
\S~54\ : arriaii_lcell_comb
-- Equation(s):
-- \S~54_combout\ = ( \CarryNetwork|Recur:M0[21]~combout\ & ( !\A[54]~input_o\ $ (!\B[54]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:M1[21]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M0[21]~combout\ & ( !\A[54]~input_o\ $ (!\B[54]~input_o\ $ 
-- (((\Cin~input_o\ & \CarryNetwork|Recur:M1[21]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100110011010011001011001101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M1[21]~combout\,
	datad => \ALT_INV_B[54]~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[21]~combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X59_Y37_N1
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LABCELL_X58_Y33_N12
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[54]~input_o\ & ( (\A[54]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) 
-- ) # ( !\B[54]~input_o\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & \A[54]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y33_N0
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \B[54]~input_o\ & ( (\A[54]~input_o\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\) ) 
-- ) # ( !\B[54]~input_o\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & \A[54]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y33_N38
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\);

-- Location: LABCELL_X58_Y33_N4
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\);

-- Location: LABCELL_X58_Y33_N14
\CarryNetwork|Recur:HighHalf|Recur:M0[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\);

-- Location: LABCELL_X58_Y33_N24
\CarryNetwork|Recur:HighHalf|Recur:M1[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[2]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[2]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\);

-- Location: LABCELL_X58_Y33_N36
\CarryNetwork|Recur:M0[22]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[22]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\,
	combout => \CarryNetwork|Recur:M0[22]~combout\);

-- Location: LABCELL_X58_Y33_N2
\CarryNetwork|Recur:M1[22]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[22]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[6]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[6]~combout\ & !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\,
	combout => \CarryNetwork|Recur:M1[22]~combout\);

-- Location: LABCELL_X58_Y33_N16
\S~55\ : arriaii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = ( \CarryNetwork|Recur:M0[22]~combout\ & ( \CarryNetwork|Recur:M1[22]~combout\ & ( !\B[55]~input_o\ $ (\A[55]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M0[22]~combout\ & ( \CarryNetwork|Recur:M1[22]~combout\ & ( !\B[55]~input_o\ $ 
-- (!\Cin~input_o\ $ (\A[55]~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M0[22]~combout\ & ( !\CarryNetwork|Recur:M1[22]~combout\ & ( !\B[55]~input_o\ $ (!\Cin~input_o\ $ (!\A[55]~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M0[22]~combout\ & ( 
-- !\CarryNetwork|Recur:M1[22]~combout\ & ( !\B[55]~input_o\ $ (!\A[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110000110011110000111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[55]~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M0[22]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[22]~combout\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X59_Y51_N63
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X59_Y28_N32
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LABCELL_X58_Y36_N4
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[55]~input_o\ & ( ((\B[54]~input_o\) # (\A[55]~input_o\)) # (\A[54]~input_o\) ) ) # ( !\B[55]~input_o\ & ( (\A[55]~input_o\ & 
-- ((\B[54]~input_o\) # (\A[54]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y36_N14
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \B[55]~input_o\ & ( ((\A[54]~input_o\ & \B[54]~input_o\)) # (\A[55]~input_o\) ) ) # ( !\B[55]~input_o\ & ( (\A[55]~input_o\ & 
-- (\A[54]~input_o\ & \B[54]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_A[54]~input_o\,
	datad => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y36_N12
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X57_Y36_N6
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: MLABCELL_X57_Y36_N0
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\);

-- Location: MLABCELL_X57_Y36_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X58_Y31_N22
\CarryNetwork|Recur:HighHalf|Recur:M0[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\);

-- Location: LABCELL_X58_Y32_N8
\CarryNetwork|Recur:HighHalf|Recur:M1[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\);

-- Location: LABCELL_X58_Y31_N36
\CarryNetwork|Recur:M1[23]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[23]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M1[23]~combout\);

-- Location: LABCELL_X58_Y31_N24
\CarryNetwork|Recur:M0[23]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[23]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[7]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[7]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:M0[23]~combout\);

-- Location: LABCELL_X58_Y31_N2
\S~56\ : arriaii_lcell_comb
-- Equation(s):
-- \S~56_combout\ = ( \CarryNetwork|Recur:M0[23]~combout\ & ( !\A[56]~input_o\ $ (!\B[56]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:M1[23]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M0[23]~combout\ & ( !\A[56]~input_o\ $ (!\B[56]~input_o\ $ 
-- (((\CarryNetwork|Recur:M1[23]~combout\ & \Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100110011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_B[56]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M1[23]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[23]~combout\,
	combout => \S~56_combout\);

-- Location: IOIBUF_X55_Y56_N63
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: MLABCELL_X57_Y36_N34
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( (\A[56]~input_o\) # (\B[56]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( (\B[56]~input_o\ & \A[56]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X57_Y36_N24
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( (\A[56]~input_o\) # (\B[56]~input_o\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( (\B[56]~input_o\ & \A[56]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y36_N38
\CarryNetwork|Recur:HighHalf|Recur:M1[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[8]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[8]~combout\);

-- Location: LABCELL_X58_Y36_N30
\CarryNetwork|Recur:HighHalf|Recur:M0[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[8]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[8]~combout\);

-- Location: LABCELL_X58_Y36_N28
\CarryNetwork|Recur:M1[24]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[24]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[8]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[8]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[8]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[8]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[24]~combout\);

-- Location: IOIBUF_X59_Y49_N1
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LABCELL_X58_Y36_N32
\CarryNetwork|Recur:M0[24]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[24]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[8]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[8]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[8]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[8]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[24]~combout\);

-- Location: LABCELL_X58_Y36_N36
\S~57\ : arriaii_lcell_comb
-- Equation(s):
-- \S~57_combout\ = ( \CarryNetwork|Recur:M0[24]~combout\ & ( !\B[57]~input_o\ $ (!\A[57]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:M1[24]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M0[24]~combout\ & ( !\B[57]~input_o\ $ (!\A[57]~input_o\ $ 
-- (((\Cin~input_o\ & \CarryNetwork|Recur:M1[24]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100110011100011000111001110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_B[57]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M1[24]~combout\,
	datad => \ALT_INV_A[57]~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[24]~combout\,
	combout => \S~57_combout\);

-- Location: IOIBUF_X59_Y34_N94
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X55_Y56_N32
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LABCELL_X55_Y36_N26
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[57]~input_o\ & ( ((\B[56]~input_o\ & \A[56]~input_o\)) # (\B[57]~input_o\) ) ) # ( !\A[57]~input_o\ & ( (\B[56]~input_o\ & 
-- (\A[56]~input_o\ & \B[57]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y36_N4
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \B[56]~input_o\ & ( \A[56]~input_o\ & ( (\A[57]~input_o\) # (\B[57]~input_o\) ) ) ) # ( !\B[56]~input_o\ & ( \A[56]~input_o\ & ( 
-- (\A[57]~input_o\) # (\B[57]~input_o\) ) ) ) # ( \B[56]~input_o\ & ( !\A[56]~input_o\ & ( (\A[57]~input_o\) # (\B[57]~input_o\) ) ) ) # ( !\B[56]~input_o\ & ( !\A[56]~input_o\ & ( (\B[57]~input_o\ & \A[57]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[57]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	datae => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y31_N6
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X58_Y31_N0
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X58_Y31_N18
\CarryNetwork|Recur:HighHalf|Recur:M0[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[9]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[9]~combout\);

-- Location: LABCELL_X58_Y31_N38
\CarryNetwork|Recur:HighHalf|Recur:M1[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[9]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[9]~combout\);

-- Location: LABCELL_X58_Y31_N32
\CarryNetwork|Recur:M0[25]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[25]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[9]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[9]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[9]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[9]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[25]~combout\);

-- Location: LABCELL_X58_Y31_N14
\CarryNetwork|Recur:M1[25]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[25]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[9]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[9]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[9]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[9]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[25]~combout\);

-- Location: LABCELL_X58_Y31_N20
\S~58\ : arriaii_lcell_comb
-- Equation(s):
-- \S~58_combout\ = ( \CarryNetwork|Recur:M1[25]~combout\ & ( !\B[58]~input_o\ $ (!\A[58]~input_o\ $ (((\Cin~input_o\) # (\CarryNetwork|Recur:M0[25]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M1[25]~combout\ & ( !\B[58]~input_o\ $ (!\A[58]~input_o\ $ 
-- (((\CarryNetwork|Recur:M0[25]~combout\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[25]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[25]~combout\,
	combout => \S~58_combout\);

-- Location: IOIBUF_X59_Y25_N63
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LABCELL_X58_Y31_N12
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\B[58]~input_o\) # (\A[58]~input_o\) ) 
-- ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\A[58]~input_o\ & \B[58]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y31_N30
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( (\B[58]~input_o\) # (\A[58]~input_o\) ) 
-- ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( (\A[58]~input_o\ & \B[58]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y31_N8
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) 
-- # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: LABCELL_X58_Y31_N26
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) 
-- # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: LABCELL_X58_Y31_N4
\CarryNetwork|Recur:HighHalf|Recur:M0[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[10]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[10]~combout\);

-- Location: LABCELL_X58_Y31_N34
\CarryNetwork|Recur:HighHalf|Recur:M1[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[10]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[10]~combout\);

-- Location: LABCELL_X58_Y31_N16
\CarryNetwork|Recur:M0[26]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[26]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[10]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[10]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[10]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[10]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[10]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[10]~combout\,
	combout => \CarryNetwork|Recur:M0[26]~combout\);

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

-- Location: LABCELL_X58_Y31_N28
\CarryNetwork|Recur:M1[26]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[26]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[10]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[10]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[10]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[10]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[10]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[10]~combout\,
	combout => \CarryNetwork|Recur:M1[26]~combout\);

-- Location: LABCELL_X58_Y31_N10
\S~59\ : arriaii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = ( \CarryNetwork|Recur:M1[26]~combout\ & ( !\B[59]~input_o\ $ (!\A[59]~input_o\ $ (((\CarryNetwork|Recur:M0[26]~combout\) # (\Cin~input_o\)))) ) ) # ( !\CarryNetwork|Recur:M1[26]~combout\ & ( !\B[59]~input_o\ $ (!\A[59]~input_o\ $ 
-- (((!\Cin~input_o\ & \CarryNetwork|Recur:M0[26]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110100110010110011010011001101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[26]~combout\,
	datad => \ALT_INV_A[59]~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[26]~combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X59_Y26_N94
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LABCELL_X55_Y36_N12
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \B[58]~input_o\ & ( (!\A[58]~input_o\ & (\A[59]~input_o\ & \B[59]~input_o\)) # (\A[58]~input_o\ & ((\B[59]~input_o\) # 
-- (\A[59]~input_o\))) ) ) # ( !\B[58]~input_o\ & ( (\A[59]~input_o\ & \B[59]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_B[58]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y36_N16
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[59]~input_o\ & ( \B[58]~input_o\ ) ) # ( !\B[59]~input_o\ & ( \B[58]~input_o\ & ( \A[59]~input_o\ ) ) ) # ( \B[59]~input_o\ & ( 
-- !\B[58]~input_o\ & ( (\A[58]~input_o\) # (\A[59]~input_o\) ) ) ) # ( !\B[59]~input_o\ & ( !\B[58]~input_o\ & ( (\A[59]~input_o\ & \A[58]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_B[58]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y36_N2
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y36_N36
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|Recur:M0[0]~combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X57_Y36_N2
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X58_Y33_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X58_Y33_N30
\CarryNetwork|Recur:HighHalf|Recur:M0[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[11]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[11]~combout\);

-- Location: LABCELL_X58_Y33_N10
\CarryNetwork|Recur:HighHalf|Recur:M1[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[11]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[11]~combout\);

-- Location: LABCELL_X58_Y33_N32
\CarryNetwork|Recur:M1[27]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[27]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M0[11]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[11]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:M0[11]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M1[11]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:M0[11]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:M1[11]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[11]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[11]~combout\,
	combout => \CarryNetwork|Recur:M1[27]~combout\);

-- Location: IOIBUF_X59_Y26_N1
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X58_Y33_N6
\CarryNetwork|Recur:M0[27]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[27]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[11]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[11]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[11]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[11]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[27]~combout\);

-- Location: LABCELL_X58_Y33_N20
\S~60\ : arriaii_lcell_comb
-- Equation(s):
-- \S~60_combout\ = ( \CarryNetwork|Recur:M0[27]~combout\ & ( !\B[60]~input_o\ $ (!\A[60]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:M1[27]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M0[27]~combout\ & ( !\B[60]~input_o\ $ (!\A[60]~input_o\ $ 
-- (((\Cin~input_o\ & \CarryNetwork|Recur:M1[27]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100110011100011000111001110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_B[60]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M1[27]~combout\,
	datad => \ALT_INV_A[60]~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[27]~combout\,
	combout => \S~60_combout\);

-- Location: IOIBUF_X53_Y56_N63
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X40_Y56_N94
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LABCELL_X58_Y34_N0
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[60]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) # ( !\A[60]~input_o\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( \B[60]~input_o\ ) ) ) # ( \A[60]~input_o\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \B[60]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[60]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X58_Y34_N20
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \A[60]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) # ( !\A[60]~input_o\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( \B[60]~input_o\ ) ) ) # ( \A[60]~input_o\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & ( 
-- \B[60]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[60]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X58_Y34_N14
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[4]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) ) # 
-- ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\ ) ) 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[4]~combout\);

-- Location: LABCELL_X58_Y34_N18
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) ) # 
-- ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\);

-- Location: LABCELL_X58_Y34_N8
\CarryNetwork|Recur:HighHalf|Recur:M0[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[12]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[4]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[4]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[12]~combout\);

-- Location: LABCELL_X58_Y34_N38
\CarryNetwork|Recur:HighHalf|Recur:M1[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[4]~combout\ ) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[4]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[4]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[4]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[4]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\);

-- Location: LABCELL_X58_Y34_N30
\CarryNetwork|Recur:M1[28]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[28]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M0[12]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:M0[12]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\ & ( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ) ) # ( \CarryNetwork|Recur:HighHalf|Recur:M0[12]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\ & ( 
-- !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[12]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[12]~combout\,
	combout => \CarryNetwork|Recur:M1[28]~combout\);

-- Location: LABCELL_X58_Y34_N24
\CarryNetwork|Recur:M0[28]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[28]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M0[12]~combout\ ) ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:M1[12]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[12]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[12]~combout\,
	datae => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[12]~combout\,
	combout => \CarryNetwork|Recur:M0[28]~combout\);

-- Location: LABCELL_X58_Y34_N32
\S~61\ : arriaii_lcell_comb
-- Equation(s):
-- \S~61_combout\ = ( \CarryNetwork|Recur:M1[28]~combout\ & ( \CarryNetwork|Recur:M0[28]~combout\ & ( !\B[61]~input_o\ $ (\A[61]~input_o\) ) ) ) # ( !\CarryNetwork|Recur:M1[28]~combout\ & ( \CarryNetwork|Recur:M0[28]~combout\ & ( !\B[61]~input_o\ $ 
-- (!\A[61]~input_o\ $ (!\Cin~input_o\)) ) ) ) # ( \CarryNetwork|Recur:M1[28]~combout\ & ( !\CarryNetwork|Recur:M0[28]~combout\ & ( !\B[61]~input_o\ $ (!\A[61]~input_o\ $ (\Cin~input_o\)) ) ) ) # ( !\CarryNetwork|Recur:M1[28]~combout\ & ( 
-- !\CarryNetwork|Recur:M0[28]~combout\ & ( !\B[61]~input_o\ $ (!\A[61]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111001100001111000011001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \CarryNetwork|ALT_INV_Recur:M1[28]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[28]~combout\,
	combout => \S~61_combout\);

-- Location: IOIBUF_X59_Y30_N32
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: MLABCELL_X54_Y36_N2
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ = LCELL(( \A[60]~input_o\ & ( \A[61]~input_o\ ) ) # ( !\A[60]~input_o\ & ( \A[61]~input_o\ & ( (\B[61]~input_o\) # (\B[60]~input_o\) ) ) ) # ( 
-- \A[60]~input_o\ & ( !\A[61]~input_o\ & ( \B[61]~input_o\ ) ) ) # ( !\A[60]~input_o\ & ( !\A[61]~input_o\ & ( (\B[60]~input_o\ & \B[61]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[60]~input_o\,
	datad => \ALT_INV_B[61]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\);

-- Location: MLABCELL_X54_Y36_N20
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ = LCELL(( \A[60]~input_o\ & ( \A[61]~input_o\ & ( (\B[60]~input_o\) # (\B[61]~input_o\) ) ) ) # ( !\A[60]~input_o\ & ( \A[61]~input_o\ & ( 
-- \B[61]~input_o\ ) ) ) # ( \A[60]~input_o\ & ( !\A[61]~input_o\ & ( (\B[61]~input_o\ & \B[60]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_B[60]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y36_N24
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y36_N14
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: MLABCELL_X57_Y36_N16
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[5]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ 
-- & !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[5]~combout\);

-- Location: LABCELL_X58_Y36_N10
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[5]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ 
-- & !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[5]~combout\);

-- Location: LABCELL_X58_Y36_N0
\CarryNetwork|Recur:HighHalf|Recur:M0[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[13]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[5]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[5]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[13]~combout\);

-- Location: LABCELL_X58_Y36_N34
\CarryNetwork|Recur:HighHalf|Recur:M1[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[13]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[5]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[5]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[5]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[5]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[13]~combout\);

-- Location: LABCELL_X58_Y36_N20
\CarryNetwork|Recur:M1[29]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[29]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[13]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[13]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[13]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[13]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[29]~combout\);

-- Location: IOIBUF_X59_Y30_N63
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LABCELL_X58_Y36_N26
\CarryNetwork|Recur:M0[29]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[29]~combout\ = LCELL(( \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:M1[13]~combout\ ) ) # ( !\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:M0[13]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[13]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[13]~combout\,
	dataf => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[29]~combout\);

-- Location: LABCELL_X58_Y36_N16
\S~62\ : arriaii_lcell_comb
-- Equation(s):
-- \S~62_combout\ = ( \CarryNetwork|Recur:M0[29]~combout\ & ( !\A[62]~input_o\ $ (!\B[62]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:M1[29]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M0[29]~combout\ & ( !\A[62]~input_o\ $ (!\B[62]~input_o\ $ 
-- (((\Cin~input_o\ & \CarryNetwork|Recur:M1[29]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100110011100011000111001110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M1[29]~combout\,
	datad => \ALT_INV_B[62]~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[29]~combout\,
	combout => \S~62_combout\);

-- Location: IOIBUF_X36_Y56_N94
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X36_Y56_N63
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LABCELL_X55_Y36_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \A[62]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ ) ) # ( 
-- !\A[62]~input_o\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[62]~input_o\ ) ) ) # ( \A[62]~input_o\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( \B[62]~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[62]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y36_N38
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\A[62]~input_o\) # (\B[62]~input_o\) 
-- ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\ & ( (\B[62]~input_o\ & \A[62]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[62]~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y36_N32
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\);

-- Location: LABCELL_X55_Y36_N30
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ) # ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\);

-- Location: LABCELL_X55_Y33_N34
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[6]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ 
-- & \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[6]~combout\);

-- Location: LABCELL_X55_Y36_N8
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[6]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) ) # 
-- ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[2]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[2]~combout\ & ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ ) ) 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	datae => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[2]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[2]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[6]~combout\);

-- Location: LABCELL_X55_Y33_N0
\CarryNetwork|Recur:HighHalf|Recur:M0[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[14]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[6]~combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[6]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[6]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[6]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[14]~combout\);

-- Location: LABCELL_X55_Y33_N38
\CarryNetwork|Recur:HighHalf|Recur:M1[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[14]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[6]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[6]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[6]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[6]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[14]~combout\);

-- Location: LABCELL_X55_Y33_N12
\CarryNetwork|Recur:M1[30]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[30]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[14]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[14]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[14]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[14]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[14]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[14]~combout\,
	combout => \CarryNetwork|Recur:M1[30]~combout\);

-- Location: LABCELL_X55_Y33_N26
\CarryNetwork|Recur:M0[30]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[30]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[14]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[14]~combout\) # (\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[14]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\ & \CarryNetwork|Recur:HighHalf|Recur:M0[14]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[14]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[14]~combout\,
	combout => \CarryNetwork|Recur:M0[30]~combout\);

-- Location: LABCELL_X55_Y33_N32
\S~63\ : arriaii_lcell_comb
-- Equation(s):
-- \S~63_combout\ = ( \CarryNetwork|Recur:M0[30]~combout\ & ( !\A[63]~input_o\ $ (!\B[63]~input_o\ $ (((!\Cin~input_o\) # (\CarryNetwork|Recur:M1[30]~combout\)))) ) ) # ( !\CarryNetwork|Recur:M0[30]~combout\ & ( !\A[63]~input_o\ $ (!\B[63]~input_o\ $ 
-- (((\CarryNetwork|Recur:M1[30]~combout\ & \Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100110011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_B[63]~input_o\,
	datac => \CarryNetwork|ALT_INV_Recur:M1[30]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[30]~combout\,
	combout => \S~63_combout\);

-- Location: LABCELL_X55_Y33_N24
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ = LCELL(( \B[63]~input_o\ & ( ((\B[62]~input_o\ & \A[62]~input_o\)) # (\A[63]~input_o\) ) ) # ( !\B[63]~input_o\ & ( (\B[62]~input_o\ & 
-- (\A[63]~input_o\ & \A[62]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[63]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\);

-- Location: LABCELL_X55_Y33_N36
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ = LCELL(( \B[63]~input_o\ & ( ((\A[63]~input_o\) # (\A[62]~input_o\)) # (\B[62]~input_o\) ) ) # ( !\B[63]~input_o\ & ( (\A[63]~input_o\ & 
-- ((\A[62]~input_o\) # (\B[62]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[63]~input_o\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\);

-- Location: LABCELL_X55_Y33_N16
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[0]~combout\ & ( 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\);

-- Location: LABCELL_X55_Y33_N14
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( 
-- (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[0]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[0]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[0]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[0]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[0]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[0]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\);

-- Location: LABCELL_X55_Y33_N22
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\ & 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\);

-- Location: LABCELL_X55_Y33_N8
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[1]~combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[1]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[1]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[1]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[1]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[1]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\);

-- Location: LABCELL_X55_Y33_N30
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[7]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ 
-- & !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M1[3]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[7]~combout\);

-- Location: LABCELL_X55_Y33_N2
\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[7]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M1[3]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|Recur:M0[3]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|Recur:M0[3]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[3]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[3]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[3]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[7]~combout\);

-- Location: LABCELL_X55_Y33_N20
\CarryNetwork|Recur:HighHalf|Recur:M0[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M0[15]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[7]~combout\ & ( (!\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\) # 
-- (\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[7]~combout\) ) ) # ( !\CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[7]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M0[7]~combout\ & 
-- \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[7]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M0[15]~combout\);

-- Location: LABCELL_X55_Y33_N6
\CarryNetwork|Recur:HighHalf|Recur:M1[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:HighHalf|Recur:M1[15]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M1[7]~combout\ ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:LowHalf|Recur:M1[7]~combout\ & ( \CarryNetwork|Recur:HighHalf|Recur:HighHalf|Recur:M0[7]~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M0[7]~combout\,
	datad => \CarryNetwork|Recur:HighHalf|Recur:HighHalf|ALT_INV_Recur:M1[7]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|Recur:LowHalf|ALT_INV_Recur:M1[7]~combout\,
	combout => \CarryNetwork|Recur:HighHalf|Recur:M1[15]~combout\);

-- Location: LABCELL_X55_Y33_N4
\CarryNetwork|Recur:M1[31]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M1[31]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M1[15]~combout\ & ( (\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:M0[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M1[15]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M0[15]~combout\ & !\CarryNetwork|Recur:LowHalf|Recur:M1[15]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[15]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M1[15]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[15]~combout\,
	combout => \CarryNetwork|Recur:M1[31]~combout\);

-- Location: LABCELL_X55_Y33_N10
\CarryNetwork|Recur:M0[31]\ : arriaii_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:M0[31]~combout\ = LCELL(( \CarryNetwork|Recur:HighHalf|Recur:M0[15]~combout\ & ( (!\CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) # (\CarryNetwork|Recur:HighHalf|Recur:M1[15]~combout\) ) ) # ( 
-- !\CarryNetwork|Recur:HighHalf|Recur:M0[15]~combout\ & ( (\CarryNetwork|Recur:HighHalf|Recur:M1[15]~combout\ & \CarryNetwork|Recur:LowHalf|Recur:M0[15]~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M1[15]~combout\,
	datad => \CarryNetwork|Recur:LowHalf|ALT_INV_Recur:M0[15]~combout\,
	dataf => \CarryNetwork|Recur:HighHalf|ALT_INV_Recur:M0[15]~combout\,
	combout => \CarryNetwork|Recur:M0[31]~combout\);

-- Location: LABCELL_X55_Y33_N28
\c~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \CarryNetwork|Recur:M0[31]~combout\ & ( (!\Cin~input_o\) # (\CarryNetwork|Recur:M1[31]~combout\) ) ) # ( !\CarryNetwork|Recur:M0[31]~combout\ & ( (\CarryNetwork|Recur:M1[31]~combout\ & \Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|ALT_INV_Recur:M1[31]~combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \CarryNetwork|ALT_INV_Recur:M0[31]~combout\,
	combout => \c~0_combout\);

-- Location: LABCELL_X55_Y33_N18
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \CarryNetwork|Recur:M1[30]~combout\ & ( (!\Cin~input_o\ & (!\CarryNetwork|Recur:M0[30]~combout\ $ ((!\CarryNetwork|Recur:M0[31]~combout\)))) # (\Cin~input_o\ & (((!\CarryNetwork|Recur:M1[31]~combout\)))) ) ) # ( 
-- !\CarryNetwork|Recur:M1[30]~combout\ & ( (!\Cin~input_o\ & (!\CarryNetwork|Recur:M0[30]~combout\ $ ((!\CarryNetwork|Recur:M0[31]~combout\)))) # (\Cin~input_o\ & (((\CarryNetwork|Recur:M1[31]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100001111101001010000111110101111101001010000111110100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \CarryNetwork|ALT_INV_Recur:M0[30]~combout\,
	datac => \CarryNetwork|ALT_INV_Recur:M0[31]~combout\,
	datad => \CarryNetwork|ALT_INV_Recur:M1[31]~combout\,
	dataf => \CarryNetwork|ALT_INV_Recur:M1[30]~combout\,
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


