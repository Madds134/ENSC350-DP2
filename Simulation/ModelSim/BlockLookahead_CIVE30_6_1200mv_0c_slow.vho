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

-- DATE "11/20/2026 23:18:04"

-- 
-- Device: Altera EP4CE30F23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
-- S[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~2_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\ : std_logic;
SIGNAL \CarryNetwork|cMid~2_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~2_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~3_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:Low_half|BG~4_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~1_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|cMid~2_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|cMid~4_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|cMid~3_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(63 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y43_N30
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X54_Y43_N30
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X52_Y43_N16
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X54_Y43_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X54_Y43_N23
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X50_Y43_N16
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X32_Y43_N30
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X50_Y43_N9
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X54_Y43_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X45_Y43_N30
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X0_Y31_N23
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X0_Y38_N23
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X9_Y43_N30
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X14_Y0_N30
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~63_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X45_Y43_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X20_Y35_N20
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X41_Y43_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X41_Y43_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X17_Y34_N24
\p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(1) = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => p(1));

-- Location: LCCOMB_X20_Y35_N6
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = p(1) $ (((\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => p(1),
	datad => \Cin~input_o\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X17_Y34_N16
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (\Cin~input_o\ & (p(1) & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => p(1),
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: IOIBUF_X20_Y43_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X25_Y43_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X17_Y34_N14
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X17_Y34_N30
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X25_Y43_N29
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X18_Y34_N28
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[2]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \B[2]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: IOIBUF_X25_Y43_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X18_Y34_N14
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[3]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ $ (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	datac => \B[3]~input_o\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X25_Y43_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X18_Y43_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X17_Y34_N2
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[3]~input_o\ & (!\A[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X17_Y34_N22
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X17_Y34_N4
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & (\A[2]~input_o\ & 
-- \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X17_Y34_N28
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X17_Y34_N0
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X11_Y43_N29
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X17_Y34_N26
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: IOIBUF_X11_Y43_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X17_Y34_N20
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \B[5]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	datad => \A[5]~input_o\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X20_Y43_N29
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X17_Y34_N18
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & 
-- \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X17_Y34_N8
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\B[5]~input_o\ & (!\A[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X17_Y34_N10
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\);

-- Location: IOIBUF_X22_Y43_N29
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X16_Y34_N20
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	datad => \B[6]~input_o\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X20_Y43_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X16_Y34_N14
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[6]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\) # (\B[6]~input_o\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	datad => \B[6]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: IOIBUF_X14_Y43_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X16_Y34_N24
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[7]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	datad => \A[7]~input_o\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X29_Y43_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X38_Y43_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X16_Y34_N2
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\A[6]~input_o\ & (!\B[6]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X16_Y34_N4
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\A[7]~input_o\ & (\A[6]~input_o\ & (\B[6]~input_o\ & 
-- \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X16_Y34_N10
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X8_Y20_N16
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X17_Y34_N12
\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X32_Y39_N0
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X36_Y43_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X32_Y43_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X32_Y39_N10
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X32_Y39_N16
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X27_Y43_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X0_Y37_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X16_Y34_N12
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & 
-- \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[9]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X16_Y34_N30
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\A[9]~input_o\ & (!\B[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[9]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X32_Y39_N6
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X32_Y39_N8
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X22_Y43_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X32_Y39_N14
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: IOIBUF_X25_Y43_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X32_Y39_N4
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \B[11]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ $ (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	datad => \A[11]~input_o\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X36_Y43_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X36_Y43_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X16_Y34_N26
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[11]~input_o\ & (!\A[11]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X32_Y39_N26
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X16_Y34_N28
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[10]~input_o\ & (\B[10]~input_o\ & 
-- \A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X16_Y34_N0
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X32_Y39_N20
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X38_Y43_N29
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X38_Y43_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X32_Y39_N2
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\B[12]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\A[12]~input_o\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datab => \B[12]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \A[12]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X32_Y39_N28
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \B[13]~input_o\ $ (\A[13]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X32_Y43_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X29_Y43_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X16_Y34_N22
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\A[13]~input_o\ & (\A[12]~input_o\ & (\B[12]~input_o\ & 
-- \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X16_Y34_N8
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\A[12]~input_o\ & (!\B[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X32_Y39_N18
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X32_Y39_N12
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X32_Y43_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X32_Y43_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X32_Y39_N22
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X32_Y39_N24
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X0_Y16_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X0_Y16_N1
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X16_Y34_N6
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\B[14]~input_o\ & (!\A[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\)))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X16_Y34_N16
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\);

-- Location: LCCOMB_X32_Y39_N30
\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\B[14]~input_o\ & \A[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\B[14]~input_o\ & 
-- \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X16_Y34_N18
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X8_Y20_N6
\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\);

-- Location: LCCOMB_X17_Y34_N6
\CarryNetwork|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X4_Y16_N8
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\) # (\CarryNetwork|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\,
	datad => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X0_Y10_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X4_Y16_N10
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\) # 
-- (\CarryNetwork|Recur:Low_half|cMid~0_combout\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\) # (\CarryNetwork|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\,
	datad => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X4_Y16_N4
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \B[17]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X3_Y0_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X7_Y16_N4
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\B[17]~input_o\ & (\B[16]~input_o\ & (\A[16]~input_o\ & 
-- \A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X4_Y16_N6
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\A[16]~input_o\ & (!\B[16]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X4_Y16_N18
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~2_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~2_combout\);

-- Location: LCCOMB_X4_Y16_N12
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~2_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X3_Y0_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X4_Y16_N2
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~2_combout\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~2_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X4_Y16_N24
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X7_Y16_N16
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[18]~input_o\ & (!\A[18]~input_o\ & (\A[19]~input_o\ $ (\B[19]~input_o\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & (\A[19]~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[18]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X7_Y16_N10
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # ((\B[18]~input_o\ & \A[18]~input_o\)))) # (!\A[19]~input_o\ & (\B[18]~input_o\ & (\B[19]~input_o\ & 
-- \A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[18]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X7_Y16_N30
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: IOIBUF_X0_Y15_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X7_Y16_N24
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\) # (\CarryNetwork|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\,
	datad => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X7_Y16_N18
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \B[20]~input_o\ $ (\A[20]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X0_Y12_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X6_Y16_N24
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X5_Y16_N12
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X36_Y0_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X7_Y16_N8
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\A[20]~input_o\ & 
-- \B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X7_Y16_N6
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\B[21]~input_o\ & (!\A[21]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[21]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X7_Y16_N0
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X7_Y16_N22
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X9_Y0_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X7_Y16_N12
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X7_Y16_N26
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X0_Y20_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X7_Y16_N28
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[22]~input_o\ & (!\A[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\)))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[22]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X7_Y16_N14
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\A[23]~input_o\ & (\B[22]~input_o\ & (\B[23]~input_o\ & 
-- \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[22]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X7_Y16_N20
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X7_Y16_N2
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X8_Y20_N0
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0_combout\);

-- Location: LCCOMB_X4_Y20_N6
\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0_combout\ & ((\CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\);

-- Location: LCCOMB_X4_Y20_N24
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[24]~input_o\ $ (\A[24]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X0_Y20_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X3_Y20_N28
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[24]~input_o\ & ((\B[24]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X3_Y20_N30
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \B[25]~input_o\ $ (\A[25]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X3_Y20_N12
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[24]~input_o\ & (\B[25]~input_o\ & 
-- \A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[24]~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[24]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X3_Y20_N14
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\A[25]~input_o\ & (!\B[25]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[24]~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[24]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X4_Y20_N18
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X4_Y20_N8
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X0_Y20_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X4_Y20_N30
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[26]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- ((\B[26]~input_o\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: IOIBUF_X0_Y7_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X4_Y20_N16
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \B[27]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ $ (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[27]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	datad => \A[27]~input_o\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X0_Y4_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X3_Y20_N10
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[26]~input_o\ & (!\B[26]~input_o\ & (\B[27]~input_o\ $ (\A[27]~input_o\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & (\B[27]~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[26]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X4_Y20_N26
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|cMid~2_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X3_Y20_N24
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[26]~input_o\ & (\A[27]~input_o\ & 
-- \B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[26]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X8_Y20_N26
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X4_Y20_N4
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X0_Y9_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X4_Y20_N22
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[28]~input_o\ & ((\B[28]~input_o\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: IOIBUF_X0_Y4_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X4_Y20_N28
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \A[29]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ $ (\B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	datad => \B[29]~input_o\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X0_Y17_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X4_Y20_N14
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ & 
-- \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X4_Y20_N20
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\A[28]~input_o\ & (!\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X4_Y20_N2
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X4_Y20_N0
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \B[30]~input_o\ $ (\A[30]~input_o\ $ (((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X0_Y11_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X4_Y20_N10
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X4_Y20_N12
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \B[31]~input_o\ $ (\A[31]~input_o\ $ (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X0_Y37_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X0_Y39_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X4_Y17_N0
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~0_combout\ = (\B[30]~input_o\ & (!\A[30]~input_o\ & (\B[31]~input_o\ $ (\A[31]~input_o\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\B[31]~input_o\ $ (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	datad => \A[30]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~0_combout\);

-- Location: LCCOMB_X8_Y20_N24
\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~0_combout\ & 
-- (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\);

-- Location: LCCOMB_X1_Y34_N14
\CarryNetwork|cMid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|cMid~2_combout\ = (\CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\,
	combout => \CarryNetwork|cMid~2_combout\);

-- Location: LCCOMB_X8_Y20_N30
\CarryNetwork|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BP~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X4_Y17_N10
\CarryNetwork|Recur:Low_half|BG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~1_combout\ = (\B[31]~input_o\ & ((\A[31]~input_o\) # ((\B[30]~input_o\ & \A[30]~input_o\)))) # (!\B[31]~input_o\ & (\B[30]~input_o\ & (\A[31]~input_o\ & \A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	datad => \A[30]~input_o\,
	combout => \CarryNetwork|Recur:Low_half|BG~1_combout\);

-- Location: LCCOMB_X8_Y20_N8
\CarryNetwork|Recur:Low_half|BG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~2_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~2_combout\);

-- Location: LCCOMB_X8_Y20_N22
\CarryNetwork|Recur:Low_half|BG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~3_combout\ = (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~0_combout\ & ((\CarryNetwork|Recur:Low_half|BG~2_combout\) # ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\ & 
-- \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\)))) # (!\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~0_combout\ & (\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\ & 
-- ((\CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:High_half|BP~1_combout\,
	datac => \CarryNetwork|Recur:Low_half|BG~2_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~3_combout\);

-- Location: LCCOMB_X8_Y20_N28
\CarryNetwork|Recur:Low_half|BG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:Low_half|BG~4_combout\ = (\CarryNetwork|Recur:Low_half|BG~1_combout\) # ((\CarryNetwork|Recur:Low_half|BG~3_combout\) # ((\CarryNetwork|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:Low_half|BG~1_combout\,
	datac => \CarryNetwork|Recur:Low_half|BG~3_combout\,
	datad => \CarryNetwork|Recur:Low_half|Recur:Low_half|BG~1_combout\,
	combout => \CarryNetwork|Recur:Low_half|BG~4_combout\);

-- Location: LCCOMB_X1_Y34_N20
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \A[32]~input_o\ $ (\B[32]~input_o\ $ (((\CarryNetwork|cMid~2_combout\) # (\CarryNetwork|Recur:Low_half|BG~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \CarryNetwork|cMid~2_combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~4_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X0_Y29_N15
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X0_Y41_N8
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X1_Y34_N18
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[32]~input_o\ & ((\B[32]~input_o\) # ((\CarryNetwork|cMid~2_combout\) # (\CarryNetwork|Recur:Low_half|BG~4_combout\)))) # 
-- (!\A[32]~input_o\ & (\B[32]~input_o\ & ((\CarryNetwork|cMid~2_combout\) # (\CarryNetwork|Recur:Low_half|BG~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \CarryNetwork|cMid~2_combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~4_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y34_N28
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \B[33]~input_o\ $ (\A[33]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datac => \A[33]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X1_Y34_N6
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\A[33]~input_o\ & ((\B[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\A[33]~input_o\ & (\A[32]~input_o\ & (\B[32]~input_o\ & 
-- \B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X0_Y31_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X0_Y41_N1
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X1_Y34_N4
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (\B[33]~input_o\ & (!\A[33]~input_o\ & (\B[32]~input_o\ $ (\A[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\B[32]~input_o\ $ (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \B[32]~input_o\,
	datac => \A[33]~input_o\,
	datad => \A[32]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X8_Y20_N10
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|Recur:Low_half|BG~4_combout\) # 
-- ((\CarryNetwork|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:Low_half|BG~4_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X1_Y34_N30
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \A[34]~input_o\ $ (\B[34]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X0_Y41_N22
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X1_Y34_N12
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[34]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- ((\B[34]~input_o\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\)))) # (!\A[34]~input_o\ & (\B[34]~input_o\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y34_N26
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = \A[35]~input_o\ $ (\B[35]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datac => \B[35]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X1_Y43_N22
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X1_Y34_N22
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\A[34]~input_o\ & (!\B[34]~input_o\ & (\B[35]~input_o\ $ (\A[35]~input_o\)))) # (!\A[34]~input_o\ & (\B[34]~input_o\ & (\B[35]~input_o\ $ (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[35]~input_o\,
	datac => \B[34]~input_o\,
	datad => \A[35]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y34_N8
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # ((\A[34]~input_o\ & \B[34]~input_o\)))) # (!\B[35]~input_o\ & (\A[34]~input_o\ & (\B[34]~input_o\ & 
-- \A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[35]~input_o\,
	datac => \B[34]~input_o\,
	datad => \A[35]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X1_Y34_N24
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: IOIBUF_X9_Y43_N15
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X2_Y34_N24
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ((\CarryNetwork|Recur:Low_half|BG~4_combout\) # (\CarryNetwork|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:Low_half|BG~4_combout\,
	datad => \CarryNetwork|cMid~2_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X2_Y34_N2
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \A[36]~input_o\ $ (\B[36]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datac => \B[36]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X5_Y43_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X2_Y34_N28
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[36]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # ((\B[36]~input_o\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datac => \B[36]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X2_Y34_N30
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \A[37]~input_o\ $ (\B[37]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X0_Y28_N15
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X1_Y43_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X2_Y34_N8
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[37]~input_o\ & ((\A[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\B[37]~input_o\ & (\A[36]~input_o\ & (\B[36]~input_o\ & 
-- \A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[37]~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[37]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y34_N22
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\A[36]~input_o\ & (!\B[36]~input_o\ & (\B[37]~input_o\ $ (\A[37]~input_o\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & (\B[37]~input_o\ $ (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X1_Y34_N10
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X1_Y34_N16
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = \A[38]~input_o\ $ (\B[38]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X1_Y43_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X1_Y43_N29
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X1_Y34_N2
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\)))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X1_Y34_N0
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \B[39]~input_o\ $ (\A[39]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[39]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~39_combout\);

-- Location: LCCOMB_X2_Y34_N16
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[38]~input_o\ & (!\A[38]~input_o\ & (\B[39]~input_o\ $ (\A[39]~input_o\)))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\B[39]~input_o\ $ (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[38]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y34_N4
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # ((\B[38]~input_o\ & \A[38]~input_o\)))) # (!\B[39]~input_o\ & (\B[38]~input_o\ & (\A[39]~input_o\ & 
-- \A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[38]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y34_N14
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~1_combout\);

-- Location: LCCOMB_X2_Y34_N12
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~1_combout\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~1_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: IOIBUF_X5_Y43_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X5_Y43_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X8_Y20_N12
\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ & (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\);

-- Location: LCCOMB_X4_Y34_N4
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = \A[40]~input_o\ $ (\B[40]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X5_Y43_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X5_Y43_N29
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X4_Y34_N18
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\B[40]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # ((\A[40]~input_o\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\)))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datab => \B[40]~input_o\,
	datac => \A[40]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X4_Y34_N0
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = \B[41]~input_o\ $ (\A[41]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datac => \A[41]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X0_Y40_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X4_Y34_N2
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\B[41]~input_o\ & (\B[40]~input_o\ & (\A[40]~input_o\ & 
-- \A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \B[40]~input_o\,
	datac => \A[40]~input_o\,
	datad => \A[41]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y34_N26
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X4_Y34_N12
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\B[41]~input_o\ & (!\A[41]~input_o\ & (\A[40]~input_o\ $ (\B[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\A[40]~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[41]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X2_Y34_N18
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X2_Y34_N20
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = \B[42]~input_o\ $ (\A[42]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[42]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X0_Y40_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X3_Y43_N29
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X2_Y34_N10
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[42]~input_o\ & ((\A[42]~input_o\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))) # (!\B[42]~input_o\ & (\A[42]~input_o\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[42]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X2_Y34_N0
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = \A[43]~input_o\ $ (\B[43]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[43]~input_o\,
	datac => \B[43]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~43_combout\);

-- Location: LCCOMB_X3_Y34_N8
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[42]~input_o\ & (!\B[42]~input_o\ & (\A[43]~input_o\ $ (\B[43]~input_o\)))) # (!\A[42]~input_o\ & (\B[42]~input_o\ & (\A[43]~input_o\ $ (\B[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \A[43]~input_o\,
	datac => \B[42]~input_o\,
	datad => \B[43]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X2_Y34_N6
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # ((\B[42]~input_o\ & \A[42]~input_o\)))) # (!\B[43]~input_o\ & (\B[42]~input_o\ & (\A[42]~input_o\ & 
-- \A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[42]~input_o\,
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X3_Y34_N10
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\);

-- Location: IOIBUF_X9_Y43_N8
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X9_Y43_N1
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X3_Y34_N24
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|cMid~2_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X3_Y34_N22
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = \A[44]~input_o\ $ (\B[44]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datab => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X7_Y43_N8
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X0_Y28_N1
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X3_Y34_N16
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[44]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # ((\B[44]~input_o\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datab => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X3_Y34_N18
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = \B[45]~input_o\ $ (\A[45]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datac => \A[45]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X7_Y43_N22
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X3_Y34_N28
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\A[45]~input_o\ & (\A[44]~input_o\ & (\B[45]~input_o\ & 
-- \B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \A[44]~input_o\,
	datac => \B[45]~input_o\,
	datad => \B[44]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X7_Y43_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X3_Y34_N30
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\A[45]~input_o\ & (!\B[45]~input_o\ & (\A[44]~input_o\ $ (\B[44]~input_o\)))) # (!\A[45]~input_o\ & (\B[45]~input_o\ & (\A[44]~input_o\ $ (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \A[44]~input_o\,
	datac => \B[45]~input_o\,
	datad => \B[44]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X3_Y34_N0
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X3_Y34_N2
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = \A[46]~input_o\ $ (\B[46]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \B[46]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X3_Y43_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X3_Y43_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X3_Y34_N20
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[46]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- ((\B[46]~input_o\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \B[46]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X3_Y34_N14
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = \A[47]~input_o\ $ (\B[47]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[47]~input_o\,
	datac => \B[47]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~47_combout\);

-- Location: IOIBUF_X1_Y0_N29
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X3_Y34_N12
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\A[46]~input_o\ & (!\B[46]~input_o\ & (\B[47]~input_o\ $ (\A[47]~input_o\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & (\B[47]~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[46]~input_o\,
	datac => \B[47]~input_o\,
	datad => \A[47]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X3_Y34_N6
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0_combout\);

-- Location: LCCOMB_X8_Y20_N4
\CarryNetwork|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|cMid~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0_combout\ & (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X4_Y39_N4
\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\B[47]~input_o\ & ((\A[47]~input_o\) # ((\B[46]~input_o\ & \A[46]~input_o\)))) # (!\B[47]~input_o\ & (\B[46]~input_o\ & (\A[46]~input_o\ & 
-- \A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[47]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X3_Y34_N4
\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X3_Y34_N26
\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\);

-- Location: LCCOMB_X4_Y4_N28
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = \A[48]~input_o\ $ (\B[48]~input_o\ $ (((\CarryNetwork|Recur:High_half|cMid~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[48]~input_o\,
	datac => \CarryNetwork|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X22_Y0_N1
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X7_Y4_N28
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\B[48]~input_o\ & ((\A[48]~input_o\) # ((\CarryNetwork|Recur:High_half|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\)))) # (!\B[48]~input_o\ & (\A[48]~input_o\ & ((\CarryNetwork|Recur:High_half|cMid~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \A[48]~input_o\,
	datac => \CarryNetwork|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X7_Y4_N26
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = \A[49]~input_o\ $ (\B[49]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datac => \B[49]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X9_Y0_N22
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X7_Y4_N16
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # (!\B[49]~input_o\ & (\B[48]~input_o\ & (\A[48]~input_o\ & 
-- \A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \A[48]~input_o\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X0_Y3_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X7_Y4_N6
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ = (\B[48]~input_o\ & (!\A[48]~input_o\ & (\B[49]~input_o\ $ (\A[49]~input_o\)))) # (!\B[48]~input_o\ & (\A[48]~input_o\ & (\B[49]~input_o\ $ (\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \A[48]~input_o\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X7_Y4_N24
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & ((\CarryNetwork|Recur:High_half|cMid~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X7_Y4_N22
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = \A[50]~input_o\ $ (\B[50]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \B[50]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~50_combout\);

-- Location: IOIBUF_X14_Y0_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X7_Y4_N20
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[50]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- ((\B[50]~input_o\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\)))) # (!\A[50]~input_o\ & (\B[50]~input_o\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \B[50]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X7_Y4_N18
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = \A[51]~input_o\ $ (\B[51]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datac => \B[51]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X16_Y0_N1
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X7_Y4_N14
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\B[51]~input_o\ & (!\A[51]~input_o\ & (\A[50]~input_o\ $ (\B[50]~input_o\)))) # (!\B[51]~input_o\ & (\A[51]~input_o\ & (\A[50]~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	datad => \A[51]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X7_Y4_N4
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\B[51]~input_o\ & ((\A[51]~input_o\) # ((\A[50]~input_o\ & \B[50]~input_o\)))) # (!\B[51]~input_o\ & (\A[50]~input_o\ & (\B[50]~input_o\ & 
-- \A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	datad => \A[51]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X7_Y4_N12
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\);

-- Location: LCCOMB_X8_Y20_N2
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0_combout\ & (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:High_half|BP~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X8_Y20_N20
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\ & 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & ((\CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:Low_half|BG~1_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X14_Y4_N28
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = \A[52]~input_o\ $ (\B[52]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~52_combout\);

-- Location: IOIBUF_X16_Y0_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X14_Y4_N18
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[52]~input_o\ & ((\B[52]~input_o\) # ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))) # (!\A[52]~input_o\ & (\B[52]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X14_Y4_N12
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = \B[53]~input_o\ $ (\A[53]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datac => \A[53]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~53_combout\);

-- Location: IOIBUF_X22_Y0_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X8_Y4_N8
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\B[53]~input_o\ & (\B[52]~input_o\ & (\A[52]~input_o\ & 
-- \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \B[53]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X8_Y4_N14
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ = (\B[52]~input_o\ & (!\A[52]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\)))) # (!\B[52]~input_o\ & (\A[52]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \B[53]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X8_Y4_N24
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X8_Y4_N26
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = \A[54]~input_o\ $ (\B[54]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X20_Y0_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X8_Y4_N16
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[54]~input_o\ & ((\B[54]~input_o\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\)))) # (!\A[54]~input_o\ & (\B[54]~input_o\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X8_Y4_N10
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = \A[55]~input_o\ $ (\B[55]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[55]~input_o\,
	datac => \B[55]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X18_Y0_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X8_Y4_N4
\CarryNetwork|Recur:High_half|Recur:High_half|cMid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|cMid~2_combout\ = (\A[54]~input_o\ & (!\B[54]~input_o\ & (\A[55]~input_o\ $ (\B[55]~input_o\)))) # (!\A[54]~input_o\ & (\B[54]~input_o\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \A[55]~input_o\,
	datac => \B[55]~input_o\,
	datad => \B[54]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~2_combout\);

-- Location: LCCOMB_X8_Y4_N22
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X8_Y4_N28
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\) # ((\A[54]~input_o\ & \B[54]~input_o\)))) # (!\A[55]~input_o\ & (\A[54]~input_o\ & (\B[55]~input_o\ & 
-- \B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \A[55]~input_o\,
	datac => \B[55]~input_o\,
	datad => \B[54]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X8_Y4_N18
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\) # ((\CarryNetwork|Recur:High_half|Recur:High_half|cMid~2_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~2_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\);

-- Location: IOIBUF_X18_Y0_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X8_Y4_N0
\CarryNetwork|Recur:High_half|Recur:High_half|cMid~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|cMid~4_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~2_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~2_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~4_combout\);

-- Location: LCCOMB_X8_Y4_N30
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = \B[56]~input_o\ $ (\A[56]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\,
	datac => \A[56]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~4_combout\,
	combout => \S~56_combout\);

-- Location: IOIBUF_X18_Y0_N8
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X8_Y4_N20
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\ = (\B[56]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\) # ((\A[56]~input_o\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~4_combout\)))) # (!\B[56]~input_o\ & (\A[56]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|cMid~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\,
	datac => \A[56]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~4_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X8_Y4_N2
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = \A[57]~input_o\ $ (\B[57]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datac => \B[57]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~57_combout\);

-- Location: LCCOMB_X18_Y1_N16
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\A[57]~input_o\ & (\B[57]~input_o\ & (\A[56]~input_o\ & 
-- \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X29_Y0_N29
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X14_Y4_N14
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ = (\A[56]~input_o\ & (!\B[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\)))) # (!\A[56]~input_o\ & (\B[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[56]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\);

-- Location: LCCOMB_X8_Y4_N12
\CarryNetwork|Recur:High_half|Recur:High_half|cMid~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|cMid~3_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\ & \CarryNetwork|Recur:High_half|Recur:High_half|cMid~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|cMid~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~2_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~3_combout\);

-- Location: LCCOMB_X8_Y20_N14
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\) # ((\CarryNetwork|Recur:High_half|Recur:High_half|cMid~3_combout\ & \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~0_combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|cMid~3_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|BG~1_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\);

-- Location: LCCOMB_X38_Y4_N0
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = \B[58]~input_o\ $ (\A[58]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datab => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \S~58_combout\);

-- Location: IOIBUF_X41_Y0_N29
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X29_Y4_N28
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\ = (\B[58]~input_o\ & ((\A[58]~input_o\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)))) # (!\B[58]~input_o\ & (\A[58]~input_o\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \A[58]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X29_Y4_N26
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = \B[59]~input_o\ $ (\A[59]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~59_combout\);

-- Location: LCCOMB_X38_Y4_N8
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[58]~input_o\ & (!\A[58]~input_o\ & (\A[59]~input_o\ $ (\B[59]~input_o\)))) # (!\B[58]~input_o\ & (\A[58]~input_o\ & (\A[59]~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \A[59]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[59]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: LCCOMB_X38_Y4_N2
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # ((\B[58]~input_o\ & \A[58]~input_o\)))) # (!\A[59]~input_o\ & (\B[58]~input_o\ & (\A[58]~input_o\ & 
-- \B[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \A[59]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[59]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\);

-- Location: LCCOMB_X38_Y4_N10
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\ & \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:High_half|BG~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\);

-- Location: IOIBUF_X43_Y0_N29
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X38_Y4_N24
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X38_Y4_N26
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = \A[60]~input_o\ $ (\B[60]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datab => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	combout => \S~60_combout\);

-- Location: IOIBUF_X43_Y0_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X38_Y4_N28
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\ = (\A[60]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\) # ((\B[60]~input_o\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\)))) # (!\A[60]~input_o\ & (\B[60]~input_o\ & ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datab => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X38_Y4_N30
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = \A[61]~input_o\ $ (\B[61]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|Recur:cMid~0_combout\,
	combout => \S~61_combout\);

-- Location: IOIBUF_X36_Y0_N15
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X38_Y4_N4
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ = (\B[61]~input_o\ & ((\A[61]~input_o\) # ((\B[60]~input_o\ & \A[60]~input_o\)))) # (!\B[61]~input_o\ & (\B[60]~input_o\ & (\A[61]~input_o\ & 
-- \A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \B[61]~input_o\,
	datac => \A[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\);

-- Location: IOIBUF_X45_Y0_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X38_Y4_N14
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ = (\B[60]~input_o\ & (!\A[60]~input_o\ & (\B[61]~input_o\ $ (\A[61]~input_o\)))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & (\B[61]~input_o\ $ (\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \B[61]~input_o\,
	datac => \A[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\);

-- Location: LCCOMB_X38_Y4_N12
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\ = (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\) # ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\ & 
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~combout\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\);

-- Location: LCCOMB_X38_Y4_N18
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = \A[62]~input_o\ $ (\B[62]~input_o\ $ (((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datac => \B[62]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \S~62_combout\);

-- Location: IOIBUF_X43_Y0_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X38_Y4_N20
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\ = (\A[62]~input_o\ & ((\B[62]~input_o\) # 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\)))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & 
-- ((\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\) # (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[62]~input_o\,
	datac => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:Low_half|BG~0_combout\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|cMid~1_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\);

-- Location: LCCOMB_X38_Y4_N22
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = \B[63]~input_o\ $ (\A[63]~input_o\ $ (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[63]~input_o\,
	datac => \A[63]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \S~63_combout\);

-- Location: LCCOMB_X38_Y4_N16
\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\ = (\B[63]~input_o\ & ((\A[63]~input_o\) # 
-- (\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))) # (!\B[63]~input_o\ & (\A[63]~input_o\ & 
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[63]~input_o\,
	datac => \A[63]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
	combout => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|c[1]~0_combout\);

-- Location: LCCOMB_X38_Y4_N6
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\B[63]~input_o\ & (\A[63]~input_o\ & !\CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\)) # (!\B[63]~input_o\ & (!\A[63]~input_o\ & 
-- \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[63]~input_o\,
	datac => \A[63]~input_o\,
	datad => \CarryNetwork|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:High_half|Recur:cMid~0_combout\,
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


