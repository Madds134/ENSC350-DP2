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

-- DATE "11/20/2026 23:25:01"

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
-- S[0]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \c[1]~0_combout\ : std_logic;
SIGNAL \c[1]~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \c[2]~2_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \c[3]~3_combout\ : std_logic;
SIGNAL \c[3]~4_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \cb~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \c[5]~5_combout\ : std_logic;
SIGNAL \c[5]~6_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \c[5]~5DUPLICATE_combout\ : std_logic;
SIGNAL \c[6]~7_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \c[7]~9_combout\ : std_logic;
SIGNAL \c[7]~8_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \cb~2_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \c[9]~10_combout\ : std_logic;
SIGNAL \c[9]~11_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \c[10]~12_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \c[11]~13_combout\ : std_logic;
SIGNAL \c[11]~14_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \cb~4_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \c[13]~16_combout\ : std_logic;
SIGNAL \c[13]~15_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \c[14]~17_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \c[15]~19_combout\ : std_logic;
SIGNAL \c[15]~18_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \cb~6_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \c[17]~20_combout\ : std_logic;
SIGNAL \c[17]~21_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \c[18]~22_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \c[19]~23_combout\ : std_logic;
SIGNAL \c[19]~24_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \cb~8_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \c[21]~25_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \c[21]~26_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \c[22]~27_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \c[23]~28_combout\ : std_logic;
SIGNAL \c[23]~29_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \cb~10_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \c[25]~30_combout\ : std_logic;
SIGNAL \c[25]~31_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \c[26]~32_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \c[27]~33_combout\ : std_logic;
SIGNAL \c[27]~34_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \cb~12_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \c[29]~35_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \c[29]~36_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \c[30]~37_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \c[31]~38_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \c[31]~39_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \cb~14_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \c[33]~40_combout\ : std_logic;
SIGNAL \c[33]~41_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \c[34]~42_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \c[35]~43_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \c[35]~44_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \cb~16_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \c[37]~45_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \c[37]~46_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \c[38]~47_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \c[39]~48_combout\ : std_logic;
SIGNAL \c[39]~49_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \cb~18_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \c[41]~50_combout\ : std_logic;
SIGNAL \c[41]~51_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \c[42]~52_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \c[43]~53_combout\ : std_logic;
SIGNAL \c[43]~54_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \cb~20_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \c[45]~55_combout\ : std_logic;
SIGNAL \c[45]~56_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \c[46]~57_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \c[47]~58_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \c[47]~59_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \cb~22_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \c[49]~60_combout\ : std_logic;
SIGNAL \c[49]~61_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \c[50]~62_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \c[51]~63_combout\ : std_logic;
SIGNAL \c[51]~64_combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \cb~24_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \c[54]~69_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \cb~26_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \c[58]~68_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \cb~28_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \c[62]~67_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \cb~30_combout\ : std_logic;
SIGNAL \c[63]~65_combout\ : std_logic;
SIGNAL \c[63]~66_combout\ : std_logic;
SIGNAL \c[63]~66DUPLICATE_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL cb : std_logic_vector(16 DOWNTO 0);
SIGNAL rCOut : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL ALT_INV_cb : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_c[54]~69_combout\ : std_logic;
SIGNAL \ALT_INV_c[58]~68_combout\ : std_logic;
SIGNAL \ALT_INV_c[62]~67_combout\ : std_logic;
SIGNAL ALT_INV_rCOut : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_cb~30_combout\ : std_logic;
SIGNAL \ALT_INV_cb~28_combout\ : std_logic;
SIGNAL \ALT_INV_cb~26_combout\ : std_logic;
SIGNAL \ALT_INV_cb~24_combout\ : std_logic;
SIGNAL \ALT_INV_cb~22_combout\ : std_logic;
SIGNAL \ALT_INV_cb~20_combout\ : std_logic;
SIGNAL \ALT_INV_cb~18_combout\ : std_logic;
SIGNAL \ALT_INV_cb~16_combout\ : std_logic;
SIGNAL \ALT_INV_cb~14_combout\ : std_logic;
SIGNAL \ALT_INV_cb~12_combout\ : std_logic;
SIGNAL \ALT_INV_c[63]~66DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_c[5]~5DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
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
SIGNAL \ALT_INV_cb~10_combout\ : std_logic;
SIGNAL \ALT_INV_cb~8_combout\ : std_logic;
SIGNAL \ALT_INV_cb~6_combout\ : std_logic;
SIGNAL \ALT_INV_cb~4_combout\ : std_logic;
SIGNAL \ALT_INV_cb~2_combout\ : std_logic;
SIGNAL \ALT_INV_cb~0_combout\ : std_logic;
SIGNAL \ALT_INV_c[63]~66_combout\ : std_logic;
SIGNAL \ALT_INV_c[63]~65_combout\ : std_logic;
SIGNAL \ALT_INV_c[51]~64_combout\ : std_logic;
SIGNAL \ALT_INV_c[51]~63_combout\ : std_logic;
SIGNAL \ALT_INV_c[50]~62_combout\ : std_logic;
SIGNAL \ALT_INV_c[49]~61_combout\ : std_logic;
SIGNAL \ALT_INV_c[49]~60_combout\ : std_logic;
SIGNAL \ALT_INV_c[47]~59_combout\ : std_logic;
SIGNAL \ALT_INV_c[47]~58_combout\ : std_logic;
SIGNAL \ALT_INV_c[46]~57_combout\ : std_logic;
SIGNAL \ALT_INV_c[45]~56_combout\ : std_logic;
SIGNAL \ALT_INV_c[45]~55_combout\ : std_logic;
SIGNAL \ALT_INV_c[43]~54_combout\ : std_logic;
SIGNAL \ALT_INV_c[43]~53_combout\ : std_logic;
SIGNAL \ALT_INV_c[42]~52_combout\ : std_logic;
SIGNAL \ALT_INV_c[41]~51_combout\ : std_logic;
SIGNAL \ALT_INV_c[41]~50_combout\ : std_logic;
SIGNAL \ALT_INV_c[39]~49_combout\ : std_logic;
SIGNAL \ALT_INV_c[39]~48_combout\ : std_logic;
SIGNAL \ALT_INV_c[38]~47_combout\ : std_logic;
SIGNAL \ALT_INV_c[37]~46_combout\ : std_logic;
SIGNAL \ALT_INV_c[37]~45_combout\ : std_logic;
SIGNAL \ALT_INV_c[35]~44_combout\ : std_logic;
SIGNAL \ALT_INV_c[35]~43_combout\ : std_logic;
SIGNAL \ALT_INV_c[34]~42_combout\ : std_logic;
SIGNAL \ALT_INV_c[33]~41_combout\ : std_logic;
SIGNAL \ALT_INV_c[33]~40_combout\ : std_logic;
SIGNAL \ALT_INV_c[31]~39_combout\ : std_logic;
SIGNAL \ALT_INV_c[31]~38_combout\ : std_logic;
SIGNAL \ALT_INV_c[30]~37_combout\ : std_logic;
SIGNAL \ALT_INV_c[29]~36_combout\ : std_logic;
SIGNAL \ALT_INV_c[29]~35_combout\ : std_logic;
SIGNAL \ALT_INV_c[27]~34_combout\ : std_logic;
SIGNAL \ALT_INV_c[27]~33_combout\ : std_logic;
SIGNAL \ALT_INV_c[26]~32_combout\ : std_logic;
SIGNAL \ALT_INV_c[25]~31_combout\ : std_logic;
SIGNAL \ALT_INV_c[25]~30_combout\ : std_logic;
SIGNAL \ALT_INV_c[23]~29_combout\ : std_logic;
SIGNAL \ALT_INV_c[23]~28_combout\ : std_logic;
SIGNAL \ALT_INV_c[22]~27_combout\ : std_logic;
SIGNAL \ALT_INV_c[21]~26_combout\ : std_logic;
SIGNAL \ALT_INV_c[21]~25_combout\ : std_logic;
SIGNAL \ALT_INV_c[19]~24_combout\ : std_logic;
SIGNAL \ALT_INV_c[19]~23_combout\ : std_logic;
SIGNAL \ALT_INV_c[18]~22_combout\ : std_logic;
SIGNAL \ALT_INV_c[17]~21_combout\ : std_logic;
SIGNAL \ALT_INV_c[17]~20_combout\ : std_logic;
SIGNAL \ALT_INV_c[15]~19_combout\ : std_logic;
SIGNAL \ALT_INV_c[15]~18_combout\ : std_logic;
SIGNAL \ALT_INV_c[14]~17_combout\ : std_logic;
SIGNAL \ALT_INV_c[13]~16_combout\ : std_logic;
SIGNAL \ALT_INV_c[13]~15_combout\ : std_logic;
SIGNAL \ALT_INV_c[11]~14_combout\ : std_logic;
SIGNAL \ALT_INV_c[11]~13_combout\ : std_logic;
SIGNAL \ALT_INV_c[10]~12_combout\ : std_logic;
SIGNAL \ALT_INV_c[9]~11_combout\ : std_logic;
SIGNAL \ALT_INV_c[9]~10_combout\ : std_logic;
SIGNAL \ALT_INV_c[7]~9_combout\ : std_logic;
SIGNAL \ALT_INV_c[7]~8_combout\ : std_logic;
SIGNAL \ALT_INV_c[6]~7_combout\ : std_logic;
SIGNAL \ALT_INV_c[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_c[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_c[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_c[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_c[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_c[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c[1]~0_combout\ : std_logic;

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
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
ALT_INV_cb(0) <= NOT cb(0);
\ALT_INV_c[54]~69_combout\ <= NOT \c[54]~69_combout\;
\ALT_INV_c[58]~68_combout\ <= NOT \c[58]~68_combout\;
\ALT_INV_c[62]~67_combout\ <= NOT \c[62]~67_combout\;
ALT_INV_rCOut(13) <= NOT rCOut(13);
ALT_INV_rCOut(14) <= NOT rCOut(14);
ALT_INV_rCOut(15) <= NOT rCOut(15);
ALT_INV_rCOut(12) <= NOT rCOut(12);
ALT_INV_rCOut(11) <= NOT rCOut(11);
ALT_INV_rCOut(10) <= NOT rCOut(10);
ALT_INV_rCOut(9) <= NOT rCOut(9);
ALT_INV_rCOut(8) <= NOT rCOut(8);
ALT_INV_rCOut(7) <= NOT rCOut(7);
ALT_INV_rCOut(6) <= NOT rCOut(6);
ALT_INV_rCOut(5) <= NOT rCOut(5);
ALT_INV_rCOut(4) <= NOT rCOut(4);
ALT_INV_rCOut(3) <= NOT rCOut(3);
ALT_INV_rCOut(2) <= NOT rCOut(2);
ALT_INV_rCOut(1) <= NOT rCOut(1);
ALT_INV_rCOut(0) <= NOT rCOut(0);
ALT_INV_cb(16) <= NOT cb(16);
\ALT_INV_cb~30_combout\ <= NOT \cb~30_combout\;
ALT_INV_cb(15) <= NOT cb(15);
\ALT_INV_cb~28_combout\ <= NOT \cb~28_combout\;
ALT_INV_cb(14) <= NOT cb(14);
\ALT_INV_cb~26_combout\ <= NOT \cb~26_combout\;
ALT_INV_cb(13) <= NOT cb(13);
\ALT_INV_cb~24_combout\ <= NOT \cb~24_combout\;
ALT_INV_cb(12) <= NOT cb(12);
\ALT_INV_cb~22_combout\ <= NOT \cb~22_combout\;
ALT_INV_cb(11) <= NOT cb(11);
\ALT_INV_cb~20_combout\ <= NOT \cb~20_combout\;
ALT_INV_cb(10) <= NOT cb(10);
\ALT_INV_cb~18_combout\ <= NOT \cb~18_combout\;
ALT_INV_cb(9) <= NOT cb(9);
\ALT_INV_cb~16_combout\ <= NOT \cb~16_combout\;
ALT_INV_cb(8) <= NOT cb(8);
\ALT_INV_cb~14_combout\ <= NOT \cb~14_combout\;
ALT_INV_cb(7) <= NOT cb(7);
\ALT_INV_cb~12_combout\ <= NOT \cb~12_combout\;
\ALT_INV_c[63]~66DUPLICATE_combout\ <= NOT \c[63]~66DUPLICATE_combout\;
\ALT_INV_c[5]~5DUPLICATE_combout\ <= NOT \c[5]~5DUPLICATE_combout\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
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
ALT_INV_cb(6) <= NOT cb(6);
\ALT_INV_cb~10_combout\ <= NOT \cb~10_combout\;
ALT_INV_cb(5) <= NOT cb(5);
\ALT_INV_cb~8_combout\ <= NOT \cb~8_combout\;
ALT_INV_cb(4) <= NOT cb(4);
\ALT_INV_cb~6_combout\ <= NOT \cb~6_combout\;
ALT_INV_cb(3) <= NOT cb(3);
\ALT_INV_cb~4_combout\ <= NOT \cb~4_combout\;
ALT_INV_cb(2) <= NOT cb(2);
\ALT_INV_cb~2_combout\ <= NOT \cb~2_combout\;
ALT_INV_cb(1) <= NOT cb(1);
\ALT_INV_cb~0_combout\ <= NOT \cb~0_combout\;
\ALT_INV_c[63]~66_combout\ <= NOT \c[63]~66_combout\;
\ALT_INV_c[63]~65_combout\ <= NOT \c[63]~65_combout\;
\ALT_INV_c[51]~64_combout\ <= NOT \c[51]~64_combout\;
\ALT_INV_c[51]~63_combout\ <= NOT \c[51]~63_combout\;
\ALT_INV_c[50]~62_combout\ <= NOT \c[50]~62_combout\;
\ALT_INV_c[49]~61_combout\ <= NOT \c[49]~61_combout\;
\ALT_INV_c[49]~60_combout\ <= NOT \c[49]~60_combout\;
\ALT_INV_c[47]~59_combout\ <= NOT \c[47]~59_combout\;
\ALT_INV_c[47]~58_combout\ <= NOT \c[47]~58_combout\;
\ALT_INV_c[46]~57_combout\ <= NOT \c[46]~57_combout\;
\ALT_INV_c[45]~56_combout\ <= NOT \c[45]~56_combout\;
\ALT_INV_c[45]~55_combout\ <= NOT \c[45]~55_combout\;
\ALT_INV_c[43]~54_combout\ <= NOT \c[43]~54_combout\;
\ALT_INV_c[43]~53_combout\ <= NOT \c[43]~53_combout\;
\ALT_INV_c[42]~52_combout\ <= NOT \c[42]~52_combout\;
\ALT_INV_c[41]~51_combout\ <= NOT \c[41]~51_combout\;
\ALT_INV_c[41]~50_combout\ <= NOT \c[41]~50_combout\;
\ALT_INV_c[39]~49_combout\ <= NOT \c[39]~49_combout\;
\ALT_INV_c[39]~48_combout\ <= NOT \c[39]~48_combout\;
\ALT_INV_c[38]~47_combout\ <= NOT \c[38]~47_combout\;
\ALT_INV_c[37]~46_combout\ <= NOT \c[37]~46_combout\;
\ALT_INV_c[37]~45_combout\ <= NOT \c[37]~45_combout\;
\ALT_INV_c[35]~44_combout\ <= NOT \c[35]~44_combout\;
\ALT_INV_c[35]~43_combout\ <= NOT \c[35]~43_combout\;
\ALT_INV_c[34]~42_combout\ <= NOT \c[34]~42_combout\;
\ALT_INV_c[33]~41_combout\ <= NOT \c[33]~41_combout\;
\ALT_INV_c[33]~40_combout\ <= NOT \c[33]~40_combout\;
\ALT_INV_c[31]~39_combout\ <= NOT \c[31]~39_combout\;
\ALT_INV_c[31]~38_combout\ <= NOT \c[31]~38_combout\;
\ALT_INV_c[30]~37_combout\ <= NOT \c[30]~37_combout\;
\ALT_INV_c[29]~36_combout\ <= NOT \c[29]~36_combout\;
\ALT_INV_c[29]~35_combout\ <= NOT \c[29]~35_combout\;
\ALT_INV_c[27]~34_combout\ <= NOT \c[27]~34_combout\;
\ALT_INV_c[27]~33_combout\ <= NOT \c[27]~33_combout\;
\ALT_INV_c[26]~32_combout\ <= NOT \c[26]~32_combout\;
\ALT_INV_c[25]~31_combout\ <= NOT \c[25]~31_combout\;
\ALT_INV_c[25]~30_combout\ <= NOT \c[25]~30_combout\;
\ALT_INV_c[23]~29_combout\ <= NOT \c[23]~29_combout\;
\ALT_INV_c[23]~28_combout\ <= NOT \c[23]~28_combout\;
\ALT_INV_c[22]~27_combout\ <= NOT \c[22]~27_combout\;
\ALT_INV_c[21]~26_combout\ <= NOT \c[21]~26_combout\;
\ALT_INV_c[21]~25_combout\ <= NOT \c[21]~25_combout\;
\ALT_INV_c[19]~24_combout\ <= NOT \c[19]~24_combout\;
\ALT_INV_c[19]~23_combout\ <= NOT \c[19]~23_combout\;
\ALT_INV_c[18]~22_combout\ <= NOT \c[18]~22_combout\;
\ALT_INV_c[17]~21_combout\ <= NOT \c[17]~21_combout\;
\ALT_INV_c[17]~20_combout\ <= NOT \c[17]~20_combout\;
\ALT_INV_c[15]~19_combout\ <= NOT \c[15]~19_combout\;
\ALT_INV_c[15]~18_combout\ <= NOT \c[15]~18_combout\;
\ALT_INV_c[14]~17_combout\ <= NOT \c[14]~17_combout\;
\ALT_INV_c[13]~16_combout\ <= NOT \c[13]~16_combout\;
\ALT_INV_c[13]~15_combout\ <= NOT \c[13]~15_combout\;
\ALT_INV_c[11]~14_combout\ <= NOT \c[11]~14_combout\;
\ALT_INV_c[11]~13_combout\ <= NOT \c[11]~13_combout\;
\ALT_INV_c[10]~12_combout\ <= NOT \c[10]~12_combout\;
\ALT_INV_c[9]~11_combout\ <= NOT \c[9]~11_combout\;
\ALT_INV_c[9]~10_combout\ <= NOT \c[9]~10_combout\;
\ALT_INV_c[7]~9_combout\ <= NOT \c[7]~9_combout\;
\ALT_INV_c[7]~8_combout\ <= NOT \c[7]~8_combout\;
\ALT_INV_c[6]~7_combout\ <= NOT \c[6]~7_combout\;
\ALT_INV_c[5]~6_combout\ <= NOT \c[5]~6_combout\;
\ALT_INV_c[5]~5_combout\ <= NOT \c[5]~5_combout\;
\ALT_INV_c[3]~4_combout\ <= NOT \c[3]~4_combout\;
\ALT_INV_c[3]~3_combout\ <= NOT \c[3]~3_combout\;
\ALT_INV_c[2]~2_combout\ <= NOT \c[2]~2_combout\;
\ALT_INV_c[1]~1_combout\ <= NOT \c[1]~1_combout\;
\ALT_INV_c[1]~0_combout\ <= NOT \c[1]~0_combout\;

-- Location: IOOBUF_X25_Y56_N33
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

-- Location: IOOBUF_X23_Y56_N67
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

-- Location: IOOBUF_X35_Y56_N98
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

-- Location: IOOBUF_X31_Y56_N67
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

-- Location: IOOBUF_X25_Y56_N5
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

-- Location: IOOBUF_X33_Y56_N33
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

-- Location: IOOBUF_X36_Y56_N2
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

-- Location: IOOBUF_X28_Y56_N67
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

-- Location: IOOBUF_X31_Y56_N98
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

-- Location: IOOBUF_X30_Y56_N2
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

-- Location: IOOBUF_X33_Y56_N5
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

-- Location: IOOBUF_X30_Y56_N36
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

-- Location: IOOBUF_X33_Y56_N98
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

-- Location: IOOBUF_X45_Y0_N98
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

-- Location: IOOBUF_X25_Y56_N98
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

-- Location: IOOBUF_X23_Y56_N2
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

-- Location: IOOBUF_X35_Y56_N67
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

-- Location: IOOBUF_X23_Y56_N98
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

-- Location: IOOBUF_X31_Y56_N36
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

-- Location: IOOBUF_X30_Y56_N67
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

-- Location: IOOBUF_X31_Y56_N2
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

-- Location: IOOBUF_X25_Y56_N67
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

-- Location: IOOBUF_X28_Y56_N98
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

-- Location: IOOBUF_X56_Y56_N33
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

-- Location: IOOBUF_X59_Y49_N67
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

-- Location: IOOBUF_X59_Y36_N67
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

-- Location: IOOBUF_X59_Y36_N98
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

-- Location: IOOBUF_X59_Y49_N36
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

-- Location: IOOBUF_X28_Y56_N36
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

-- Location: IOOBUF_X59_Y36_N36
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

-- Location: IOOBUF_X56_Y56_N2
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

-- Location: IOOBUF_X56_Y56_N95
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

-- Location: IOOBUF_X59_Y37_N98
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

-- Location: IOOBUF_X59_Y39_N98
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

-- Location: IOOBUF_X59_Y46_N67
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

-- Location: IOOBUF_X59_Y51_N5
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

-- Location: IOOBUF_X59_Y33_N67
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

-- Location: IOOBUF_X59_Y30_N67
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

-- Location: IOOBUF_X59_Y30_N2
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

-- Location: IOOBUF_X59_Y30_N98
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

-- Location: IOOBUF_X59_Y30_N36
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

-- Location: IOOBUF_X59_Y31_N2
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

-- Location: IOOBUF_X59_Y31_N67
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

-- Location: IOOBUF_X59_Y31_N36
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

-- Location: IOOBUF_X59_Y31_N98
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

-- Location: IOOBUF_X59_Y22_N36
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

-- Location: IOOBUF_X59_Y22_N98
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

-- Location: IOOBUF_X59_Y22_N67
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

-- Location: IOOBUF_X59_Y15_N5
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

-- Location: IOOBUF_X59_Y15_N67
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

-- Location: IOOBUF_X59_Y15_N33
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

-- Location: IOOBUF_X59_Y21_N5
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

-- Location: IOOBUF_X59_Y18_N36
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

-- Location: IOOBUF_X59_Y18_N2
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

-- Location: IOOBUF_X59_Y15_N98
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

-- Location: IOOBUF_X59_Y21_N98
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

-- Location: IOOBUF_X59_Y19_N36
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

-- Location: IOOBUF_X59_Y19_N67
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

-- Location: IOOBUF_X59_Y18_N98
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

-- Location: IOOBUF_X59_Y18_N67
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

-- Location: IOOBUF_X59_Y19_N2
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

-- Location: IOOBUF_X59_Y19_N98
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

-- Location: IOOBUF_X59_Y16_N36
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

-- Location: IOOBUF_X59_Y16_N67
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

-- Location: IOOBUF_X59_Y16_N98
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cb(16),
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

-- Location: IOIBUF_X46_Y56_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X46_Y56_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: MLABCELL_X46_Y55_N16
\cb[0]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(0) = LCELL(( \Cin~input_o\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Cin~input_o\,
	combout => cb(0));

-- Location: IOIBUF_X48_Y56_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: MLABCELL_X49_Y55_N8
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( cb(0) & ( \B[0]~input_o\ & ( \A[0]~input_o\ ) ) ) # ( !cb(0) & ( \B[0]~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( cb(0) & ( !\B[0]~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( !cb(0) & ( !\B[0]~input_o\ & ( \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datae => ALT_INV_cb(0),
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: LABCELL_X47_Y55_N32
\c[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c[1]~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \c[1]~0_combout\);

-- Location: MLABCELL_X46_Y55_N26
\c[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c[1]~1_combout\ = ( cb(0) & ( (\A[0]~input_o\) # (\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => ALT_INV_cb(0),
	combout => \c[1]~1_combout\);

-- Location: IOIBUF_X46_Y56_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X48_Y56_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X45_Y55_N10
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((\c[1]~1_combout\) # (\c[1]~0_combout\))) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\c[1]~0_combout\ & !\c[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000010100000010111111010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[1]~0_combout\,
	datac => \ALT_INV_c[1]~1_combout\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X44_Y56_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X44_Y56_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X46_Y55_N28
\c[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c[2]~2_combout\ = ( \c[1]~0_combout\ & ( (!\B[1]~input_o\ & !\A[1]~input_o\) ) ) # ( !\c[1]~0_combout\ & ( (!\B[1]~input_o\ & ((!\A[1]~input_o\) # (!\c[1]~1_combout\))) # (\B[1]~input_o\ & (!\A[1]~input_o\ & !\c[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_c[1]~1_combout\,
	dataf => \ALT_INV_c[1]~0_combout\,
	combout => \c[2]~2_combout\);

-- Location: LABCELL_X45_Y55_N20
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (!\c[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_c[2]~2_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X48_Y56_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X46_Y56_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X45_Y55_N0
\c[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~3_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \c[3]~3_combout\);

-- Location: MLABCELL_X46_Y55_N2
\c[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c[3]~4_combout\ = ( !\c[2]~2_combout\ & ( (\A[2]~input_o\) # (\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_c[2]~2_combout\,
	combout => \c[3]~4_combout\);

-- Location: LABCELL_X45_Y55_N6
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \c[3]~4_combout\ & ( !\A[3]~input_o\ $ (\B[3]~input_o\) ) ) # ( !\c[3]~4_combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (\c[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_c[3]~3_combout\,
	dataf => \ALT_INV_c[3]~4_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X44_Y56_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: MLABCELL_X46_Y55_N22
\cb~0\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~0_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (cb(0) & (!\A[0]~input_o\ $ (!\B[0]~input_o\)))) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & (cb(0) & (!\A[0]~input_o\ $ (!\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => ALT_INV_cb(0),
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \cb~0_combout\);

-- Location: MLABCELL_X46_Y55_N8
\rCOut[0]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(0) = LCELL(( \c[3]~4_combout\ & ( (\A[3]~input_o\) # (\B[3]~input_o\) ) ) # ( !\c[3]~4_combout\ & ( (!\B[3]~input_o\ & (\c[3]~3_combout\ & \A[3]~input_o\)) # (\B[3]~input_o\ & ((\A[3]~input_o\) # (\c[3]~3_combout\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_c[3]~3_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_c[3]~4_combout\,
	combout => rCOut(0));

-- Location: MLABCELL_X46_Y55_N4
\cb[1]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(1) = LCELL(( \cb~0_combout\ & ( rCOut(0) ) ) # ( !\cb~0_combout\ & ( rCOut(0) ) ) # ( \cb~0_combout\ & ( !rCOut(0) & ( (!\A[2]~input_o\ & (\B[2]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) # (\A[2]~input_o\ & (!\B[2]~input_o\ & (!\A[3]~input_o\ 
-- $ (!\B[3]~input_o\)))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000010100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_cb~0_combout\,
	dataf => ALT_INV_rCOut(0),
	combout => cb(1));

-- Location: IOIBUF_X44_Y56_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X45_Y55_N18
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \B[4]~input_o\ & ( !\A[4]~input_o\ $ (cb(1)) ) ) # ( !\B[4]~input_o\ & ( !\A[4]~input_o\ $ (!cb(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => ALT_INV_cb(1),
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \S~4_combout\);

-- Location: LABCELL_X45_Y55_N14
\c[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c[5]~5_combout\ = ( \A[4]~input_o\ & ( \B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \c[5]~5_combout\);

-- Location: MLABCELL_X46_Y55_N14
\c[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c[5]~6_combout\ = ( cb(1) & ( (\B[4]~input_o\) # (\A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => ALT_INV_cb(1),
	combout => \c[5]~6_combout\);

-- Location: IOIBUF_X49_Y56_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X49_Y56_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X45_Y55_N4
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \B[5]~input_o\ & ( !\A[5]~input_o\ $ (((\c[5]~6_combout\) # (\c[5]~5_combout\))) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ $ (((!\c[5]~5_combout\ & !\c[5]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[5]~5_combout\,
	datac => \ALT_INV_c[5]~6_combout\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X42_Y56_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X45_Y55_N12
\c[5]~5DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[5]~5DUPLICATE_combout\ = ( \A[4]~input_o\ & ( \B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \c[5]~5DUPLICATE_combout\);

-- Location: MLABCELL_X46_Y55_N34
\c[6]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c[6]~7_combout\ = ( \c[5]~6_combout\ & ( (!\A[5]~input_o\ & !\B[5]~input_o\) ) ) # ( !\c[5]~6_combout\ & ( (!\A[5]~input_o\ & ((!\B[5]~input_o\) # (!\c[5]~5DUPLICATE_combout\))) # (\A[5]~input_o\ & (!\B[5]~input_o\ & !\c[5]~5DUPLICATE_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_c[5]~5DUPLICATE_combout\,
	dataf => \ALT_INV_c[5]~6_combout\,
	combout => \c[6]~7_combout\);

-- Location: IOIBUF_X42_Y56_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X45_Y55_N34
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \c[6]~7_combout\ & ( \A[6]~input_o\ & ( !\B[6]~input_o\ ) ) ) # ( !\c[6]~7_combout\ & ( \A[6]~input_o\ & ( \B[6]~input_o\ ) ) ) # ( \c[6]~7_combout\ & ( !\A[6]~input_o\ & ( \B[6]~input_o\ ) ) ) # ( !\c[6]~7_combout\ & ( !\A[6]~input_o\ & 
-- ( !\B[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_c[6]~7_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \S~6_combout\);

-- Location: MLABCELL_X46_Y55_N36
\c[7]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c[7]~9_combout\ = ( !\c[6]~7_combout\ & ( (\B[6]~input_o\) # (\A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_c[6]~7_combout\,
	combout => \c[7]~9_combout\);

-- Location: LABCELL_X45_Y55_N16
\c[7]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c[7]~8_combout\ = ( \A[6]~input_o\ & ( \B[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \c[7]~8_combout\);

-- Location: IOIBUF_X49_Y56_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X49_Y56_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X45_Y55_N22
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \B[7]~input_o\ & ( !\A[7]~input_o\ $ (((\c[7]~8_combout\) # (\c[7]~9_combout\))) ) ) # ( !\B[7]~input_o\ & ( !\A[7]~input_o\ $ (((!\c[7]~9_combout\ & !\c[7]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000010100000010111111010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[7]~9_combout\,
	datac => \ALT_INV_c[7]~8_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X42_Y56_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X42_Y56_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X45_Y55_N36
\cb~2\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~2_combout\ = ( \B[6]~input_o\ & ( \B[5]~input_o\ & ( (!\A[5]~input_o\ & (!\A[6]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) ) ) # ( !\B[6]~input_o\ & ( \B[5]~input_o\ & ( (!\A[5]~input_o\ & (\A[6]~input_o\ & (!\A[4]~input_o\ $ 
-- (!\B[4]~input_o\)))) ) ) ) # ( \B[6]~input_o\ & ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (!\A[6]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) ) ) # ( !\B[6]~input_o\ & ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (\A[6]~input_o\ & (!\A[4]~input_o\ $ 
-- (!\B[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000100100000000000000000010010000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \cb~2_combout\);

-- Location: MLABCELL_X46_Y55_N12
\rCOut[1]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(1) = LCELL(( \c[7]~9_combout\ & ( (\A[7]~input_o\) # (\B[7]~input_o\) ) ) # ( !\c[7]~9_combout\ & ( (!\c[7]~8_combout\ & (\B[7]~input_o\ & \A[7]~input_o\)) # (\c[7]~8_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[7]~8_combout\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_c[7]~9_combout\,
	combout => rCOut(1));

-- Location: MLABCELL_X46_Y55_N0
\cb[2]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(2) = LCELL(( rCOut(1) ) # ( !rCOut(1) & ( (\cb~2_combout\ & (cb(1) & (!\A[7]~input_o\ $ (!\B[7]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_cb~2_combout\,
	datad => ALT_INV_cb(1),
	dataf => ALT_INV_rCOut(1),
	combout => cb(2));

-- Location: LABCELL_X43_Y55_N24
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \B[8]~input_o\ & ( cb(2) & ( \A[8]~input_o\ ) ) ) # ( !\B[8]~input_o\ & ( cb(2) & ( !\A[8]~input_o\ ) ) ) # ( \B[8]~input_o\ & ( !cb(2) & ( !\A[8]~input_o\ ) ) ) # ( !\B[8]~input_o\ & ( !cb(2) & ( \A[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => ALT_INV_cb(2),
	combout => \S~8_combout\);

-- Location: IOIBUF_X38_Y56_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X45_Y55_N28
\c[9]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c[9]~10_combout\ = ( \A[8]~input_o\ & ( \B[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \c[9]~10_combout\);

-- Location: MLABCELL_X46_Y55_N10
\c[9]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c[9]~11_combout\ = ( cb(2) & ( (\B[8]~input_o\) # (\A[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => ALT_INV_cb(2),
	combout => \c[9]~11_combout\);

-- Location: IOIBUF_X38_Y56_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X42_Y55_N8
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \c[9]~11_combout\ & ( \A[9]~input_o\ & ( \B[9]~input_o\ ) ) ) # ( !\c[9]~11_combout\ & ( \A[9]~input_o\ & ( !\B[9]~input_o\ $ (\c[9]~10_combout\) ) ) ) # ( \c[9]~11_combout\ & ( !\A[9]~input_o\ & ( !\B[9]~input_o\ ) ) ) # ( 
-- !\c[9]~11_combout\ & ( !\A[9]~input_o\ & ( !\B[9]~input_o\ $ (!\c[9]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110011001100110011000011110000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_c[9]~10_combout\,
	datae => \ALT_INV_c[9]~11_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X40_Y56_N32
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X40_Y56_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X46_Y55_N30
\c[10]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c[10]~12_combout\ = ( \c[9]~11_combout\ & ( (!\B[9]~input_o\ & !\A[9]~input_o\) ) ) # ( !\c[9]~11_combout\ & ( (!\c[9]~10_combout\ & ((!\B[9]~input_o\) # (!\A[9]~input_o\))) # (\c[9]~10_combout\ & (!\B[9]~input_o\ & !\A[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[9]~10_combout\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_c[9]~11_combout\,
	combout => \c[10]~12_combout\);

-- Location: MLABCELL_X42_Y55_N30
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \A[10]~input_o\ & ( \c[10]~12_combout\ & ( !\B[10]~input_o\ ) ) ) # ( !\A[10]~input_o\ & ( \c[10]~12_combout\ & ( \B[10]~input_o\ ) ) ) # ( \A[10]~input_o\ & ( !\c[10]~12_combout\ & ( \B[10]~input_o\ ) ) ) # ( !\A[10]~input_o\ & ( 
-- !\c[10]~12_combout\ & ( !\B[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_c[10]~12_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X38_Y56_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X42_Y55_N26
\c[11]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c[11]~13_combout\ = ( \A[10]~input_o\ & ( \B[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \c[11]~13_combout\);

-- Location: MLABCELL_X46_Y55_N20
\c[11]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c[11]~14_combout\ = ( !\c[10]~12_combout\ & ( (\B[10]~input_o\) # (\A[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_c[10]~12_combout\,
	combout => \c[11]~14_combout\);

-- Location: IOIBUF_X38_Y56_N1
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: MLABCELL_X42_Y55_N36
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \c[11]~14_combout\ & ( \B[11]~input_o\ & ( \A[11]~input_o\ ) ) ) # ( !\c[11]~14_combout\ & ( \B[11]~input_o\ & ( !\A[11]~input_o\ $ (\c[11]~13_combout\) ) ) ) # ( \c[11]~14_combout\ & ( !\B[11]~input_o\ & ( !\A[11]~input_o\ ) ) ) # ( 
-- !\c[11]~14_combout\ & ( !\B[11]~input_o\ & ( !\A[11]~input_o\ $ (!\c[11]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011001100110011001100001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_c[11]~13_combout\,
	datae => \ALT_INV_c[11]~14_combout\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X53_Y56_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X48_Y56_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X42_Y55_N34
\cb~4\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~4_combout\ = ( \A[10]~input_o\ & ( \B[9]~input_o\ & ( (!\B[10]~input_o\ & (!\A[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \B[9]~input_o\ & ( (\B[10]~input_o\ & (!\A[9]~input_o\ & (!\A[8]~input_o\ $ 
-- (!\B[8]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\B[9]~input_o\ & ( (!\B[10]~input_o\ & (\A[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\B[9]~input_o\ & ( (\B[10]~input_o\ & (\A[9]~input_o\ & (!\A[8]~input_o\ $ 
-- (!\B[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000110000000000110000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \cb~4_combout\);

-- Location: MLABCELL_X46_Y55_N24
\rCOut[2]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(2) = LCELL(( \c[11]~14_combout\ & ( (\A[11]~input_o\) # (\B[11]~input_o\) ) ) # ( !\c[11]~14_combout\ & ( (!\c[11]~13_combout\ & (\B[11]~input_o\ & \A[11]~input_o\)) # (\c[11]~13_combout\ & ((\A[11]~input_o\) # (\B[11]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[11]~13_combout\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_c[11]~14_combout\,
	combout => rCOut(2));

-- Location: MLABCELL_X46_Y55_N38
\cb[3]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(3) = LCELL(( rCOut(2) ) # ( !rCOut(2) & ( (cb(2) & (\cb~4_combout\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => ALT_INV_cb(2),
	datad => \ALT_INV_cb~4_combout\,
	dataf => ALT_INV_rCOut(2),
	combout => cb(3));

-- Location: MLABCELL_X44_Y55_N2
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \A[12]~input_o\ & ( cb(3) & ( \B[12]~input_o\ ) ) ) # ( !\A[12]~input_o\ & ( cb(3) & ( !\B[12]~input_o\ ) ) ) # ( \A[12]~input_o\ & ( !cb(3) & ( !\B[12]~input_o\ ) ) ) # ( !\A[12]~input_o\ & ( !cb(3) & ( \B[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => ALT_INV_cb(3),
	combout => \S~12_combout\);

-- Location: IOIBUF_X40_Y56_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X36_Y56_N94
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X46_Y55_N32
\c[13]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c[13]~16_combout\ = ( cb(3) & ( (\A[12]~input_o\) # (\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => ALT_INV_cb(3),
	combout => \c[13]~16_combout\);

-- Location: LABCELL_X45_Y55_N24
\c[13]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c[13]~15_combout\ = ( \B[12]~input_o\ & ( \A[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \c[13]~15_combout\);

-- Location: LABCELL_X45_Y55_N8
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \c[13]~15_combout\ & ( !\A[13]~input_o\ $ (\B[13]~input_o\) ) ) # ( !\c[13]~15_combout\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (\c[13]~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_c[13]~16_combout\,
	dataf => \ALT_INV_c[13]~15_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X51_Y56_N32
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X51_Y56_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X46_Y55_N18
\c[14]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \c[14]~17_combout\ = ( \c[13]~16_combout\ & ( (!\A[13]~input_o\ & !\B[13]~input_o\) ) ) # ( !\c[13]~16_combout\ & ( (!\c[13]~15_combout\ & ((!\A[13]~input_o\) # (!\B[13]~input_o\))) # (\c[13]~15_combout\ & (!\A[13]~input_o\ & !\B[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[13]~15_combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_c[13]~16_combout\,
	combout => \c[14]~17_combout\);

-- Location: MLABCELL_X49_Y55_N22
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \B[14]~input_o\ & ( \c[14]~17_combout\ & ( !\A[14]~input_o\ ) ) ) # ( !\B[14]~input_o\ & ( \c[14]~17_combout\ & ( \A[14]~input_o\ ) ) ) # ( \B[14]~input_o\ & ( !\c[14]~17_combout\ & ( \A[14]~input_o\ ) ) ) # ( !\B[14]~input_o\ & ( 
-- !\c[14]~17_combout\ & ( !\A[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_c[14]~17_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X51_Y56_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X51_Y56_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X47_Y55_N10
\c[15]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \c[15]~19_combout\ = ( !\c[14]~17_combout\ & ( (\B[14]~input_o\) # (\A[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_c[14]~17_combout\,
	combout => \c[15]~19_combout\);

-- Location: LABCELL_X47_Y55_N36
\c[15]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \c[15]~18_combout\ = ( \A[14]~input_o\ & ( \B[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \c[15]~18_combout\);

-- Location: LABCELL_X47_Y55_N22
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \c[15]~18_combout\ & ( !\A[15]~input_o\ $ (\B[15]~input_o\) ) ) # ( !\c[15]~18_combout\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (\c[15]~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_c[15]~19_combout\,
	dataf => \ALT_INV_c[15]~18_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X40_Y56_N94
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X55_Y56_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X47_Y55_N16
\cb~6\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~6_combout\ = ( \B[13]~input_o\ & ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & (!\A[13]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\)))) ) ) ) # ( !\B[13]~input_o\ & ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & (\A[13]~input_o\ & (!\B[12]~input_o\ $ 
-- (!\A[12]~input_o\)))) ) ) ) # ( \B[13]~input_o\ & ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (!\A[13]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\)))) ) ) ) # ( !\B[13]~input_o\ & ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (\A[13]~input_o\ & 
-- (!\B[12]~input_o\ $ (!\A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000100000010000000000100000010000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \cb~6_combout\);

-- Location: LABCELL_X47_Y55_N14
\rCOut[3]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(3) = LCELL(( \c[15]~19_combout\ & ( (\A[15]~input_o\) # (\B[15]~input_o\) ) ) # ( !\c[15]~19_combout\ & ( (!\c[15]~18_combout\ & (\B[15]~input_o\ & \A[15]~input_o\)) # (\c[15]~18_combout\ & ((\A[15]~input_o\) # (\B[15]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[15]~18_combout\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_c[15]~19_combout\,
	combout => rCOut(3));

-- Location: LABCELL_X47_Y55_N34
\cb[4]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(4) = LCELL(( rCOut(3) ) # ( !rCOut(3) & ( (\cb~6_combout\ & (cb(3) & (!\A[15]~input_o\ $ (!\B[15]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_cb~6_combout\,
	datad => ALT_INV_cb(3),
	dataf => ALT_INV_rCOut(3),
	combout => cb(4));

-- Location: MLABCELL_X44_Y55_N38
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( cb(4) & ( !\A[16]~input_o\ $ (\B[16]~input_o\) ) ) # ( !cb(4) & ( !\A[16]~input_o\ $ (!\B[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datae => ALT_INV_cb(4),
	combout => \S~16_combout\);

-- Location: IOIBUF_X55_Y56_N1
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X47_Y55_N26
\c[17]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \c[17]~20_combout\ = ( \A[16]~input_o\ & ( \B[16]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \c[17]~20_combout\);

-- Location: LABCELL_X47_Y55_N28
\c[17]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \c[17]~21_combout\ = ( cb(4) & ( (\B[16]~input_o\) # (\A[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => ALT_INV_cb(4),
	combout => \c[17]~21_combout\);

-- Location: IOIBUF_X36_Y56_N32
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LABCELL_X47_Y55_N2
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \A[17]~input_o\ & ( !\B[17]~input_o\ $ (((\c[17]~21_combout\) # (\c[17]~20_combout\))) ) ) # ( !\A[17]~input_o\ & ( !\B[17]~input_o\ $ (((!\c[17]~20_combout\ & !\c[17]~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010100110101010010101100101011001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_c[17]~20_combout\,
	datac => \ALT_INV_c[17]~21_combout\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X53_Y56_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X55_Y56_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X47_Y55_N20
\c[18]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \c[18]~22_combout\ = ( \c[17]~21_combout\ & ( (!\A[17]~input_o\ & !\B[17]~input_o\) ) ) # ( !\c[17]~21_combout\ & ( (!\c[17]~20_combout\ & ((!\A[17]~input_o\) # (!\B[17]~input_o\))) # (\c[17]~20_combout\ & (!\A[17]~input_o\ & !\B[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[17]~20_combout\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_c[17]~21_combout\,
	combout => \c[18]~22_combout\);

-- Location: MLABCELL_X44_Y55_N32
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \c[18]~22_combout\ & ( !\B[18]~input_o\ $ (!\A[18]~input_o\) ) ) # ( !\c[18]~22_combout\ & ( !\B[18]~input_o\ $ (\A[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_c[18]~22_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X35_Y56_N1
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X55_Y56_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LABCELL_X47_Y55_N12
\c[19]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \c[19]~23_combout\ = ( \A[18]~input_o\ & ( \B[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \c[19]~23_combout\);

-- Location: LABCELL_X47_Y55_N8
\c[19]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \c[19]~24_combout\ = ( !\c[18]~22_combout\ & ( (\A[18]~input_o\) # (\B[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_c[18]~22_combout\,
	combout => \c[19]~24_combout\);

-- Location: LABCELL_X47_Y55_N30
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \c[19]~24_combout\ & ( !\A[19]~input_o\ $ (\B[19]~input_o\) ) ) # ( !\c[19]~24_combout\ & ( !\A[19]~input_o\ $ (!\B[19]~input_o\ $ (\c[19]~23_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_c[19]~23_combout\,
	dataf => \ALT_INV_c[19]~24_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X36_Y56_N63
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LABCELL_X47_Y55_N4
\cb~8\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~8_combout\ = ( !\B[18]~input_o\ & ( \A[18]~input_o\ & ( (!\B[17]~input_o\ & (\A[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\)))) # (\B[17]~input_o\ & (!\A[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\)))) ) ) ) # ( \B[18]~input_o\ & ( 
-- !\A[18]~input_o\ & ( (!\B[17]~input_o\ & (\A[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\)))) # (\B[17]~input_o\ & (!\A[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100100100000010010010010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \cb~8_combout\);

-- Location: LABCELL_X47_Y55_N24
\rCOut[4]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(4) = LCELL(( \c[19]~24_combout\ & ( (\B[19]~input_o\) # (\A[19]~input_o\) ) ) # ( !\c[19]~24_combout\ & ( (!\A[19]~input_o\ & (\B[19]~input_o\ & \c[19]~23_combout\)) # (\A[19]~input_o\ & ((\c[19]~23_combout\) # (\B[19]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_c[19]~23_combout\,
	dataf => \ALT_INV_c[19]~24_combout\,
	combout => rCOut(4));

-- Location: LABCELL_X47_Y55_N38
\cb[5]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(5) = LCELL(( rCOut(4) ) # ( !rCOut(4) & ( (cb(4) & (\cb~8_combout\ & (!\A[19]~input_o\ $ (!\B[19]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => ALT_INV_cb(4),
	datad => \ALT_INV_cb~8_combout\,
	dataf => ALT_INV_rCOut(4),
	combout => cb(5));

-- Location: IOIBUF_X35_Y56_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X43_Y55_N6
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( cb(5) & ( \B[20]~input_o\ & ( \A[20]~input_o\ ) ) ) # ( !cb(5) & ( \B[20]~input_o\ & ( !\A[20]~input_o\ ) ) ) # ( cb(5) & ( !\B[20]~input_o\ & ( !\A[20]~input_o\ ) ) ) # ( !cb(5) & ( !\B[20]~input_o\ & ( \A[20]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[20]~input_o\,
	datae => ALT_INV_cb(5),
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \S~20_combout\);

-- Location: LABCELL_X43_Y55_N10
\c[21]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~25_combout\ = ( \B[20]~input_o\ & ( \A[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \c[21]~25_combout\);

-- Location: IOIBUF_X33_Y56_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X47_Y55_N0
\c[21]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \c[21]~26_combout\ = ( cb(5) & ( (\A[20]~input_o\) # (\B[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => ALT_INV_cb(5),
	combout => \c[21]~26_combout\);

-- Location: IOIBUF_X56_Y56_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: MLABCELL_X52_Y52_N2
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \c[21]~26_combout\ & ( \A[21]~input_o\ & ( \B[21]~input_o\ ) ) ) # ( !\c[21]~26_combout\ & ( \A[21]~input_o\ & ( !\c[21]~25_combout\ $ (\B[21]~input_o\) ) ) ) # ( \c[21]~26_combout\ & ( !\A[21]~input_o\ & ( !\B[21]~input_o\ ) ) ) # ( 
-- !\c[21]~26_combout\ & ( !\A[21]~input_o\ & ( !\c[21]~25_combout\ $ (!\B[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100111111110000000011001100001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[21]~25_combout\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_c[21]~26_combout\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X53_Y56_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: MLABCELL_X52_Y43_N8
\c[22]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \c[22]~27_combout\ = ( \c[21]~26_combout\ & ( (!\B[21]~input_o\ & !\A[21]~input_o\) ) ) # ( !\c[21]~26_combout\ & ( (!\B[21]~input_o\ & ((!\c[21]~25_combout\) # (!\A[21]~input_o\))) # (\B[21]~input_o\ & (!\c[21]~25_combout\ & !\A[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_c[21]~25_combout\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_c[21]~26_combout\,
	combout => \c[22]~27_combout\);

-- Location: IOIBUF_X53_Y56_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: MLABCELL_X52_Y44_N34
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \c[22]~27_combout\ & ( \B[22]~input_o\ & ( !\A[22]~input_o\ ) ) ) # ( !\c[22]~27_combout\ & ( \B[22]~input_o\ & ( \A[22]~input_o\ ) ) ) # ( \c[22]~27_combout\ & ( !\B[22]~input_o\ & ( \A[22]~input_o\ ) ) ) # ( !\c[22]~27_combout\ & ( 
-- !\B[22]~input_o\ & ( !\A[22]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_c[22]~27_combout\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X59_Y48_N32
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X59_Y48_N1
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: MLABCELL_X52_Y44_N20
\c[23]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \c[23]~28_combout\ = ( \A[22]~input_o\ & ( \B[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \c[23]~28_combout\);

-- Location: MLABCELL_X52_Y43_N28
\c[23]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \c[23]~29_combout\ = ( !\c[22]~27_combout\ & ( (\B[22]~input_o\) # (\A[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_c[22]~27_combout\,
	combout => \c[23]~29_combout\);

-- Location: MLABCELL_X52_Y44_N22
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \c[23]~29_combout\ & ( !\B[23]~input_o\ $ (\A[23]~input_o\) ) ) # ( !\c[23]~29_combout\ & ( !\B[23]~input_o\ $ (!\A[23]~input_o\ $ (\c[23]~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_c[23]~28_combout\,
	dataf => \ALT_INV_c[23]~29_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X59_Y46_N32
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: MLABCELL_X52_Y44_N2
\cb~10\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~10_combout\ = ( \A[21]~input_o\ & ( \B[22]~input_o\ & ( (!\B[21]~input_o\ & (!\A[22]~input_o\ & (!\A[20]~input_o\ $ (!\B[20]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( \B[22]~input_o\ & ( (\B[21]~input_o\ & (!\A[22]~input_o\ & (!\A[20]~input_o\ $ 
-- (!\B[20]~input_o\)))) ) ) ) # ( \A[21]~input_o\ & ( !\B[22]~input_o\ & ( (!\B[21]~input_o\ & (\A[22]~input_o\ & (!\A[20]~input_o\ $ (!\B[20]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( !\B[22]~input_o\ & ( (\B[21]~input_o\ & (\A[22]~input_o\ & 
-- (!\A[20]~input_o\ $ (!\B[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000100010000000000100010000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \cb~10_combout\);

-- Location: MLABCELL_X52_Y43_N22
\rCOut[5]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(5) = LCELL(( \c[23]~29_combout\ & ( (\B[23]~input_o\) # (\A[23]~input_o\) ) ) # ( !\c[23]~29_combout\ & ( (!\A[23]~input_o\ & (\B[23]~input_o\ & \c[23]~28_combout\)) # (\A[23]~input_o\ & ((\c[23]~28_combout\) # (\B[23]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_c[23]~28_combout\,
	dataf => \ALT_INV_c[23]~29_combout\,
	combout => rCOut(5));

-- Location: MLABCELL_X52_Y43_N24
\cb[6]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(6) = LCELL(( rCOut(5) ) # ( !rCOut(5) & ( (\cb~10_combout\ & (cb(5) & (!\B[23]~input_o\ $ (!\A[23]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cb~10_combout\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => ALT_INV_cb(5),
	dataf => ALT_INV_rCOut(5),
	combout => cb(6));

-- Location: IOIBUF_X59_Y46_N94
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X55_Y43_N34
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( cb(6) & ( \A[24]~input_o\ & ( \B[24]~input_o\ ) ) ) # ( !cb(6) & ( \A[24]~input_o\ & ( !\B[24]~input_o\ ) ) ) # ( cb(6) & ( !\A[24]~input_o\ & ( !\B[24]~input_o\ ) ) ) # ( !cb(6) & ( !\A[24]~input_o\ & ( \B[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[24]~input_o\,
	datae => ALT_INV_cb(6),
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X59_Y51_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X59_Y48_N63
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X55_Y43_N28
\c[25]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \c[25]~30_combout\ = ( \A[24]~input_o\ & ( \B[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \c[25]~30_combout\);

-- Location: MLABCELL_X52_Y43_N2
\c[25]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \c[25]~31_combout\ = ( cb(6) & ( (\A[24]~input_o\) # (\B[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	dataf => ALT_INV_cb(6),
	combout => \c[25]~31_combout\);

-- Location: LABCELL_X55_Y43_N30
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \c[25]~31_combout\ & ( !\B[25]~input_o\ $ (\A[25]~input_o\) ) ) # ( !\c[25]~31_combout\ & ( !\B[25]~input_o\ $ (!\A[25]~input_o\ $ (\c[25]~30_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_c[25]~30_combout\,
	dataf => \ALT_INV_c[25]~31_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X59_Y39_N32
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: MLABCELL_X52_Y43_N36
\c[26]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \c[26]~32_combout\ = ( \c[25]~31_combout\ & ( (!\B[25]~input_o\ & !\A[25]~input_o\) ) ) # ( !\c[25]~31_combout\ & ( (!\B[25]~input_o\ & ((!\c[25]~30_combout\) # (!\A[25]~input_o\))) # (\B[25]~input_o\ & (!\c[25]~30_combout\ & !\A[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_c[25]~30_combout\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_c[25]~31_combout\,
	combout => \c[26]~32_combout\);

-- Location: IOIBUF_X59_Y46_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X55_Y43_N26
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \c[26]~32_combout\ & ( \A[26]~input_o\ & ( !\B[26]~input_o\ ) ) ) # ( !\c[26]~32_combout\ & ( \A[26]~input_o\ & ( \B[26]~input_o\ ) ) ) # ( \c[26]~32_combout\ & ( !\A[26]~input_o\ & ( \B[26]~input_o\ ) ) ) # ( !\c[26]~32_combout\ & ( 
-- !\A[26]~input_o\ & ( !\B[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[26]~input_o\,
	datae => \ALT_INV_c[26]~32_combout\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X59_Y48_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X59_Y51_N32
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X55_Y43_N36
\c[27]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \c[27]~33_combout\ = ( \B[26]~input_o\ & ( \A[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \c[27]~33_combout\);

-- Location: MLABCELL_X52_Y43_N26
\c[27]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \c[27]~34_combout\ = ( \B[26]~input_o\ & ( !\c[26]~32_combout\ ) ) # ( !\B[26]~input_o\ & ( (!\c[26]~32_combout\ & \A[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[26]~32_combout\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \c[27]~34_combout\);

-- Location: LABCELL_X55_Y43_N38
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \c[27]~34_combout\ & ( !\B[27]~input_o\ $ (\A[27]~input_o\) ) ) # ( !\c[27]~34_combout\ & ( !\B[27]~input_o\ $ (!\A[27]~input_o\ $ (\c[27]~33_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_c[27]~33_combout\,
	dataf => \ALT_INV_c[27]~34_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X59_Y39_N1
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X59_Y39_N63
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LABCELL_X55_Y43_N16
\cb~12\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~12_combout\ = ( \B[25]~input_o\ & ( \A[24]~input_o\ & ( (!\A[25]~input_o\ & (!\B[24]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\)))) ) ) ) # ( !\B[25]~input_o\ & ( \A[24]~input_o\ & ( (\A[25]~input_o\ & (!\B[24]~input_o\ & (!\A[26]~input_o\ $ 
-- (!\B[26]~input_o\)))) ) ) ) # ( \B[25]~input_o\ & ( !\A[24]~input_o\ & ( (!\A[25]~input_o\ & (\B[24]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\)))) ) ) ) # ( !\B[25]~input_o\ & ( !\A[24]~input_o\ & ( (\A[25]~input_o\ & (\B[24]~input_o\ & 
-- (!\A[26]~input_o\ $ (!\B[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000001000000100000010000001000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	datae => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \cb~12_combout\);

-- Location: MLABCELL_X52_Y43_N14
\rCOut[6]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(6) = LCELL(( \c[27]~34_combout\ & ( (\B[27]~input_o\) # (\A[27]~input_o\) ) ) # ( !\c[27]~34_combout\ & ( (!\c[27]~33_combout\ & (\A[27]~input_o\ & \B[27]~input_o\)) # (\c[27]~33_combout\ & ((\B[27]~input_o\) # (\A[27]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c[27]~33_combout\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_c[27]~34_combout\,
	combout => rCOut(6));

-- Location: MLABCELL_X52_Y43_N0
\cb[7]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(7) = LCELL(( rCOut(6) ) # ( !rCOut(6) & ( (cb(6) & (\cb~12_combout\ & (!\A[27]~input_o\ $ (!\B[27]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cb(6),
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_cb~12_combout\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => ALT_INV_rCOut(6),
	combout => cb(7));

-- Location: LABCELL_X53_Y43_N16
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( cb(7) & ( !\A[28]~input_o\ $ (\B[28]~input_o\) ) ) # ( !cb(7) & ( !\A[28]~input_o\ $ (!\B[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datae => ALT_INV_cb(7),
	combout => \S~28_combout\);

-- Location: IOIBUF_X59_Y37_N1
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LABCELL_X53_Y43_N30
\c[29]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \c[29]~35_combout\ = ( \B[28]~input_o\ & ( \A[28]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \c[29]~35_combout\);

-- Location: IOIBUF_X59_Y37_N32
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X52_Y43_N20
\c[29]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \c[29]~36_combout\ = ( cb(7) & ( (\A[28]~input_o\) # (\B[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	dataf => ALT_INV_cb(7),
	combout => \c[29]~36_combout\);

-- Location: LABCELL_X53_Y43_N34
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \B[29]~input_o\ & ( \c[29]~36_combout\ & ( \A[29]~input_o\ ) ) ) # ( !\B[29]~input_o\ & ( \c[29]~36_combout\ & ( !\A[29]~input_o\ ) ) ) # ( \B[29]~input_o\ & ( !\c[29]~36_combout\ & ( !\A[29]~input_o\ $ (\c[29]~35_combout\) ) ) ) # ( 
-- !\B[29]~input_o\ & ( !\c[29]~36_combout\ & ( !\A[29]~input_o\ $ (!\c[29]~35_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_c[29]~35_combout\,
	datae => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_c[29]~36_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y37_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y51_N63
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: MLABCELL_X52_Y43_N30
\c[30]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \c[30]~37_combout\ = ( \c[29]~36_combout\ & ( (!\A[29]~input_o\ & !\B[29]~input_o\) ) ) # ( !\c[29]~36_combout\ & ( (!\A[29]~input_o\ & ((!\B[29]~input_o\) # (!\c[29]~35_combout\))) # (\A[29]~input_o\ & (!\B[29]~input_o\ & !\c[29]~35_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_c[29]~35_combout\,
	dataf => \ALT_INV_c[29]~36_combout\,
	combout => \c[30]~37_combout\);

-- Location: LABCELL_X53_Y43_N36
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \B[30]~input_o\ & ( \c[30]~37_combout\ & ( !\A[30]~input_o\ ) ) ) # ( !\B[30]~input_o\ & ( \c[30]~37_combout\ & ( \A[30]~input_o\ ) ) ) # ( \B[30]~input_o\ & ( !\c[30]~37_combout\ & ( \A[30]~input_o\ ) ) ) # ( !\B[30]~input_o\ & ( 
-- !\c[30]~37_combout\ & ( !\A[30]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_c[30]~37_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X59_Y33_N94
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X53_Y43_N24
\c[31]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \c[31]~38_combout\ = ( \B[30]~input_o\ & ( \A[30]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \c[31]~38_combout\);

-- Location: IOIBUF_X28_Y56_N1
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: MLABCELL_X52_Y43_N18
\c[31]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \c[31]~39_combout\ = ( !\c[30]~37_combout\ & ( (\A[30]~input_o\) # (\B[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_c[30]~37_combout\,
	combout => \c[31]~39_combout\);

-- Location: LABCELL_X53_Y43_N6
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \B[31]~input_o\ & ( \c[31]~39_combout\ & ( \A[31]~input_o\ ) ) ) # ( !\B[31]~input_o\ & ( \c[31]~39_combout\ & ( !\A[31]~input_o\ ) ) ) # ( \B[31]~input_o\ & ( !\c[31]~39_combout\ & ( !\A[31]~input_o\ $ (\c[31]~38_combout\) ) ) ) # ( 
-- !\B[31]~input_o\ & ( !\c[31]~39_combout\ & ( !\A[31]~input_o\ $ (!\c[31]~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_c[31]~38_combout\,
	datae => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_c[31]~39_combout\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X59_Y34_N32
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LABCELL_X53_Y43_N0
\cb~14\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~14_combout\ = ( \B[29]~input_o\ & ( \B[30]~input_o\ & ( (!\A[29]~input_o\ & (!\A[30]~input_o\ & (!\B[28]~input_o\ $ (!\A[28]~input_o\)))) ) ) ) # ( !\B[29]~input_o\ & ( \B[30]~input_o\ & ( (\A[29]~input_o\ & (!\A[30]~input_o\ & (!\B[28]~input_o\ $ 
-- (!\A[28]~input_o\)))) ) ) ) # ( \B[29]~input_o\ & ( !\B[30]~input_o\ & ( (!\A[29]~input_o\ & (\A[30]~input_o\ & (!\B[28]~input_o\ $ (!\A[28]~input_o\)))) ) ) ) # ( !\B[29]~input_o\ & ( !\B[30]~input_o\ & ( (\A[29]~input_o\ & (\A[30]~input_o\ & 
-- (!\B[28]~input_o\ $ (!\A[28]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000100100000010010000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \cb~14_combout\);

-- Location: MLABCELL_X52_Y43_N10
\rCOut[7]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(7) = LCELL(( \c[31]~39_combout\ & ( (\A[31]~input_o\) # (\B[31]~input_o\) ) ) # ( !\c[31]~39_combout\ & ( (!\B[31]~input_o\ & (\c[31]~38_combout\ & \A[31]~input_o\)) # (\B[31]~input_o\ & ((\A[31]~input_o\) # (\c[31]~38_combout\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_c[31]~38_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_c[31]~39_combout\,
	combout => rCOut(7));

-- Location: MLABCELL_X52_Y43_N32
\cb[8]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(8) = LCELL(( rCOut(7) ) # ( !rCOut(7) & ( (cb(7) & (\cb~14_combout\ & (!\A[31]~input_o\ $ (!\B[31]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	datac => ALT_INV_cb(7),
	datad => \ALT_INV_cb~14_combout\,
	dataf => ALT_INV_rCOut(7),
	combout => cb(8));

-- Location: MLABCELL_X54_Y43_N26
\S~32\ : arriaii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = ( \B[32]~input_o\ & ( cb(8) & ( \A[32]~input_o\ ) ) ) # ( !\B[32]~input_o\ & ( cb(8) & ( !\A[32]~input_o\ ) ) ) # ( \B[32]~input_o\ & ( !cb(8) & ( !\A[32]~input_o\ ) ) ) # ( !\B[32]~input_o\ & ( !cb(8) & ( \A[32]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[32]~input_o\,
	datae => \ALT_INV_B[32]~input_o\,
	dataf => ALT_INV_cb(8),
	combout => \S~32_combout\);

-- Location: IOIBUF_X59_Y49_N94
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: MLABCELL_X54_Y43_N30
\c[33]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \c[33]~40_combout\ = ( \A[32]~input_o\ & ( \B[32]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \c[33]~40_combout\);

-- Location: MLABCELL_X52_Y43_N4
\c[33]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \c[33]~41_combout\ = ( cb(8) & ( (\B[32]~input_o\) # (\A[32]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[32]~input_o\,
	datad => \ALT_INV_B[32]~input_o\,
	dataf => ALT_INV_cb(8),
	combout => \c[33]~41_combout\);

-- Location: MLABCELL_X54_Y43_N28
\S~33\ : arriaii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = ( \c[33]~41_combout\ & ( !\B[33]~input_o\ $ (\A[33]~input_o\) ) ) # ( !\c[33]~41_combout\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\ $ (\c[33]~40_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[33]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_c[33]~40_combout\,
	dataf => \ALT_INV_c[33]~41_combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X59_Y49_N1
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: MLABCELL_X52_Y43_N6
\c[34]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \c[34]~42_combout\ = ( \c[33]~41_combout\ & ( (!\A[33]~input_o\ & !\B[33]~input_o\) ) ) # ( !\c[33]~41_combout\ & ( (!\A[33]~input_o\ & ((!\B[33]~input_o\) # (!\c[33]~40_combout\))) # (\A[33]~input_o\ & (!\B[33]~input_o\ & !\c[33]~40_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_c[33]~40_combout\,
	dataf => \ALT_INV_c[33]~41_combout\,
	combout => \c[34]~42_combout\);

-- Location: MLABCELL_X54_Y43_N34
\S~34\ : arriaii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = ( \c[34]~42_combout\ & ( !\A[34]~input_o\ $ (!\B[34]~input_o\) ) ) # ( !\c[34]~42_combout\ & ( !\A[34]~input_o\ $ (\B[34]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[34]~input_o\,
	dataf => \ALT_INV_c[34]~42_combout\,
	combout => \S~34_combout\);

-- Location: MLABCELL_X54_Y43_N36
\c[35]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \c[35]~43_combout\ = ( \B[34]~input_o\ & ( \A[34]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \c[35]~43_combout\);

-- Location: IOIBUF_X59_Y36_N1
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X30_Y56_N94
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: MLABCELL_X52_Y43_N34
\c[35]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \c[35]~44_combout\ = ( !\c[34]~42_combout\ & ( (\B[34]~input_o\) # (\A[34]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[34]~input_o\,
	dataf => \ALT_INV_c[34]~42_combout\,
	combout => \c[35]~44_combout\);

-- Location: MLABCELL_X52_Y43_N12
\S~35\ : arriaii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = ( \c[35]~44_combout\ & ( !\A[35]~input_o\ $ (\B[35]~input_o\) ) ) # ( !\c[35]~44_combout\ & ( !\c[35]~43_combout\ $ (!\A[35]~input_o\ $ (\B[35]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c[35]~43_combout\,
	datac => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_c[35]~44_combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X59_Y33_N32
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: MLABCELL_X54_Y43_N16
\cb~16\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~16_combout\ = ( \B[32]~input_o\ & ( \B[33]~input_o\ & ( (!\A[32]~input_o\ & (!\A[33]~input_o\ & (!\A[34]~input_o\ $ (!\B[34]~input_o\)))) ) ) ) # ( !\B[32]~input_o\ & ( \B[33]~input_o\ & ( (\A[32]~input_o\ & (!\A[33]~input_o\ & (!\A[34]~input_o\ $ 
-- (!\B[34]~input_o\)))) ) ) ) # ( \B[32]~input_o\ & ( !\B[33]~input_o\ & ( (!\A[32]~input_o\ & (\A[33]~input_o\ & (!\A[34]~input_o\ $ (!\B[34]~input_o\)))) ) ) ) # ( !\B[32]~input_o\ & ( !\B[33]~input_o\ & ( (\A[32]~input_o\ & (\A[33]~input_o\ & 
-- (!\A[34]~input_o\ $ (!\B[34]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000010100000010100000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_B[34]~input_o\,
	datad => \ALT_INV_A[33]~input_o\,
	datae => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \cb~16_combout\);

-- Location: MLABCELL_X52_Y43_N38
\rCOut[8]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(8) = LCELL(( \c[35]~44_combout\ & ( (\B[35]~input_o\) # (\A[35]~input_o\) ) ) # ( !\c[35]~44_combout\ & ( (!\A[35]~input_o\ & (\c[35]~43_combout\ & \B[35]~input_o\)) # (\A[35]~input_o\ & ((\B[35]~input_o\) # (\c[35]~43_combout\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_c[35]~43_combout\,
	datad => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_c[35]~44_combout\,
	combout => rCOut(8));

-- Location: MLABCELL_X52_Y43_N16
\cb[9]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(9) = LCELL(( rCOut(8) ) # ( !rCOut(8) & ( (\cb~16_combout\ & (cb(8) & (!\A[35]~input_o\ $ (!\B[35]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datab => \ALT_INV_cb~16_combout\,
	datac => ALT_INV_cb(8),
	datad => \ALT_INV_B[35]~input_o\,
	dataf => ALT_INV_rCOut(8),
	combout => cb(9));

-- Location: IOIBUF_X59_Y26_N32
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LABCELL_X58_Y33_N10
\S~36\ : arriaii_lcell_comb
-- Equation(s):
-- \S~36_combout\ = ( cb(9) & ( \A[36]~input_o\ & ( \B[36]~input_o\ ) ) ) # ( !cb(9) & ( \A[36]~input_o\ & ( !\B[36]~input_o\ ) ) ) # ( cb(9) & ( !\A[36]~input_o\ & ( !\B[36]~input_o\ ) ) ) # ( !cb(9) & ( !\A[36]~input_o\ & ( \B[36]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[36]~input_o\,
	datae => ALT_INV_cb(9),
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X59_Y26_N1
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LABCELL_X58_Y31_N16
\c[37]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \c[37]~45_combout\ = ( \B[36]~input_o\ & ( \A[36]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \c[37]~45_combout\);

-- Location: IOIBUF_X59_Y26_N63
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LABCELL_X55_Y31_N16
\c[37]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \c[37]~46_combout\ = ( cb(9) & ( (\A[36]~input_o\) # (\B[36]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[36]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	dataf => ALT_INV_cb(9),
	combout => \c[37]~46_combout\);

-- Location: LABCELL_X55_Y31_N30
\S~37\ : arriaii_lcell_comb
-- Equation(s):
-- \S~37_combout\ = ( \c[37]~46_combout\ & ( !\B[37]~input_o\ $ (\A[37]~input_o\) ) ) # ( !\c[37]~46_combout\ & ( !\B[37]~input_o\ $ (!\c[37]~45_combout\ $ (\A[37]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_c[37]~45_combout\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_c[37]~46_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X59_Y33_N1
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LABCELL_X55_Y31_N2
\c[38]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \c[38]~47_combout\ = ( \c[37]~46_combout\ & ( (!\B[37]~input_o\ & !\A[37]~input_o\) ) ) # ( !\c[37]~46_combout\ & ( (!\B[37]~input_o\ & ((!\c[37]~45_combout\) # (!\A[37]~input_o\))) # (\B[37]~input_o\ & (!\c[37]~45_combout\ & !\A[37]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_c[37]~45_combout\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_c[37]~46_combout\,
	combout => \c[38]~47_combout\);

-- Location: LABCELL_X55_Y31_N36
\S~38\ : arriaii_lcell_comb
-- Equation(s):
-- \S~38_combout\ = ( \c[38]~47_combout\ & ( !\A[38]~input_o\ $ (!\B[38]~input_o\) ) ) # ( !\c[38]~47_combout\ & ( !\A[38]~input_o\ $ (\B[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_c[38]~47_combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X59_Y28_N94
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X59_Y28_N32
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LABCELL_X58_Y31_N14
\c[39]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \c[39]~48_combout\ = ( \B[38]~input_o\ & ( \A[38]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \c[39]~48_combout\);

-- Location: LABCELL_X55_Y31_N32
\c[39]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \c[39]~49_combout\ = ( !\c[38]~47_combout\ & ( (\A[38]~input_o\) # (\B[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_c[38]~47_combout\,
	combout => \c[39]~49_combout\);

-- Location: LABCELL_X55_Y31_N34
\S~39\ : arriaii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = ( \c[39]~49_combout\ & ( !\A[39]~input_o\ $ (\B[39]~input_o\) ) ) # ( !\c[39]~49_combout\ & ( !\A[39]~input_o\ $ (!\B[39]~input_o\ $ (\c[39]~48_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datab => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_c[39]~48_combout\,
	dataf => \ALT_INV_c[39]~49_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X59_Y25_N32
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X59_Y25_N1
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LABCELL_X58_Y31_N10
\cb~18\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~18_combout\ = ( !\B[36]~input_o\ & ( \A[36]~input_o\ & ( (!\B[37]~input_o\ & (\A[37]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\)))) # (\B[37]~input_o\ & (!\A[37]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\)))) ) ) ) # ( \B[36]~input_o\ & ( 
-- !\A[36]~input_o\ & ( (!\B[37]~input_o\ & (\A[37]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\)))) # (\B[37]~input_o\ & (!\A[37]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100100100000010010010010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_A[37]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	datae => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \cb~18_combout\);

-- Location: LABCELL_X55_Y31_N28
\rCOut[9]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(9) = LCELL(( \c[39]~49_combout\ & ( (\A[39]~input_o\) # (\B[39]~input_o\) ) ) # ( !\c[39]~49_combout\ & ( (!\B[39]~input_o\ & (\A[39]~input_o\ & \c[39]~48_combout\)) # (\B[39]~input_o\ & ((\c[39]~48_combout\) # (\A[39]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[39]~input_o\,
	datac => \ALT_INV_A[39]~input_o\,
	datad => \ALT_INV_c[39]~48_combout\,
	dataf => \ALT_INV_c[39]~49_combout\,
	combout => rCOut(9));

-- Location: LABCELL_X55_Y31_N38
\cb[10]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(10) = LCELL(( rCOut(9) ) # ( !rCOut(9) & ( (\cb~18_combout\ & (cb(9) & (!\A[39]~input_o\ $ (!\B[39]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datab => \ALT_INV_B[39]~input_o\,
	datac => \ALT_INV_cb~18_combout\,
	datad => ALT_INV_cb(9),
	dataf => ALT_INV_rCOut(9),
	combout => cb(10));

-- Location: LABCELL_X55_Y31_N0
\S~40\ : arriaii_lcell_comb
-- Equation(s):
-- \S~40_combout\ = ( cb(10) & ( !\B[40]~input_o\ $ (\A[40]~input_o\) ) ) # ( !cb(10) & ( !\B[40]~input_o\ $ (!\A[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[40]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	dataf => ALT_INV_cb(10),
	combout => \S~40_combout\);

-- Location: IOIBUF_X59_Y23_N1
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X59_Y23_N32
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: MLABCELL_X57_Y31_N8
\c[41]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \c[41]~50_combout\ = ( \A[40]~input_o\ & ( \B[40]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \c[41]~50_combout\);

-- Location: LABCELL_X55_Y31_N20
\c[41]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \c[41]~51_combout\ = ( cb(10) & ( (\A[40]~input_o\) # (\B[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[40]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	dataf => ALT_INV_cb(10),
	combout => \c[41]~51_combout\);

-- Location: LABCELL_X55_Y31_N18
\S~41\ : arriaii_lcell_comb
-- Equation(s):
-- \S~41_combout\ = ( \c[41]~51_combout\ & ( !\A[41]~input_o\ $ (\B[41]~input_o\) ) ) # ( !\c[41]~51_combout\ & ( !\A[41]~input_o\ $ (!\B[41]~input_o\ $ (\c[41]~50_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_c[41]~50_combout\,
	dataf => \ALT_INV_c[41]~51_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X59_Y25_N94
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X59_Y25_N63
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LABCELL_X55_Y31_N8
\c[42]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \c[42]~52_combout\ = ( \c[41]~51_combout\ & ( (!\B[41]~input_o\ & !\A[41]~input_o\) ) ) # ( !\c[41]~51_combout\ & ( (!\B[41]~input_o\ & ((!\A[41]~input_o\) # (!\c[41]~50_combout\))) # (\B[41]~input_o\ & (!\A[41]~input_o\ & !\c[41]~50_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_A[41]~input_o\,
	datad => \ALT_INV_c[41]~50_combout\,
	dataf => \ALT_INV_c[41]~51_combout\,
	combout => \c[42]~52_combout\);

-- Location: LABCELL_X55_Y31_N22
\S~42\ : arriaii_lcell_comb
-- Equation(s):
-- \S~42_combout\ = ( \c[42]~52_combout\ & ( !\B[42]~input_o\ $ (!\A[42]~input_o\) ) ) # ( !\c[42]~52_combout\ & ( !\B[42]~input_o\ $ (\A[42]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_c[42]~52_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X59_Y28_N63
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X59_Y28_N1
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: MLABCELL_X57_Y31_N14
\c[43]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \c[43]~53_combout\ = ( \B[42]~input_o\ & ( \A[42]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[42]~input_o\,
	combout => \c[43]~53_combout\);

-- Location: LABCELL_X55_Y31_N10
\c[43]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \c[43]~54_combout\ = ( !\c[42]~52_combout\ & ( (\A[42]~input_o\) # (\B[42]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_c[42]~52_combout\,
	combout => \c[43]~54_combout\);

-- Location: LABCELL_X55_Y31_N12
\S~43\ : arriaii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = ( \c[43]~54_combout\ & ( !\B[43]~input_o\ $ (\A[43]~input_o\) ) ) # ( !\c[43]~54_combout\ & ( !\B[43]~input_o\ $ (!\A[43]~input_o\ $ (\c[43]~53_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_c[43]~53_combout\,
	dataf => \ALT_INV_c[43]~54_combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X59_Y22_N1
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X59_Y21_N63
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LABCELL_X55_Y31_N4
\cb~20\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~20_combout\ = ( !\A[42]~input_o\ & ( \B[42]~input_o\ & ( (!\A[41]~input_o\ & (\B[41]~input_o\ & (!\A[40]~input_o\ $ (!\B[40]~input_o\)))) # (\A[41]~input_o\ & (!\B[41]~input_o\ & (!\A[40]~input_o\ $ (!\B[40]~input_o\)))) ) ) ) # ( \A[42]~input_o\ & ( 
-- !\B[42]~input_o\ & ( (!\A[41]~input_o\ & (\B[41]~input_o\ & (!\A[40]~input_o\ $ (!\B[40]~input_o\)))) # (\A[41]~input_o\ & (!\B[41]~input_o\ & (!\A[40]~input_o\ $ (!\B[40]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100110000000000110011000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[40]~input_o\,
	datae => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[42]~input_o\,
	combout => \cb~20_combout\);

-- Location: LABCELL_X55_Y31_N14
\rCOut[10]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(10) = LCELL(( \c[43]~54_combout\ & ( (\A[43]~input_o\) # (\B[43]~input_o\) ) ) # ( !\c[43]~54_combout\ & ( (!\B[43]~input_o\ & (\A[43]~input_o\ & \c[43]~53_combout\)) # (\B[43]~input_o\ & ((\c[43]~53_combout\) # (\A[43]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_c[43]~53_combout\,
	dataf => \ALT_INV_c[43]~54_combout\,
	combout => rCOut(10));

-- Location: LABCELL_X55_Y31_N26
\cb[11]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(11) = LCELL(( rCOut(10) ) # ( !rCOut(10) & ( (cb(10) & (\cb~20_combout\ & (!\B[43]~input_o\ $ (!\A[43]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_A[43]~input_o\,
	datac => ALT_INV_cb(10),
	datad => \ALT_INV_cb~20_combout\,
	dataf => ALT_INV_rCOut(10),
	combout => cb(11));

-- Location: LABCELL_X55_Y31_N24
\S~44\ : arriaii_lcell_comb
-- Equation(s):
-- \S~44_combout\ = ( cb(11) & ( !\B[44]~input_o\ $ (\A[44]~input_o\) ) ) # ( !cb(11) & ( !\B[44]~input_o\ $ (!\A[44]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => ALT_INV_cb(11),
	combout => \S~44_combout\);

-- Location: IOIBUF_X59_Y21_N32
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X59_Y23_N63
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LABCELL_X58_Y22_N10
\c[45]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \c[45]~55_combout\ = ( \B[44]~input_o\ & ( \A[44]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_A[44]~input_o\,
	combout => \c[45]~55_combout\);

-- Location: MLABCELL_X57_Y19_N18
\c[45]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \c[45]~56_combout\ = ( cb(11) & ( (\A[44]~input_o\) # (\B[44]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => ALT_INV_cb(11),
	combout => \c[45]~56_combout\);

-- Location: LABCELL_X58_Y22_N6
\S~45\ : arriaii_lcell_comb
-- Equation(s):
-- \S~45_combout\ = ( \c[45]~56_combout\ & ( !\B[45]~input_o\ $ (\A[45]~input_o\) ) ) # ( !\c[45]~56_combout\ & ( !\B[45]~input_o\ $ (!\A[45]~input_o\ $ (\c[45]~55_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[45]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_c[45]~55_combout\,
	dataf => \ALT_INV_c[45]~56_combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X59_Y23_N94
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X59_Y10_N94
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: MLABCELL_X57_Y19_N28
\c[46]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \c[46]~57_combout\ = ( \c[45]~56_combout\ & ( (!\B[45]~input_o\ & !\A[45]~input_o\) ) ) # ( !\c[45]~56_combout\ & ( (!\B[45]~input_o\ & ((!\c[45]~55_combout\) # (!\A[45]~input_o\))) # (\B[45]~input_o\ & (!\c[45]~55_combout\ & !\A[45]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[45]~input_o\,
	datac => \ALT_INV_c[45]~55_combout\,
	datad => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_c[45]~56_combout\,
	combout => \c[46]~57_combout\);

-- Location: LABCELL_X58_Y22_N16
\S~46\ : arriaii_lcell_comb
-- Equation(s):
-- \S~46_combout\ = ( \c[46]~57_combout\ & ( !\A[46]~input_o\ $ (!\B[46]~input_o\) ) ) # ( !\c[46]~57_combout\ & ( !\A[46]~input_o\ $ (\B[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_c[46]~57_combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X59_Y10_N32
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LABCELL_X58_Y22_N14
\c[47]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \c[47]~58_combout\ = ( \A[46]~input_o\ & ( \B[46]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \c[47]~58_combout\);

-- Location: IOIBUF_X59_Y6_N94
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: MLABCELL_X57_Y19_N24
\c[47]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \c[47]~59_combout\ = ( !\c[46]~57_combout\ & ( (\A[46]~input_o\) # (\B[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[46]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_c[46]~57_combout\,
	combout => \c[47]~59_combout\);

-- Location: LABCELL_X58_Y22_N26
\S~47\ : arriaii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = ( \B[47]~input_o\ & ( \c[47]~59_combout\ & ( \A[47]~input_o\ ) ) ) # ( !\B[47]~input_o\ & ( \c[47]~59_combout\ & ( !\A[47]~input_o\ ) ) ) # ( \B[47]~input_o\ & ( !\c[47]~59_combout\ & ( !\A[47]~input_o\ $ (\c[47]~58_combout\) ) ) ) # ( 
-- !\B[47]~input_o\ & ( !\c[47]~59_combout\ & ( !\A[47]~input_o\ $ (!\c[47]~58_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011000011001111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_c[47]~58_combout\,
	datae => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_c[47]~59_combout\,
	combout => \S~47_combout\);

-- Location: IOIBUF_X59_Y13_N63
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LABCELL_X58_Y22_N28
\cb~22\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~22_combout\ = ( \B[44]~input_o\ & ( \B[46]~input_o\ & ( (!\A[44]~input_o\ & (!\A[46]~input_o\ & (!\B[45]~input_o\ $ (!\A[45]~input_o\)))) ) ) ) # ( !\B[44]~input_o\ & ( \B[46]~input_o\ & ( (\A[44]~input_o\ & (!\A[46]~input_o\ & (!\B[45]~input_o\ $ 
-- (!\A[45]~input_o\)))) ) ) ) # ( \B[44]~input_o\ & ( !\B[46]~input_o\ & ( (!\A[44]~input_o\ & (\A[46]~input_o\ & (!\B[45]~input_o\ $ (!\A[45]~input_o\)))) ) ) ) # ( !\B[44]~input_o\ & ( !\B[46]~input_o\ & ( (\A[44]~input_o\ & (\A[46]~input_o\ & 
-- (!\B[45]~input_o\ $ (!\A[45]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000110000000000110000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[45]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	datae => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \cb~22_combout\);

-- Location: MLABCELL_X57_Y19_N0
\rCOut[11]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(11) = LCELL(( \c[47]~59_combout\ & ( (\B[47]~input_o\) # (\A[47]~input_o\) ) ) # ( !\c[47]~59_combout\ & ( (!\A[47]~input_o\ & (\B[47]~input_o\ & \c[47]~58_combout\)) # (\A[47]~input_o\ & ((\c[47]~58_combout\) # (\B[47]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_c[47]~58_combout\,
	dataf => \ALT_INV_c[47]~59_combout\,
	combout => rCOut(11));

-- Location: MLABCELL_X57_Y19_N32
\cb[12]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(12) = LCELL(( cb(11) & ( rCOut(11) ) ) # ( !cb(11) & ( rCOut(11) ) ) # ( cb(11) & ( !rCOut(11) & ( (\cb~22_combout\ & (!\A[47]~input_o\ $ (!\B[47]~input_o\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_cb~22_combout\,
	datad => \ALT_INV_B[47]~input_o\,
	datae => ALT_INV_cb(11),
	dataf => ALT_INV_rCOut(11),
	combout => cb(12));

-- Location: LABCELL_X58_Y15_N2
\S~48\ : arriaii_lcell_comb
-- Equation(s):
-- \S~48_combout\ = ( \A[48]~input_o\ & ( cb(12) & ( \B[48]~input_o\ ) ) ) # ( !\A[48]~input_o\ & ( cb(12) & ( !\B[48]~input_o\ ) ) ) # ( \A[48]~input_o\ & ( !cb(12) & ( !\B[48]~input_o\ ) ) ) # ( !\A[48]~input_o\ & ( !cb(12) & ( \B[48]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[48]~input_o\,
	datae => \ALT_INV_A[48]~input_o\,
	dataf => ALT_INV_cb(12),
	combout => \S~48_combout\);

-- Location: IOIBUF_X59_Y13_N32
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X59_Y4_N32
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: MLABCELL_X57_Y19_N30
\c[49]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \c[49]~60_combout\ = ( \B[48]~input_o\ & ( \A[48]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \c[49]~60_combout\);

-- Location: MLABCELL_X57_Y19_N38
\c[49]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \c[49]~61_combout\ = ( cb(12) & ( (\A[48]~input_o\) # (\B[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_A[48]~input_o\,
	dataf => ALT_INV_cb(12),
	combout => \c[49]~61_combout\);

-- Location: LABCELL_X58_Y15_N30
\S~49\ : arriaii_lcell_comb
-- Equation(s):
-- \S~49_combout\ = ( \c[49]~60_combout\ & ( \c[49]~61_combout\ & ( !\A[49]~input_o\ $ (\B[49]~input_o\) ) ) ) # ( !\c[49]~60_combout\ & ( \c[49]~61_combout\ & ( !\A[49]~input_o\ $ (\B[49]~input_o\) ) ) ) # ( \c[49]~60_combout\ & ( !\c[49]~61_combout\ & ( 
-- !\A[49]~input_o\ $ (\B[49]~input_o\) ) ) ) # ( !\c[49]~60_combout\ & ( !\c[49]~61_combout\ & ( !\A[49]~input_o\ $ (!\B[49]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011000011001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	datae => \ALT_INV_c[49]~60_combout\,
	dataf => \ALT_INV_c[49]~61_combout\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X59_Y7_N94
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X59_Y13_N1
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: MLABCELL_X57_Y19_N2
\c[50]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \c[50]~62_combout\ = ( \c[49]~61_combout\ & ( (!\A[49]~input_o\ & !\B[49]~input_o\) ) ) # ( !\c[49]~61_combout\ & ( (!\A[49]~input_o\ & ((!\c[49]~60_combout\) # (!\B[49]~input_o\))) # (\A[49]~input_o\ & (!\c[49]~60_combout\ & !\B[49]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datac => \ALT_INV_c[49]~60_combout\,
	datad => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_c[49]~61_combout\,
	combout => \c[50]~62_combout\);

-- Location: LABCELL_X58_Y15_N10
\S~50\ : arriaii_lcell_comb
-- Equation(s):
-- \S~50_combout\ = ( \B[50]~input_o\ & ( \c[50]~62_combout\ & ( !\A[50]~input_o\ ) ) ) # ( !\B[50]~input_o\ & ( \c[50]~62_combout\ & ( \A[50]~input_o\ ) ) ) # ( \B[50]~input_o\ & ( !\c[50]~62_combout\ & ( \A[50]~input_o\ ) ) ) # ( !\B[50]~input_o\ & ( 
-- !\c[50]~62_combout\ & ( !\A[50]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[50]~input_o\,
	datae => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_c[50]~62_combout\,
	combout => \S~50_combout\);

-- Location: IOIBUF_X59_Y9_N32
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X59_Y12_N63
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LABCELL_X58_Y19_N16
\c[51]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \c[51]~63_combout\ = (\A[50]~input_o\ & \B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[50]~input_o\,
	combout => \c[51]~63_combout\);

-- Location: MLABCELL_X57_Y19_N14
\c[51]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \c[51]~64_combout\ = ( !\c[50]~62_combout\ & ( (\B[50]~input_o\) # (\A[50]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_c[50]~62_combout\,
	combout => \c[51]~64_combout\);

-- Location: LABCELL_X58_Y19_N30
\S~51\ : arriaii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = ( \c[51]~63_combout\ & ( \c[51]~64_combout\ & ( !\A[51]~input_o\ $ (\B[51]~input_o\) ) ) ) # ( !\c[51]~63_combout\ & ( \c[51]~64_combout\ & ( !\A[51]~input_o\ $ (\B[51]~input_o\) ) ) ) # ( \c[51]~63_combout\ & ( !\c[51]~64_combout\ & ( 
-- !\A[51]~input_o\ $ (\B[51]~input_o\) ) ) ) # ( !\c[51]~63_combout\ & ( !\c[51]~64_combout\ & ( !\A[51]~input_o\ $ (!\B[51]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datac => \ALT_INV_B[51]~input_o\,
	datae => \ALT_INV_c[51]~63_combout\,
	dataf => \ALT_INV_c[51]~64_combout\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X59_Y7_N63
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X56_Y0_N94
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X58_Y15_N14
\cb~24\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~24_combout\ = ( \B[50]~input_o\ & ( \B[48]~input_o\ & ( (!\A[48]~input_o\ & (!\A[50]~input_o\ & (!\A[49]~input_o\ $ (!\B[49]~input_o\)))) ) ) ) # ( !\B[50]~input_o\ & ( \B[48]~input_o\ & ( (!\A[48]~input_o\ & (\A[50]~input_o\ & (!\A[49]~input_o\ $ 
-- (!\B[49]~input_o\)))) ) ) ) # ( \B[50]~input_o\ & ( !\B[48]~input_o\ & ( (\A[48]~input_o\ & (!\A[50]~input_o\ & (!\A[49]~input_o\ $ (!\B[49]~input_o\)))) ) ) ) # ( !\B[50]~input_o\ & ( !\B[48]~input_o\ & ( (\A[48]~input_o\ & (\A[50]~input_o\ & 
-- (!\A[49]~input_o\ $ (!\B[49]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000001000100000000000010001000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[48]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	datae => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \cb~24_combout\);

-- Location: MLABCELL_X57_Y19_N20
\rCOut[12]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(12) = LCELL(( \c[51]~64_combout\ & ( (\B[51]~input_o\) # (\A[51]~input_o\) ) ) # ( !\c[51]~64_combout\ & ( (!\A[51]~input_o\ & (\B[51]~input_o\ & \c[51]~63_combout\)) # (\A[51]~input_o\ & ((\c[51]~63_combout\) # (\B[51]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_c[51]~63_combout\,
	dataf => \ALT_INV_c[51]~64_combout\,
	combout => rCOut(12));

-- Location: MLABCELL_X57_Y19_N22
\cb[13]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(13) = LCELL(( rCOut(12) ) # ( !rCOut(12) & ( (cb(12) & (\cb~24_combout\ & (!\A[51]~input_o\ $ (!\B[51]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => ALT_INV_cb(12),
	datad => \ALT_INV_cb~24_combout\,
	dataf => ALT_INV_rCOut(12),
	combout => cb(13));

-- Location: LABCELL_X58_Y19_N10
\S~52\ : arriaii_lcell_comb
-- Equation(s):
-- \S~52_combout\ = ( cb(13) & ( !\B[52]~input_o\ $ (\A[52]~input_o\) ) ) # ( !cb(13) & ( !\B[52]~input_o\ $ (!\A[52]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_A[52]~input_o\,
	dataf => ALT_INV_cb(13),
	combout => \S~52_combout\);

-- Location: IOIBUF_X59_Y4_N94
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X59_Y7_N32
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LABCELL_X58_Y19_N38
\S~53\ : arriaii_lcell_comb
-- Equation(s):
-- \S~53_combout\ = ( \A[53]~input_o\ & ( cb(13) & ( !\B[53]~input_o\ $ (((\B[52]~input_o\) # (\A[52]~input_o\))) ) ) ) # ( !\A[53]~input_o\ & ( cb(13) & ( !\B[53]~input_o\ $ (((!\A[52]~input_o\ & !\B[52]~input_o\))) ) ) ) # ( \A[53]~input_o\ & ( !cb(13) & ( 
-- !\B[53]~input_o\ $ (((\A[52]~input_o\ & \B[52]~input_o\))) ) ) ) # ( !\A[53]~input_o\ & ( !cb(13) & ( !\B[53]~input_o\ $ (((!\A[52]~input_o\) # (!\B[52]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110110011001001100101100110110011001001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	datae => \ALT_INV_A[53]~input_o\,
	dataf => ALT_INV_cb(13),
	combout => \S~53_combout\);

-- Location: IOIBUF_X59_Y4_N63
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: MLABCELL_X57_Y19_N26
\c[54]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \c[54]~69_combout\ = ( cb(13) & ( (!\B[53]~input_o\ & (\A[53]~input_o\ & ((\B[52]~input_o\) # (\A[52]~input_o\)))) # (\B[53]~input_o\ & (((\A[53]~input_o\) # (\B[52]~input_o\)) # (\A[52]~input_o\))) ) ) # ( !cb(13) & ( (!\B[53]~input_o\ & (\A[52]~input_o\ 
-- & (\B[52]~input_o\ & \A[53]~input_o\))) # (\B[53]~input_o\ & (((\A[52]~input_o\ & \B[52]~input_o\)) # (\A[53]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[53]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => ALT_INV_cb(13),
	combout => \c[54]~69_combout\);

-- Location: LABCELL_X58_Y19_N2
\S~54\ : arriaii_lcell_comb
-- Equation(s):
-- \S~54_combout\ = ( \c[54]~69_combout\ & ( !\A[54]~input_o\ $ (\B[54]~input_o\) ) ) # ( !\c[54]~69_combout\ & ( !\A[54]~input_o\ $ (!\B[54]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_c[54]~69_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X56_Y0_N32
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LABCELL_X58_Y19_N18
\S~55\ : arriaii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = ( \c[54]~69_combout\ & ( !\B[55]~input_o\ $ (!\A[55]~input_o\ $ (((\B[54]~input_o\) # (\A[54]~input_o\)))) ) ) # ( !\c[54]~69_combout\ & ( !\B[55]~input_o\ $ (!\A[55]~input_o\ $ (((\A[54]~input_o\ & \B[54]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_c[54]~69_combout\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X59_Y12_N1
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X59_Y10_N63
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LABCELL_X58_Y19_N6
\cb~26\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~26_combout\ = ( \A[53]~input_o\ & ( \A[52]~input_o\ & ( (!\B[53]~input_o\ & (!\B[52]~input_o\ & (!\A[54]~input_o\ $ (!\B[54]~input_o\)))) ) ) ) # ( !\A[53]~input_o\ & ( \A[52]~input_o\ & ( (\B[53]~input_o\ & (!\B[52]~input_o\ & (!\A[54]~input_o\ $ 
-- (!\B[54]~input_o\)))) ) ) ) # ( \A[53]~input_o\ & ( !\A[52]~input_o\ & ( (!\B[53]~input_o\ & (\B[52]~input_o\ & (!\A[54]~input_o\ $ (!\B[54]~input_o\)))) ) ) ) # ( !\A[53]~input_o\ & ( !\A[52]~input_o\ & ( (\B[53]~input_o\ & (\B[52]~input_o\ & 
-- (!\A[54]~input_o\ $ (!\B[54]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000100100000010010000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_B[53]~input_o\,
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	datae => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \cb~26_combout\);

-- Location: MLABCELL_X57_Y19_N10
\rCOut[13]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(13) = LCELL(( \c[54]~69_combout\ & ( (!\A[55]~input_o\ & (\B[55]~input_o\ & ((\A[54]~input_o\) # (\B[54]~input_o\)))) # (\A[55]~input_o\ & (((\A[54]~input_o\) # (\B[54]~input_o\)) # (\B[55]~input_o\))) ) ) # ( !\c[54]~69_combout\ & ( 
-- (!\A[55]~input_o\ & (\B[55]~input_o\ & (\B[54]~input_o\ & \A[54]~input_o\))) # (\A[55]~input_o\ & (((\B[54]~input_o\ & \A[54]~input_o\)) # (\B[55]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_c[54]~69_combout\,
	combout => rCOut(13));

-- Location: MLABCELL_X57_Y19_N8
\cb[14]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(14) = LCELL(( rCOut(13) ) # ( !rCOut(13) & ( (\cb~26_combout\ & (cb(13) & (!\A[55]~input_o\ $ (!\B[55]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_cb~26_combout\,
	datad => ALT_INV_cb(13),
	dataf => ALT_INV_rCOut(13),
	combout => cb(14));

-- Location: LABCELL_X58_Y19_N14
\S~56\ : arriaii_lcell_comb
-- Equation(s):
-- \S~56_combout\ = ( cb(14) & ( !\B[56]~input_o\ $ (\A[56]~input_o\) ) ) # ( !cb(14) & ( !\B[56]~input_o\ $ (!\A[56]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	dataf => ALT_INV_cb(14),
	combout => \S~56_combout\);

-- Location: IOIBUF_X59_Y13_N94
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X55_Y0_N32
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LABCELL_X58_Y19_N34
\S~57\ : arriaii_lcell_comb
-- Equation(s):
-- \S~57_combout\ = ( cb(14) & ( !\B[57]~input_o\ $ (!\A[57]~input_o\ $ (((\B[56]~input_o\) # (\A[56]~input_o\)))) ) ) # ( !cb(14) & ( !\B[57]~input_o\ $ (!\A[57]~input_o\ $ (((\A[56]~input_o\ & \B[56]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_B[57]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	dataf => ALT_INV_cb(14),
	combout => \S~57_combout\);

-- Location: IOIBUF_X55_Y0_N1
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: MLABCELL_X57_Y19_N12
\c[58]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \c[58]~68_combout\ = ( cb(14) & ( (!\A[57]~input_o\ & (\B[57]~input_o\ & ((\B[56]~input_o\) # (\A[56]~input_o\)))) # (\A[57]~input_o\ & (((\B[56]~input_o\) # (\B[57]~input_o\)) # (\A[56]~input_o\))) ) ) # ( !cb(14) & ( (!\A[57]~input_o\ & (\A[56]~input_o\ 
-- & (\B[57]~input_o\ & \B[56]~input_o\))) # (\A[57]~input_o\ & (((\A[56]~input_o\ & \B[56]~input_o\)) # (\B[57]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[57]~input_o\,
	datab => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	dataf => ALT_INV_cb(14),
	combout => \c[58]~68_combout\);

-- Location: LABCELL_X58_Y18_N10
\S~58\ : arriaii_lcell_comb
-- Equation(s):
-- \S~58_combout\ = ( \B[58]~input_o\ & ( \c[58]~68_combout\ & ( \A[58]~input_o\ ) ) ) # ( !\B[58]~input_o\ & ( \c[58]~68_combout\ & ( !\A[58]~input_o\ ) ) ) # ( \B[58]~input_o\ & ( !\c[58]~68_combout\ & ( !\A[58]~input_o\ ) ) ) # ( !\B[58]~input_o\ & ( 
-- !\c[58]~68_combout\ & ( \A[58]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_c[58]~68_combout\,
	combout => \S~58_combout\);

-- Location: IOIBUF_X55_Y0_N94
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X55_Y0_N63
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LABCELL_X58_Y18_N30
\S~59\ : arriaii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = ( \B[58]~input_o\ & ( \c[58]~68_combout\ & ( !\A[59]~input_o\ $ (\B[59]~input_o\) ) ) ) # ( !\B[58]~input_o\ & ( \c[58]~68_combout\ & ( !\A[59]~input_o\ $ (!\B[59]~input_o\ $ (\A[58]~input_o\)) ) ) ) # ( \B[58]~input_o\ & ( 
-- !\c[58]~68_combout\ & ( !\A[59]~input_o\ $ (!\B[59]~input_o\ $ (\A[58]~input_o\)) ) ) ) # ( !\B[58]~input_o\ & ( !\c[58]~68_combout\ & ( !\A[59]~input_o\ $ (!\B[59]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011010010110100101101001011010011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_B[59]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_c[58]~68_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X59_Y4_N1
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: MLABCELL_X57_Y19_N4
\cb~28\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~28_combout\ = ( \B[56]~input_o\ & ( \B[57]~input_o\ & ( (!\A[56]~input_o\ & (!\A[57]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\)))) ) ) ) # ( !\B[56]~input_o\ & ( \B[57]~input_o\ & ( (\A[56]~input_o\ & (!\A[57]~input_o\ & (!\B[58]~input_o\ $ 
-- (!\A[58]~input_o\)))) ) ) ) # ( \B[56]~input_o\ & ( !\B[57]~input_o\ & ( (!\A[56]~input_o\ & (\A[57]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\)))) ) ) ) # ( !\B[56]~input_o\ & ( !\B[57]~input_o\ & ( (\A[56]~input_o\ & (\A[57]~input_o\ & 
-- (!\B[58]~input_o\ $ (!\A[58]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000001000000100000010000001000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_B[57]~input_o\,
	combout => \cb~28_combout\);

-- Location: MLABCELL_X57_Y19_N16
\rCOut[14]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(14) = LCELL(( \c[58]~68_combout\ & ( (!\B[59]~input_o\ & (\A[59]~input_o\ & ((\A[58]~input_o\) # (\B[58]~input_o\)))) # (\B[59]~input_o\ & (((\A[58]~input_o\) # (\B[58]~input_o\)) # (\A[59]~input_o\))) ) ) # ( !\c[58]~68_combout\ & ( 
-- (!\B[59]~input_o\ & (\A[59]~input_o\ & (\B[58]~input_o\ & \A[58]~input_o\))) # (\B[59]~input_o\ & (((\B[58]~input_o\ & \A[58]~input_o\)) # (\A[59]~input_o\))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_B[58]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_c[58]~68_combout\,
	combout => rCOut(14));

-- Location: MLABCELL_X57_Y19_N36
\cb[15]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(15) = LCELL(( rCOut(14) ) # ( !rCOut(14) & ( (cb(14) & (\cb~28_combout\ & (!\B[59]~input_o\ $ (!\A[59]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \ALT_INV_A[59]~input_o\,
	datac => ALT_INV_cb(14),
	datad => \ALT_INV_cb~28_combout\,
	dataf => ALT_INV_rCOut(14),
	combout => cb(15));

-- Location: LABCELL_X58_Y19_N20
\S~60\ : arriaii_lcell_comb
-- Equation(s):
-- \S~60_combout\ = ( \B[60]~input_o\ & ( cb(15) & ( \A[60]~input_o\ ) ) ) # ( !\B[60]~input_o\ & ( cb(15) & ( !\A[60]~input_o\ ) ) ) # ( \B[60]~input_o\ & ( !cb(15) & ( !\A[60]~input_o\ ) ) ) # ( !\B[60]~input_o\ & ( !cb(15) & ( \A[60]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datae => \ALT_INV_B[60]~input_o\,
	dataf => ALT_INV_cb(15),
	combout => \S~60_combout\);

-- Location: IOIBUF_X59_Y6_N63
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X59_Y6_N1
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LABCELL_X58_Y19_N26
\S~61\ : arriaii_lcell_comb
-- Equation(s):
-- \S~61_combout\ = ( \B[60]~input_o\ & ( cb(15) & ( !\A[61]~input_o\ $ (\B[61]~input_o\) ) ) ) # ( !\B[60]~input_o\ & ( cb(15) & ( !\A[60]~input_o\ $ (!\A[61]~input_o\ $ (\B[61]~input_o\)) ) ) ) # ( \B[60]~input_o\ & ( !cb(15) & ( !\A[60]~input_o\ $ 
-- (!\A[61]~input_o\ $ (\B[61]~input_o\)) ) ) ) # ( !\B[60]~input_o\ & ( !cb(15) & ( !\A[61]~input_o\ $ (!\B[61]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010110101010010101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[61]~input_o\,
	datae => \ALT_INV_B[60]~input_o\,
	dataf => ALT_INV_cb(15),
	combout => \S~61_combout\);

-- Location: IOIBUF_X59_Y9_N94
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LABCELL_X58_Y16_N28
\c[62]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \c[62]~67_combout\ = ( \A[60]~input_o\ & ( cb(15) & ( (\B[61]~input_o\) # (\A[61]~input_o\) ) ) ) # ( !\A[60]~input_o\ & ( cb(15) & ( (!\B[60]~input_o\ & (\A[61]~input_o\ & \B[61]~input_o\)) # (\B[60]~input_o\ & ((\B[61]~input_o\) # (\A[61]~input_o\))) ) 
-- ) ) # ( \A[60]~input_o\ & ( !cb(15) & ( (!\B[60]~input_o\ & (\A[61]~input_o\ & \B[61]~input_o\)) # (\B[60]~input_o\ & ((\B[61]~input_o\) # (\A[61]~input_o\))) ) ) ) # ( !\A[60]~input_o\ & ( !cb(15) & ( (\A[61]~input_o\ & \B[61]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000100010111011100010001011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[61]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => ALT_INV_cb(15),
	combout => \c[62]~67_combout\);

-- Location: LABCELL_X58_Y16_N18
\S~62\ : arriaii_lcell_comb
-- Equation(s):
-- \S~62_combout\ = ( \A[62]~input_o\ & ( \c[62]~67_combout\ & ( \B[62]~input_o\ ) ) ) # ( !\A[62]~input_o\ & ( \c[62]~67_combout\ & ( !\B[62]~input_o\ ) ) ) # ( \A[62]~input_o\ & ( !\c[62]~67_combout\ & ( !\B[62]~input_o\ ) ) ) # ( !\A[62]~input_o\ & ( 
-- !\c[62]~67_combout\ & ( \B[62]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[62]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_c[62]~67_combout\,
	combout => \S~62_combout\);

-- Location: IOIBUF_X59_Y9_N63
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X59_Y9_N1
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LABCELL_X58_Y16_N38
\S~63\ : arriaii_lcell_comb
-- Equation(s):
-- \S~63_combout\ = ( \B[63]~input_o\ & ( \c[62]~67_combout\ & ( !\A[63]~input_o\ $ (((\B[62]~input_o\) # (\A[62]~input_o\))) ) ) ) # ( !\B[63]~input_o\ & ( \c[62]~67_combout\ & ( !\A[63]~input_o\ $ (((!\A[62]~input_o\ & !\B[62]~input_o\))) ) ) ) # ( 
-- \B[63]~input_o\ & ( !\c[62]~67_combout\ & ( !\A[63]~input_o\ $ (((\A[62]~input_o\ & \B[62]~input_o\))) ) ) ) # ( !\B[63]~input_o\ & ( !\c[62]~67_combout\ & ( !\A[63]~input_o\ $ (((!\A[62]~input_o\) # (!\B[62]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010101010101010010101011010101010101010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_B[62]~input_o\,
	datae => \ALT_INV_B[63]~input_o\,
	dataf => \ALT_INV_c[62]~67_combout\,
	combout => \S~63_combout\);

-- Location: LABCELL_X58_Y16_N14
\cb~30\ : arriaii_lcell_comb
-- Equation(s):
-- \cb~30_combout\ = ( !\A[62]~input_o\ & ( \B[62]~input_o\ & ( (!\A[60]~input_o\ & (\B[60]~input_o\ & (!\B[61]~input_o\ $ (!\A[61]~input_o\)))) # (\A[60]~input_o\ & (!\B[60]~input_o\ & (!\B[61]~input_o\ $ (!\A[61]~input_o\)))) ) ) ) # ( \A[62]~input_o\ & ( 
-- !\B[62]~input_o\ & ( (!\A[60]~input_o\ & (\B[60]~input_o\ & (!\B[61]~input_o\ $ (!\A[61]~input_o\)))) # (\A[60]~input_o\ & (!\B[60]~input_o\ & (!\B[61]~input_o\ $ (!\A[61]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000010100000010100001010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[60]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \cb~30_combout\);

-- Location: LABCELL_X58_Y16_N8
\c[63]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \c[63]~65_combout\ = (\B[62]~input_o\ & \A[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[62]~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	combout => \c[63]~65_combout\);

-- Location: LABCELL_X58_Y16_N20
\c[63]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \c[63]~66_combout\ = ( \A[62]~input_o\ & ( \c[62]~67_combout\ ) ) # ( !\A[62]~input_o\ & ( \c[62]~67_combout\ & ( \B[62]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[62]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_c[62]~67_combout\,
	combout => \c[63]~66_combout\);

-- Location: LABCELL_X58_Y16_N24
\rCOut[15]\ : arriaii_lcell_comb
-- Equation(s):
-- rCOut(15) = LCELL(( \c[63]~65_combout\ & ( \c[63]~66_combout\ & ( (\B[63]~input_o\) # (\A[63]~input_o\) ) ) ) # ( !\c[63]~65_combout\ & ( \c[63]~66_combout\ & ( (\B[63]~input_o\) # (\A[63]~input_o\) ) ) ) # ( \c[63]~65_combout\ & ( !\c[63]~66_combout\ & ( 
-- (\B[63]~input_o\) # (\A[63]~input_o\) ) ) ) # ( !\c[63]~65_combout\ & ( !\c[63]~66_combout\ & ( (\A[63]~input_o\ & \B[63]~input_o\) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_B[63]~input_o\,
	datae => \ALT_INV_c[63]~65_combout\,
	dataf => \ALT_INV_c[63]~66_combout\,
	combout => rCOut(15));

-- Location: LABCELL_X58_Y16_N10
\cb[16]\ : arriaii_lcell_comb
-- Equation(s):
-- cb(16) = LCELL(( rCOut(15) ) # ( !rCOut(15) & ( (\cb~30_combout\ & (cb(15) & (!\A[63]~input_o\ $ (!\B[63]~input_o\)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_cb~30_combout\,
	datac => ALT_INV_cb(15),
	datad => \ALT_INV_B[63]~input_o\,
	dataf => ALT_INV_rCOut(15),
	combout => cb(16));

-- Location: LABCELL_X58_Y16_N22
\c[63]~66DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \c[63]~66DUPLICATE_combout\ = ( \A[62]~input_o\ & ( \c[62]~67_combout\ ) ) # ( !\A[62]~input_o\ & ( \c[62]~67_combout\ & ( \B[62]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[62]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_c[62]~67_combout\,
	combout => \c[63]~66DUPLICATE_combout\);

-- Location: LABCELL_X58_Y16_N32
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( !\c[63]~66DUPLICATE_combout\ & ( cb(16) & ( !\c[63]~65_combout\ ) ) ) # ( \c[63]~66DUPLICATE_combout\ & ( !cb(16) ) ) # ( !\c[63]~66DUPLICATE_combout\ & ( !cb(16) & ( \c[63]~65_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c[63]~65_combout\,
	datae => \ALT_INV_c[63]~66DUPLICATE_combout\,
	dataf => ALT_INV_cb(16),
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


