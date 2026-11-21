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

-- DATE "11/20/2026 23:22:14"

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
-- S[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[1]~0_combout\ : std_logic;
SIGNAL \S~96_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][2]~10_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~11_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[4]~1_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Ppre[3]~0_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][3]~12_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][4]~14_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][8]~13_combout\ : std_logic;
SIGNAL \c[5]~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \c~147_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~97_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][5]~15_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][9]~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~230_combout\ : std_logic;
SIGNAL \c[6]~4_combout\ : std_logic;
SIGNAL \S~98_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~231_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][6]~17_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[6]~2_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][7]~19_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[7]~3_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~18_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \c~6_combout\ : std_logic;
SIGNAL \S~99_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][8]~28_combout\ : std_logic;
SIGNAL \c[25]~7_combout\ : std_logic;
SIGNAL \c[25]~8_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][8]~21_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][8]~22_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][8]~20_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][8]~23_combout\ : std_logic;
SIGNAL \S~100_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][9]~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][9]~24_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][9]~25_combout\ : std_logic;
SIGNAL \c[10]~9_combout\ : std_logic;
SIGNAL \c[26]~10_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \c~11_combout\ : std_logic;
SIGNAL \c~12_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~26_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][10]~83_combout\ : std_logic;
SIGNAL \c[11]~13_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][10]~27_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][10]~28_combout\ : std_logic;
SIGNAL \c[27]~14_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~29_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][11]~84_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][11]~30_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][11]~31_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][11]~32_combout\ : std_logic;
SIGNAL \c[28]~15_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~33_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][12]~30_combout\ : std_logic;
SIGNAL \c[13]~16_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][12]~34_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][12]~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][12]~232_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][13]~37_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][13]~38_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][13]~39_combout\ : std_logic;
SIGNAL \c[14]~17_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~40_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[30]~4_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][14]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][14]~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][14]~43_combout\ : std_logic;
SIGNAL \c[39]~18_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][15]~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][15]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][15]~47_combout\ : std_logic;
SIGNAL \c~19_combout\ : std_logic;
SIGNAL \c[16]~20_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~48_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][16]~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][16]~50_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][16]~51_combout\ : std_logic;
SIGNAL \c[17]~21_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~57_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][17]~54_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][17]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][17]~56_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~58_combout\ : std_logic;
SIGNAL \c[18]~22_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~59_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][18]~60_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][18]~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][18]~62_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~64_combout\ : std_logic;
SIGNAL \c[19]~23_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~65_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~66_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][19]~67_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][19]~68_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][19]~69_combout\ : std_logic;
SIGNAL \c[36]~24_combout\ : std_logic;
SIGNAL \c[20]~25_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~70_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~74_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][20]~71_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][20]~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][20]~73_combout\ : std_logic;
SIGNAL \c[21]~26_combout\ : std_logic;
SIGNAL \c[21]~27_combout\ : std_logic;
SIGNAL \c[21]~28_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][21]~76_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][21]~77_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][21]~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~79_combout\ : std_logic;
SIGNAL \c[22]~29_combout\ : std_logic;
SIGNAL \c[22]~30_combout\ : std_logic;
SIGNAL \c[22]~31_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~80_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~84_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][22]~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][22]~82_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][22]~83_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][22]~31_combout\ : std_logic;
SIGNAL \c[23]~32_combout\ : std_logic;
SIGNAL \c[23]~33_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~85_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~89_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][23]~86_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][23]~87_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][23]~88_combout\ : std_logic;
SIGNAL \c[40]~34_combout\ : std_logic;
SIGNAL \c[40]~35_combout\ : std_logic;
SIGNAL \c[24]~36_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~90_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][24]~91_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][24]~92_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][24]~93_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~94_combout\ : std_logic;
SIGNAL \c[41]~37_combout\ : std_logic;
SIGNAL \c[25]~38_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~95_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~99_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][25]~96_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][25]~97_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][25]~98_combout\ : std_logic;
SIGNAL \c[42]~39_combout\ : std_logic;
SIGNAL \c[26]~40_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~100_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][26]~101_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][26]~102_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][26]~103_combout\ : std_logic;
SIGNAL \c[43]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~104_combout\ : std_logic;
SIGNAL \c[43]~42_combout\ : std_logic;
SIGNAL \c[27]~43_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~105_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~109_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][27]~106_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][27]~107_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][27]~108_combout\ : std_logic;
SIGNAL \c[44]~44_combout\ : std_logic;
SIGNAL \c[44]~45_combout\ : std_logic;
SIGNAL \c[28]~46_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~110_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~114_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][28]~32_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][28]~111_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][28]~112_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][28]~113_combout\ : std_logic;
SIGNAL \c[29]~47_combout\ : std_logic;
SIGNAL \c[29]~48_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~115_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][29]~116_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][29]~117_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][29]~118_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~119_combout\ : std_logic;
SIGNAL \c[30]~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][29]~33_combout\ : std_logic;
SIGNAL \c[30]~50_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~120_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~124_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][30]~34_combout\ : std_logic;
SIGNAL \c~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][30]~121_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][30]~122_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][30]~123_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[30]~5_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[30]~6_combout\ : std_logic;
SIGNAL \S~101_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \c~52_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][31]~35_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][31]~36_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~129_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~125_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][31]~126_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][31]~127_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][31]~128_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gpre[31]~7_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][32]~85_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][32]~37_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][32]~131_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][32]~132_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~130_combout\ : std_logic;
SIGNAL \c[33]~53_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][33]~133_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][33]~134_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][33]~86_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~135_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][33]~38_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][34]~136_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][34]~137_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][34]~39_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][34]~138_combout\ : std_logic;
SIGNAL \c[35]~54_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][34]~40_combout\ : std_logic;
SIGNAL \c[35]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~139_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~140_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][35]~41_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][35]~42_combout\ : std_logic;
SIGNAL \c[36]~56_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][35]~141_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][35]~142_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][35]~143_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~144_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][36]~43_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][36]~44_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~148_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][36]~145_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][36]~146_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][36]~147_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][36]~45_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][37]~46_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][37]~47_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~149_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][37]~150_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][37]~151_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][37]~152_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][37]~48_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~153_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][38]~49_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][38]~87_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][38]~154_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][38]~155_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][38]~156_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][38]~50_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~158_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][39]~51_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][39]~52_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~157_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][39]~159_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][39]~160_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][39]~161_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~162_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][40]~163_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][40]~164_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][40]~53_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~165_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][40]~54_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][41]~167_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~166_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][41]~168_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][41]~55_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~169_combout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][41]~56_combout\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \S~67_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][42]~57_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][42]~170_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][42]~171_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][42]~172_combout\ : std_logic;
SIGNAL \S~66_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][42]~58_combout\ : std_logic;
SIGNAL \S~68_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][43]~59_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][43]~60_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~173_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][43]~174_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][43]~175_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][43]~176_combout\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][44]~177_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][44]~178_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][44]~61_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][44]~179_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][44]~62_combout\ : std_logic;
SIGNAL \c[45]~57_combout\ : std_logic;
SIGNAL \c[45]~58_combout\ : std_logic;
SIGNAL \c[45]~59_combout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][45]~63_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][45]~180_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][45]~181_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][45]~182_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][45]~64_combout\ : std_logic;
SIGNAL \c[46]~61_combout\ : std_logic;
SIGNAL \c[46]~62_combout\ : std_logic;
SIGNAL \c[46]~60_combout\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][46]~65_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][46]~183_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][46]~184_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][46]~185_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~186_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~187_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][46]~66_combout\ : std_logic;
SIGNAL \c[47]~64_combout\ : std_logic;
SIGNAL \c[47]~63_combout\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][47]~67_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~191_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][47]~68_combout\ : std_logic;
SIGNAL \c[48]~67_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][47]~188_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][47]~189_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][47]~190_combout\ : std_logic;
SIGNAL \c[48]~65_combout\ : std_logic;
SIGNAL \c[48]~66_combout\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][48]~69_combout\ : std_logic;
SIGNAL \c[49]~68_combout\ : std_logic;
SIGNAL \c[49]~69_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~192_combout\ : std_logic;
SIGNAL \c[49]~70_combout\ : std_logic;
SIGNAL \c[49]~71_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][48]~193_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][48]~194_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][48]~195_combout\ : std_logic;
SIGNAL \c[49]~72_combout\ : std_logic;
SIGNAL \S~76_combout\ : std_logic;
SIGNAL \c[50]~73_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][49]~70_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][49]~196_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][49]~197_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][49]~198_combout\ : std_logic;
SIGNAL \c[50]~74_combout\ : std_logic;
SIGNAL \S~77_combout\ : std_logic;
SIGNAL \S~78_combout\ : std_logic;
SIGNAL \S~79_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][50]~71_combout\ : std_logic;
SIGNAL \c[51]~75_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \S~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][50]~199_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][50]~200_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][50]~201_combout\ : std_logic;
SIGNAL \S~80_combout\ : std_logic;
SIGNAL \S~82_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][51]~72_combout\ : std_logic;
SIGNAL \c[52]~76_combout\ : std_logic;
SIGNAL \c[52]~77_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][51]~202_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][51]~203_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][51]~204_combout\ : std_logic;
SIGNAL \c[52]~78_combout\ : std_logic;
SIGNAL \c[52]~79_combout\ : std_logic;
SIGNAL \c[52]~80_combout\ : std_logic;
SIGNAL \S~83_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~205_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][52]~88_combout\ : std_logic;
SIGNAL \c[57]~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][52]~206_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][52]~207_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][52]~208_combout\ : std_logic;
SIGNAL \S~84_combout\ : std_logic;
SIGNAL \S~85_combout\ : std_logic;
SIGNAL \S~86_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][53]~209_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][53]~89_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~210_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][53]~211_combout\ : std_logic;
SIGNAL \c[58]~83_combout\ : std_logic;
SIGNAL \c[54]~82_combout\ : std_logic;
SIGNAL \c[54]~84_combout\ : std_logic;
SIGNAL \c[54]~85_combout\ : std_logic;
SIGNAL \S~87_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][54]~73_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][54]~212_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~213_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~214_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][54]~215_combout\ : std_logic;
SIGNAL \c[55]~86_combout\ : std_logic;
SIGNAL \c[55]~87_combout\ : std_logic;
SIGNAL \c[55]~90_combout\ : std_logic;
SIGNAL \c[55]~88_combout\ : std_logic;
SIGNAL \c[55]~89_combout\ : std_logic;
SIGNAL \c[55]~91_combout\ : std_logic;
SIGNAL \S~88_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Gk~217_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][55]~74_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][55]~216_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~218_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[3][55]~219_combout\ : std_logic;
SIGNAL \c[56]~93_combout\ : std_logic;
SIGNAL \c[56]~94_combout\ : std_logic;
SIGNAL \c[56]~92_combout\ : std_logic;
SIGNAL \c[56]~95_combout\ : std_logic;
SIGNAL \S~102_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][56]~75_combout\ : std_logic;
SIGNAL \c[57]~99_combout\ : std_logic;
SIGNAL \c[57]~101_combout\ : std_logic;
SIGNAL \c[57]~100_combout\ : std_logic;
SIGNAL \c[57]~102_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~221_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][56]~220_combout\ : std_logic;
SIGNAL \c[57]~96_combout\ : std_logic;
SIGNAL \c[57]~97_combout\ : std_logic;
SIGNAL \c[57]~98_combout\ : std_logic;
SIGNAL \S~89_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][59]~76_combout\ : std_logic;
SIGNAL \c[58]~104_combout\ : std_logic;
SIGNAL \c[58]~106_combout\ : std_logic;
SIGNAL \c[58]~105_combout\ : std_logic;
SIGNAL \c[58]~107_combout\ : std_logic;
SIGNAL \c[58]~148_combout\ : std_logic;
SIGNAL \c[58]~103_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][57]~222_combout\ : std_logic;
SIGNAL \c[58]~149_combout\ : std_logic;
SIGNAL \S~90_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[1][58]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][58]~77_combout\ : std_logic;
SIGNAL \c[59]~112_combout\ : std_logic;
SIGNAL \c[59]~108_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][58]~223_combout\ : std_logic;
SIGNAL \c[59]~109_combout\ : std_logic;
SIGNAL \c[59]~110_combout\ : std_logic;
SIGNAL \c[59]~111_combout\ : std_logic;
SIGNAL \c[59]~113_combout\ : std_logic;
SIGNAL \c[59]~114_combout\ : std_logic;
SIGNAL \S~91_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[1][59]~combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[2][59]~78_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][59]~224_combout\ : std_logic;
SIGNAL \c[60]~115_combout\ : std_logic;
SIGNAL \c[60]~116_combout\ : std_logic;
SIGNAL \c[60]~119_combout\ : std_logic;
SIGNAL \c[60]~117_combout\ : std_logic;
SIGNAL \c[60]~118_combout\ : std_logic;
SIGNAL \c[60]~120_combout\ : std_logic;
SIGNAL \c[60]~121_combout\ : std_logic;
SIGNAL \S~92_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[1][60]~combout\ : std_logic;
SIGNAL \c[61]~128_combout\ : std_logic;
SIGNAL \c[61]~129_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \c[61]~126_combout\ : std_logic;
SIGNAL \c[61]~127_combout\ : std_logic;
SIGNAL \c[61]~122_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][60]~225_combout\ : std_logic;
SIGNAL \c[61]~123_combout\ : std_logic;
SIGNAL \c[61]~124_combout\ : std_logic;
SIGNAL \c[61]~125_combout\ : std_logic;
SIGNAL \S~93_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \PrefixNetwork|Pk[1][61]~combout\ : std_logic;
SIGNAL \c[62]~130_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][61]~226_combout\ : std_logic;
SIGNAL \c[62]~131_combout\ : std_logic;
SIGNAL \c[62]~132_combout\ : std_logic;
SIGNAL \c[62]~133_combout\ : std_logic;
SIGNAL \c[62]~136_combout\ : std_logic;
SIGNAL \c[62]~134_combout\ : std_logic;
SIGNAL \c[62]~135_combout\ : std_logic;
SIGNAL \c[62]~137_combout\ : std_logic;
SIGNAL \S~94_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \c[63]~140_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][62]~79_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][62]~80_combout\ : std_logic;
SIGNAL \c[63]~139_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][62]~227_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk~228_combout\ : std_logic;
SIGNAL \c[63]~138_combout\ : std_logic;
SIGNAL \c[63]~141_combout\ : std_logic;
SIGNAL \S~95_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][63]~81_combout\ : std_logic;
SIGNAL \PrefixNetwork|Pk[4][63]~82_combout\ : std_logic;
SIGNAL \PrefixNetwork|Gk[1][63]~229_combout\ : std_logic;
SIGNAL \c~144_combout\ : std_logic;
SIGNAL \c~145_combout\ : std_logic;
SIGNAL \c~142_combout\ : std_logic;
SIGNAL \c~143_combout\ : std_logic;
SIGNAL \c~146_combout\ : std_logic;
SIGNAL \Ovfl~4_combout\ : std_logic;
SIGNAL \Ovfl~2_combout\ : std_logic;
SIGNAL \Ovfl~3_combout\ : std_logic;
SIGNAL p : std_logic_vector(63 DOWNTO 0);
SIGNAL \PrefixNetwork|Gpre\ : std_logic_vector(63 DOWNTO 0);
SIGNAL c : std_logic_vector(64 DOWNTO 0);

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

-- Location: IOOBUF_X54_Y0_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y41_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~96_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X59_Y0_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~97_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X67_Y14_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~98_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X67_Y14_N9
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~99_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~100_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X50_Y0_N30
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X0_Y40_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X3_Y43_N30
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X1_Y43_N30
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X20_Y43_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X27_Y43_N2
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X1_Y43_N23
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X67_Y10_N2
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X1_Y43_N9
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X5_Y43_N30
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X0_Y39_N2
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X25_Y43_N30
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~101_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X1_Y43_N16
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X0_Y38_N23
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X14_Y43_N16
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X18_Y43_N2
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X3_Y43_N2
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~65_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X0_Y31_N23
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~68_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~71_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~72_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X43_Y0_N30
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~73_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X5_Y43_N9
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~74_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~75_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~76_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~79_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~82_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~83_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~86_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~87_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~88_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~102_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~89_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~90_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~91_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~92_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~93_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~94_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~95_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~146_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~3_combout\,
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

-- Location: IOIBUF_X0_Y37_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X8_Y13_N4
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X9_Y43_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y40_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X11_Y14_N12
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

-- Location: LCCOMB_X8_Y13_N22
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = p(1) $ (((\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\Cin~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => p(1),
	combout => \S~15_combout\);

-- Location: IOIBUF_X0_Y19_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X11_Y14_N4
\c~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~2_combout\ = (\Cin~input_o\ & (p(1) & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => p(1),
	combout => \c~2_combout\);

-- Location: LCCOMB_X11_Y14_N2
\PrefixNetwork|Gpre[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[1]~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \PrefixNetwork|Gpre[1]~0_combout\);

-- Location: LCCOMB_X11_Y14_N24
\S~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~96_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (((\c~2_combout\) # (\PrefixNetwork|Gpre[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \c~2_combout\,
	datad => \PrefixNetwork|Gpre[1]~0_combout\,
	combout => \S~96_combout\);

-- Location: LCCOMB_X8_Y13_N8
\p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => p(2));

-- Location: IOIBUF_X7_Y0_N29
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X10_Y11_N4
\p[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(3) = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => p(3));

-- Location: LCCOMB_X9_Y15_N8
\PrefixNetwork|Gk[1][2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][2]~10_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # ((\A[1]~input_o\ & \B[1]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \PrefixNetwork|Gk[1][2]~10_combout\);

-- Location: LCCOMB_X9_Y15_N6
\PrefixNetwork|Gk~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~11_combout\ = (\A[2]~input_o\ & (!\B[2]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \PrefixNetwork|Gk~11_combout\);

-- Location: LCCOMB_X9_Y15_N20
\PrefixNetwork|Gpre[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[4]~1_combout\ = (\PrefixNetwork|Gk[1][2]~10_combout\) # ((\B[0]~input_o\ & (\A[0]~input_o\ & \PrefixNetwork|Gk~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \PrefixNetwork|Gk[1][2]~10_combout\,
	datad => \PrefixNetwork|Gk~11_combout\,
	combout => \PrefixNetwork|Gpre[4]~1_combout\);

-- Location: LCCOMB_X10_Y11_N22
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = p(3) $ (((\PrefixNetwork|Gpre[4]~1_combout\) # ((p(2) & \c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => p(3),
	datac => \PrefixNetwork|Gpre[4]~1_combout\,
	datad => \c~2_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X7_Y0_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X10_Y14_N8
\p[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(4) = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => p(4));

-- Location: LCCOMB_X11_Y14_N26
\PrefixNetwork|Ppre[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Ppre[3]~0_combout\ = (\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \PrefixNetwork|Ppre[3]~0_combout\);

-- Location: LCCOMB_X11_Y14_N8
\PrefixNetwork|Gk[1][3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][3]~12_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \PrefixNetwork|Gk[1][3]~12_combout\);

-- Location: LCCOMB_X12_Y14_N4
\PrefixNetwork|Gpre[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(3) = (\PrefixNetwork|Gk[1][3]~12_combout\) # ((\PrefixNetwork|Ppre[3]~0_combout\ & \PrefixNetwork|Gpre[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][3]~12_combout\,
	datac => \PrefixNetwork|Ppre[3]~0_combout\,
	datad => \PrefixNetwork|Gpre[1]~0_combout\,
	combout => \PrefixNetwork|Gpre\(3));

-- Location: LCCOMB_X11_Y15_N24
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = p(4) $ (((\PrefixNetwork|Gpre\(3)) # ((\c~2_combout\ & \PrefixNetwork|Ppre[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~2_combout\,
	datab => p(4),
	datac => \PrefixNetwork|Ppre[3]~0_combout\,
	datad => \PrefixNetwork|Gpre\(3),
	combout => \S~17_combout\);

-- Location: LCCOMB_X7_Y14_N20
\PrefixNetwork|Gk[1][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][4]~14_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\A[3]~input_o\ & \B[3]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & (\A[3]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \PrefixNetwork|Gk[1][4]~14_combout\);

-- Location: LCCOMB_X8_Y14_N12
\PrefixNetwork|Gk[3][8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][8]~13_combout\ = (\B[4]~input_o\ & (!\A[4]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[4]~input_o\,
	combout => \PrefixNetwork|Gk[3][8]~13_combout\);

-- Location: LCCOMB_X7_Y14_N18
\c[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[5]~3_combout\ = (\PrefixNetwork|Gk[1][4]~14_combout\) # ((\PrefixNetwork|Gk[3][8]~13_combout\ & \PrefixNetwork|Gpre[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][4]~14_combout\,
	datac => \PrefixNetwork|Gk[3][8]~13_combout\,
	datad => \PrefixNetwork|Gpre[4]~1_combout\,
	combout => \c[5]~3_combout\);

-- Location: IOIBUF_X9_Y0_N29
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X7_Y14_N8
\c~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~147_combout\ = (\PrefixNetwork|Gk[3][8]~13_combout\ & (\c~2_combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \PrefixNetwork|Gk[3][8]~13_combout\,
	datac => \B[2]~input_o\,
	datad => \c~2_combout\,
	combout => \c~147_combout\);

-- Location: IOIBUF_X0_Y19_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X7_Y14_N6
\S~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~97_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (((\c[5]~3_combout\) # (\c~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~3_combout\,
	datab => \B[5]~input_o\,
	datac => \c~147_combout\,
	datad => \A[5]~input_o\,
	combout => \S~97_combout\);

-- Location: IOIBUF_X0_Y28_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X11_Y14_N22
\p[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(5) = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => p(5));

-- Location: LCCOMB_X11_Y14_N16
\PrefixNetwork|Gk[1][5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][5]~15_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & \A[5]~input_o\)))

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
	combout => \PrefixNetwork|Gk[1][5]~15_combout\);

-- Location: LCCOMB_X11_Y14_N6
\PrefixNetwork|Gk[3][9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][9]~16_combout\ = (!\PrefixNetwork|Gk[1][5]~15_combout\ & (((!p(5)) # (!\PrefixNetwork|Gk[1][3]~12_combout\)) # (!p(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(4),
	datab => \PrefixNetwork|Gk[1][3]~12_combout\,
	datac => p(5),
	datad => \PrefixNetwork|Gk[1][5]~15_combout\,
	combout => \PrefixNetwork|Gk[3][9]~16_combout\);

-- Location: LCCOMB_X11_Y14_N10
\PrefixNetwork|Gk~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~230_combout\ = (p(5) & (\PrefixNetwork|Gk[3][8]~13_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => p(5),
	datad => \PrefixNetwork|Gk[3][8]~13_combout\,
	combout => \PrefixNetwork|Gk~230_combout\);

-- Location: LCCOMB_X11_Y14_N28
\c[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[6]~4_combout\ = ((\PrefixNetwork|Gk~230_combout\ & ((\PrefixNetwork|Gpre[1]~0_combout\) # (\c~2_combout\)))) # (!\PrefixNetwork|Gk[3][9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][9]~16_combout\,
	datab => \PrefixNetwork|Gpre[1]~0_combout\,
	datac => \PrefixNetwork|Gk~230_combout\,
	datad => \c~2_combout\,
	combout => \c[6]~4_combout\);

-- Location: LCCOMB_X14_Y14_N4
\S~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~98_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (\c[6]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \c[6]~4_combout\,
	combout => \S~98_combout\);

-- Location: IOIBUF_X9_Y0_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y17_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X12_Y14_N14
\p[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(7) = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => p(7));

-- Location: LCCOMB_X7_Y14_N0
\p[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(6) = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => p(6));

-- Location: LCCOMB_X11_Y14_N18
\c~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~5_combout\ = (\c~2_combout\ & \PrefixNetwork|Gk~230_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c~2_combout\,
	datad => \PrefixNetwork|Gk~230_combout\,
	combout => \c~5_combout\);

-- Location: LCCOMB_X9_Y15_N14
\PrefixNetwork|Gk~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~231_combout\ = (p(6) & (\PrefixNetwork|Gk[3][8]~13_combout\ & (\A[5]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => p(6),
	datad => \PrefixNetwork|Gk[3][8]~13_combout\,
	combout => \PrefixNetwork|Gk~231_combout\);

-- Location: LCCOMB_X7_Y14_N22
\PrefixNetwork|Gk[1][6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][6]~17_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # ((\B[5]~input_o\ & \A[5]~input_o\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & (\B[5]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \PrefixNetwork|Gk[1][6]~17_combout\);

-- Location: LCCOMB_X7_Y14_N28
\PrefixNetwork|Gpre[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[6]~2_combout\ = (!\PrefixNetwork|Gk[1][6]~17_combout\ & (((!p(5)) # (!p(6))) # (!\PrefixNetwork|Gk[1][4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][6]~17_combout\,
	datab => \PrefixNetwork|Gk[1][4]~14_combout\,
	datac => p(6),
	datad => p(5),
	combout => \PrefixNetwork|Gpre[6]~2_combout\);

-- Location: LCCOMB_X10_Y11_N16
\PrefixNetwork|Gpre[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(6) = ((\PrefixNetwork|Gpre[4]~1_combout\ & \PrefixNetwork|Gk~231_combout\)) # (!\PrefixNetwork|Gpre[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[4]~1_combout\,
	datac => \PrefixNetwork|Gk~231_combout\,
	datad => \PrefixNetwork|Gpre[6]~2_combout\,
	combout => \PrefixNetwork|Gpre\(6));

-- Location: LCCOMB_X10_Y11_N30
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = p(7) $ (((\PrefixNetwork|Gpre\(6)) # ((p(6) & \c~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => p(6),
	datac => \c~5_combout\,
	datad => \PrefixNetwork|Gpre\(6),
	combout => \S~18_combout\);

-- Location: IOIBUF_X14_Y0_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X10_Y14_N26
\PrefixNetwork|Gk[1][7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][7]~19_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\B[6]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \PrefixNetwork|Gk[1][7]~19_combout\);

-- Location: LCCOMB_X12_Y14_N2
\PrefixNetwork|Gpre[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[7]~3_combout\ = (!\PrefixNetwork|Gk[1][7]~19_combout\ & (((!p(6)) # (!p(7))) # (!\PrefixNetwork|Gk[1][5]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][5]~15_combout\,
	datab => p(7),
	datac => \PrefixNetwork|Gk[1][7]~19_combout\,
	datad => p(6),
	combout => \PrefixNetwork|Gpre[7]~3_combout\);

-- Location: LCCOMB_X12_Y14_N0
\PrefixNetwork|Gk~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~18_combout\ = (p(7) & (p(5) & (p(4) & p(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => p(5),
	datac => p(4),
	datad => p(6),
	combout => \PrefixNetwork|Gk~18_combout\);

-- Location: LCCOMB_X12_Y14_N24
\PrefixNetwork|Gpre[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(7) = ((\PrefixNetwork|Gpre\(3) & \PrefixNetwork|Gk~18_combout\)) # (!\PrefixNetwork|Gpre[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gpre[7]~3_combout\,
	datac => \PrefixNetwork|Gpre\(3),
	datad => \PrefixNetwork|Gk~18_combout\,
	combout => \PrefixNetwork|Gpre\(7));

-- Location: IOIBUF_X34_Y0_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X12_Y14_N6
\c~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~6_combout\ = (\PrefixNetwork|Ppre[3]~0_combout\ & (\PrefixNetwork|Gk~18_combout\ & \c~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Ppre[3]~0_combout\,
	datab => \PrefixNetwork|Gk~18_combout\,
	datac => \c~2_combout\,
	combout => \c~6_combout\);

-- Location: LCCOMB_X14_Y14_N2
\S~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~99_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\PrefixNetwork|Gpre\(7)) # (\c~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \PrefixNetwork|Gpre\(7),
	datac => \B[8]~input_o\,
	datad => \c~6_combout\,
	combout => \S~99_combout\);

-- Location: IOIBUF_X0_Y17_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X10_Y14_N12
\p[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(8) = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => p(8));

-- Location: LCCOMB_X8_Y13_N14
\PrefixNetwork|Pk[2][8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][8]~28_combout\ = (p(6) & (p(5) & (p(8) & p(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => p(5),
	datac => p(8),
	datad => p(7),
	combout => \PrefixNetwork|Pk[2][8]~28_combout\);

-- Location: LCCOMB_X8_Y13_N0
\c[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~7_combout\ = (p(1) & ((\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\Cin~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => p(1),
	combout => \c[25]~7_combout\);

-- Location: LCCOMB_X8_Y13_N30
\c[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~8_combout\ = (p(2) & (\PrefixNetwork|Gk[3][8]~13_combout\ & (\PrefixNetwork|Pk[2][8]~28_combout\ & \c[25]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => \PrefixNetwork|Gk[3][8]~13_combout\,
	datac => \PrefixNetwork|Pk[2][8]~28_combout\,
	datad => \c[25]~7_combout\,
	combout => \c[25]~8_combout\);

-- Location: LCCOMB_X10_Y14_N2
\PrefixNetwork|Gk[1][8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][8]~21_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\B[7]~input_o\ & \A[7]~input_o\)))) # (!\B[8]~input_o\ & (\B[7]~input_o\ & (\A[7]~input_o\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \PrefixNetwork|Gk[1][8]~21_combout\);

-- Location: LCCOMB_X7_Y14_N30
\PrefixNetwork|Gk[3][8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][8]~22_combout\ = (!\PrefixNetwork|Gk[1][8]~21_combout\ & (((!p(7)) # (!p(8))) # (!\PrefixNetwork|Gk[1][6]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][6]~17_combout\,
	datab => p(8),
	datac => \PrefixNetwork|Gk[1][8]~21_combout\,
	datad => p(7),
	combout => \PrefixNetwork|Gk[3][8]~22_combout\);

-- Location: LCCOMB_X8_Y13_N28
\PrefixNetwork|Gk[3][8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][8]~20_combout\ = (\PrefixNetwork|Gk[1][4]~14_combout\) # ((\PrefixNetwork|Gk[3][8]~13_combout\ & \PrefixNetwork|Gk[1][2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[3][8]~13_combout\,
	datac => \PrefixNetwork|Gk[1][4]~14_combout\,
	datad => \PrefixNetwork|Gk[1][2]~10_combout\,
	combout => \PrefixNetwork|Gk[3][8]~20_combout\);

-- Location: LCCOMB_X8_Y13_N18
\PrefixNetwork|Gk[3][8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][8]~23_combout\ = ((\PrefixNetwork|Pk[2][8]~28_combout\ & \PrefixNetwork|Gk[3][8]~20_combout\)) # (!\PrefixNetwork|Gk[3][8]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][8]~28_combout\,
	datac => \PrefixNetwork|Gk[3][8]~22_combout\,
	datad => \PrefixNetwork|Gk[3][8]~20_combout\,
	combout => \PrefixNetwork|Gk[3][8]~23_combout\);

-- Location: LCCOMB_X8_Y13_N16
\S~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~100_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (((\c[25]~8_combout\) # (\PrefixNetwork|Gk[3][8]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \c[25]~8_combout\,
	datad => \PrefixNetwork|Gk[3][8]~23_combout\,
	combout => \S~100_combout\);

-- Location: IOIBUF_X0_Y18_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X10_Y14_N20
\p[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(9) = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => p(9));

-- Location: LCCOMB_X10_Y14_N14
\PrefixNetwork|Pk[2][9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][9]~29_combout\ = (p(8) & (p(9) & (p(7) & p(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(8),
	datab => p(9),
	datac => p(7),
	datad => p(6),
	combout => \PrefixNetwork|Pk[2][9]~29_combout\);

-- Location: LCCOMB_X14_Y14_N12
\PrefixNetwork|Gk[1][9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][9]~24_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\A[9]~input_o\ & (\A[8]~input_o\ & (\B[9]~input_o\ & \B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \PrefixNetwork|Gk[1][9]~24_combout\);

-- Location: LCCOMB_X10_Y14_N4
\PrefixNetwork|Gk[3][9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][9]~25_combout\ = (!\PrefixNetwork|Gk[1][9]~24_combout\ & (((!p(8)) # (!p(9))) # (!\PrefixNetwork|Gk[1][7]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][7]~19_combout\,
	datab => p(9),
	datac => \PrefixNetwork|Gk[1][9]~24_combout\,
	datad => p(8),
	combout => \PrefixNetwork|Gk[3][9]~25_combout\);

-- Location: LCCOMB_X11_Y14_N20
\c[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[10]~9_combout\ = (\PrefixNetwork|Gk~230_combout\ & (\PrefixNetwork|Pk[2][9]~29_combout\ & ((\PrefixNetwork|Gpre[1]~0_combout\) # (\c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~230_combout\,
	datab => \PrefixNetwork|Gpre[1]~0_combout\,
	datac => \c~2_combout\,
	datad => \PrefixNetwork|Pk[2][9]~29_combout\,
	combout => \c[10]~9_combout\);

-- Location: LCCOMB_X11_Y14_N30
\c[26]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~10_combout\ = ((\c[10]~9_combout\) # ((\PrefixNetwork|Pk[2][9]~29_combout\ & !\PrefixNetwork|Gk[3][9]~16_combout\))) # (!\PrefixNetwork|Gk[3][9]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][9]~29_combout\,
	datab => \PrefixNetwork|Gk[3][9]~16_combout\,
	datac => \PrefixNetwork|Gk[3][9]~25_combout\,
	datad => \c[10]~9_combout\,
	combout => \c[26]~10_combout\);

-- Location: LCCOMB_X11_Y14_N0
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\ $ (\c[26]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datad => \c[26]~10_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X0_Y16_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X9_Y15_N30
\c~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~11_combout\ = (\B[0]~input_o\ & (!\A[0]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \c~11_combout\);

-- Location: LCCOMB_X9_Y15_N12
\c~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~12_combout\ = (\c~11_combout\ & (\Cin~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \c~11_combout\,
	datad => \Cin~input_o\,
	combout => \c~12_combout\);

-- Location: LCCOMB_X10_Y14_N10
\PrefixNetwork|Gk~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~26_combout\ = (\B[9]~input_o\ & (!\A[9]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \PrefixNetwork|Gk~26_combout\);

-- Location: LCCOMB_X10_Y14_N0
\PrefixNetwork|Pk[2][10]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][10]~83_combout\ = (\PrefixNetwork|Gk~26_combout\ & (p(8) & (\B[7]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \PrefixNetwork|Gk~26_combout\,
	datad => p(8),
	combout => \PrefixNetwork|Pk[2][10]~83_combout\);

-- Location: LCCOMB_X9_Y15_N2
\c[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[11]~13_combout\ = (\PrefixNetwork|Gk~231_combout\ & (\PrefixNetwork|Pk[2][10]~83_combout\ & ((\c~12_combout\) # (\PrefixNetwork|Gpre[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~12_combout\,
	datab => \PrefixNetwork|Gpre[4]~1_combout\,
	datac => \PrefixNetwork|Gk~231_combout\,
	datad => \PrefixNetwork|Pk[2][10]~83_combout\,
	combout => \c[11]~13_combout\);

-- Location: LCCOMB_X10_Y14_N16
\PrefixNetwork|Gk[1][10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][10]~27_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # ((\A[9]~input_o\ & \B[9]~input_o\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & (\A[9]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \PrefixNetwork|Gk[1][10]~27_combout\);

-- Location: LCCOMB_X10_Y14_N6
\PrefixNetwork|Gk[3][10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][10]~28_combout\ = (!\PrefixNetwork|Gk[1][10]~27_combout\ & ((!\PrefixNetwork|Gk[1][8]~21_combout\) # (!\PrefixNetwork|Gk~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~26_combout\,
	datab => \PrefixNetwork|Gk[1][10]~27_combout\,
	datad => \PrefixNetwork|Gk[1][8]~21_combout\,
	combout => \PrefixNetwork|Gk[3][10]~28_combout\);

-- Location: LCCOMB_X9_Y15_N24
\c[27]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~14_combout\ = (\c[11]~13_combout\) # (((\PrefixNetwork|Pk[2][10]~83_combout\ & !\PrefixNetwork|Gpre[6]~2_combout\)) # (!\PrefixNetwork|Gk[3][10]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[11]~13_combout\,
	datab => \PrefixNetwork|Pk[2][10]~83_combout\,
	datac => \PrefixNetwork|Gk[3][10]~28_combout\,
	datad => \PrefixNetwork|Gpre[6]~2_combout\,
	combout => \c[27]~14_combout\);

-- Location: LCCOMB_X9_Y15_N22
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\ $ (\c[27]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \c[27]~14_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X0_Y13_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X11_Y14_N14
\c[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- c(4) = (\PrefixNetwork|Gk[1][3]~12_combout\) # ((\PrefixNetwork|Ppre[3]~0_combout\ & ((\PrefixNetwork|Gpre[1]~0_combout\) # (\c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Ppre[3]~0_combout\,
	datab => \PrefixNetwork|Gk[1][3]~12_combout\,
	datac => \PrefixNetwork|Gpre[1]~0_combout\,
	datad => \c~2_combout\,
	combout => c(4));

-- Location: LCCOMB_X10_Y14_N28
\PrefixNetwork|Gk~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~29_combout\ = (\B[11]~input_o\ & (!\A[11]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \PrefixNetwork|Gk~29_combout\);

-- Location: LCCOMB_X10_Y14_N22
\PrefixNetwork|Pk[2][11]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][11]~84_combout\ = (\PrefixNetwork|Gk~29_combout\ & (p(9) & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \PrefixNetwork|Gk~29_combout\,
	datac => \B[8]~input_o\,
	datad => p(9),
	combout => \PrefixNetwork|Pk[2][11]~84_combout\);

-- Location: LCCOMB_X14_Y14_N10
\PrefixNetwork|Gk[1][11]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][11]~30_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[10]~input_o\ & (\A[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \PrefixNetwork|Gk[1][11]~30_combout\);

-- Location: LCCOMB_X14_Y14_N0
\PrefixNetwork|Gk[3][11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][11]~31_combout\ = (!\PrefixNetwork|Gk[1][11]~30_combout\ & ((!\PrefixNetwork|Gk[1][9]~24_combout\) # (!\PrefixNetwork|Gk~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][11]~30_combout\,
	datab => \PrefixNetwork|Gk~29_combout\,
	datad => \PrefixNetwork|Gk[1][9]~24_combout\,
	combout => \PrefixNetwork|Gk[3][11]~31_combout\);

-- Location: LCCOMB_X12_Y10_N16
\PrefixNetwork|Gk[3][11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][11]~32_combout\ = ((\PrefixNetwork|Pk[2][11]~84_combout\ & !\PrefixNetwork|Gpre[7]~3_combout\)) # (!\PrefixNetwork|Gk[3][11]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][11]~84_combout\,
	datac => \PrefixNetwork|Gpre[7]~3_combout\,
	datad => \PrefixNetwork|Gk[3][11]~31_combout\,
	combout => \PrefixNetwork|Gk[3][11]~32_combout\);

-- Location: LCCOMB_X12_Y10_N18
\c[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[28]~15_combout\ = (\PrefixNetwork|Gk[3][11]~32_combout\) # ((c(4) & (\PrefixNetwork|Gk~18_combout\ & \PrefixNetwork|Pk[2][11]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(4),
	datab => \PrefixNetwork|Gk~18_combout\,
	datac => \PrefixNetwork|Pk[2][11]~84_combout\,
	datad => \PrefixNetwork|Gk[3][11]~32_combout\,
	combout => \c[28]~15_combout\);

-- Location: LCCOMB_X12_Y10_N4
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (\c[28]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \c[28]~15_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X9_Y0_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X9_Y14_N12
\PrefixNetwork|Gk~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~33_combout\ = (\A[11]~input_o\ & (!\B[11]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \PrefixNetwork|Gk~33_combout\);

-- Location: LCCOMB_X7_Y14_N16
\PrefixNetwork|Pk[2][12]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][12]~30_combout\ = (\PrefixNetwork|Gk~26_combout\ & \PrefixNetwork|Gk~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk~26_combout\,
	datad => \PrefixNetwork|Gk~33_combout\,
	combout => \PrefixNetwork|Pk[2][12]~30_combout\);

-- Location: LCCOMB_X7_Y14_N14
\c[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[13]~16_combout\ = (\PrefixNetwork|Pk[2][8]~28_combout\ & (\PrefixNetwork|Pk[2][12]~30_combout\ & ((\c~147_combout\) # (\c[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][8]~28_combout\,
	datab => \PrefixNetwork|Pk[2][12]~30_combout\,
	datac => \c~147_combout\,
	datad => \c[5]~3_combout\,
	combout => \c[13]~16_combout\);

-- Location: LCCOMB_X9_Y14_N18
\PrefixNetwork|Gk[1][12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][12]~34_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # ((\A[11]~input_o\ & \B[11]~input_o\)))) # (!\A[12]~input_o\ & (\A[11]~input_o\ & (\B[12]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \B[11]~input_o\,
	combout => \PrefixNetwork|Gk[1][12]~34_combout\);

-- Location: LCCOMB_X9_Y14_N28
\PrefixNetwork|Gk[3][12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][12]~35_combout\ = (!\PrefixNetwork|Gk[1][12]~34_combout\ & ((!\PrefixNetwork|Gk~33_combout\) # (!\PrefixNetwork|Gk[1][10]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][12]~34_combout\,
	datac => \PrefixNetwork|Gk[1][10]~27_combout\,
	datad => \PrefixNetwork|Gk~33_combout\,
	combout => \PrefixNetwork|Gk[3][12]~35_combout\);

-- Location: LCCOMB_X7_Y14_N12
\PrefixNetwork|Gk[3][12]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][12]~232_combout\ = ((\PrefixNetwork|Gk~33_combout\ & (\PrefixNetwork|Gk~26_combout\ & !\PrefixNetwork|Gk[3][8]~22_combout\))) # (!\PrefixNetwork|Gk[3][12]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~33_combout\,
	datab => \PrefixNetwork|Gk~26_combout\,
	datac => \PrefixNetwork|Gk[3][8]~22_combout\,
	datad => \PrefixNetwork|Gk[3][12]~35_combout\,
	combout => \PrefixNetwork|Gk[3][12]~232_combout\);

-- Location: LCCOMB_X7_Y14_N24
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \B[13]~input_o\ $ (\A[13]~input_o\ $ (((\c[13]~16_combout\) # (\PrefixNetwork|Gk[3][12]~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \c[13]~16_combout\,
	datad => \PrefixNetwork|Gk[3][12]~232_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X0_Y34_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X11_Y11_N0
\PrefixNetwork|Gk~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~36_combout\ = (\A[13]~input_o\ & (!\B[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \PrefixNetwork|Gk~36_combout\);

-- Location: LCCOMB_X14_Y14_N18
\PrefixNetwork|Gk[1][13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][13]~37_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[12]~input_o\ & (\B[12]~input_o\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[13]~input_o\,
	combout => \PrefixNetwork|Gk[1][13]~37_combout\);

-- Location: LCCOMB_X14_Y14_N28
\PrefixNetwork|Gk[3][13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][13]~38_combout\ = (!\PrefixNetwork|Gk[1][13]~37_combout\ & ((!\PrefixNetwork|Gk~36_combout\) # (!\PrefixNetwork|Gk[1][11]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][11]~30_combout\,
	datac => \PrefixNetwork|Gk~36_combout\,
	datad => \PrefixNetwork|Gk[1][13]~37_combout\,
	combout => \PrefixNetwork|Gk[3][13]~38_combout\);

-- Location: LCCOMB_X15_Y13_N20
\PrefixNetwork|Gk[3][13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][13]~39_combout\ = ((\PrefixNetwork|Gk~36_combout\ & (\PrefixNetwork|Gk~29_combout\ & !\PrefixNetwork|Gk[3][9]~25_combout\))) # (!\PrefixNetwork|Gk[3][13]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~36_combout\,
	datab => \PrefixNetwork|Gk~29_combout\,
	datac => \PrefixNetwork|Gk[3][13]~38_combout\,
	datad => \PrefixNetwork|Gk[3][9]~25_combout\,
	combout => \PrefixNetwork|Gk[3][13]~39_combout\);

-- Location: LCCOMB_X15_Y12_N28
\c[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[14]~17_combout\ = (\PrefixNetwork|Gk~36_combout\ & (\PrefixNetwork|Gk~29_combout\ & (\PrefixNetwork|Pk[2][9]~29_combout\ & \c[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~36_combout\,
	datab => \PrefixNetwork|Gk~29_combout\,
	datac => \PrefixNetwork|Pk[2][9]~29_combout\,
	datad => \c[6]~4_combout\,
	combout => \c[14]~17_combout\);

-- Location: IOIBUF_X18_Y0_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X15_Y13_N26
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \B[14]~input_o\ $ (\A[14]~input_o\ $ (((\PrefixNetwork|Gk[3][13]~39_combout\) # (\c[14]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \PrefixNetwork|Gk[3][13]~39_combout\,
	datac => \c[14]~17_combout\,
	datad => \A[14]~input_o\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X0_Y18_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X9_Y14_N6
\PrefixNetwork|Gk~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~40_combout\ = (\A[13]~input_o\ & (!\B[13]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \PrefixNetwork|Gk~40_combout\);

-- Location: LCCOMB_X10_Y14_N18
\PrefixNetwork|Gpre[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[30]~4_combout\ = (\PrefixNetwork|Gk~33_combout\ & (\PrefixNetwork|Gk~40_combout\ & \PrefixNetwork|Pk[2][10]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~33_combout\,
	datac => \PrefixNetwork|Gk~40_combout\,
	datad => \PrefixNetwork|Pk[2][10]~83_combout\,
	combout => \PrefixNetwork|Gpre[30]~4_combout\);

-- Location: LCCOMB_X9_Y14_N8
\PrefixNetwork|Gk[1][14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][14]~41_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\) # ((\A[13]~input_o\ & \B[13]~input_o\)))) # (!\B[14]~input_o\ & (\A[13]~input_o\ & (\B[13]~input_o\ & \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \PrefixNetwork|Gk[1][14]~41_combout\);

-- Location: LCCOMB_X9_Y14_N22
\PrefixNetwork|Gk[3][14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][14]~42_combout\ = (!\PrefixNetwork|Gk[1][14]~41_combout\ & ((!\PrefixNetwork|Gk~40_combout\) # (!\PrefixNetwork|Gk[1][12]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][12]~34_combout\,
	datac => \PrefixNetwork|Gk[1][14]~41_combout\,
	datad => \PrefixNetwork|Gk~40_combout\,
	combout => \PrefixNetwork|Gk[3][14]~42_combout\);

-- Location: LCCOMB_X9_Y14_N0
\PrefixNetwork|Gk[3][14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][14]~43_combout\ = ((\PrefixNetwork|Gk~40_combout\ & (\PrefixNetwork|Gk~33_combout\ & !\PrefixNetwork|Gk[3][10]~28_combout\))) # (!\PrefixNetwork|Gk[3][14]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~40_combout\,
	datab => \PrefixNetwork|Gk~33_combout\,
	datac => \PrefixNetwork|Gk[3][14]~42_combout\,
	datad => \PrefixNetwork|Gk[3][10]~28_combout\,
	combout => \PrefixNetwork|Gk[3][14]~43_combout\);

-- Location: LCCOMB_X10_Y11_N0
\c[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- c(7) = (\PrefixNetwork|Gpre\(6)) # ((\c~2_combout\ & (p(6) & \PrefixNetwork|Gk~230_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~2_combout\,
	datab => p(6),
	datac => \PrefixNetwork|Gk~230_combout\,
	datad => \PrefixNetwork|Gpre\(6),
	combout => c(7));

-- Location: LCCOMB_X10_Y11_N6
\c[39]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[39]~18_combout\ = (\PrefixNetwork|Gk[3][14]~43_combout\) # ((\PrefixNetwork|Gpre[30]~4_combout\ & c(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[30]~4_combout\,
	datac => \PrefixNetwork|Gk[3][14]~43_combout\,
	datad => c(7),
	combout => \c[39]~18_combout\);

-- Location: LCCOMB_X14_Y14_N14
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (\c[39]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datad => \c[39]~18_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X0_Y34_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X14_Y14_N24
\PrefixNetwork|Gk~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~44_combout\ = (\B[15]~input_o\ & (!\A[15]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[14]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \PrefixNetwork|Gk~44_combout\);

-- Location: LCCOMB_X14_Y14_N26
\PrefixNetwork|Gk[1][15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][15]~45_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\A[14]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \PrefixNetwork|Gk[1][15]~45_combout\);

-- Location: LCCOMB_X14_Y14_N16
\PrefixNetwork|Gk[3][15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][15]~46_combout\ = (!\PrefixNetwork|Gk[1][15]~45_combout\ & ((!\PrefixNetwork|Gk~44_combout\) # (!\PrefixNetwork|Gk[1][13]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][13]~37_combout\,
	datac => \PrefixNetwork|Gk[1][15]~45_combout\,
	datad => \PrefixNetwork|Gk~44_combout\,
	combout => \PrefixNetwork|Gk[3][15]~46_combout\);

-- Location: LCCOMB_X14_Y14_N22
\PrefixNetwork|Gk[3][15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][15]~47_combout\ = ((\PrefixNetwork|Gk~44_combout\ & (!\PrefixNetwork|Gk[3][11]~31_combout\ & \PrefixNetwork|Gk~36_combout\))) # (!\PrefixNetwork|Gk[3][15]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~44_combout\,
	datab => \PrefixNetwork|Gk[3][11]~31_combout\,
	datac => \PrefixNetwork|Gk~36_combout\,
	datad => \PrefixNetwork|Gk[3][15]~46_combout\,
	combout => \PrefixNetwork|Gk[3][15]~47_combout\);

-- Location: LCCOMB_X11_Y11_N14
\c~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~19_combout\ = (\PrefixNetwork|Gk~36_combout\ & (\PrefixNetwork|Pk[2][11]~84_combout\ & \PrefixNetwork|Gk~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~36_combout\,
	datac => \PrefixNetwork|Pk[2][11]~84_combout\,
	datad => \PrefixNetwork|Gk~44_combout\,
	combout => \c~19_combout\);

-- Location: LCCOMB_X12_Y13_N24
\c[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[16]~20_combout\ = (\PrefixNetwork|Gk[3][15]~47_combout\) # ((\c~19_combout\ & ((\c~6_combout\) # (\PrefixNetwork|Gpre\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][15]~47_combout\,
	datab => \c~6_combout\,
	datac => \PrefixNetwork|Gpre\(7),
	datad => \c~19_combout\,
	combout => \c[16]~20_combout\);

-- Location: LCCOMB_X12_Y13_N26
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \B[16]~input_o\ $ (\A[16]~input_o\ $ (\c[16]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[16]~input_o\,
	datac => \A[16]~input_o\,
	datad => \c[16]~20_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X27_Y0_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X9_Y14_N10
\PrefixNetwork|Gk~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~48_combout\ = (\B[15]~input_o\ & (!\A[15]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \PrefixNetwork|Gk~48_combout\);

-- Location: LCCOMB_X9_Y14_N24
\PrefixNetwork|Gk~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~52_combout\ = (\PrefixNetwork|Gk~48_combout\ & (\PrefixNetwork|Gk~33_combout\ & (\PrefixNetwork|Gk~26_combout\ & \PrefixNetwork|Gk~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~48_combout\,
	datab => \PrefixNetwork|Gk~33_combout\,
	datac => \PrefixNetwork|Gk~26_combout\,
	datad => \PrefixNetwork|Gk~40_combout\,
	combout => \PrefixNetwork|Gk~52_combout\);

-- Location: LCCOMB_X7_Y14_N10
\PrefixNetwork|Gk[1][16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][16]~49_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # ((\B[15]~input_o\ & \A[15]~input_o\)))) # (!\A[16]~input_o\ & (\B[15]~input_o\ & (\A[15]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \PrefixNetwork|Gk[1][16]~49_combout\);

-- Location: LCCOMB_X9_Y14_N16
\PrefixNetwork|Gk[3][16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][16]~50_combout\ = (!\PrefixNetwork|Gk[1][16]~49_combout\ & ((!\PrefixNetwork|Gk~48_combout\) # (!\PrefixNetwork|Gk[1][14]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][14]~41_combout\,
	datac => \PrefixNetwork|Gk[1][16]~49_combout\,
	datad => \PrefixNetwork|Gk~48_combout\,
	combout => \PrefixNetwork|Gk[3][16]~50_combout\);

-- Location: LCCOMB_X9_Y14_N30
\PrefixNetwork|Gk[3][16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][16]~51_combout\ = ((\PrefixNetwork|Gk~48_combout\ & (!\PrefixNetwork|Gk[3][12]~35_combout\ & \PrefixNetwork|Gk~40_combout\))) # (!\PrefixNetwork|Gk[3][16]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~48_combout\,
	datab => \PrefixNetwork|Gk[3][12]~35_combout\,
	datac => \PrefixNetwork|Gk~40_combout\,
	datad => \PrefixNetwork|Gk[3][16]~50_combout\,
	combout => \PrefixNetwork|Gk[3][16]~51_combout\);

-- Location: LCCOMB_X7_Y13_N8
\c[17]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[17]~21_combout\ = (\PrefixNetwork|Gk[3][16]~51_combout\) # ((\PrefixNetwork|Gk~52_combout\ & ((\c[25]~8_combout\) # (\PrefixNetwork|Gk[3][8]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~52_combout\,
	datab => \PrefixNetwork|Gk[3][16]~51_combout\,
	datac => \c[25]~8_combout\,
	datad => \PrefixNetwork|Gk[3][8]~23_combout\,
	combout => \c[17]~21_combout\);

-- Location: LCCOMB_X7_Y13_N18
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\ $ (\c[17]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \c[17]~21_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X0_Y30_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X14_Y14_N20
\PrefixNetwork|Gk~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~53_combout\ = (\B[17]~input_o\ & (!\A[17]~input_o\ & (\A[16]~input_o\ $ (\B[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & (\A[16]~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \PrefixNetwork|Gk~53_combout\);

-- Location: LCCOMB_X10_Y14_N24
\PrefixNetwork|Gk~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~57_combout\ = (\PrefixNetwork|Gk~36_combout\ & (\PrefixNetwork|Gk~29_combout\ & (\PrefixNetwork|Gk~53_combout\ & \PrefixNetwork|Gk~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~36_combout\,
	datab => \PrefixNetwork|Gk~29_combout\,
	datac => \PrefixNetwork|Gk~53_combout\,
	datad => \PrefixNetwork|Gk~44_combout\,
	combout => \PrefixNetwork|Gk~57_combout\);

-- Location: LCCOMB_X14_Y14_N6
\PrefixNetwork|Gk[1][17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][17]~54_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & (\A[16]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \PrefixNetwork|Gk[1][17]~54_combout\);

-- Location: LCCOMB_X14_Y14_N8
\PrefixNetwork|Gk[3][17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][17]~55_combout\ = (!\PrefixNetwork|Gk[1][17]~54_combout\ & ((!\PrefixNetwork|Gk[1][15]~45_combout\) # (!\PrefixNetwork|Gk~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~53_combout\,
	datac => \PrefixNetwork|Gk[1][15]~45_combout\,
	datad => \PrefixNetwork|Gk[1][17]~54_combout\,
	combout => \PrefixNetwork|Gk[3][17]~55_combout\);

-- Location: LCCOMB_X14_Y14_N30
\PrefixNetwork|Gk[3][17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][17]~56_combout\ = ((\PrefixNetwork|Gk~44_combout\ & (\PrefixNetwork|Gk~53_combout\ & !\PrefixNetwork|Gk[3][13]~38_combout\))) # (!\PrefixNetwork|Gk[3][17]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~44_combout\,
	datab => \PrefixNetwork|Gk~53_combout\,
	datac => \PrefixNetwork|Gk[3][17]~55_combout\,
	datad => \PrefixNetwork|Gk[3][13]~38_combout\,
	combout => \PrefixNetwork|Gk[3][17]~56_combout\);

-- Location: LCCOMB_X10_Y14_N30
\PrefixNetwork|Gk~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~58_combout\ = (\PrefixNetwork|Gk~57_combout\ & (((!\PrefixNetwork|Gk[3][9]~16_combout\ & \PrefixNetwork|Pk[2][9]~29_combout\)) # (!\PrefixNetwork|Gk[3][9]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][9]~16_combout\,
	datab => \PrefixNetwork|Pk[2][9]~29_combout\,
	datac => \PrefixNetwork|Gk[3][9]~25_combout\,
	datad => \PrefixNetwork|Gk~57_combout\,
	combout => \PrefixNetwork|Gk~58_combout\);

-- Location: LCCOMB_X15_Y14_N28
\c[18]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[18]~22_combout\ = (\PrefixNetwork|Gk[3][17]~56_combout\) # ((\PrefixNetwork|Gk~58_combout\) # ((\PrefixNetwork|Gk~57_combout\ & \c[10]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~57_combout\,
	datab => \PrefixNetwork|Gk[3][17]~56_combout\,
	datac => \c[10]~9_combout\,
	datad => \PrefixNetwork|Gk~58_combout\,
	combout => \c[18]~22_combout\);

-- Location: LCCOMB_X15_Y14_N18
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\ $ (\c[18]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	datad => \c[18]~22_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X1_Y0_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X8_Y14_N14
\PrefixNetwork|Gk~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~59_combout\ = (\A[17]~input_o\ & (!\B[17]~input_o\ & (\A[18]~input_o\ $ (\B[18]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & (\A[18]~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \B[17]~input_o\,
	combout => \PrefixNetwork|Gk~59_combout\);

-- Location: LCCOMB_X8_Y14_N8
\PrefixNetwork|Gk[1][18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][18]~60_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # ((\A[17]~input_o\ & \B[17]~input_o\)))) # (!\A[18]~input_o\ & (\A[17]~input_o\ & (\B[18]~input_o\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \B[17]~input_o\,
	combout => \PrefixNetwork|Gk[1][18]~60_combout\);

-- Location: LCCOMB_X8_Y14_N26
\PrefixNetwork|Gk[3][18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][18]~61_combout\ = (!\PrefixNetwork|Gk[1][18]~60_combout\ & ((!\PrefixNetwork|Gk[1][16]~49_combout\) # (!\PrefixNetwork|Gk~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~59_combout\,
	datac => \PrefixNetwork|Gk[1][18]~60_combout\,
	datad => \PrefixNetwork|Gk[1][16]~49_combout\,
	combout => \PrefixNetwork|Gk[3][18]~61_combout\);

-- Location: LCCOMB_X8_Y14_N16
\PrefixNetwork|Gk[3][18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][18]~62_combout\ = ((\PrefixNetwork|Gk~59_combout\ & (\PrefixNetwork|Gk~48_combout\ & !\PrefixNetwork|Gk[3][14]~42_combout\))) # (!\PrefixNetwork|Gk[3][18]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][18]~61_combout\,
	datab => \PrefixNetwork|Gk~59_combout\,
	datac => \PrefixNetwork|Gk~48_combout\,
	datad => \PrefixNetwork|Gk[3][14]~42_combout\,
	combout => \PrefixNetwork|Gk[3][18]~62_combout\);

-- Location: LCCOMB_X9_Y14_N26
\PrefixNetwork|Gk~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~63_combout\ = (\PrefixNetwork|Gk~48_combout\ & (\PrefixNetwork|Gk~33_combout\ & (\PrefixNetwork|Gk~59_combout\ & \PrefixNetwork|Gk~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~48_combout\,
	datab => \PrefixNetwork|Gk~33_combout\,
	datac => \PrefixNetwork|Gk~59_combout\,
	datad => \PrefixNetwork|Gk~40_combout\,
	combout => \PrefixNetwork|Gk~63_combout\);

-- Location: LCCOMB_X8_Y12_N8
\PrefixNetwork|Gk~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~64_combout\ = (\PrefixNetwork|Gk~63_combout\ & (((!\PrefixNetwork|Gpre[6]~2_combout\ & \PrefixNetwork|Pk[2][10]~83_combout\)) # (!\PrefixNetwork|Gk[3][10]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[6]~2_combout\,
	datab => \PrefixNetwork|Pk[2][10]~83_combout\,
	datac => \PrefixNetwork|Gk[3][10]~28_combout\,
	datad => \PrefixNetwork|Gk~63_combout\,
	combout => \PrefixNetwork|Gk~64_combout\);

-- Location: LCCOMB_X8_Y12_N18
\c[19]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[19]~23_combout\ = (\PrefixNetwork|Gk[3][18]~62_combout\) # ((\PrefixNetwork|Gk~64_combout\) # ((\PrefixNetwork|Gk~63_combout\ & \c[11]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][18]~62_combout\,
	datab => \PrefixNetwork|Gk~63_combout\,
	datac => \PrefixNetwork|Gk~64_combout\,
	datad => \c[11]~13_combout\,
	combout => \c[19]~23_combout\);

-- Location: LCCOMB_X8_Y12_N20
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (\c[19]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datad => \c[19]~23_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X16_Y0_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X15_Y14_N0
\PrefixNetwork|Gk~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~65_combout\ = (\A[19]~input_o\ & (!\B[19]~input_o\ & (\A[18]~input_o\ $ (\B[18]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & (\A[18]~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \B[19]~input_o\,
	combout => \PrefixNetwork|Gk~65_combout\);

-- Location: LCCOMB_X12_Y14_N12
\PrefixNetwork|Gk~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~66_combout\ = (\PrefixNetwork|Gk~44_combout\ & (\PrefixNetwork|Gk~36_combout\ & (\PrefixNetwork|Gk~65_combout\ & \PrefixNetwork|Gk~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~44_combout\,
	datab => \PrefixNetwork|Gk~36_combout\,
	datac => \PrefixNetwork|Gk~65_combout\,
	datad => \PrefixNetwork|Gk~53_combout\,
	combout => \PrefixNetwork|Gk~66_combout\);

-- Location: LCCOMB_X15_Y14_N6
\PrefixNetwork|Gk[1][19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][19]~67_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[18]~input_o\ & (\B[18]~input_o\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \A[19]~input_o\,
	combout => \PrefixNetwork|Gk[1][19]~67_combout\);

-- Location: LCCOMB_X15_Y14_N24
\PrefixNetwork|Gk[3][19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][19]~68_combout\ = (!\PrefixNetwork|Gk[1][19]~67_combout\ & ((!\PrefixNetwork|Gk[1][17]~54_combout\) # (!\PrefixNetwork|Gk~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][19]~67_combout\,
	datab => \PrefixNetwork|Gk~65_combout\,
	datac => \PrefixNetwork|Gk[1][17]~54_combout\,
	combout => \PrefixNetwork|Gk[3][19]~68_combout\);

-- Location: LCCOMB_X15_Y14_N14
\PrefixNetwork|Gk[3][19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][19]~69_combout\ = ((\PrefixNetwork|Gk~53_combout\ & (\PrefixNetwork|Gk~65_combout\ & !\PrefixNetwork|Gk[3][15]~46_combout\))) # (!\PrefixNetwork|Gk[3][19]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~53_combout\,
	datab => \PrefixNetwork|Gk~65_combout\,
	datac => \PrefixNetwork|Gk[3][15]~46_combout\,
	datad => \PrefixNetwork|Gk[3][19]~68_combout\,
	combout => \PrefixNetwork|Gk[3][19]~69_combout\);

-- Location: LCCOMB_X12_Y10_N10
\c[36]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[36]~24_combout\ = (c(4) & (\PrefixNetwork|Gk~18_combout\ & (\PrefixNetwork|Pk[2][11]~84_combout\ & \PrefixNetwork|Gk~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(4),
	datab => \PrefixNetwork|Gk~18_combout\,
	datac => \PrefixNetwork|Pk[2][11]~84_combout\,
	datad => \PrefixNetwork|Gk~66_combout\,
	combout => \c[36]~24_combout\);

-- Location: LCCOMB_X12_Y10_N24
\c[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[20]~25_combout\ = (\PrefixNetwork|Gk[3][19]~69_combout\) # ((\c[36]~24_combout\) # ((\PrefixNetwork|Gk~66_combout\ & \PrefixNetwork|Gk[3][11]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~66_combout\,
	datab => \PrefixNetwork|Gk[3][11]~32_combout\,
	datac => \PrefixNetwork|Gk[3][19]~69_combout\,
	datad => \c[36]~24_combout\,
	combout => \c[20]~25_combout\);

-- Location: LCCOMB_X12_Y10_N14
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \B[20]~input_o\ $ (\A[20]~input_o\ $ (\c[20]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \c[20]~25_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X14_Y0_N29
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X8_Y14_N2
\PrefixNetwork|Gk~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~70_combout\ = (\A[19]~input_o\ & (!\B[19]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \PrefixNetwork|Gk~70_combout\);

-- Location: LCCOMB_X8_Y11_N26
\PrefixNetwork|Gk~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~74_combout\ = (\PrefixNetwork|Gk~40_combout\ & (\PrefixNetwork|Gk~70_combout\ & (\PrefixNetwork|Gk~48_combout\ & \PrefixNetwork|Gk~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~40_combout\,
	datab => \PrefixNetwork|Gk~70_combout\,
	datac => \PrefixNetwork|Gk~48_combout\,
	datad => \PrefixNetwork|Gk~59_combout\,
	combout => \PrefixNetwork|Gk~74_combout\);

-- Location: LCCOMB_X8_Y14_N4
\PrefixNetwork|Gk[1][20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][20]~71_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # ((\A[19]~input_o\ & \B[19]~input_o\)))) # (!\A[20]~input_o\ & (\A[19]~input_o\ & (\B[19]~input_o\ & \B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \PrefixNetwork|Gk[1][20]~71_combout\);

-- Location: LCCOMB_X8_Y14_N30
\PrefixNetwork|Gk[3][20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][20]~72_combout\ = (!\PrefixNetwork|Gk[1][20]~71_combout\ & ((!\PrefixNetwork|Gk~70_combout\) # (!\PrefixNetwork|Gk[1][18]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][18]~60_combout\,
	datac => \PrefixNetwork|Gk[1][20]~71_combout\,
	datad => \PrefixNetwork|Gk~70_combout\,
	combout => \PrefixNetwork|Gk[3][20]~72_combout\);

-- Location: LCCOMB_X9_Y14_N4
\PrefixNetwork|Gk[3][20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][20]~73_combout\ = ((\PrefixNetwork|Gk~70_combout\ & (\PrefixNetwork|Gk~59_combout\ & !\PrefixNetwork|Gk[3][16]~50_combout\))) # (!\PrefixNetwork|Gk[3][20]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~70_combout\,
	datab => \PrefixNetwork|Gk[3][20]~72_combout\,
	datac => \PrefixNetwork|Gk~59_combout\,
	datad => \PrefixNetwork|Gk[3][16]~50_combout\,
	combout => \PrefixNetwork|Gk[3][20]~73_combout\);

-- Location: LCCOMB_X7_Y14_N4
\c[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[21]~26_combout\ = (\PrefixNetwork|Pk[2][8]~28_combout\ & ((\c[5]~3_combout\) # (\c~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[5]~3_combout\,
	datac => \c~147_combout\,
	datad => \PrefixNetwork|Pk[2][8]~28_combout\,
	combout => \c[21]~26_combout\);

-- Location: LCCOMB_X8_Y11_N28
\c[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[21]~27_combout\ = (\PrefixNetwork|Gk~59_combout\ & (\PrefixNetwork|Gk~70_combout\ & (\c[21]~26_combout\ & \PrefixNetwork|Gk~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~59_combout\,
	datab => \PrefixNetwork|Gk~70_combout\,
	datac => \c[21]~26_combout\,
	datad => \PrefixNetwork|Gk~52_combout\,
	combout => \c[21]~27_combout\);

-- Location: LCCOMB_X8_Y11_N16
\c[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[21]~28_combout\ = (\PrefixNetwork|Gk[3][20]~73_combout\) # ((\c[21]~27_combout\) # ((\PrefixNetwork|Gk~74_combout\ & \PrefixNetwork|Gk[3][12]~232_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~74_combout\,
	datab => \PrefixNetwork|Gk[3][20]~73_combout\,
	datac => \PrefixNetwork|Gk[3][12]~232_combout\,
	datad => \c[21]~27_combout\,
	combout => \c[21]~28_combout\);

-- Location: LCCOMB_X8_Y11_N14
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\ $ (\c[21]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \c[21]~28_combout\,
	combout => \S~30_combout\);

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

-- Location: LCCOMB_X15_Y14_N4
\PrefixNetwork|Gk~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~75_combout\ = (\B[21]~input_o\ & (!\A[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[21]~input_o\,
	combout => \PrefixNetwork|Gk~75_combout\);

-- Location: LCCOMB_X15_Y14_N22
\PrefixNetwork|Gk[1][21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][21]~76_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[21]~input_o\,
	combout => \PrefixNetwork|Gk[1][21]~76_combout\);

-- Location: LCCOMB_X15_Y14_N20
\PrefixNetwork|Gk[3][21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][21]~77_combout\ = (!\PrefixNetwork|Gk[1][21]~76_combout\ & ((!\PrefixNetwork|Gk[1][19]~67_combout\) # (!\PrefixNetwork|Gk~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][21]~76_combout\,
	datac => \PrefixNetwork|Gk~75_combout\,
	datad => \PrefixNetwork|Gk[1][19]~67_combout\,
	combout => \PrefixNetwork|Gk[3][21]~77_combout\);

-- Location: LCCOMB_X15_Y14_N30
\PrefixNetwork|Gk[3][21]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][21]~78_combout\ = ((!\PrefixNetwork|Gk[3][17]~55_combout\ & (\PrefixNetwork|Gk~75_combout\ & \PrefixNetwork|Gk~65_combout\))) # (!\PrefixNetwork|Gk[3][21]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][17]~55_combout\,
	datab => \PrefixNetwork|Gk~75_combout\,
	datac => \PrefixNetwork|Gk[3][21]~77_combout\,
	datad => \PrefixNetwork|Gk~65_combout\,
	combout => \PrefixNetwork|Gk[3][21]~78_combout\);

-- Location: LCCOMB_X15_Y12_N26
\PrefixNetwork|Gk~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~79_combout\ = (\PrefixNetwork|Gk~53_combout\ & (\PrefixNetwork|Gk~75_combout\ & (\PrefixNetwork|Gk~44_combout\ & \PrefixNetwork|Gk~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~53_combout\,
	datab => \PrefixNetwork|Gk~75_combout\,
	datac => \PrefixNetwork|Gk~44_combout\,
	datad => \PrefixNetwork|Gk~65_combout\,
	combout => \PrefixNetwork|Gk~79_combout\);

-- Location: LCCOMB_X15_Y13_N28
\c[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[22]~29_combout\ = (\PrefixNetwork|Pk[2][9]~29_combout\ & \c[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Pk[2][9]~29_combout\,
	datad => \c[6]~4_combout\,
	combout => \c[22]~29_combout\);

-- Location: LCCOMB_X15_Y13_N10
\c[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[22]~30_combout\ = (\PrefixNetwork|Gk~65_combout\ & (\PrefixNetwork|Gk~75_combout\ & (\PrefixNetwork|Gk~57_combout\ & \c[22]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~65_combout\,
	datab => \PrefixNetwork|Gk~75_combout\,
	datac => \PrefixNetwork|Gk~57_combout\,
	datad => \c[22]~29_combout\,
	combout => \c[22]~30_combout\);

-- Location: LCCOMB_X15_Y13_N16
\c[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[22]~31_combout\ = (\PrefixNetwork|Gk[3][21]~78_combout\) # ((\c[22]~30_combout\) # ((\PrefixNetwork|Gk[3][13]~39_combout\ & \PrefixNetwork|Gk~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][21]~78_combout\,
	datab => \PrefixNetwork|Gk[3][13]~39_combout\,
	datac => \PrefixNetwork|Gk~79_combout\,
	datad => \c[22]~30_combout\,
	combout => \c[22]~31_combout\);

-- Location: LCCOMB_X15_Y13_N6
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\ $ (\c[22]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \c[22]~31_combout\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X0_Y15_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X0_Y20_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X8_Y14_N0
\PrefixNetwork|Gk~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~80_combout\ = (\A[22]~input_o\ & (!\B[22]~input_o\ & (\B[21]~input_o\ $ (\A[21]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & (\B[21]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[22]~input_o\,
	combout => \PrefixNetwork|Gk~80_combout\);

-- Location: LCCOMB_X10_Y15_N6
\PrefixNetwork|Gk~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~84_combout\ = (\PrefixNetwork|Gk~48_combout\ & (\PrefixNetwork|Gk~80_combout\ & (\PrefixNetwork|Gk~70_combout\ & \PrefixNetwork|Gk~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~48_combout\,
	datab => \PrefixNetwork|Gk~80_combout\,
	datac => \PrefixNetwork|Gk~70_combout\,
	datad => \PrefixNetwork|Gk~59_combout\,
	combout => \PrefixNetwork|Gk~84_combout\);

-- Location: LCCOMB_X8_Y14_N6
\PrefixNetwork|Gk[1][22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][22]~81_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # ((\A[21]~input_o\ & \B[21]~input_o\)))) # (!\A[22]~input_o\ & (\A[21]~input_o\ & (\B[21]~input_o\ & \B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \PrefixNetwork|Gk[1][22]~81_combout\);

-- Location: LCCOMB_X8_Y14_N28
\PrefixNetwork|Gk[3][22]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][22]~82_combout\ = (!\PrefixNetwork|Gk[1][22]~81_combout\ & ((!\PrefixNetwork|Gk~80_combout\) # (!\PrefixNetwork|Gk[1][20]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][22]~81_combout\,
	datac => \PrefixNetwork|Gk[1][20]~71_combout\,
	datad => \PrefixNetwork|Gk~80_combout\,
	combout => \PrefixNetwork|Gk[3][22]~82_combout\);

-- Location: LCCOMB_X8_Y14_N18
\PrefixNetwork|Gk[3][22]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][22]~83_combout\ = ((\PrefixNetwork|Gk~80_combout\ & (\PrefixNetwork|Gk~70_combout\ & !\PrefixNetwork|Gk[3][18]~61_combout\))) # (!\PrefixNetwork|Gk[3][22]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~80_combout\,
	datab => \PrefixNetwork|Gk~70_combout\,
	datac => \PrefixNetwork|Gk[3][18]~61_combout\,
	datad => \PrefixNetwork|Gk[3][22]~82_combout\,
	combout => \PrefixNetwork|Gk[3][22]~83_combout\);

-- Location: LCCOMB_X8_Y14_N24
\PrefixNetwork|Pk[2][22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][22]~31_combout\ = (\PrefixNetwork|Gk~70_combout\ & \PrefixNetwork|Gk~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~70_combout\,
	datad => \PrefixNetwork|Gk~80_combout\,
	combout => \PrefixNetwork|Pk[2][22]~31_combout\);

-- Location: LCCOMB_X10_Y15_N20
\c[23]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[23]~32_combout\ = (\PrefixNetwork|Pk[2][22]~31_combout\ & (\PrefixNetwork|Pk[2][10]~83_combout\ & (c(7) & \PrefixNetwork|Gk~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][22]~31_combout\,
	datab => \PrefixNetwork|Pk[2][10]~83_combout\,
	datac => c(7),
	datad => \PrefixNetwork|Gk~63_combout\,
	combout => \c[23]~32_combout\);

-- Location: LCCOMB_X10_Y15_N16
\c[23]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[23]~33_combout\ = (\PrefixNetwork|Gk[3][22]~83_combout\) # ((\c[23]~32_combout\) # ((\PrefixNetwork|Gk~84_combout\ & \PrefixNetwork|Gk[3][14]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~84_combout\,
	datab => \PrefixNetwork|Gk[3][14]~43_combout\,
	datac => \PrefixNetwork|Gk[3][22]~83_combout\,
	datad => \c[23]~32_combout\,
	combout => \c[23]~33_combout\);

-- Location: LCCOMB_X10_Y15_N18
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\ $ (\c[23]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \c[23]~33_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X9_Y43_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X15_Y14_N12
\PrefixNetwork|Gk~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~85_combout\ = (\A[23]~input_o\ & (!\B[23]~input_o\ & (\A[22]~input_o\ $ (\B[22]~input_o\)))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & (\A[22]~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \A[22]~input_o\,
	datac => \B[23]~input_o\,
	datad => \B[22]~input_o\,
	combout => \PrefixNetwork|Gk~85_combout\);

-- Location: LCCOMB_X15_Y14_N8
\PrefixNetwork|Gk~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~89_combout\ = (\PrefixNetwork|Gk~85_combout\ & (\PrefixNetwork|Gk~65_combout\ & (\PrefixNetwork|Gk~75_combout\ & \PrefixNetwork|Gk~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~85_combout\,
	datab => \PrefixNetwork|Gk~65_combout\,
	datac => \PrefixNetwork|Gk~75_combout\,
	datad => \PrefixNetwork|Gk~53_combout\,
	combout => \PrefixNetwork|Gk~89_combout\);

-- Location: LCCOMB_X15_Y14_N26
\PrefixNetwork|Gk[1][23]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][23]~86_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\A[22]~input_o\ & \B[22]~input_o\)))) # (!\A[23]~input_o\ & (\A[22]~input_o\ & (\B[23]~input_o\ & \B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \A[22]~input_o\,
	datac => \B[23]~input_o\,
	datad => \B[22]~input_o\,
	combout => \PrefixNetwork|Gk[1][23]~86_combout\);

-- Location: LCCOMB_X15_Y14_N16
\PrefixNetwork|Gk[3][23]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][23]~87_combout\ = (!\PrefixNetwork|Gk[1][23]~86_combout\ & ((!\PrefixNetwork|Gk~85_combout\) # (!\PrefixNetwork|Gk[1][21]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][21]~76_combout\,
	datac => \PrefixNetwork|Gk[1][23]~86_combout\,
	datad => \PrefixNetwork|Gk~85_combout\,
	combout => \PrefixNetwork|Gk[3][23]~87_combout\);

-- Location: LCCOMB_X15_Y14_N10
\PrefixNetwork|Gk[3][23]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][23]~88_combout\ = ((\PrefixNetwork|Gk~85_combout\ & (\PrefixNetwork|Gk~75_combout\ & !\PrefixNetwork|Gk[3][19]~68_combout\))) # (!\PrefixNetwork|Gk[3][23]~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~85_combout\,
	datab => \PrefixNetwork|Gk[3][23]~87_combout\,
	datac => \PrefixNetwork|Gk~75_combout\,
	datad => \PrefixNetwork|Gk[3][19]~68_combout\,
	combout => \PrefixNetwork|Gk[3][23]~88_combout\);

-- Location: LCCOMB_X12_Y14_N22
\c[40]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[40]~34_combout\ = (\PrefixNetwork|Pk[2][11]~84_combout\ & (\PrefixNetwork|Gk~75_combout\ & (\PrefixNetwork|Gk~85_combout\ & \PrefixNetwork|Gk~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][11]~84_combout\,
	datab => \PrefixNetwork|Gk~75_combout\,
	datac => \PrefixNetwork|Gk~85_combout\,
	datad => \PrefixNetwork|Gk~66_combout\,
	combout => \c[40]~34_combout\);

-- Location: LCCOMB_X12_Y14_N20
\c[40]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[40]~35_combout\ = (\c[40]~34_combout\ & ((\PrefixNetwork|Gpre\(7)) # (\c~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gpre\(7),
	datac => \c[40]~34_combout\,
	datad => \c~6_combout\,
	combout => \c[40]~35_combout\);

-- Location: LCCOMB_X12_Y14_N18
\c[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[24]~36_combout\ = (\PrefixNetwork|Gk[3][23]~88_combout\) # ((\c[40]~35_combout\) # ((\PrefixNetwork|Gk[3][15]~47_combout\ & \PrefixNetwork|Gk~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][15]~47_combout\,
	datab => \PrefixNetwork|Gk~89_combout\,
	datac => \PrefixNetwork|Gk[3][23]~88_combout\,
	datad => \c[40]~35_combout\,
	combout => \c[24]~36_combout\);

-- Location: LCCOMB_X11_Y15_N22
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\ $ (\c[24]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \c[24]~36_combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X9_Y43_N29
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X8_Y14_N22
\PrefixNetwork|Gk~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~90_combout\ = (\B[24]~input_o\ & (!\A[24]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[24]~input_o\,
	combout => \PrefixNetwork|Gk~90_combout\);

-- Location: LCCOMB_X9_Y12_N0
\PrefixNetwork|Gk[1][24]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][24]~91_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # ((\A[23]~input_o\ & \B[23]~input_o\)))) # (!\B[24]~input_o\ & (\A[23]~input_o\ & (\B[23]~input_o\ & \A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \PrefixNetwork|Gk[1][24]~91_combout\);

-- Location: LCCOMB_X9_Y14_N2
\PrefixNetwork|Gk[3][24]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][24]~92_combout\ = (!\PrefixNetwork|Gk[1][24]~91_combout\ & ((!\PrefixNetwork|Gk[1][22]~81_combout\) # (!\PrefixNetwork|Gk~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~90_combout\,
	datac => \PrefixNetwork|Gk[1][22]~81_combout\,
	datad => \PrefixNetwork|Gk[1][24]~91_combout\,
	combout => \PrefixNetwork|Gk[3][24]~92_combout\);

-- Location: LCCOMB_X9_Y14_N20
\PrefixNetwork|Gk[3][24]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][24]~93_combout\ = ((\PrefixNetwork|Gk~80_combout\ & (\PrefixNetwork|Gk~90_combout\ & !\PrefixNetwork|Gk[3][20]~72_combout\))) # (!\PrefixNetwork|Gk[3][24]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~80_combout\,
	datab => \PrefixNetwork|Gk[3][24]~92_combout\,
	datac => \PrefixNetwork|Gk~90_combout\,
	datad => \PrefixNetwork|Gk[3][20]~72_combout\,
	combout => \PrefixNetwork|Gk[3][24]~93_combout\);

-- Location: LCCOMB_X8_Y14_N20
\PrefixNetwork|Gk~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~94_combout\ = (\PrefixNetwork|Gk~90_combout\ & (\PrefixNetwork|Gk~70_combout\ & (\PrefixNetwork|Gk~59_combout\ & \PrefixNetwork|Gk~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~90_combout\,
	datab => \PrefixNetwork|Gk~70_combout\,
	datac => \PrefixNetwork|Gk~59_combout\,
	datad => \PrefixNetwork|Gk~80_combout\,
	combout => \PrefixNetwork|Gk~94_combout\);

-- Location: LCCOMB_X8_Y13_N20
\c[41]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[41]~37_combout\ = (\PrefixNetwork|Gk~52_combout\ & (\PrefixNetwork|Gk~94_combout\ & ((\c[25]~8_combout\) # (\PrefixNetwork|Gk[3][8]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~52_combout\,
	datab => \PrefixNetwork|Gk~94_combout\,
	datac => \c[25]~8_combout\,
	datad => \PrefixNetwork|Gk[3][8]~23_combout\,
	combout => \c[41]~37_combout\);

-- Location: LCCOMB_X8_Y13_N26
\c[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[25]~38_combout\ = (\PrefixNetwork|Gk[3][24]~93_combout\) # ((\c[41]~37_combout\) # ((\PrefixNetwork|Gk[3][16]~51_combout\ & \PrefixNetwork|Gk~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][24]~93_combout\,
	datab => \PrefixNetwork|Gk[3][16]~51_combout\,
	datac => \PrefixNetwork|Gk~94_combout\,
	datad => \c[41]~37_combout\,
	combout => \c[25]~38_combout\);

-- Location: IOIBUF_X9_Y43_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X8_Y13_N12
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \B[25]~input_o\ $ (\c[25]~38_combout\ $ (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datac => \c[25]~38_combout\,
	datad => \A[25]~input_o\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X0_Y41_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X0_Y28_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X11_Y13_N16
\PrefixNetwork|Gk~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~95_combout\ = (\B[25]~input_o\ & (!\A[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[24]~input_o\,
	combout => \PrefixNetwork|Gk~95_combout\);

-- Location: LCCOMB_X14_Y13_N24
\PrefixNetwork|Gk~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~99_combout\ = (\PrefixNetwork|Gk~85_combout\ & (\PrefixNetwork|Gk~75_combout\ & (\PrefixNetwork|Gk~95_combout\ & \PrefixNetwork|Gk~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~85_combout\,
	datab => \PrefixNetwork|Gk~75_combout\,
	datac => \PrefixNetwork|Gk~95_combout\,
	datad => \PrefixNetwork|Gk~65_combout\,
	combout => \PrefixNetwork|Gk~99_combout\);

-- Location: LCCOMB_X11_Y13_N22
\PrefixNetwork|Gk[1][25]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][25]~96_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[24]~input_o\ & (\A[25]~input_o\ & \B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[24]~input_o\,
	combout => \PrefixNetwork|Gk[1][25]~96_combout\);

-- Location: LCCOMB_X11_Y13_N12
\PrefixNetwork|Gk[3][25]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][25]~97_combout\ = (!\PrefixNetwork|Gk[1][25]~96_combout\ & ((!\PrefixNetwork|Gk[1][23]~86_combout\) # (!\PrefixNetwork|Gk~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~95_combout\,
	datac => \PrefixNetwork|Gk[1][25]~96_combout\,
	datad => \PrefixNetwork|Gk[1][23]~86_combout\,
	combout => \PrefixNetwork|Gk[3][25]~97_combout\);

-- Location: LCCOMB_X11_Y13_N2
\PrefixNetwork|Gk[3][25]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][25]~98_combout\ = ((\PrefixNetwork|Gk~95_combout\ & (\PrefixNetwork|Gk~85_combout\ & !\PrefixNetwork|Gk[3][21]~77_combout\))) # (!\PrefixNetwork|Gk[3][25]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~95_combout\,
	datab => \PrefixNetwork|Gk~85_combout\,
	datac => \PrefixNetwork|Gk[3][21]~77_combout\,
	datad => \PrefixNetwork|Gk[3][25]~97_combout\,
	combout => \PrefixNetwork|Gk[3][25]~98_combout\);

-- Location: LCCOMB_X14_Y13_N10
\c[42]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[42]~39_combout\ = (\PrefixNetwork|Gk~99_combout\ & (\c[26]~10_combout\ & \PrefixNetwork|Gk~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~99_combout\,
	datac => \c[26]~10_combout\,
	datad => \PrefixNetwork|Gk~57_combout\,
	combout => \c[42]~39_combout\);

-- Location: LCCOMB_X14_Y13_N4
\c[26]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[26]~40_combout\ = (\PrefixNetwork|Gk[3][25]~98_combout\) # ((\c[42]~39_combout\) # ((\PrefixNetwork|Gk[3][17]~56_combout\ & \PrefixNetwork|Gk~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][17]~56_combout\,
	datab => \PrefixNetwork|Gk~99_combout\,
	datac => \PrefixNetwork|Gk[3][25]~98_combout\,
	datad => \c[42]~39_combout\,
	combout => \c[26]~40_combout\);

-- Location: LCCOMB_X11_Y13_N20
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\ $ (\c[26]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \c[26]~40_combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X11_Y43_N29
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X9_Y12_N22
\PrefixNetwork|Gk~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~100_combout\ = (\A[26]~input_o\ & (!\B[26]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \PrefixNetwork|Gk~100_combout\);

-- Location: LCCOMB_X9_Y12_N16
\PrefixNetwork|Gk[1][26]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][26]~101_combout\ = (\A[26]~input_o\ & ((\B[26]~input_o\) # ((\B[25]~input_o\ & \A[25]~input_o\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & (\B[25]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \PrefixNetwork|Gk[1][26]~101_combout\);

-- Location: LCCOMB_X9_Y12_N26
\PrefixNetwork|Gk[3][26]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][26]~102_combout\ = (!\PrefixNetwork|Gk[1][26]~101_combout\ & ((!\PrefixNetwork|Gk~100_combout\) # (!\PrefixNetwork|Gk[1][24]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][24]~91_combout\,
	datac => \PrefixNetwork|Gk~100_combout\,
	datad => \PrefixNetwork|Gk[1][26]~101_combout\,
	combout => \PrefixNetwork|Gk[3][26]~102_combout\);

-- Location: LCCOMB_X9_Y12_N12
\PrefixNetwork|Gk[3][26]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][26]~103_combout\ = ((\PrefixNetwork|Gk~90_combout\ & (\PrefixNetwork|Gk~100_combout\ & !\PrefixNetwork|Gk[3][22]~82_combout\))) # (!\PrefixNetwork|Gk[3][26]~102_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][26]~102_combout\,
	datab => \PrefixNetwork|Gk~90_combout\,
	datac => \PrefixNetwork|Gk~100_combout\,
	datad => \PrefixNetwork|Gk[3][22]~82_combout\,
	combout => \PrefixNetwork|Gk[3][26]~103_combout\);

-- Location: LCCOMB_X9_Y15_N4
\c[43]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[43]~41_combout\ = ((\PrefixNetwork|Pk[2][10]~83_combout\ & !\PrefixNetwork|Gpre[6]~2_combout\)) # (!\PrefixNetwork|Gk[3][10]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][10]~83_combout\,
	datac => \PrefixNetwork|Gk[3][10]~28_combout\,
	datad => \PrefixNetwork|Gpre[6]~2_combout\,
	combout => \c[43]~41_combout\);

-- Location: LCCOMB_X8_Y14_N10
\PrefixNetwork|Gk~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~104_combout\ = (\PrefixNetwork|Gk~90_combout\ & (\PrefixNetwork|Gk~80_combout\ & (\PrefixNetwork|Gk~100_combout\ & \PrefixNetwork|Gk~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~90_combout\,
	datab => \PrefixNetwork|Gk~80_combout\,
	datac => \PrefixNetwork|Gk~100_combout\,
	datad => \PrefixNetwork|Gk~70_combout\,
	combout => \PrefixNetwork|Gk~104_combout\);

-- Location: LCCOMB_X9_Y15_N26
\c[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[43]~42_combout\ = (\PrefixNetwork|Gk~63_combout\ & (\PrefixNetwork|Gk~104_combout\ & ((\c[11]~13_combout\) # (\c[43]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~63_combout\,
	datab => \c[11]~13_combout\,
	datac => \c[43]~41_combout\,
	datad => \PrefixNetwork|Gk~104_combout\,
	combout => \c[43]~42_combout\);

-- Location: LCCOMB_X9_Y15_N16
\c[27]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[27]~43_combout\ = (\PrefixNetwork|Gk[3][26]~103_combout\) # ((\c[43]~42_combout\) # ((\PrefixNetwork|Gk[3][18]~62_combout\ & \PrefixNetwork|Gk~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][18]~62_combout\,
	datab => \PrefixNetwork|Gk[3][26]~103_combout\,
	datac => \c[43]~42_combout\,
	datad => \PrefixNetwork|Gk~104_combout\,
	combout => \c[27]~43_combout\);

-- Location: LCCOMB_X9_Y15_N10
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (\c[27]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	datad => \c[27]~43_combout\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X7_Y43_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X7_Y43_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X11_Y13_N18
\PrefixNetwork|Gk~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~105_combout\ = (\A[26]~input_o\ & (!\B[26]~input_o\ & (\B[27]~input_o\ $ (\A[27]~input_o\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & (\B[27]~input_o\ $ (\A[27]~input_o\))))

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
	combout => \PrefixNetwork|Gk~105_combout\);

-- Location: LCCOMB_X11_Y10_N24
\PrefixNetwork|Gk~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~109_combout\ = (\PrefixNetwork|Gk~105_combout\ & (\PrefixNetwork|Gk~75_combout\ & (\PrefixNetwork|Gk~95_combout\ & \PrefixNetwork|Gk~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~105_combout\,
	datab => \PrefixNetwork|Gk~75_combout\,
	datac => \PrefixNetwork|Gk~95_combout\,
	datad => \PrefixNetwork|Gk~85_combout\,
	combout => \PrefixNetwork|Gk~109_combout\);

-- Location: LCCOMB_X11_Y13_N28
\PrefixNetwork|Gk[1][27]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][27]~106_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & (\A[26]~input_o\ & \B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \PrefixNetwork|Gk[1][27]~106_combout\);

-- Location: LCCOMB_X11_Y13_N26
\PrefixNetwork|Gk[3][27]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][27]~107_combout\ = (!\PrefixNetwork|Gk[1][27]~106_combout\ & ((!\PrefixNetwork|Gk~105_combout\) # (!\PrefixNetwork|Gk[1][25]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][25]~96_combout\,
	datab => \PrefixNetwork|Gk[1][27]~106_combout\,
	datad => \PrefixNetwork|Gk~105_combout\,
	combout => \PrefixNetwork|Gk[3][27]~107_combout\);

-- Location: LCCOMB_X11_Y13_N4
\PrefixNetwork|Gk[3][27]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][27]~108_combout\ = ((\PrefixNetwork|Gk~95_combout\ & (\PrefixNetwork|Gk~105_combout\ & !\PrefixNetwork|Gk[3][23]~87_combout\))) # (!\PrefixNetwork|Gk[3][27]~107_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~95_combout\,
	datab => \PrefixNetwork|Gk~105_combout\,
	datac => \PrefixNetwork|Gk[3][27]~107_combout\,
	datad => \PrefixNetwork|Gk[3][23]~87_combout\,
	combout => \PrefixNetwork|Gk[3][27]~108_combout\);

-- Location: LCCOMB_X11_Y10_N14
\c[44]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[44]~44_combout\ = (\PrefixNetwork|Pk[2][11]~84_combout\ & (\PrefixNetwork|Gk~18_combout\ & c(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][11]~84_combout\,
	datac => \PrefixNetwork|Gk~18_combout\,
	datad => c(4),
	combout => \c[44]~44_combout\);

-- Location: LCCOMB_X11_Y10_N20
\c[44]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[44]~45_combout\ = (\PrefixNetwork|Gk~109_combout\ & (\PrefixNetwork|Gk~66_combout\ & ((\c[44]~44_combout\) # (\PrefixNetwork|Gk[3][11]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~109_combout\,
	datab => \PrefixNetwork|Gk~66_combout\,
	datac => \c[44]~44_combout\,
	datad => \PrefixNetwork|Gk[3][11]~32_combout\,
	combout => \c[44]~45_combout\);

-- Location: LCCOMB_X11_Y10_N26
\c[28]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[28]~46_combout\ = (\PrefixNetwork|Gk[3][27]~108_combout\) # ((\c[44]~45_combout\) # ((\PrefixNetwork|Gk[3][19]~69_combout\ & \PrefixNetwork|Gk~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][19]~69_combout\,
	datab => \PrefixNetwork|Gk~109_combout\,
	datac => \PrefixNetwork|Gk[3][27]~108_combout\,
	datad => \c[44]~45_combout\,
	combout => \c[28]~46_combout\);

-- Location: LCCOMB_X6_Y42_N0
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \B[28]~input_o\ $ (\A[28]~input_o\ $ (\c[28]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \c[28]~46_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X3_Y43_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X7_Y43_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X9_Y13_N16
\PrefixNetwork|Gk~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~110_combout\ = (\A[27]~input_o\ & (!\B[27]~input_o\ & (\B[28]~input_o\ $ (\A[28]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & (\B[28]~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \PrefixNetwork|Gk~110_combout\);

-- Location: LCCOMB_X7_Y11_N24
\PrefixNetwork|Gk~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~114_combout\ = (\PrefixNetwork|Gk~90_combout\ & (\PrefixNetwork|Gk~110_combout\ & (\PrefixNetwork|Gk~100_combout\ & \PrefixNetwork|Gk~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~90_combout\,
	datab => \PrefixNetwork|Gk~110_combout\,
	datac => \PrefixNetwork|Gk~100_combout\,
	datad => \PrefixNetwork|Gk~80_combout\,
	combout => \PrefixNetwork|Gk~114_combout\);

-- Location: LCCOMB_X7_Y11_N0
\PrefixNetwork|Pk[4][28]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][28]~32_combout\ = (\PrefixNetwork|Gk~114_combout\ & \PrefixNetwork|Gk~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~114_combout\,
	datad => \PrefixNetwork|Gk~74_combout\,
	combout => \PrefixNetwork|Pk[4][28]~32_combout\);

-- Location: LCCOMB_X10_Y13_N28
\PrefixNetwork|Gk[1][28]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][28]~111_combout\ = (\A[28]~input_o\ & ((\B[28]~input_o\) # ((\A[27]~input_o\ & \B[27]~input_o\)))) # (!\A[28]~input_o\ & (\A[27]~input_o\ & (\B[27]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \PrefixNetwork|Gk[1][28]~111_combout\);

-- Location: LCCOMB_X8_Y10_N8
\PrefixNetwork|Gk[3][28]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][28]~112_combout\ = (!\PrefixNetwork|Gk[1][28]~111_combout\ & ((!\PrefixNetwork|Gk[1][26]~101_combout\) # (!\PrefixNetwork|Gk~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~110_combout\,
	datac => \PrefixNetwork|Gk[1][28]~111_combout\,
	datad => \PrefixNetwork|Gk[1][26]~101_combout\,
	combout => \PrefixNetwork|Gk[3][28]~112_combout\);

-- Location: LCCOMB_X8_Y10_N10
\PrefixNetwork|Gk[3][28]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][28]~113_combout\ = ((\PrefixNetwork|Gk~100_combout\ & (\PrefixNetwork|Gk~110_combout\ & !\PrefixNetwork|Gk[3][24]~92_combout\))) # (!\PrefixNetwork|Gk[3][28]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~100_combout\,
	datab => \PrefixNetwork|Gk~110_combout\,
	datac => \PrefixNetwork|Gk[3][28]~112_combout\,
	datad => \PrefixNetwork|Gk[3][24]~92_combout\,
	combout => \PrefixNetwork|Gk[3][28]~113_combout\);

-- Location: LCCOMB_X7_Y11_N22
\c[29]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~47_combout\ = (\PrefixNetwork|Gk[3][28]~113_combout\) # ((\PrefixNetwork|Gk~114_combout\ & \PrefixNetwork|Gk[3][20]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~114_combout\,
	datac => \PrefixNetwork|Gk[3][20]~73_combout\,
	datad => \PrefixNetwork|Gk[3][28]~113_combout\,
	combout => \c[29]~47_combout\);

-- Location: LCCOMB_X7_Y11_N6
\c[29]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[29]~48_combout\ = (\c[29]~47_combout\) # ((\PrefixNetwork|Pk[4][28]~32_combout\ & ((\PrefixNetwork|Gk[3][12]~232_combout\) # (\c[13]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][12]~232_combout\,
	datab => \PrefixNetwork|Pk[4][28]~32_combout\,
	datac => \c[29]~47_combout\,
	datad => \c[13]~16_combout\,
	combout => \c[29]~48_combout\);

-- Location: LCCOMB_X7_Y11_N28
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\ $ (\c[29]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \c[29]~48_combout\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X3_Y0_N29
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X10_Y13_N30
\PrefixNetwork|Gk~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~115_combout\ = (\B[28]~input_o\ & (!\A[28]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[29]~input_o\,
	combout => \PrefixNetwork|Gk~115_combout\);

-- Location: LCCOMB_X10_Y13_N24
\PrefixNetwork|Gk[1][29]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][29]~116_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # ((\B[28]~input_o\ & \A[28]~input_o\)))) # (!\B[29]~input_o\ & (\B[28]~input_o\ & (\A[28]~input_o\ & \A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[29]~input_o\,
	combout => \PrefixNetwork|Gk[1][29]~116_combout\);

-- Location: LCCOMB_X10_Y13_N6
\PrefixNetwork|Gk[3][29]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][29]~117_combout\ = (!\PrefixNetwork|Gk[1][29]~116_combout\ & ((!\PrefixNetwork|Gk[1][27]~106_combout\) # (!\PrefixNetwork|Gk~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][29]~116_combout\,
	datac => \PrefixNetwork|Gk~115_combout\,
	datad => \PrefixNetwork|Gk[1][27]~106_combout\,
	combout => \PrefixNetwork|Gk[3][29]~117_combout\);

-- Location: LCCOMB_X11_Y13_N30
\PrefixNetwork|Gk[3][29]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][29]~118_combout\ = ((\PrefixNetwork|Gk~115_combout\ & (\PrefixNetwork|Gk~105_combout\ & !\PrefixNetwork|Gk[3][25]~97_combout\))) # (!\PrefixNetwork|Gk[3][29]~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~115_combout\,
	datab => \PrefixNetwork|Gk~105_combout\,
	datac => \PrefixNetwork|Gk[3][29]~117_combout\,
	datad => \PrefixNetwork|Gk[3][25]~97_combout\,
	combout => \PrefixNetwork|Gk[3][29]~118_combout\);

-- Location: LCCOMB_X11_Y13_N8
\PrefixNetwork|Gk~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~119_combout\ = (\PrefixNetwork|Gk~95_combout\ & (\PrefixNetwork|Gk~115_combout\ & (\PrefixNetwork|Gk~85_combout\ & \PrefixNetwork|Gk~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~95_combout\,
	datab => \PrefixNetwork|Gk~115_combout\,
	datac => \PrefixNetwork|Gk~85_combout\,
	datad => \PrefixNetwork|Gk~105_combout\,
	combout => \PrefixNetwork|Gk~119_combout\);

-- Location: LCCOMB_X16_Y13_N12
\c[30]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~49_combout\ = (\PrefixNetwork|Gk[3][29]~118_combout\) # ((\PrefixNetwork|Gk[3][21]~78_combout\ & \PrefixNetwork|Gk~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[3][21]~78_combout\,
	datac => \PrefixNetwork|Gk[3][29]~118_combout\,
	datad => \PrefixNetwork|Gk~119_combout\,
	combout => \c[30]~49_combout\);

-- Location: LCCOMB_X15_Y12_N16
\PrefixNetwork|Pk[4][29]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][29]~33_combout\ = (\PrefixNetwork|Gk~79_combout\ & \PrefixNetwork|Gk~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~79_combout\,
	datac => \PrefixNetwork|Gk~119_combout\,
	combout => \PrefixNetwork|Pk[4][29]~33_combout\);

-- Location: LCCOMB_X16_Y13_N2
\c[30]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[30]~50_combout\ = (\c[30]~49_combout\) # ((\PrefixNetwork|Pk[4][29]~33_combout\ & ((\PrefixNetwork|Gk[3][13]~39_combout\) # (\c[14]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[30]~49_combout\,
	datab => \PrefixNetwork|Gk[3][13]~39_combout\,
	datac => \c[14]~17_combout\,
	datad => \PrefixNetwork|Pk[4][29]~33_combout\,
	combout => \c[30]~50_combout\);

-- Location: LCCOMB_X16_Y13_N0
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \B[30]~input_o\ $ (\A[30]~input_o\ $ (\c[30]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \c[30]~50_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X0_Y2_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X10_Y13_N8
\PrefixNetwork|Gk~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~120_combout\ = (\B[30]~input_o\ & (!\A[30]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \PrefixNetwork|Gk~120_combout\);

-- Location: LCCOMB_X10_Y15_N4
\PrefixNetwork|Gk~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~124_combout\ = (\PrefixNetwork|Gk~110_combout\ & (\PrefixNetwork|Gk~120_combout\ & (\PrefixNetwork|Gk~100_combout\ & \PrefixNetwork|Gk~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~110_combout\,
	datab => \PrefixNetwork|Gk~120_combout\,
	datac => \PrefixNetwork|Gk~100_combout\,
	datad => \PrefixNetwork|Gk~90_combout\,
	combout => \PrefixNetwork|Gk~124_combout\);

-- Location: LCCOMB_X10_Y11_N20
\PrefixNetwork|Pk[4][30]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][30]~34_combout\ = (\PrefixNetwork|Gk~48_combout\ & (\PrefixNetwork|Gk~59_combout\ & (\PrefixNetwork|Gk~124_combout\ & \PrefixNetwork|Pk[2][22]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~48_combout\,
	datab => \PrefixNetwork|Gk~59_combout\,
	datac => \PrefixNetwork|Gk~124_combout\,
	datad => \PrefixNetwork|Pk[2][22]~31_combout\,
	combout => \PrefixNetwork|Pk[4][30]~34_combout\);

-- Location: LCCOMB_X10_Y11_N14
\c~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~51_combout\ = (p(6) & (\PrefixNetwork|Gpre[30]~4_combout\ & (\c~5_combout\ & \PrefixNetwork|Pk[4][30]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => \PrefixNetwork|Gpre[30]~4_combout\,
	datac => \c~5_combout\,
	datad => \PrefixNetwork|Pk[4][30]~34_combout\,
	combout => \c~51_combout\);

-- Location: LCCOMB_X10_Y13_N26
\PrefixNetwork|Gk[1][30]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][30]~121_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # ((\A[29]~input_o\ & \B[29]~input_o\)))) # (!\A[30]~input_o\ & (\A[29]~input_o\ & (\B[30]~input_o\ & \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \B[29]~input_o\,
	combout => \PrefixNetwork|Gk[1][30]~121_combout\);

-- Location: LCCOMB_X10_Y13_N0
\PrefixNetwork|Gk[3][30]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][30]~122_combout\ = (!\PrefixNetwork|Gk[1][30]~121_combout\ & ((!\PrefixNetwork|Gk[1][28]~111_combout\) # (!\PrefixNetwork|Gk~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][30]~121_combout\,
	datac => \PrefixNetwork|Gk~120_combout\,
	datad => \PrefixNetwork|Gk[1][28]~111_combout\,
	combout => \PrefixNetwork|Gk[3][30]~122_combout\);

-- Location: LCCOMB_X10_Y13_N18
\PrefixNetwork|Gk[3][30]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][30]~123_combout\ = ((\PrefixNetwork|Gk~120_combout\ & (\PrefixNetwork|Gk~110_combout\ & !\PrefixNetwork|Gk[3][26]~102_combout\))) # (!\PrefixNetwork|Gk[3][30]~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~120_combout\,
	datab => \PrefixNetwork|Gk[3][30]~122_combout\,
	datac => \PrefixNetwork|Gk~110_combout\,
	datad => \PrefixNetwork|Gk[3][26]~102_combout\,
	combout => \PrefixNetwork|Gk[3][30]~123_combout\);

-- Location: LCCOMB_X10_Y11_N18
\PrefixNetwork|Gpre[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[30]~5_combout\ = (\PrefixNetwork|Pk[4][30]~34_combout\ & ((\PrefixNetwork|Gk[3][14]~43_combout\) # ((\PrefixNetwork|Gpre[30]~4_combout\ & \PrefixNetwork|Gpre\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gpre[30]~4_combout\,
	datab => \PrefixNetwork|Gpre\(6),
	datac => \PrefixNetwork|Gk[3][14]~43_combout\,
	datad => \PrefixNetwork|Pk[4][30]~34_combout\,
	combout => \PrefixNetwork|Gpre[30]~5_combout\);

-- Location: LCCOMB_X10_Y11_N8
\PrefixNetwork|Gpre[30]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[30]~6_combout\ = (\PrefixNetwork|Gk[3][30]~123_combout\) # ((\PrefixNetwork|Gpre[30]~5_combout\) # ((\PrefixNetwork|Gk[3][22]~83_combout\ & \PrefixNetwork|Gk~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][22]~83_combout\,
	datab => \PrefixNetwork|Gk[3][30]~123_combout\,
	datac => \PrefixNetwork|Gk~124_combout\,
	datad => \PrefixNetwork|Gpre[30]~5_combout\,
	combout => \PrefixNetwork|Gpre[30]~6_combout\);

-- Location: LCCOMB_X10_Y11_N24
\S~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~101_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (((\c~51_combout\) # (\PrefixNetwork|Gpre[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	datac => \c~51_combout\,
	datad => \PrefixNetwork|Gpre[30]~6_combout\,
	combout => \S~101_combout\);

-- Location: IOIBUF_X0_Y29_N22
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X5_Y43_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X9_Y13_N12
\p[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(32) = \A[32]~input_o\ $ (\B[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[32]~input_o\,
	datad => \B[32]~input_o\,
	combout => p(32));

-- Location: LCCOMB_X11_Y11_N24
\c~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~52_combout\ = (\PrefixNetwork|Ppre[3]~0_combout\ & (\PrefixNetwork|Gk~18_combout\ & (\c~19_combout\ & \c~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Ppre[3]~0_combout\,
	datab => \PrefixNetwork|Gk~18_combout\,
	datac => \c~19_combout\,
	datad => \c~2_combout\,
	combout => \c~52_combout\);

-- Location: LCCOMB_X9_Y13_N22
\p[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(31) = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => p(31));

-- Location: LCCOMB_X10_Y13_N20
\PrefixNetwork|Pk[2][31]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][31]~35_combout\ = (\PrefixNetwork|Gk~115_combout\ & (p(31) & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \PrefixNetwork|Gk~115_combout\,
	datad => p(31),
	combout => \PrefixNetwork|Pk[2][31]~35_combout\);

-- Location: LCCOMB_X11_Y11_N6
\PrefixNetwork|Pk[4][31]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][31]~36_combout\ = (\PrefixNetwork|Pk[2][31]~35_combout\ & (\PrefixNetwork|Gk~95_combout\ & (\PrefixNetwork|Gk~89_combout\ & \PrefixNetwork|Gk~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][31]~35_combout\,
	datab => \PrefixNetwork|Gk~95_combout\,
	datac => \PrefixNetwork|Gk~89_combout\,
	datad => \PrefixNetwork|Gk~105_combout\,
	combout => \PrefixNetwork|Pk[4][31]~36_combout\);

-- Location: LCCOMB_X11_Y11_N16
\PrefixNetwork|Gk~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~129_combout\ = (\PrefixNetwork|Pk[2][31]~35_combout\ & (\PrefixNetwork|Gk~105_combout\ & (\PrefixNetwork|Gk~95_combout\ & \PrefixNetwork|Gk[3][23]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][31]~35_combout\,
	datab => \PrefixNetwork|Gk~105_combout\,
	datac => \PrefixNetwork|Gk~95_combout\,
	datad => \PrefixNetwork|Gk[3][23]~88_combout\,
	combout => \PrefixNetwork|Gk~129_combout\);

-- Location: LCCOMB_X9_Y13_N24
\PrefixNetwork|Gk~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~125_combout\ = (\B[30]~input_o\ & (!\A[30]~input_o\ & (\A[31]~input_o\ $ (\B[31]~input_o\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \PrefixNetwork|Gk~125_combout\);

-- Location: LCCOMB_X9_Y13_N26
\PrefixNetwork|Gk[1][31]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][31]~126_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # ((\B[30]~input_o\ & \A[30]~input_o\)))) # (!\A[31]~input_o\ & (\B[30]~input_o\ & (\A[30]~input_o\ & \B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \PrefixNetwork|Gk[1][31]~126_combout\);

-- Location: LCCOMB_X12_Y13_N28
\PrefixNetwork|Gk[3][31]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][31]~127_combout\ = (!\PrefixNetwork|Gk[1][31]~126_combout\ & ((!\PrefixNetwork|Gk[1][29]~116_combout\) # (!\PrefixNetwork|Gk~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~125_combout\,
	datac => \PrefixNetwork|Gk[1][29]~116_combout\,
	datad => \PrefixNetwork|Gk[1][31]~126_combout\,
	combout => \PrefixNetwork|Gk[3][31]~127_combout\);

-- Location: LCCOMB_X12_Y13_N30
\PrefixNetwork|Gk[3][31]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][31]~128_combout\ = ((\PrefixNetwork|Pk[2][31]~35_combout\ & !\PrefixNetwork|Gk[3][27]~107_combout\)) # (!\PrefixNetwork|Gk[3][31]~127_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][31]~35_combout\,
	datac => \PrefixNetwork|Gk[3][27]~107_combout\,
	datad => \PrefixNetwork|Gk[3][31]~127_combout\,
	combout => \PrefixNetwork|Gk[3][31]~128_combout\);

-- Location: LCCOMB_X11_Y11_N2
\PrefixNetwork|Gpre[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre[31]~7_combout\ = (\PrefixNetwork|Gk[3][15]~47_combout\) # ((\PrefixNetwork|Gpre\(7) & \c~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gpre\(7),
	datac => \c~19_combout\,
	datad => \PrefixNetwork|Gk[3][15]~47_combout\,
	combout => \PrefixNetwork|Gpre[31]~7_combout\);

-- Location: LCCOMB_X11_Y11_N4
\PrefixNetwork|Gpre[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gpre\(31) = (\PrefixNetwork|Gk~129_combout\) # ((\PrefixNetwork|Gk[3][31]~128_combout\) # ((\PrefixNetwork|Pk[4][31]~36_combout\ & \PrefixNetwork|Gpre[31]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][31]~36_combout\,
	datab => \PrefixNetwork|Gk~129_combout\,
	datac => \PrefixNetwork|Gk[3][31]~128_combout\,
	datad => \PrefixNetwork|Gpre[31]~7_combout\,
	combout => \PrefixNetwork|Gpre\(31));

-- Location: LCCOMB_X11_Y11_N18
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = p(32) $ (((\PrefixNetwork|Gpre\(31)) # ((\c~52_combout\ & \PrefixNetwork|Pk[4][31]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(32),
	datab => \c~52_combout\,
	datac => \PrefixNetwork|Gpre\(31),
	datad => \PrefixNetwork|Pk[4][31]~36_combout\,
	combout => \S~40_combout\);

-- Location: LCCOMB_X7_Y13_N22
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = (\PrefixNetwork|Gk[3][8]~22_combout\ & ((!\PrefixNetwork|Gk[3][8]~20_combout\) # (!\PrefixNetwork|Pk[2][8]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][8]~28_combout\,
	datac => \PrefixNetwork|Gk[3][8]~22_combout\,
	datad => \PrefixNetwork|Gk[3][8]~20_combout\,
	combout => \S~41_combout\);

-- Location: LCCOMB_X7_Y13_N12
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = (\PrefixNetwork|Gk[3][16]~51_combout\) # ((\PrefixNetwork|Gk~52_combout\ & ((\c[25]~8_combout\) # (!\S~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~41_combout\,
	datab => \PrefixNetwork|Gk~52_combout\,
	datac => \PrefixNetwork|Gk[3][16]~51_combout\,
	datad => \c[25]~8_combout\,
	combout => \S~42_combout\);

-- Location: LCCOMB_X8_Y13_N10
\PrefixNetwork|Pk[2][32]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][32]~85_combout\ = (p(32) & (\PrefixNetwork|Gk~120_combout\ & (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => p(32),
	datac => \B[31]~input_o\,
	datad => \PrefixNetwork|Gk~120_combout\,
	combout => \PrefixNetwork|Pk[2][32]~85_combout\);

-- Location: LCCOMB_X7_Y13_N20
\PrefixNetwork|Pk[4][32]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][32]~37_combout\ = (\PrefixNetwork|Gk~110_combout\ & (\PrefixNetwork|Gk~100_combout\ & (\PrefixNetwork|Pk[2][32]~85_combout\ & \PrefixNetwork|Gk~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~110_combout\,
	datab => \PrefixNetwork|Gk~100_combout\,
	datac => \PrefixNetwork|Pk[2][32]~85_combout\,
	datad => \PrefixNetwork|Gk~94_combout\,
	combout => \PrefixNetwork|Pk[4][32]~37_combout\);

-- Location: IOIBUF_X5_Y43_N1
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X5_Y43_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X9_Y13_N30
\p[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(33) = \B[33]~input_o\ $ (\A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => p(33));

-- Location: LCCOMB_X8_Y10_N28
\PrefixNetwork|Gk[1][32]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][32]~131_combout\ = (\A[32]~input_o\ & ((\B[32]~input_o\) # ((\A[31]~input_o\ & \B[31]~input_o\)))) # (!\A[32]~input_o\ & (\A[31]~input_o\ & (\B[31]~input_o\ & \B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	datac => \A[32]~input_o\,
	datad => \B[32]~input_o\,
	combout => \PrefixNetwork|Gk[1][32]~131_combout\);

-- Location: LCCOMB_X8_Y10_N14
\PrefixNetwork|Gk[3][32]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][32]~132_combout\ = (!\PrefixNetwork|Gk[1][32]~131_combout\ & (((!\PrefixNetwork|Gk[1][30]~121_combout\) # (!p(32))) # (!p(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(31),
	datab => \PrefixNetwork|Gk[1][32]~131_combout\,
	datac => p(32),
	datad => \PrefixNetwork|Gk[1][30]~121_combout\,
	combout => \PrefixNetwork|Gk[3][32]~132_combout\);

-- Location: LCCOMB_X7_Y13_N6
\PrefixNetwork|Gk~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~130_combout\ = (\PrefixNetwork|Gk~110_combout\ & (\PrefixNetwork|Pk[2][32]~85_combout\ & (\PrefixNetwork|Gk~100_combout\ & \PrefixNetwork|Gk[3][24]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~110_combout\,
	datab => \PrefixNetwork|Pk[2][32]~85_combout\,
	datac => \PrefixNetwork|Gk~100_combout\,
	datad => \PrefixNetwork|Gk[3][24]~93_combout\,
	combout => \PrefixNetwork|Gk~130_combout\);

-- Location: LCCOMB_X7_Y13_N16
\c[33]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[33]~53_combout\ = ((\PrefixNetwork|Gk~130_combout\) # ((!\PrefixNetwork|Gk[3][28]~112_combout\ & \PrefixNetwork|Pk[2][32]~85_combout\))) # (!\PrefixNetwork|Gk[3][32]~132_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][28]~112_combout\,
	datab => \PrefixNetwork|Pk[2][32]~85_combout\,
	datac => \PrefixNetwork|Gk[3][32]~132_combout\,
	datad => \PrefixNetwork|Gk~130_combout\,
	combout => \c[33]~53_combout\);

-- Location: LCCOMB_X7_Y13_N26
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = p(33) $ (((\c[33]~53_combout\) # ((\S~42_combout\ & \PrefixNetwork|Pk[4][32]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~42_combout\,
	datab => \PrefixNetwork|Pk[4][32]~37_combout\,
	datac => p(33),
	datad => \c[33]~53_combout\,
	combout => \S~43_combout\);

-- Location: LCCOMB_X10_Y13_N22
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = (\PrefixNetwork|Gk~58_combout\) # ((\PrefixNetwork|Gk[3][17]~56_combout\) # ((\PrefixNetwork|Gk~57_combout\ & \c[10]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~58_combout\,
	datab => \PrefixNetwork|Gk~57_combout\,
	datac => \PrefixNetwork|Gk[3][17]~56_combout\,
	datad => \c[10]~9_combout\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X0_Y4_N1
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X54_Y0_N29
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X11_Y12_N0
\p[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(34) = \B[34]~input_o\ $ (\A[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => p(34));

-- Location: LCCOMB_X9_Y13_N6
\PrefixNetwork|Gk[1][33]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][33]~133_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[32]~input_o\ & (\B[32]~input_o\ & \A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => \PrefixNetwork|Gk[1][33]~133_combout\);

-- Location: LCCOMB_X9_Y13_N28
\PrefixNetwork|Gk[3][33]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][33]~134_combout\ = (!\PrefixNetwork|Gk[1][33]~133_combout\ & (((!\PrefixNetwork|Gk[1][31]~126_combout\) # (!p(32))) # (!p(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(33),
	datab => p(32),
	datac => \PrefixNetwork|Gk[1][31]~126_combout\,
	datad => \PrefixNetwork|Gk[1][33]~133_combout\,
	combout => \PrefixNetwork|Gk[3][33]~134_combout\);

-- Location: LCCOMB_X9_Y13_N4
\PrefixNetwork|Pk[2][33]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][33]~86_combout\ = (p(33) & (\PrefixNetwork|Gk~125_combout\ & (\A[32]~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => p(33),
	datad => \PrefixNetwork|Gk~125_combout\,
	combout => \PrefixNetwork|Pk[2][33]~86_combout\);

-- Location: LCCOMB_X11_Y13_N14
\PrefixNetwork|Gk~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~135_combout\ = (\PrefixNetwork|Gk~115_combout\ & (\PrefixNetwork|Gk~105_combout\ & (\PrefixNetwork|Pk[2][33]~86_combout\ & \PrefixNetwork|Gk[3][25]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~115_combout\,
	datab => \PrefixNetwork|Gk~105_combout\,
	datac => \PrefixNetwork|Pk[2][33]~86_combout\,
	datad => \PrefixNetwork|Gk[3][25]~98_combout\,
	combout => \PrefixNetwork|Gk~135_combout\);

-- Location: LCCOMB_X10_Y13_N4
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = (\PrefixNetwork|Gk[3][33]~134_combout\ & (!\PrefixNetwork|Gk~135_combout\ & ((\PrefixNetwork|Gk[3][29]~117_combout\) # (!\PrefixNetwork|Pk[2][33]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][33]~134_combout\,
	datab => \PrefixNetwork|Pk[2][33]~86_combout\,
	datac => \PrefixNetwork|Gk~135_combout\,
	datad => \PrefixNetwork|Gk[3][29]~117_combout\,
	combout => \S~45_combout\);

-- Location: LCCOMB_X9_Y13_N20
\PrefixNetwork|Pk[4][33]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][33]~38_combout\ = (\PrefixNetwork|Gk~105_combout\ & (\PrefixNetwork|Pk[2][33]~86_combout\ & (\PrefixNetwork|Gk~115_combout\ & \PrefixNetwork|Gk~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~105_combout\,
	datab => \PrefixNetwork|Pk[2][33]~86_combout\,
	datac => \PrefixNetwork|Gk~115_combout\,
	datad => \PrefixNetwork|Gk~99_combout\,
	combout => \PrefixNetwork|Pk[4][33]~38_combout\);

-- Location: LCCOMB_X10_Y13_N2
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = p(34) $ ((((\S~44_combout\ & \PrefixNetwork|Pk[4][33]~38_combout\)) # (!\S~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~44_combout\,
	datab => p(34),
	datac => \S~45_combout\,
	datad => \PrefixNetwork|Pk[4][33]~38_combout\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X0_Y19_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X29_Y43_N22
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X11_Y12_N22
\p[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(35) = \B[35]~input_o\ $ (\A[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => p(35));

-- Location: LCCOMB_X9_Y12_N6
\PrefixNetwork|Gk[1][34]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][34]~136_combout\ = (\B[34]~input_o\ & ((\A[34]~input_o\) # ((\B[33]~input_o\ & \A[33]~input_o\)))) # (!\B[34]~input_o\ & (\B[33]~input_o\ & (\A[34]~input_o\ & \A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[33]~input_o\,
	combout => \PrefixNetwork|Gk[1][34]~136_combout\);

-- Location: LCCOMB_X9_Y12_N28
\PrefixNetwork|Gk[3][34]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][34]~137_combout\ = (!\PrefixNetwork|Gk[1][34]~136_combout\ & (((!p(34)) # (!p(33))) # (!\PrefixNetwork|Gk[1][32]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][34]~136_combout\,
	datab => \PrefixNetwork|Gk[1][32]~131_combout\,
	datac => p(33),
	datad => p(34),
	combout => \PrefixNetwork|Gk[3][34]~137_combout\);

-- Location: LCCOMB_X9_Y13_N14
\PrefixNetwork|Pk[2][34]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][34]~39_combout\ = (p(33) & (p(31) & (p(32) & p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(33),
	datab => p(31),
	datac => p(32),
	datad => p(34),
	combout => \PrefixNetwork|Pk[2][34]~39_combout\);

-- Location: LCCOMB_X9_Y12_N14
\PrefixNetwork|Gk[3][34]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][34]~138_combout\ = ((!\PrefixNetwork|Gk[3][30]~122_combout\ & \PrefixNetwork|Pk[2][34]~39_combout\)) # (!\PrefixNetwork|Gk[3][34]~137_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[3][34]~137_combout\,
	datac => \PrefixNetwork|Gk[3][30]~122_combout\,
	datad => \PrefixNetwork|Pk[2][34]~39_combout\,
	combout => \PrefixNetwork|Gk[3][34]~138_combout\);

-- Location: LCCOMB_X8_Y12_N12
\c[35]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[35]~54_combout\ = (\PrefixNetwork|Gk~63_combout\ & \c[11]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~63_combout\,
	datad => \c[11]~13_combout\,
	combout => \c[35]~54_combout\);

-- Location: LCCOMB_X8_Y12_N10
\PrefixNetwork|Pk[4][34]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][34]~40_combout\ = (\PrefixNetwork|Gk~110_combout\ & (\PrefixNetwork|Gk~104_combout\ & (\PrefixNetwork|Gk~120_combout\ & \PrefixNetwork|Pk[2][34]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~110_combout\,
	datab => \PrefixNetwork|Gk~104_combout\,
	datac => \PrefixNetwork|Gk~120_combout\,
	datad => \PrefixNetwork|Pk[2][34]~39_combout\,
	combout => \PrefixNetwork|Pk[4][34]~40_combout\);

-- Location: LCCOMB_X8_Y12_N22
\c[35]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[35]~55_combout\ = (\PrefixNetwork|Pk[4][34]~40_combout\ & ((\c[35]~54_combout\) # ((\PrefixNetwork|Gk~64_combout\) # (\PrefixNetwork|Gk[3][18]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[35]~54_combout\,
	datab => \PrefixNetwork|Gk~64_combout\,
	datac => \PrefixNetwork|Gk[3][18]~62_combout\,
	datad => \PrefixNetwork|Pk[4][34]~40_combout\,
	combout => \c[35]~55_combout\);

-- Location: LCCOMB_X8_Y12_N24
\PrefixNetwork|Gk~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~139_combout\ = (\PrefixNetwork|Gk~110_combout\ & (\PrefixNetwork|Gk[3][26]~103_combout\ & (\PrefixNetwork|Gk~120_combout\ & \PrefixNetwork|Pk[2][34]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~110_combout\,
	datab => \PrefixNetwork|Gk[3][26]~103_combout\,
	datac => \PrefixNetwork|Gk~120_combout\,
	datad => \PrefixNetwork|Pk[2][34]~39_combout\,
	combout => \PrefixNetwork|Gk~139_combout\);

-- Location: LCCOMB_X8_Y12_N14
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = p(35) $ (((\PrefixNetwork|Gk[3][34]~138_combout\) # ((\c[35]~55_combout\) # (\PrefixNetwork|Gk~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(35),
	datab => \PrefixNetwork|Gk[3][34]~138_combout\,
	datac => \c[35]~55_combout\,
	datad => \PrefixNetwork|Gk~139_combout\,
	combout => \S~47_combout\);

-- Location: LCCOMB_X12_Y10_N30
\PrefixNetwork|Gk~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~140_combout\ = (\PrefixNetwork|Gk~66_combout\ & (((!\PrefixNetwork|Gpre[7]~3_combout\ & \PrefixNetwork|Pk[2][11]~84_combout\)) # (!\PrefixNetwork|Gk[3][11]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][11]~31_combout\,
	datab => \PrefixNetwork|Gpre[7]~3_combout\,
	datac => \PrefixNetwork|Pk[2][11]~84_combout\,
	datad => \PrefixNetwork|Gk~66_combout\,
	combout => \PrefixNetwork|Gk~140_combout\);

-- Location: LCCOMB_X11_Y12_N24
\PrefixNetwork|Pk[2][35]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][35]~41_combout\ = (p(35) & (p(34) & (p(32) & p(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(35),
	datab => p(34),
	datac => p(32),
	datad => p(33),
	combout => \PrefixNetwork|Pk[2][35]~41_combout\);

-- Location: LCCOMB_X12_Y10_N28
\PrefixNetwork|Pk[4][35]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][35]~42_combout\ = (\PrefixNetwork|Pk[2][35]~41_combout\ & (\PrefixNetwork|Pk[2][31]~35_combout\ & \PrefixNetwork|Gk~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][35]~41_combout\,
	datab => \PrefixNetwork|Pk[2][31]~35_combout\,
	datad => \PrefixNetwork|Gk~109_combout\,
	combout => \PrefixNetwork|Pk[4][35]~42_combout\);

-- Location: LCCOMB_X12_Y10_N12
\c[36]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[36]~56_combout\ = (\PrefixNetwork|Pk[4][35]~42_combout\ & ((\c[36]~24_combout\) # ((\PrefixNetwork|Gk[3][19]~69_combout\) # (\PrefixNetwork|Gk~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[36]~24_combout\,
	datab => \PrefixNetwork|Gk[3][19]~69_combout\,
	datac => \PrefixNetwork|Gk~140_combout\,
	datad => \PrefixNetwork|Pk[4][35]~42_combout\,
	combout => \c[36]~56_combout\);

-- Location: IOIBUF_X0_Y31_N15
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X11_Y12_N14
\p[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(36) = \B[36]~input_o\ $ (\A[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => p(36));

-- Location: LCCOMB_X12_Y13_N20
\PrefixNetwork|Gk[1][35]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][35]~141_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # ((\B[34]~input_o\ & \A[34]~input_o\)))) # (!\B[35]~input_o\ & (\B[34]~input_o\ & (\A[35]~input_o\ & \A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \B[35]~input_o\,
	datac => \A[35]~input_o\,
	datad => \A[34]~input_o\,
	combout => \PrefixNetwork|Gk[1][35]~141_combout\);

-- Location: LCCOMB_X12_Y13_N6
\PrefixNetwork|Gk[3][35]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][35]~142_combout\ = (!\PrefixNetwork|Gk[1][35]~141_combout\ & (((!p(35)) # (!p(34))) # (!\PrefixNetwork|Gk[1][33]~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][33]~133_combout\,
	datab => \PrefixNetwork|Gk[1][35]~141_combout\,
	datac => p(34),
	datad => p(35),
	combout => \PrefixNetwork|Gk[3][35]~142_combout\);

-- Location: LCCOMB_X12_Y13_N4
\PrefixNetwork|Gk[3][35]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][35]~143_combout\ = ((!\PrefixNetwork|Gk[3][31]~127_combout\ & \PrefixNetwork|Pk[2][35]~41_combout\)) # (!\PrefixNetwork|Gk[3][35]~142_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][35]~142_combout\,
	datab => \PrefixNetwork|Gk[3][31]~127_combout\,
	datad => \PrefixNetwork|Pk[2][35]~41_combout\,
	combout => \PrefixNetwork|Gk[3][35]~143_combout\);

-- Location: LCCOMB_X12_Y10_N2
\PrefixNetwork|Gk~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~144_combout\ = (\PrefixNetwork|Pk[2][35]~41_combout\ & (\PrefixNetwork|Pk[2][31]~35_combout\ & \PrefixNetwork|Gk[3][27]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][35]~41_combout\,
	datab => \PrefixNetwork|Pk[2][31]~35_combout\,
	datad => \PrefixNetwork|Gk[3][27]~108_combout\,
	combout => \PrefixNetwork|Gk~144_combout\);

-- Location: LCCOMB_X12_Y10_N20
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = p(36) $ (((\c[36]~56_combout\) # ((\PrefixNetwork|Gk[3][35]~143_combout\) # (\PrefixNetwork|Gk~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[36]~56_combout\,
	datab => p(36),
	datac => \PrefixNetwork|Gk[3][35]~143_combout\,
	datad => \PrefixNetwork|Gk~144_combout\,
	combout => \S~48_combout\);

-- Location: LCCOMB_X11_Y12_N8
\PrefixNetwork|Pk[2][36]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][36]~43_combout\ = (p(35) & (p(34) & (p(36) & p(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(35),
	datab => p(34),
	datac => p(36),
	datad => p(33),
	combout => \PrefixNetwork|Pk[2][36]~43_combout\);

-- Location: LCCOMB_X8_Y10_N24
\PrefixNetwork|Pk[4][36]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][36]~44_combout\ = (p(31) & (p(32) & (\PrefixNetwork|Pk[2][36]~43_combout\ & \PrefixNetwork|Gk~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(31),
	datab => p(32),
	datac => \PrefixNetwork|Pk[2][36]~43_combout\,
	datad => \PrefixNetwork|Gk~120_combout\,
	combout => \PrefixNetwork|Pk[4][36]~44_combout\);

-- Location: LCCOMB_X8_Y10_N6
\PrefixNetwork|Gk~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~148_combout\ = (\PrefixNetwork|Gk[3][28]~113_combout\ & \PrefixNetwork|Pk[4][36]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][28]~113_combout\,
	datad => \PrefixNetwork|Pk[4][36]~44_combout\,
	combout => \PrefixNetwork|Gk~148_combout\);

-- Location: IOIBUF_X67_Y12_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X11_Y12_N12
\p[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(37) = \A[37]~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => p(37));

-- Location: LCCOMB_X11_Y12_N26
\PrefixNetwork|Gk[1][36]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][36]~145_combout\ = (\A[36]~input_o\ & ((\B[36]~input_o\) # ((\B[35]~input_o\ & \A[35]~input_o\)))) # (!\A[36]~input_o\ & (\B[35]~input_o\ & (\B[36]~input_o\ & \A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[35]~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[35]~input_o\,
	combout => \PrefixNetwork|Gk[1][36]~145_combout\);

-- Location: LCCOMB_X10_Y12_N28
\PrefixNetwork|Gk[3][36]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][36]~146_combout\ = (!\PrefixNetwork|Gk[1][36]~145_combout\ & (((!p(36)) # (!\PrefixNetwork|Gk[1][34]~136_combout\)) # (!p(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(35),
	datab => \PrefixNetwork|Gk[1][34]~136_combout\,
	datac => p(36),
	datad => \PrefixNetwork|Gk[1][36]~145_combout\,
	combout => \PrefixNetwork|Gk[3][36]~146_combout\);

-- Location: LCCOMB_X8_Y11_N8
\PrefixNetwork|Gk[3][36]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][36]~147_combout\ = ((\PrefixNetwork|Pk[2][36]~43_combout\ & !\PrefixNetwork|Gk[3][32]~132_combout\)) # (!\PrefixNetwork|Gk[3][36]~146_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][36]~43_combout\,
	datac => \PrefixNetwork|Gk[3][36]~146_combout\,
	datad => \PrefixNetwork|Gk[3][32]~132_combout\,
	combout => \PrefixNetwork|Gk[3][36]~147_combout\);

-- Location: LCCOMB_X8_Y13_N2
\PrefixNetwork|Pk[4][36]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][36]~45_combout\ = (\PrefixNetwork|Pk[2][32]~85_combout\ & (\PrefixNetwork|Pk[2][36]~43_combout\ & \PrefixNetwork|Gk~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][32]~85_combout\,
	datac => \PrefixNetwork|Pk[2][36]~43_combout\,
	datad => \PrefixNetwork|Gk~114_combout\,
	combout => \PrefixNetwork|Pk[4][36]~45_combout\);

-- Location: LCCOMB_X7_Y14_N26
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = (\PrefixNetwork|Gk~74_combout\ & ((\PrefixNetwork|Gk[3][12]~232_combout\) # (\c[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][12]~232_combout\,
	datac => \c[13]~16_combout\,
	datad => \PrefixNetwork|Gk~74_combout\,
	combout => \S~49_combout\);

-- Location: LCCOMB_X8_Y11_N6
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = (\PrefixNetwork|Pk[4][36]~45_combout\ & ((\PrefixNetwork|Gk[3][20]~73_combout\) # (\S~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[3][20]~73_combout\,
	datac => \PrefixNetwork|Pk[4][36]~45_combout\,
	datad => \S~49_combout\,
	combout => \S~50_combout\);

-- Location: LCCOMB_X8_Y11_N24
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = p(37) $ (((\PrefixNetwork|Gk~148_combout\) # ((\PrefixNetwork|Gk[3][36]~147_combout\) # (\S~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~148_combout\,
	datab => p(37),
	datac => \PrefixNetwork|Gk[3][36]~147_combout\,
	datad => \S~50_combout\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X0_Y10_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X11_Y12_N6
\PrefixNetwork|Pk[2][37]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][37]~46_combout\ = (p(37) & (p(36) & (p(35) & p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(37),
	datab => p(36),
	datac => p(35),
	datad => p(34),
	combout => \PrefixNetwork|Pk[2][37]~46_combout\);

-- Location: LCCOMB_X11_Y13_N24
\PrefixNetwork|Pk[4][37]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][37]~47_combout\ = (p(32) & (p(33) & (\PrefixNetwork|Gk~125_combout\ & \PrefixNetwork|Pk[2][37]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(32),
	datab => p(33),
	datac => \PrefixNetwork|Gk~125_combout\,
	datad => \PrefixNetwork|Pk[2][37]~46_combout\,
	combout => \PrefixNetwork|Pk[4][37]~47_combout\);

-- Location: LCCOMB_X11_Y13_N6
\PrefixNetwork|Gk~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~149_combout\ = (\PrefixNetwork|Gk[3][29]~118_combout\ & \PrefixNetwork|Pk[4][37]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk[3][29]~118_combout\,
	datad => \PrefixNetwork|Pk[4][37]~47_combout\,
	combout => \PrefixNetwork|Gk~149_combout\);

-- Location: LCCOMB_X12_Y13_N10
\PrefixNetwork|Gk[1][37]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][37]~150_combout\ = (\B[37]~input_o\ & ((\A[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\B[37]~input_o\ & (\A[36]~input_o\ & (\A[37]~input_o\ & \B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \A[36]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[36]~input_o\,
	combout => \PrefixNetwork|Gk[1][37]~150_combout\);

-- Location: LCCOMB_X15_Y13_N4
\PrefixNetwork|Gk[3][37]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][37]~151_combout\ = (!\PrefixNetwork|Gk[1][37]~150_combout\ & (((!p(37)) # (!\PrefixNetwork|Gk[1][35]~141_combout\)) # (!p(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][37]~150_combout\,
	datab => p(36),
	datac => \PrefixNetwork|Gk[1][35]~141_combout\,
	datad => p(37),
	combout => \PrefixNetwork|Gk[3][37]~151_combout\);

-- Location: LCCOMB_X15_Y13_N30
\PrefixNetwork|Gk[3][37]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][37]~152_combout\ = ((!\PrefixNetwork|Gk[3][33]~134_combout\ & \PrefixNetwork|Pk[2][37]~46_combout\)) # (!\PrefixNetwork|Gk[3][37]~151_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][33]~134_combout\,
	datac => \PrefixNetwork|Gk[3][37]~151_combout\,
	datad => \PrefixNetwork|Pk[2][37]~46_combout\,
	combout => \PrefixNetwork|Gk[3][37]~152_combout\);

-- Location: LCCOMB_X15_Y12_N18
\PrefixNetwork|Pk[4][37]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][37]~48_combout\ = (\PrefixNetwork|Gk~119_combout\ & (\PrefixNetwork|Pk[2][37]~46_combout\ & \PrefixNetwork|Pk[2][33]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~119_combout\,
	datac => \PrefixNetwork|Pk[2][37]~46_combout\,
	datad => \PrefixNetwork|Pk[2][33]~86_combout\,
	combout => \PrefixNetwork|Pk[4][37]~48_combout\);

-- Location: LCCOMB_X15_Y12_N20
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = (\PrefixNetwork|Gk~79_combout\ & ((\c[14]~17_combout\) # (\PrefixNetwork|Gk[3][13]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[14]~17_combout\,
	datac => \PrefixNetwork|Gk~79_combout\,
	datad => \PrefixNetwork|Gk[3][13]~39_combout\,
	combout => \S~52_combout\);

-- Location: LCCOMB_X15_Y12_N6
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = (\PrefixNetwork|Gk[3][37]~152_combout\) # ((\PrefixNetwork|Pk[4][37]~48_combout\ & ((\PrefixNetwork|Gk[3][21]~78_combout\) # (\S~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][37]~152_combout\,
	datab => \PrefixNetwork|Pk[4][37]~48_combout\,
	datac => \PrefixNetwork|Gk[3][21]~78_combout\,
	datad => \S~52_combout\,
	combout => \S~53_combout\);

-- Location: LCCOMB_X15_Y12_N4
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = \B[38]~input_o\ $ (\A[38]~input_o\ $ (((\PrefixNetwork|Gk~149_combout\) # (\S~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \PrefixNetwork|Gk~149_combout\,
	datad => \S~53_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X34_Y0_N22
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X10_Y12_N10
\PrefixNetwork|Gk~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~153_combout\ = (\B[38]~input_o\ & (!\A[38]~input_o\ & (\B[37]~input_o\ $ (\A[37]~input_o\)))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\B[37]~input_o\ $ (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \B[37]~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[38]~input_o\,
	combout => \PrefixNetwork|Gk~153_combout\);

-- Location: LCCOMB_X10_Y13_N12
\PrefixNetwork|Pk[4][38]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][38]~49_combout\ = (p(36) & (p(35) & (\PrefixNetwork|Gk~153_combout\ & \PrefixNetwork|Pk[2][34]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(36),
	datab => p(35),
	datac => \PrefixNetwork|Gk~153_combout\,
	datad => \PrefixNetwork|Pk[2][34]~39_combout\,
	combout => \PrefixNetwork|Pk[4][38]~49_combout\);

-- Location: LCCOMB_X10_Y12_N16
\PrefixNetwork|Pk[2][38]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][38]~87_combout\ = (\PrefixNetwork|Gk~153_combout\ & (p(36) & (\A[35]~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~153_combout\,
	datab => p(36),
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => \PrefixNetwork|Pk[2][38]~87_combout\);

-- Location: LCCOMB_X10_Y12_N8
\PrefixNetwork|Gk[1][38]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][38]~154_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # ((\B[37]~input_o\ & \A[37]~input_o\)))) # (!\A[38]~input_o\ & (\B[37]~input_o\ & (\A[37]~input_o\ & \B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \A[38]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[38]~input_o\,
	combout => \PrefixNetwork|Gk[1][38]~154_combout\);

-- Location: LCCOMB_X10_Y12_N26
\PrefixNetwork|Gk[3][38]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][38]~155_combout\ = (!\PrefixNetwork|Gk[1][38]~154_combout\ & ((!\PrefixNetwork|Gk[1][36]~145_combout\) # (!\PrefixNetwork|Gk~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~153_combout\,
	datac => \PrefixNetwork|Gk[1][38]~154_combout\,
	datad => \PrefixNetwork|Gk[1][36]~145_combout\,
	combout => \PrefixNetwork|Gk[3][38]~155_combout\);

-- Location: LCCOMB_X10_Y12_N12
\PrefixNetwork|Gk[3][38]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][38]~156_combout\ = ((\PrefixNetwork|Pk[2][38]~87_combout\ & !\PrefixNetwork|Gk[3][34]~137_combout\)) # (!\PrefixNetwork|Gk[3][38]~155_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][38]~87_combout\,
	datac => \PrefixNetwork|Gk[3][38]~155_combout\,
	datad => \PrefixNetwork|Gk[3][34]~137_combout\,
	combout => \PrefixNetwork|Gk[3][38]~156_combout\);

-- Location: LCCOMB_X10_Y15_N22
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = (\PrefixNetwork|Gk[3][38]~156_combout\) # ((\PrefixNetwork|Gk[3][30]~123_combout\ & \PrefixNetwork|Pk[4][38]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[3][30]~123_combout\,
	datac => \PrefixNetwork|Pk[4][38]~49_combout\,
	datad => \PrefixNetwork|Gk[3][38]~156_combout\,
	combout => \S~55_combout\);

-- Location: LCCOMB_X10_Y15_N24
\PrefixNetwork|Pk[4][38]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][38]~50_combout\ = (\PrefixNetwork|Gk~124_combout\ & (\PrefixNetwork|Pk[2][34]~39_combout\ & \PrefixNetwork|Pk[2][38]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~124_combout\,
	datac => \PrefixNetwork|Pk[2][34]~39_combout\,
	datad => \PrefixNetwork|Pk[2][38]~87_combout\,
	combout => \PrefixNetwork|Pk[4][38]~50_combout\);

-- Location: LCCOMB_X10_Y15_N10
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = (\PrefixNetwork|Pk[4][38]~50_combout\ & ((\PrefixNetwork|Gk[3][22]~83_combout\) # ((\PrefixNetwork|Gk~84_combout\ & \c[39]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~84_combout\,
	datab => \PrefixNetwork|Pk[4][38]~50_combout\,
	datac => \PrefixNetwork|Gk[3][22]~83_combout\,
	datad => \c[39]~18_combout\,
	combout => \S~56_combout\);

-- Location: LCCOMB_X10_Y15_N8
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = \A[39]~input_o\ $ (\B[39]~input_o\ $ (((\S~55_combout\) # (\S~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[39]~input_o\,
	datac => \S~55_combout\,
	datad => \S~56_combout\,
	combout => \S~57_combout\);

-- Location: IOIBUF_X0_Y37_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X15_Y12_N14
\PrefixNetwork|Gk~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~158_combout\ = (\B[38]~input_o\ & (!\A[38]~input_o\ & (\A[39]~input_o\ $ (\B[39]~input_o\)))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\A[39]~input_o\ $ (\B[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \PrefixNetwork|Gk~158_combout\);

-- Location: LCCOMB_X11_Y12_N16
\PrefixNetwork|Pk[4][39]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][39]~51_combout\ = (p(37) & (p(36) & (\PrefixNetwork|Gk~158_combout\ & \PrefixNetwork|Pk[2][35]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(37),
	datab => p(36),
	datac => \PrefixNetwork|Gk~158_combout\,
	datad => \PrefixNetwork|Pk[2][35]~41_combout\,
	combout => \PrefixNetwork|Pk[4][39]~51_combout\);

-- Location: LCCOMB_X11_Y12_N18
\PrefixNetwork|Pk[4][39]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][39]~52_combout\ = (\PrefixNetwork|Gk~95_combout\ & (\PrefixNetwork|Pk[2][31]~35_combout\ & (\PrefixNetwork|Gk~105_combout\ & \PrefixNetwork|Pk[4][39]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~95_combout\,
	datab => \PrefixNetwork|Pk[2][31]~35_combout\,
	datac => \PrefixNetwork|Gk~105_combout\,
	datad => \PrefixNetwork|Pk[4][39]~51_combout\,
	combout => \PrefixNetwork|Pk[4][39]~52_combout\);

-- Location: LCCOMB_X12_Y14_N8
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = (\PrefixNetwork|Pk[4][39]~51_combout\ & ((\PrefixNetwork|Gk[3][31]~128_combout\) # ((\c[24]~36_combout\ & \PrefixNetwork|Pk[4][39]~52_combout\)))) # (!\PrefixNetwork|Pk[4][39]~51_combout\ & (\c[24]~36_combout\ & 
-- (\PrefixNetwork|Pk[4][39]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][39]~51_combout\,
	datab => \c[24]~36_combout\,
	datac => \PrefixNetwork|Pk[4][39]~52_combout\,
	datad => \PrefixNetwork|Gk[3][31]~128_combout\,
	combout => \S~58_combout\);

-- Location: LCCOMB_X12_Y13_N8
\PrefixNetwork|Gk~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~157_combout\ = (\B[37]~input_o\ & (!\A[37]~input_o\ & (\A[36]~input_o\ $ (\B[36]~input_o\)))) # (!\B[37]~input_o\ & (\A[37]~input_o\ & (\A[36]~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[36]~input_o\,
	datad => \B[36]~input_o\,
	combout => \PrefixNetwork|Gk~157_combout\);

-- Location: LCCOMB_X15_Y12_N0
\PrefixNetwork|Gk[1][39]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][39]~159_combout\ = (\A[39]~input_o\ & ((\B[39]~input_o\) # ((\B[38]~input_o\ & \A[38]~input_o\)))) # (!\A[39]~input_o\ & (\B[38]~input_o\ & (\A[38]~input_o\ & \B[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \PrefixNetwork|Gk[1][39]~159_combout\);

-- Location: LCCOMB_X12_Y13_N22
\PrefixNetwork|Gk[3][39]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][39]~160_combout\ = (!\PrefixNetwork|Gk[1][39]~159_combout\ & ((!\PrefixNetwork|Gk~158_combout\) # (!\PrefixNetwork|Gk[1][37]~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][37]~150_combout\,
	datab => \PrefixNetwork|Gk[1][39]~159_combout\,
	datad => \PrefixNetwork|Gk~158_combout\,
	combout => \PrefixNetwork|Gk[3][39]~160_combout\);

-- Location: LCCOMB_X12_Y13_N0
\PrefixNetwork|Gk[3][39]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][39]~161_combout\ = ((\PrefixNetwork|Gk~158_combout\ & (\PrefixNetwork|Gk~157_combout\ & !\PrefixNetwork|Gk[3][35]~142_combout\))) # (!\PrefixNetwork|Gk[3][39]~160_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~158_combout\,
	datab => \PrefixNetwork|Gk~157_combout\,
	datac => \PrefixNetwork|Gk[3][39]~160_combout\,
	datad => \PrefixNetwork|Gk[3][35]~142_combout\,
	combout => \PrefixNetwork|Gk[3][39]~161_combout\);

-- Location: LCCOMB_X12_Y14_N26
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = \B[40]~input_o\ $ (\A[40]~input_o\ $ (((\S~58_combout\) # (\PrefixNetwork|Gk[3][39]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[40]~input_o\,
	datac => \S~58_combout\,
	datad => \PrefixNetwork|Gk[3][39]~161_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X0_Y12_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X12_Y12_N6
\p[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(41) = \B[41]~input_o\ $ (\A[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[41]~input_o\,
	datad => \A[41]~input_o\,
	combout => p(41));

-- Location: LCCOMB_X8_Y13_N24
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = (\PrefixNetwork|Gk[3][24]~93_combout\) # ((\c[41]~37_combout\) # ((\PrefixNetwork|Gk[3][16]~51_combout\ & \PrefixNetwork|Gk~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][24]~93_combout\,
	datab => \PrefixNetwork|Gk[3][16]~51_combout\,
	datac => \PrefixNetwork|Gk~94_combout\,
	datad => \c[41]~37_combout\,
	combout => \S~61_combout\);

-- Location: LCCOMB_X12_Y12_N20
\PrefixNetwork|Gk~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~162_combout\ = (\B[39]~input_o\ & (!\A[39]~input_o\ & (\B[40]~input_o\ $ (\A[40]~input_o\)))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & (\B[40]~input_o\ $ (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[39]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \PrefixNetwork|Gk~162_combout\);

-- Location: LCCOMB_X12_Y12_N24
\PrefixNetwork|Gk[1][40]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][40]~163_combout\ = (\B[40]~input_o\ & ((\A[40]~input_o\) # ((\B[39]~input_o\ & \A[39]~input_o\)))) # (!\B[40]~input_o\ & (\B[39]~input_o\ & (\A[39]~input_o\ & \A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[39]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \PrefixNetwork|Gk[1][40]~163_combout\);

-- Location: LCCOMB_X12_Y12_N10
\PrefixNetwork|Gk[3][40]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][40]~164_combout\ = (!\PrefixNetwork|Gk[1][40]~163_combout\ & ((!\PrefixNetwork|Gk[1][38]~154_combout\) # (!\PrefixNetwork|Gk~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~162_combout\,
	datac => \PrefixNetwork|Gk[1][38]~154_combout\,
	datad => \PrefixNetwork|Gk[1][40]~163_combout\,
	combout => \PrefixNetwork|Gk[3][40]~164_combout\);

-- Location: LCCOMB_X8_Y10_N0
\PrefixNetwork|Pk[2][40]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][40]~53_combout\ = (\PrefixNetwork|Gk~162_combout\ & (p(37) & (\B[38]~input_o\ $ (\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \PrefixNetwork|Gk~162_combout\,
	datad => p(37),
	combout => \PrefixNetwork|Pk[2][40]~53_combout\);

-- Location: LCCOMB_X8_Y10_N16
\PrefixNetwork|Gk~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~165_combout\ = (\PrefixNetwork|Pk[2][36]~43_combout\ & (((!\PrefixNetwork|Gk[3][28]~112_combout\ & \PrefixNetwork|Pk[2][32]~85_combout\)) # (!\PrefixNetwork|Gk[3][32]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][28]~112_combout\,
	datab => \PrefixNetwork|Gk[3][32]~132_combout\,
	datac => \PrefixNetwork|Pk[2][36]~43_combout\,
	datad => \PrefixNetwork|Pk[2][32]~85_combout\,
	combout => \PrefixNetwork|Gk~165_combout\);

-- Location: LCCOMB_X8_Y10_N18
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = (\PrefixNetwork|Gk[3][40]~164_combout\ & (((\PrefixNetwork|Gk[3][36]~146_combout\ & !\PrefixNetwork|Gk~165_combout\)) # (!\PrefixNetwork|Pk[2][40]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][40]~164_combout\,
	datab => \PrefixNetwork|Pk[2][40]~53_combout\,
	datac => \PrefixNetwork|Gk[3][36]~146_combout\,
	datad => \PrefixNetwork|Gk~165_combout\,
	combout => \S~60_combout\);

-- Location: LCCOMB_X8_Y10_N26
\PrefixNetwork|Pk[4][40]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][40]~54_combout\ = (\PrefixNetwork|Gk~110_combout\ & (\PrefixNetwork|Pk[2][40]~53_combout\ & (\PrefixNetwork|Gk~100_combout\ & \PrefixNetwork|Pk[4][36]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~110_combout\,
	datab => \PrefixNetwork|Pk[2][40]~53_combout\,
	datac => \PrefixNetwork|Gk~100_combout\,
	datad => \PrefixNetwork|Pk[4][36]~44_combout\,
	combout => \PrefixNetwork|Pk[4][40]~54_combout\);

-- Location: LCCOMB_X8_Y13_N6
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = p(41) $ ((((\S~61_combout\ & \PrefixNetwork|Pk[4][40]~54_combout\)) # (!\S~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(41),
	datab => \S~61_combout\,
	datac => \S~60_combout\,
	datad => \PrefixNetwork|Pk[4][40]~54_combout\,
	combout => \S~62_combout\);

-- Location: IOIBUF_X25_Y43_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X25_Y43_N15
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X12_Y12_N26
\p[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(42) = \B[42]~input_o\ $ (\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => p(42));

-- Location: LCCOMB_X14_Y13_N28
\S~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~64_combout\ = (\PrefixNetwork|Gk[3][25]~98_combout\) # ((\c[42]~39_combout\) # ((\PrefixNetwork|Gk[3][17]~56_combout\ & \PrefixNetwork|Gk~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][17]~56_combout\,
	datab => \PrefixNetwork|Gk~99_combout\,
	datac => \PrefixNetwork|Gk[3][25]~98_combout\,
	datad => \c[42]~39_combout\,
	combout => \S~64_combout\);

-- Location: LCCOMB_X12_Y12_N0
\PrefixNetwork|Gk[1][41]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][41]~167_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\B[40]~input_o\ & \A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \PrefixNetwork|Gk[1][41]~167_combout\);

-- Location: LCCOMB_X12_Y12_N8
\PrefixNetwork|Gk~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~166_combout\ = (\A[40]~input_o\ & (!\B[40]~input_o\ & (\B[41]~input_o\ $ (\A[41]~input_o\)))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & (\B[41]~input_o\ $ (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \B[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[41]~input_o\,
	combout => \PrefixNetwork|Gk~166_combout\);

-- Location: LCCOMB_X15_Y12_N12
\PrefixNetwork|Gk[3][41]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][41]~168_combout\ = (!\PrefixNetwork|Gk[1][41]~167_combout\ & ((!\PrefixNetwork|Gk~166_combout\) # (!\PrefixNetwork|Gk[1][39]~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][39]~159_combout\,
	datac => \PrefixNetwork|Gk[1][41]~167_combout\,
	datad => \PrefixNetwork|Gk~166_combout\,
	combout => \PrefixNetwork|Gk[3][41]~168_combout\);

-- Location: LCCOMB_X15_Y12_N10
\PrefixNetwork|Pk[2][41]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][41]~55_combout\ = (\PrefixNetwork|Gk~158_combout\ & \PrefixNetwork|Gk~166_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk~158_combout\,
	datad => \PrefixNetwork|Gk~166_combout\,
	combout => \PrefixNetwork|Pk[2][41]~55_combout\);

-- Location: LCCOMB_X14_Y13_N20
\PrefixNetwork|Gk~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~169_combout\ = (\PrefixNetwork|Pk[2][37]~46_combout\ & (((\PrefixNetwork|Pk[2][33]~86_combout\ & !\PrefixNetwork|Gk[3][29]~117_combout\)) # (!\PrefixNetwork|Gk[3][33]~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][33]~86_combout\,
	datab => \PrefixNetwork|Gk[3][29]~117_combout\,
	datac => \PrefixNetwork|Gk[3][33]~134_combout\,
	datad => \PrefixNetwork|Pk[2][37]~46_combout\,
	combout => \PrefixNetwork|Gk~169_combout\);

-- Location: LCCOMB_X14_Y13_N22
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = (\PrefixNetwork|Gk[3][41]~168_combout\ & (((\PrefixNetwork|Gk[3][37]~151_combout\ & !\PrefixNetwork|Gk~169_combout\)) # (!\PrefixNetwork|Pk[2][41]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][37]~151_combout\,
	datab => \PrefixNetwork|Gk[3][41]~168_combout\,
	datac => \PrefixNetwork|Pk[2][41]~55_combout\,
	datad => \PrefixNetwork|Gk~169_combout\,
	combout => \S~63_combout\);

-- Location: LCCOMB_X14_Y13_N6
\PrefixNetwork|Pk[4][41]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][41]~56_combout\ = (\PrefixNetwork|Gk~105_combout\ & (\PrefixNetwork|Gk~115_combout\ & (\PrefixNetwork|Pk[2][41]~55_combout\ & \PrefixNetwork|Pk[4][37]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~105_combout\,
	datab => \PrefixNetwork|Gk~115_combout\,
	datac => \PrefixNetwork|Pk[2][41]~55_combout\,
	datad => \PrefixNetwork|Pk[4][37]~47_combout\,
	combout => \PrefixNetwork|Pk[4][41]~56_combout\);

-- Location: LCCOMB_X14_Y13_N30
\S~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~65_combout\ = p(42) $ ((((\S~64_combout\ & \PrefixNetwork|Pk[4][41]~56_combout\)) # (!\S~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(42),
	datab => \S~64_combout\,
	datac => \S~63_combout\,
	datad => \PrefixNetwork|Pk[4][41]~56_combout\,
	combout => \S~65_combout\);

-- Location: IOIBUF_X11_Y43_N15
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X12_Y11_N28
\p[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(43) = \A[43]~input_o\ $ (\B[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[43]~input_o\,
	datad => \B[43]~input_o\,
	combout => p(43));

-- Location: LCCOMB_X9_Y15_N28
\S~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~67_combout\ = (\PrefixNetwork|Gk[3][26]~103_combout\) # ((\c[43]~42_combout\) # ((\PrefixNetwork|Gk[3][18]~62_combout\ & \PrefixNetwork|Gk~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][18]~62_combout\,
	datab => \PrefixNetwork|Gk[3][26]~103_combout\,
	datac => \c[43]~42_combout\,
	datad => \PrefixNetwork|Gk~104_combout\,
	combout => \S~67_combout\);

-- Location: LCCOMB_X11_Y12_N4
\PrefixNetwork|Pk[2][42]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][42]~57_combout\ = (\PrefixNetwork|Gk~162_combout\ & (p(42) & (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[41]~input_o\,
	datac => \PrefixNetwork|Gk~162_combout\,
	datad => p(42),
	combout => \PrefixNetwork|Pk[2][42]~57_combout\);

-- Location: LCCOMB_X12_Y12_N30
\PrefixNetwork|Gk[1][42]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][42]~170_combout\ = (\B[42]~input_o\ & ((\A[42]~input_o\) # ((\A[41]~input_o\ & \B[41]~input_o\)))) # (!\B[42]~input_o\ & (\A[41]~input_o\ & (\B[41]~input_o\ & \A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[41]~input_o\,
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \PrefixNetwork|Gk[1][42]~170_combout\);

-- Location: LCCOMB_X12_Y12_N28
\PrefixNetwork|Gk[3][42]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][42]~171_combout\ = (!\PrefixNetwork|Gk[1][42]~170_combout\ & (((!\PrefixNetwork|Gk[1][40]~163_combout\) # (!p(42))) # (!p(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][42]~170_combout\,
	datab => p(41),
	datac => p(42),
	datad => \PrefixNetwork|Gk[1][40]~163_combout\,
	combout => \PrefixNetwork|Gk[3][42]~171_combout\);

-- Location: LCCOMB_X10_Y12_N22
\PrefixNetwork|Gk[3][42]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][42]~172_combout\ = ((\PrefixNetwork|Pk[2][42]~57_combout\ & !\PrefixNetwork|Gk[3][38]~155_combout\)) # (!\PrefixNetwork|Gk[3][42]~171_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][42]~57_combout\,
	datac => \PrefixNetwork|Gk[3][38]~155_combout\,
	datad => \PrefixNetwork|Gk[3][42]~171_combout\,
	combout => \PrefixNetwork|Gk[3][42]~172_combout\);

-- Location: LCCOMB_X10_Y12_N20
\S~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~66_combout\ = (\PrefixNetwork|Gk[3][42]~172_combout\) # ((\PrefixNetwork|Pk[2][42]~57_combout\ & (\PrefixNetwork|Pk[2][38]~87_combout\ & \PrefixNetwork|Gk[3][34]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][42]~57_combout\,
	datab => \PrefixNetwork|Pk[2][38]~87_combout\,
	datac => \PrefixNetwork|Gk[3][42]~172_combout\,
	datad => \PrefixNetwork|Gk[3][34]~138_combout\,
	combout => \S~66_combout\);

-- Location: LCCOMB_X10_Y13_N10
\PrefixNetwork|Pk[4][42]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][42]~58_combout\ = (\PrefixNetwork|Gk~110_combout\ & (\PrefixNetwork|Gk~120_combout\ & (\PrefixNetwork|Pk[2][42]~57_combout\ & \PrefixNetwork|Pk[4][38]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~110_combout\,
	datab => \PrefixNetwork|Gk~120_combout\,
	datac => \PrefixNetwork|Pk[2][42]~57_combout\,
	datad => \PrefixNetwork|Pk[4][38]~49_combout\,
	combout => \PrefixNetwork|Pk[4][42]~58_combout\);

-- Location: LCCOMB_X9_Y15_N18
\S~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~68_combout\ = p(43) $ (((\S~66_combout\) # ((\S~67_combout\ & \PrefixNetwork|Pk[4][42]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(43),
	datab => \S~67_combout\,
	datac => \S~66_combout\,
	datad => \PrefixNetwork|Pk[4][42]~58_combout\,
	combout => \S~68_combout\);

-- Location: LCCOMB_X12_Y12_N22
\PrefixNetwork|Pk[2][43]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][43]~59_combout\ = (\PrefixNetwork|Gk~166_combout\ & (p(42) & (\B[43]~input_o\ $ (\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \PrefixNetwork|Gk~166_combout\,
	datac => p(42),
	datad => \A[43]~input_o\,
	combout => \PrefixNetwork|Pk[2][43]~59_combout\);

-- Location: LCCOMB_X11_Y10_N12
\PrefixNetwork|Pk[4][43]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][43]~60_combout\ = (\PrefixNetwork|Pk[4][39]~51_combout\ & (\PrefixNetwork|Pk[2][31]~35_combout\ & \PrefixNetwork|Pk[2][43]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][39]~51_combout\,
	datab => \PrefixNetwork|Pk[2][31]~35_combout\,
	datad => \PrefixNetwork|Pk[2][43]~59_combout\,
	combout => \PrefixNetwork|Pk[4][43]~60_combout\);

-- Location: IOIBUF_X32_Y43_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X0_Y41_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X12_Y11_N22
\p[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(44) = \B[44]~input_o\ $ (\A[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => p(44));

-- Location: LCCOMB_X11_Y10_N8
\S~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~70_combout\ = (\PrefixNetwork|Gk[3][27]~108_combout\) # ((\c[44]~45_combout\) # ((\PrefixNetwork|Gk[3][19]~69_combout\ & \PrefixNetwork|Gk~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][19]~69_combout\,
	datab => \PrefixNetwork|Gk~109_combout\,
	datac => \PrefixNetwork|Gk[3][27]~108_combout\,
	datad => \c[44]~45_combout\,
	combout => \S~70_combout\);

-- Location: LCCOMB_X11_Y12_N10
\PrefixNetwork|Gk~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~173_combout\ = (p(37) & (p(36) & (\PrefixNetwork|Gk~158_combout\ & \PrefixNetwork|Pk[2][43]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(37),
	datab => p(36),
	datac => \PrefixNetwork|Gk~158_combout\,
	datad => \PrefixNetwork|Pk[2][43]~59_combout\,
	combout => \PrefixNetwork|Gk~173_combout\);

-- Location: LCCOMB_X12_Y12_N12
\PrefixNetwork|Gk[1][43]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][43]~174_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # ((\B[42]~input_o\ & \A[42]~input_o\)))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & (\B[42]~input_o\ & \A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[43]~input_o\,
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \PrefixNetwork|Gk[1][43]~174_combout\);

-- Location: LCCOMB_X12_Y12_N14
\PrefixNetwork|Gk[3][43]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][43]~175_combout\ = (!\PrefixNetwork|Gk[1][43]~174_combout\ & (((!p(43)) # (!\PrefixNetwork|Gk[1][41]~167_combout\)) # (!p(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(42),
	datab => \PrefixNetwork|Gk[1][41]~167_combout\,
	datac => p(43),
	datad => \PrefixNetwork|Gk[1][43]~174_combout\,
	combout => \PrefixNetwork|Gk[3][43]~175_combout\);

-- Location: LCCOMB_X12_Y10_N26
\PrefixNetwork|Gk[3][43]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][43]~176_combout\ = ((\PrefixNetwork|Pk[2][43]~59_combout\ & !\PrefixNetwork|Gk[3][39]~160_combout\)) # (!\PrefixNetwork|Gk[3][43]~175_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][43]~59_combout\,
	datac => \PrefixNetwork|Gk[3][43]~175_combout\,
	datad => \PrefixNetwork|Gk[3][39]~160_combout\,
	combout => \PrefixNetwork|Gk[3][43]~176_combout\);

-- Location: LCCOMB_X11_Y10_N18
\S~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~69_combout\ = (\PrefixNetwork|Gk[3][43]~176_combout\) # ((\PrefixNetwork|Gk[3][35]~143_combout\ & \PrefixNetwork|Gk~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][35]~143_combout\,
	datac => \PrefixNetwork|Gk~173_combout\,
	datad => \PrefixNetwork|Gk[3][43]~176_combout\,
	combout => \S~69_combout\);

-- Location: LCCOMB_X11_Y10_N30
\S~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~71_combout\ = p(44) $ (((\S~69_combout\) # ((\PrefixNetwork|Pk[4][43]~60_combout\ & \S~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][43]~60_combout\,
	datab => p(44),
	datac => \S~70_combout\,
	datad => \S~69_combout\,
	combout => \S~71_combout\);

-- Location: LCCOMB_X12_Y11_N4
\PrefixNetwork|Gk[1][44]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][44]~177_combout\ = (\A[44]~input_o\ & ((\B[44]~input_o\) # ((\B[43]~input_o\ & \A[43]~input_o\)))) # (!\A[44]~input_o\ & (\B[43]~input_o\ & (\A[43]~input_o\ & \B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[43]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[44]~input_o\,
	combout => \PrefixNetwork|Gk[1][44]~177_combout\);

-- Location: LCCOMB_X12_Y11_N6
\PrefixNetwork|Gk[3][44]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][44]~178_combout\ = (!\PrefixNetwork|Gk[1][44]~177_combout\ & (((!p(44)) # (!p(43))) # (!\PrefixNetwork|Gk[1][42]~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][42]~170_combout\,
	datab => p(43),
	datac => \PrefixNetwork|Gk[1][44]~177_combout\,
	datad => p(44),
	combout => \PrefixNetwork|Gk[3][44]~178_combout\);

-- Location: LCCOMB_X11_Y12_N28
\PrefixNetwork|Pk[2][44]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][44]~61_combout\ = (p(41) & (p(42) & (p(43) & p(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(41),
	datab => p(42),
	datac => p(43),
	datad => p(44),
	combout => \PrefixNetwork|Pk[2][44]~61_combout\);

-- Location: LCCOMB_X12_Y11_N12
\PrefixNetwork|Gk[3][44]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][44]~179_combout\ = ((\PrefixNetwork|Pk[2][44]~61_combout\ & !\PrefixNetwork|Gk[3][40]~164_combout\)) # (!\PrefixNetwork|Gk[3][44]~178_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][44]~178_combout\,
	datac => \PrefixNetwork|Pk[2][44]~61_combout\,
	datad => \PrefixNetwork|Gk[3][40]~164_combout\,
	combout => \PrefixNetwork|Gk[3][44]~179_combout\);

-- Location: IOIBUF_X16_Y0_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X12_Y11_N10
\p[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(45) = \B[45]~input_o\ $ (\A[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datac => \A[45]~input_o\,
	combout => p(45));

-- Location: LCCOMB_X7_Y11_N14
\PrefixNetwork|Pk[4][44]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][44]~62_combout\ = (\PrefixNetwork|Pk[2][36]~43_combout\ & (\PrefixNetwork|Pk[2][32]~85_combout\ & (\PrefixNetwork|Pk[2][44]~61_combout\ & \PrefixNetwork|Pk[2][40]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][36]~43_combout\,
	datab => \PrefixNetwork|Pk[2][32]~85_combout\,
	datac => \PrefixNetwork|Pk[2][44]~61_combout\,
	datad => \PrefixNetwork|Pk[2][40]~53_combout\,
	combout => \PrefixNetwork|Pk[4][44]~62_combout\);

-- Location: LCCOMB_X7_Y11_N8
\c[45]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[45]~57_combout\ = (\PrefixNetwork|Pk[4][28]~32_combout\ & (\PrefixNetwork|Pk[4][44]~62_combout\ & ((\PrefixNetwork|Gk[3][12]~232_combout\) # (\c[13]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][12]~232_combout\,
	datab => \PrefixNetwork|Pk[4][28]~32_combout\,
	datac => \PrefixNetwork|Pk[4][44]~62_combout\,
	datad => \c[13]~16_combout\,
	combout => \c[45]~57_combout\);

-- Location: LCCOMB_X7_Y11_N10
\c[45]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[45]~58_combout\ = (\PrefixNetwork|Pk[4][44]~62_combout\ & ((\PrefixNetwork|Gk[3][28]~113_combout\) # ((\PrefixNetwork|Gk~114_combout\ & \PrefixNetwork|Gk[3][20]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~114_combout\,
	datab => \PrefixNetwork|Gk[3][20]~73_combout\,
	datac => \PrefixNetwork|Pk[4][44]~62_combout\,
	datad => \PrefixNetwork|Gk[3][28]~113_combout\,
	combout => \c[45]~58_combout\);

-- Location: LCCOMB_X7_Y11_N20
\c[45]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[45]~59_combout\ = (\c[45]~58_combout\) # ((\PrefixNetwork|Pk[2][40]~53_combout\ & (\PrefixNetwork|Pk[2][44]~61_combout\ & \PrefixNetwork|Gk[3][36]~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][40]~53_combout\,
	datab => \PrefixNetwork|Pk[2][44]~61_combout\,
	datac => \PrefixNetwork|Gk[3][36]~147_combout\,
	datad => \c[45]~58_combout\,
	combout => \c[45]~59_combout\);

-- Location: LCCOMB_X7_Y11_N30
\S~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~72_combout\ = p(45) $ (((\PrefixNetwork|Gk[3][44]~179_combout\) # ((\c[45]~57_combout\) # (\c[45]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][44]~179_combout\,
	datab => p(45),
	datac => \c[45]~57_combout\,
	datad => \c[45]~59_combout\,
	combout => \S~72_combout\);

-- Location: LCCOMB_X12_Y11_N24
\PrefixNetwork|Pk[2][45]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][45]~63_combout\ = (p(45) & (p(43) & (p(44) & p(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(45),
	datab => p(43),
	datac => p(44),
	datad => p(42),
	combout => \PrefixNetwork|Pk[2][45]~63_combout\);

-- Location: LCCOMB_X12_Y11_N30
\PrefixNetwork|Gk[1][45]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][45]~180_combout\ = (\B[45]~input_o\ & ((\A[45]~input_o\) # ((\B[44]~input_o\ & \A[44]~input_o\)))) # (!\B[45]~input_o\ & (\A[45]~input_o\ & (\B[44]~input_o\ & \A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \PrefixNetwork|Gk[1][45]~180_combout\);

-- Location: LCCOMB_X15_Y11_N24
\PrefixNetwork|Gk[3][45]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][45]~181_combout\ = (!\PrefixNetwork|Gk[1][45]~180_combout\ & (((!\PrefixNetwork|Gk[1][43]~174_combout\) # (!p(44))) # (!p(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][45]~180_combout\,
	datab => p(45),
	datac => p(44),
	datad => \PrefixNetwork|Gk[1][43]~174_combout\,
	combout => \PrefixNetwork|Gk[3][45]~181_combout\);

-- Location: LCCOMB_X15_Y11_N30
\PrefixNetwork|Gk[3][45]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][45]~182_combout\ = ((\PrefixNetwork|Pk[2][45]~63_combout\ & !\PrefixNetwork|Gk[3][41]~168_combout\)) # (!\PrefixNetwork|Gk[3][45]~181_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][45]~63_combout\,
	datac => \PrefixNetwork|Gk[3][41]~168_combout\,
	datad => \PrefixNetwork|Gk[3][45]~181_combout\,
	combout => \PrefixNetwork|Gk[3][45]~182_combout\);

-- Location: IOIBUF_X16_Y0_N22
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X29_Y43_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X12_Y11_N20
\p[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(46) = \A[46]~input_o\ $ (\B[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[46]~input_o\,
	datad => \B[46]~input_o\,
	combout => p(46));

-- Location: LCCOMB_X15_Y12_N22
\PrefixNetwork|Pk[4][45]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][45]~64_combout\ = (\PrefixNetwork|Pk[2][41]~55_combout\ & (\PrefixNetwork|Pk[2][33]~86_combout\ & (\PrefixNetwork|Pk[2][37]~46_combout\ & \PrefixNetwork|Pk[2][45]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][41]~55_combout\,
	datab => \PrefixNetwork|Pk[2][33]~86_combout\,
	datac => \PrefixNetwork|Pk[2][37]~46_combout\,
	datad => \PrefixNetwork|Pk[2][45]~63_combout\,
	combout => \PrefixNetwork|Pk[4][45]~64_combout\);

-- Location: LCCOMB_X15_Y12_N2
\c[46]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[46]~61_combout\ = (\PrefixNetwork|Pk[4][45]~64_combout\ & ((\PrefixNetwork|Gk[3][29]~118_combout\) # ((\PrefixNetwork|Gk~119_combout\ & \PrefixNetwork|Gk[3][21]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~119_combout\,
	datab => \PrefixNetwork|Gk[3][21]~78_combout\,
	datac => \PrefixNetwork|Pk[4][45]~64_combout\,
	datad => \PrefixNetwork|Gk[3][29]~118_combout\,
	combout => \c[46]~61_combout\);

-- Location: LCCOMB_X15_Y12_N8
\c[46]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[46]~62_combout\ = (\c[46]~61_combout\) # ((\PrefixNetwork|Pk[2][41]~55_combout\ & (\PrefixNetwork|Pk[2][45]~63_combout\ & \PrefixNetwork|Gk[3][37]~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][41]~55_combout\,
	datab => \PrefixNetwork|Pk[2][45]~63_combout\,
	datac => \PrefixNetwork|Gk[3][37]~152_combout\,
	datad => \c[46]~61_combout\,
	combout => \c[46]~62_combout\);

-- Location: LCCOMB_X15_Y12_N24
\c[46]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[46]~60_combout\ = (\PrefixNetwork|Pk[4][45]~64_combout\ & (\PrefixNetwork|Pk[4][29]~33_combout\ & ((\PrefixNetwork|Gk[3][13]~39_combout\) # (\c[14]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][45]~64_combout\,
	datab => \PrefixNetwork|Pk[4][29]~33_combout\,
	datac => \PrefixNetwork|Gk[3][13]~39_combout\,
	datad => \c[14]~17_combout\,
	combout => \c[46]~60_combout\);

-- Location: LCCOMB_X15_Y12_N30
\S~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~73_combout\ = p(46) $ (((\PrefixNetwork|Gk[3][45]~182_combout\) # ((\c[46]~62_combout\) # (\c[46]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][45]~182_combout\,
	datab => p(46),
	datac => \c[46]~62_combout\,
	datad => \c[46]~60_combout\,
	combout => \S~73_combout\);

-- Location: IOIBUF_X34_Y0_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X12_Y11_N26
\p[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(47) = \A[47]~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => p(47));

-- Location: LCCOMB_X12_Y11_N2
\PrefixNetwork|Pk[2][46]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][46]~65_combout\ = (p(45) & (p(43) & (p(44) & p(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(45),
	datab => p(43),
	datac => p(44),
	datad => p(46),
	combout => \PrefixNetwork|Pk[2][46]~65_combout\);

-- Location: LCCOMB_X17_Y11_N20
\PrefixNetwork|Gk[1][46]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][46]~183_combout\ = (\B[46]~input_o\ & ((\A[46]~input_o\) # ((\B[45]~input_o\ & \A[45]~input_o\)))) # (!\B[46]~input_o\ & (\B[45]~input_o\ & (\A[45]~input_o\ & \A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \PrefixNetwork|Gk[1][46]~183_combout\);

-- Location: LCCOMB_X12_Y11_N0
\PrefixNetwork|Gk[3][46]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][46]~184_combout\ = (!\PrefixNetwork|Gk[1][46]~183_combout\ & (((!\PrefixNetwork|Gk[1][44]~177_combout\) # (!p(46))) # (!p(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(45),
	datab => p(46),
	datac => \PrefixNetwork|Gk[1][44]~177_combout\,
	datad => \PrefixNetwork|Gk[1][46]~183_combout\,
	combout => \PrefixNetwork|Gk[3][46]~184_combout\);

-- Location: LCCOMB_X10_Y12_N18
\PrefixNetwork|Gk[3][46]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][46]~185_combout\ = ((\PrefixNetwork|Pk[2][46]~65_combout\ & !\PrefixNetwork|Gk[3][42]~171_combout\)) # (!\PrefixNetwork|Gk[3][46]~184_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][46]~65_combout\,
	datac => \PrefixNetwork|Gk[3][46]~184_combout\,
	datad => \PrefixNetwork|Gk[3][42]~171_combout\,
	combout => \PrefixNetwork|Gk[3][46]~185_combout\);

-- Location: LCCOMB_X10_Y12_N4
\PrefixNetwork|Gk~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~186_combout\ = (\PrefixNetwork|Pk[2][42]~57_combout\ & (\PrefixNetwork|Pk[2][46]~65_combout\ & \PrefixNetwork|Gk[3][38]~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][42]~57_combout\,
	datab => \PrefixNetwork|Pk[2][46]~65_combout\,
	datad => \PrefixNetwork|Gk[3][38]~156_combout\,
	combout => \PrefixNetwork|Gk~186_combout\);

-- Location: LCCOMB_X9_Y14_N14
\PrefixNetwork|Gk~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~187_combout\ = (\PrefixNetwork|Gk~124_combout\ & (((!\PrefixNetwork|Gk[3][18]~61_combout\ & \PrefixNetwork|Pk[2][22]~31_combout\)) # (!\PrefixNetwork|Gk[3][22]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][18]~61_combout\,
	datab => \PrefixNetwork|Gk[3][22]~82_combout\,
	datac => \PrefixNetwork|Gk~124_combout\,
	datad => \PrefixNetwork|Pk[2][22]~31_combout\,
	combout => \PrefixNetwork|Gk~187_combout\);

-- Location: LCCOMB_X10_Y12_N6
\PrefixNetwork|Pk[4][46]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][46]~66_combout\ = (\PrefixNetwork|Pk[2][46]~65_combout\ & (\PrefixNetwork|Pk[2][38]~87_combout\ & (\PrefixNetwork|Pk[2][34]~39_combout\ & \PrefixNetwork|Pk[2][42]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][46]~65_combout\,
	datab => \PrefixNetwork|Pk[2][38]~87_combout\,
	datac => \PrefixNetwork|Pk[2][34]~39_combout\,
	datad => \PrefixNetwork|Pk[2][42]~57_combout\,
	combout => \PrefixNetwork|Pk[4][46]~66_combout\);

-- Location: LCCOMB_X10_Y12_N14
\c[47]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[47]~64_combout\ = (\PrefixNetwork|Gk~186_combout\) # ((\PrefixNetwork|Pk[4][46]~66_combout\ & ((\PrefixNetwork|Gk[3][30]~123_combout\) # (\PrefixNetwork|Gk~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][30]~123_combout\,
	datab => \PrefixNetwork|Gk~186_combout\,
	datac => \PrefixNetwork|Gk~187_combout\,
	datad => \PrefixNetwork|Pk[4][46]~66_combout\,
	combout => \c[47]~64_combout\);

-- Location: LCCOMB_X10_Y12_N24
\c[47]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[47]~63_combout\ = (\PrefixNetwork|Pk[4][46]~66_combout\ & (\PrefixNetwork|Pk[4][30]~34_combout\ & \c[39]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][46]~66_combout\,
	datac => \PrefixNetwork|Pk[4][30]~34_combout\,
	datad => \c[39]~18_combout\,
	combout => \c[47]~63_combout\);

-- Location: LCCOMB_X10_Y12_N0
\S~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~74_combout\ = p(47) $ (((\PrefixNetwork|Gk[3][46]~185_combout\) # ((\c[47]~64_combout\) # (\c[47]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(47),
	datab => \PrefixNetwork|Gk[3][46]~185_combout\,
	datac => \c[47]~64_combout\,
	datad => \c[47]~63_combout\,
	combout => \S~74_combout\);

-- Location: LCCOMB_X12_Y11_N8
\PrefixNetwork|Pk[2][47]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][47]~67_combout\ = (p(47) & (p(45) & (p(44) & p(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(47),
	datab => p(45),
	datac => p(44),
	datad => p(46),
	combout => \PrefixNetwork|Pk[2][47]~67_combout\);

-- Location: LCCOMB_X12_Y13_N16
\PrefixNetwork|Gk~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~191_combout\ = (\PrefixNetwork|Gk[3][39]~161_combout\ & (\PrefixNetwork|Pk[2][47]~67_combout\ & \PrefixNetwork|Pk[2][43]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[3][39]~161_combout\,
	datac => \PrefixNetwork|Pk[2][47]~67_combout\,
	datad => \PrefixNetwork|Pk[2][43]~59_combout\,
	combout => \PrefixNetwork|Gk~191_combout\);

-- Location: LCCOMB_X12_Y13_N14
\PrefixNetwork|Pk[4][47]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][47]~68_combout\ = (\PrefixNetwork|Pk[2][43]~59_combout\ & (\PrefixNetwork|Pk[2][47]~67_combout\ & \PrefixNetwork|Pk[4][39]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][43]~59_combout\,
	datac => \PrefixNetwork|Pk[2][47]~67_combout\,
	datad => \PrefixNetwork|Pk[4][39]~51_combout\,
	combout => \PrefixNetwork|Pk[4][47]~68_combout\);

-- Location: LCCOMB_X12_Y13_N12
\c[48]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[48]~67_combout\ = (\PrefixNetwork|Gk~191_combout\) # ((\PrefixNetwork|Pk[4][47]~68_combout\ & ((\PrefixNetwork|Gk[3][31]~128_combout\) # (\PrefixNetwork|Gk~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][31]~128_combout\,
	datab => \PrefixNetwork|Gk~191_combout\,
	datac => \PrefixNetwork|Pk[4][47]~68_combout\,
	datad => \PrefixNetwork|Gk~129_combout\,
	combout => \c[48]~67_combout\);

-- Location: IOIBUF_X20_Y0_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X16_Y11_N24
\p[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(48) = \B[48]~input_o\ $ (\A[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => p(48));

-- Location: LCCOMB_X12_Y11_N14
\PrefixNetwork|Gk[1][47]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][47]~188_combout\ = (\A[47]~input_o\ & ((\B[47]~input_o\) # ((\A[46]~input_o\ & \B[46]~input_o\)))) # (!\A[47]~input_o\ & (\B[47]~input_o\ & (\A[46]~input_o\ & \B[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[46]~input_o\,
	datad => \B[46]~input_o\,
	combout => \PrefixNetwork|Gk[1][47]~188_combout\);

-- Location: LCCOMB_X12_Y11_N16
\PrefixNetwork|Gk[3][47]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][47]~189_combout\ = (!\PrefixNetwork|Gk[1][47]~188_combout\ & (((!p(46)) # (!\PrefixNetwork|Gk[1][45]~180_combout\)) # (!p(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(47),
	datab => \PrefixNetwork|Gk[1][47]~188_combout\,
	datac => \PrefixNetwork|Gk[1][45]~180_combout\,
	datad => p(46),
	combout => \PrefixNetwork|Gk[3][47]~189_combout\);

-- Location: LCCOMB_X12_Y12_N4
\PrefixNetwork|Gk[3][47]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][47]~190_combout\ = ((!\PrefixNetwork|Gk[3][43]~175_combout\ & \PrefixNetwork|Pk[2][47]~67_combout\)) # (!\PrefixNetwork|Gk[3][47]~189_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[3][43]~175_combout\,
	datac => \PrefixNetwork|Pk[2][47]~67_combout\,
	datad => \PrefixNetwork|Gk[3][47]~189_combout\,
	combout => \PrefixNetwork|Gk[3][47]~190_combout\);

-- Location: LCCOMB_X11_Y11_N28
\c[48]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[48]~65_combout\ = (\PrefixNetwork|Pk[2][43]~59_combout\ & (\PrefixNetwork|Pk[4][39]~51_combout\ & (\PrefixNetwork|Pk[2][47]~67_combout\ & \PrefixNetwork|Pk[4][31]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][43]~59_combout\,
	datab => \PrefixNetwork|Pk[4][39]~51_combout\,
	datac => \PrefixNetwork|Pk[2][47]~67_combout\,
	datad => \PrefixNetwork|Pk[4][31]~36_combout\,
	combout => \c[48]~65_combout\);

-- Location: LCCOMB_X12_Y13_N18
\c[48]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[48]~66_combout\ = (\c[48]~65_combout\ & \c[16]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c[48]~65_combout\,
	datad => \c[16]~20_combout\,
	combout => \c[48]~66_combout\);

-- Location: LCCOMB_X12_Y13_N2
\S~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~75_combout\ = p(48) $ (((\c[48]~67_combout\) # ((\PrefixNetwork|Gk[3][47]~190_combout\) # (\c[48]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[48]~67_combout\,
	datab => p(48),
	datac => \PrefixNetwork|Gk[3][47]~190_combout\,
	datad => \c[48]~66_combout\,
	combout => \S~75_combout\);

-- Location: LCCOMB_X12_Y11_N18
\PrefixNetwork|Pk[2][48]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][48]~69_combout\ = (p(45) & (p(47) & (p(48) & p(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(45),
	datab => p(47),
	datac => p(48),
	datad => p(46),
	combout => \PrefixNetwork|Pk[2][48]~69_combout\);

-- Location: LCCOMB_X7_Y13_N24
\c[49]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[49]~68_combout\ = (\PrefixNetwork|Gk~162_combout\ & (\PrefixNetwork|Gk~153_combout\ & (\PrefixNetwork|Pk[2][44]~61_combout\ & \PrefixNetwork|Pk[2][48]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~162_combout\,
	datab => \PrefixNetwork|Gk~153_combout\,
	datac => \PrefixNetwork|Pk[2][44]~61_combout\,
	datad => \PrefixNetwork|Pk[2][48]~69_combout\,
	combout => \c[49]~68_combout\);

-- Location: LCCOMB_X7_Y13_N30
\c[49]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[49]~69_combout\ = (\PrefixNetwork|Pk[2][36]~43_combout\ & (\PrefixNetwork|Pk[4][32]~37_combout\ & (\c[17]~21_combout\ & \c[49]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][36]~43_combout\,
	datab => \PrefixNetwork|Pk[4][32]~37_combout\,
	datac => \c[17]~21_combout\,
	datad => \c[49]~68_combout\,
	combout => \c[49]~69_combout\);

-- Location: IOIBUF_X52_Y0_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X16_Y11_N6
\p[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(49) = \A[49]~input_o\ $ (\B[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => p(49));

-- Location: LCCOMB_X11_Y12_N2
\PrefixNetwork|Gk~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~192_combout\ = (\PrefixNetwork|Gk~153_combout\ & (\PrefixNetwork|Gk~162_combout\ & \PrefixNetwork|Pk[2][44]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~153_combout\,
	datac => \PrefixNetwork|Gk~162_combout\,
	datad => \PrefixNetwork|Pk[2][44]~61_combout\,
	combout => \PrefixNetwork|Gk~192_combout\);

-- Location: LCCOMB_X8_Y10_N4
\c[49]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[49]~70_combout\ = (\PrefixNetwork|Pk[2][44]~61_combout\ & (((!\PrefixNetwork|Gk[3][36]~146_combout\ & \PrefixNetwork|Pk[2][40]~53_combout\)) # (!\PrefixNetwork|Gk[3][40]~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][36]~146_combout\,
	datab => \PrefixNetwork|Pk[2][40]~53_combout\,
	datac => \PrefixNetwork|Gk[3][40]~164_combout\,
	datad => \PrefixNetwork|Pk[2][44]~61_combout\,
	combout => \c[49]~70_combout\);

-- Location: LCCOMB_X7_Y13_N4
\c[49]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[49]~71_combout\ = (\PrefixNetwork|Pk[2][48]~69_combout\ & ((\c[49]~70_combout\) # ((\PrefixNetwork|Gk~165_combout\ & \PrefixNetwork|Gk~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][48]~69_combout\,
	datab => \PrefixNetwork|Gk~165_combout\,
	datac => \PrefixNetwork|Gk~192_combout\,
	datad => \c[49]~70_combout\,
	combout => \c[49]~71_combout\);

-- Location: LCCOMB_X17_Y11_N10
\PrefixNetwork|Gk[1][48]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][48]~193_combout\ = (\B[48]~input_o\ & ((\A[48]~input_o\) # ((\A[47]~input_o\ & \B[47]~input_o\)))) # (!\B[48]~input_o\ & (\A[47]~input_o\ & (\B[47]~input_o\ & \A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \B[48]~input_o\,
	datac => \B[47]~input_o\,
	datad => \A[48]~input_o\,
	combout => \PrefixNetwork|Gk[1][48]~193_combout\);

-- Location: LCCOMB_X17_Y11_N8
\PrefixNetwork|Gk[3][48]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][48]~194_combout\ = (!\PrefixNetwork|Gk[1][48]~193_combout\ & (((!\PrefixNetwork|Gk[1][46]~183_combout\) # (!p(47))) # (!p(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][48]~193_combout\,
	datab => p(48),
	datac => p(47),
	datad => \PrefixNetwork|Gk[1][46]~183_combout\,
	combout => \PrefixNetwork|Gk[3][48]~194_combout\);

-- Location: LCCOMB_X17_Y11_N26
\PrefixNetwork|Gk[3][48]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][48]~195_combout\ = ((\PrefixNetwork|Pk[2][48]~69_combout\ & !\PrefixNetwork|Gk[3][44]~178_combout\)) # (!\PrefixNetwork|Gk[3][48]~194_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][48]~69_combout\,
	datac => \PrefixNetwork|Gk[3][48]~194_combout\,
	datad => \PrefixNetwork|Gk[3][44]~178_combout\,
	combout => \PrefixNetwork|Gk[3][48]~195_combout\);

-- Location: LCCOMB_X7_Y13_N10
\c[49]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[49]~72_combout\ = (\PrefixNetwork|Gk[3][48]~195_combout\) # ((\PrefixNetwork|Gk~130_combout\ & (\PrefixNetwork|Pk[2][36]~43_combout\ & \c[49]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~130_combout\,
	datab => \PrefixNetwork|Pk[2][36]~43_combout\,
	datac => \PrefixNetwork|Gk[3][48]~195_combout\,
	datad => \c[49]~68_combout\,
	combout => \c[49]~72_combout\);

-- Location: LCCOMB_X7_Y13_N28
\S~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~76_combout\ = p(49) $ (((\c[49]~69_combout\) # ((\c[49]~71_combout\) # (\c[49]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[49]~69_combout\,
	datab => p(49),
	datac => \c[49]~71_combout\,
	datad => \c[49]~72_combout\,
	combout => \S~76_combout\);

-- Location: LCCOMB_X14_Y13_N12
\c[50]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[50]~73_combout\ = (\PrefixNetwork|Pk[2][45]~63_combout\ & (((\PrefixNetwork|Pk[2][41]~55_combout\ & !\PrefixNetwork|Gk[3][37]~151_combout\)) # (!\PrefixNetwork|Gk[3][41]~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][41]~55_combout\,
	datab => \PrefixNetwork|Gk[3][41]~168_combout\,
	datac => \PrefixNetwork|Pk[2][45]~63_combout\,
	datad => \PrefixNetwork|Gk[3][37]~151_combout\,
	combout => \c[50]~73_combout\);

-- Location: LCCOMB_X15_Y11_N8
\PrefixNetwork|Pk[2][49]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][49]~70_combout\ = (p(49) & (p(48) & (p(47) & p(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => p(48),
	datac => p(47),
	datad => p(46),
	combout => \PrefixNetwork|Pk[2][49]~70_combout\);

-- Location: IOIBUF_X43_Y0_N15
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X17_Y11_N16
\p[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(50) = \B[50]~input_o\ $ (\A[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => p(50));

-- Location: LCCOMB_X16_Y11_N12
\PrefixNetwork|Gk[1][49]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][49]~196_combout\ = (\A[49]~input_o\ & ((\B[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # (!\A[49]~input_o\ & (\B[49]~input_o\ & (\B[48]~input_o\ & \A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[49]~input_o\,
	datac => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => \PrefixNetwork|Gk[1][49]~196_combout\);

-- Location: LCCOMB_X16_Y11_N14
\PrefixNetwork|Gk[3][49]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][49]~197_combout\ = (!\PrefixNetwork|Gk[1][49]~196_combout\ & (((!p(49)) # (!\PrefixNetwork|Gk[1][47]~188_combout\)) # (!p(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][49]~196_combout\,
	datab => p(48),
	datac => \PrefixNetwork|Gk[1][47]~188_combout\,
	datad => p(49),
	combout => \PrefixNetwork|Gk[3][49]~197_combout\);

-- Location: LCCOMB_X15_Y11_N0
\PrefixNetwork|Gk[3][49]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][49]~198_combout\ = ((\PrefixNetwork|Pk[2][49]~70_combout\ & !\PrefixNetwork|Gk[3][45]~181_combout\)) # (!\PrefixNetwork|Gk[3][49]~197_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][49]~70_combout\,
	datac => \PrefixNetwork|Gk[3][49]~197_combout\,
	datad => \PrefixNetwork|Gk[3][45]~181_combout\,
	combout => \PrefixNetwork|Gk[3][49]~198_combout\);

-- Location: LCCOMB_X15_Y11_N10
\c[50]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[50]~74_combout\ = (\PrefixNetwork|Gk~158_combout\ & (\PrefixNetwork|Gk~166_combout\ & (\PrefixNetwork|Pk[2][49]~70_combout\ & \PrefixNetwork|Pk[2][45]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~158_combout\,
	datab => \PrefixNetwork|Gk~166_combout\,
	datac => \PrefixNetwork|Pk[2][49]~70_combout\,
	datad => \PrefixNetwork|Pk[2][45]~63_combout\,
	combout => \c[50]~74_combout\);

-- Location: LCCOMB_X14_Y13_N2
\S~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~77_combout\ = (\PrefixNetwork|Pk[2][37]~46_combout\ & ((\PrefixNetwork|Gk~135_combout\) # ((\PrefixNetwork|Pk[4][33]~38_combout\ & \c[18]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~135_combout\,
	datab => \PrefixNetwork|Pk[2][37]~46_combout\,
	datac => \PrefixNetwork|Pk[4][33]~38_combout\,
	datad => \c[18]~22_combout\,
	combout => \S~77_combout\);

-- Location: LCCOMB_X14_Y13_N0
\S~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~78_combout\ = (\PrefixNetwork|Gk[3][49]~198_combout\) # ((\c[50]~74_combout\ & ((\PrefixNetwork|Gk~169_combout\) # (\S~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][49]~198_combout\,
	datab => \PrefixNetwork|Gk~169_combout\,
	datac => \c[50]~74_combout\,
	datad => \S~77_combout\,
	combout => \S~78_combout\);

-- Location: LCCOMB_X14_Y13_N26
\S~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~79_combout\ = p(50) $ (((\S~78_combout\) # ((\c[50]~73_combout\ & \PrefixNetwork|Pk[2][49]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[50]~73_combout\,
	datab => \PrefixNetwork|Pk[2][49]~70_combout\,
	datac => p(50),
	datad => \S~78_combout\,
	combout => \S~79_combout\);

-- Location: LCCOMB_X16_Y11_N0
\PrefixNetwork|Pk[2][50]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][50]~71_combout\ = (p(49) & (p(48) & (p(47) & p(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => p(48),
	datac => p(47),
	datad => p(50),
	combout => \PrefixNetwork|Pk[2][50]~71_combout\);

-- Location: LCCOMB_X9_Y12_N4
\c[51]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[51]~75_combout\ = (\PrefixNetwork|Pk[2][38]~87_combout\ & (\PrefixNetwork|Pk[2][42]~57_combout\ & (\PrefixNetwork|Pk[2][50]~71_combout\ & \PrefixNetwork|Pk[2][46]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][38]~87_combout\,
	datab => \PrefixNetwork|Pk[2][42]~57_combout\,
	datac => \PrefixNetwork|Pk[2][50]~71_combout\,
	datad => \PrefixNetwork|Pk[2][46]~65_combout\,
	combout => \c[51]~75_combout\);

-- Location: IOIBUF_X38_Y0_N8
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X20_Y43_N29
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X16_Y11_N22
\p[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(51) = \A[51]~input_o\ $ (\B[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => p(51));

-- Location: LCCOMB_X8_Y12_N4
\S~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~81_combout\ = (\PrefixNetwork|Gk[3][34]~138_combout\) # ((\PrefixNetwork|Gk~139_combout\) # ((\PrefixNetwork|Pk[4][34]~40_combout\ & \c[19]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][34]~40_combout\,
	datab => \c[19]~23_combout\,
	datac => \PrefixNetwork|Gk[3][34]~138_combout\,
	datad => \PrefixNetwork|Gk~139_combout\,
	combout => \S~81_combout\);

-- Location: LCCOMB_X17_Y11_N2
\PrefixNetwork|Gk[1][50]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][50]~199_combout\ = (\B[50]~input_o\ & ((\A[50]~input_o\) # ((\A[49]~input_o\ & \B[49]~input_o\)))) # (!\B[50]~input_o\ & (\A[49]~input_o\ & (\B[49]~input_o\ & \A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[49]~input_o\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \PrefixNetwork|Gk[1][50]~199_combout\);

-- Location: LCCOMB_X17_Y11_N0
\PrefixNetwork|Gk[3][50]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][50]~200_combout\ = (!\PrefixNetwork|Gk[1][50]~199_combout\ & (((!p(49)) # (!p(50))) # (!\PrefixNetwork|Gk[1][48]~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][48]~193_combout\,
	datab => p(50),
	datac => p(49),
	datad => \PrefixNetwork|Gk[1][50]~199_combout\,
	combout => \PrefixNetwork|Gk[3][50]~200_combout\);

-- Location: LCCOMB_X9_Y12_N18
\PrefixNetwork|Gk[3][50]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][50]~201_combout\ = ((\PrefixNetwork|Pk[2][50]~71_combout\ & !\PrefixNetwork|Gk[3][46]~184_combout\)) # (!\PrefixNetwork|Gk[3][50]~200_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][50]~71_combout\,
	datac => \PrefixNetwork|Gk[3][50]~200_combout\,
	datad => \PrefixNetwork|Gk[3][46]~184_combout\,
	combout => \PrefixNetwork|Gk[3][50]~201_combout\);

-- Location: LCCOMB_X9_Y12_N24
\S~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~80_combout\ = (\PrefixNetwork|Gk[3][50]~201_combout\) # ((\PrefixNetwork|Pk[2][50]~71_combout\ & (\PrefixNetwork|Gk[3][42]~172_combout\ & \PrefixNetwork|Pk[2][46]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][50]~71_combout\,
	datab => \PrefixNetwork|Gk[3][42]~172_combout\,
	datac => \PrefixNetwork|Pk[2][46]~65_combout\,
	datad => \PrefixNetwork|Gk[3][50]~201_combout\,
	combout => \S~80_combout\);

-- Location: LCCOMB_X8_Y12_N26
\S~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~82_combout\ = p(51) $ (((\S~80_combout\) # ((\c[51]~75_combout\ & \S~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[51]~75_combout\,
	datab => p(51),
	datac => \S~81_combout\,
	datad => \S~80_combout\,
	combout => \S~82_combout\);

-- Location: IOIBUF_X50_Y0_N15
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X16_Y11_N8
\PrefixNetwork|Pk[2][51]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][51]~72_combout\ = (p(49) & (p(48) & (p(51) & p(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => p(48),
	datac => p(51),
	datad => p(50),
	combout => \PrefixNetwork|Pk[2][51]~72_combout\);

-- Location: LCCOMB_X11_Y12_N20
\c[52]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[52]~76_combout\ = (\PrefixNetwork|Gk~173_combout\ & (\PrefixNetwork|Pk[2][47]~67_combout\ & \PrefixNetwork|Pk[2][51]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~173_combout\,
	datac => \PrefixNetwork|Pk[2][47]~67_combout\,
	datad => \PrefixNetwork|Pk[2][51]~72_combout\,
	combout => \c[52]~76_combout\);

-- Location: LCCOMB_X12_Y10_N8
\c[52]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[52]~77_combout\ = (\c[20]~25_combout\ & (\PrefixNetwork|Pk[4][35]~42_combout\ & \c[52]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[20]~25_combout\,
	datac => \PrefixNetwork|Pk[4][35]~42_combout\,
	datad => \c[52]~76_combout\,
	combout => \c[52]~77_combout\);

-- Location: LCCOMB_X16_Y11_N26
\PrefixNetwork|Gk[1][51]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][51]~202_combout\ = (\A[51]~input_o\ & ((\B[51]~input_o\) # ((\B[50]~input_o\ & \A[50]~input_o\)))) # (!\A[51]~input_o\ & (\B[50]~input_o\ & (\A[50]~input_o\ & \B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[51]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[51]~input_o\,
	combout => \PrefixNetwork|Gk[1][51]~202_combout\);

-- Location: LCCOMB_X16_Y11_N4
\PrefixNetwork|Gk[3][51]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][51]~203_combout\ = (!\PrefixNetwork|Gk[1][51]~202_combout\ & (((!\PrefixNetwork|Gk[1][49]~196_combout\) # (!p(50))) # (!p(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(51),
	datab => p(50),
	datac => \PrefixNetwork|Gk[1][51]~202_combout\,
	datad => \PrefixNetwork|Gk[1][49]~196_combout\,
	combout => \PrefixNetwork|Gk[3][51]~203_combout\);

-- Location: LCCOMB_X16_Y11_N30
\PrefixNetwork|Gk[3][51]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][51]~204_combout\ = ((\PrefixNetwork|Pk[2][51]~72_combout\ & !\PrefixNetwork|Gk[3][47]~189_combout\)) # (!\PrefixNetwork|Gk[3][51]~203_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][51]~72_combout\,
	datac => \PrefixNetwork|Gk[3][51]~203_combout\,
	datad => \PrefixNetwork|Gk[3][47]~189_combout\,
	combout => \PrefixNetwork|Gk[3][51]~204_combout\);

-- Location: LCCOMB_X16_Y11_N16
\c[52]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[52]~78_combout\ = (\PrefixNetwork|Pk[2][51]~72_combout\ & \PrefixNetwork|Pk[2][47]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Pk[2][51]~72_combout\,
	datad => \PrefixNetwork|Pk[2][47]~67_combout\,
	combout => \c[52]~78_combout\);

-- Location: LCCOMB_X12_Y10_N6
\c[52]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[52]~79_combout\ = (\c[52]~78_combout\ & ((\PrefixNetwork|Gk[3][43]~176_combout\) # ((\PrefixNetwork|Gk~173_combout\ & \PrefixNetwork|Gk[3][35]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][43]~176_combout\,
	datab => \PrefixNetwork|Gk~173_combout\,
	datac => \PrefixNetwork|Gk[3][35]~143_combout\,
	datad => \c[52]~78_combout\,
	combout => \c[52]~79_combout\);

-- Location: LCCOMB_X12_Y10_N0
\c[52]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[52]~80_combout\ = (\PrefixNetwork|Gk[3][51]~204_combout\) # ((\c[52]~79_combout\) # ((\c[52]~76_combout\ & \PrefixNetwork|Gk~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][51]~204_combout\,
	datab => \c[52]~76_combout\,
	datac => \PrefixNetwork|Gk~144_combout\,
	datad => \c[52]~79_combout\,
	combout => \c[52]~80_combout\);

-- Location: LCCOMB_X12_Y10_N22
\S~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~83_combout\ = \B[52]~input_o\ $ (\A[52]~input_o\ $ (((\c[52]~77_combout\) # (\c[52]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \A[52]~input_o\,
	datac => \c[52]~77_combout\,
	datad => \c[52]~80_combout\,
	combout => \S~83_combout\);

-- Location: IOIBUF_X67_Y11_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X22_Y43_N29
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X18_Y11_N4
\p[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(53) = \B[53]~input_o\ $ (\A[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[53]~input_o\,
	datad => \A[53]~input_o\,
	combout => p(53));

-- Location: LCCOMB_X17_Y11_N18
\PrefixNetwork|Gk~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~205_combout\ = (\A[52]~input_o\ & (!\B[52]~input_o\ & (\A[51]~input_o\ $ (\B[51]~input_o\)))) # (!\A[52]~input_o\ & (\B[52]~input_o\ & (\A[51]~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \A[51]~input_o\,
	datac => \B[52]~input_o\,
	datad => \B[51]~input_o\,
	combout => \PrefixNetwork|Gk~205_combout\);

-- Location: LCCOMB_X17_Y11_N30
\PrefixNetwork|Pk[2][52]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][52]~88_combout\ = (p(50) & (\PrefixNetwork|Gk~205_combout\ & (\A[49]~input_o\ $ (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => p(50),
	datac => \B[49]~input_o\,
	datad => \PrefixNetwork|Gk~205_combout\,
	combout => \PrefixNetwork|Pk[2][52]~88_combout\);

-- Location: LCCOMB_X8_Y10_N22
\c[57]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~81_combout\ = (\PrefixNetwork|Pk[2][48]~69_combout\ & (\PrefixNetwork|Pk[2][40]~53_combout\ & (\PrefixNetwork|Pk[2][52]~88_combout\ & \PrefixNetwork|Pk[2][44]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][48]~69_combout\,
	datab => \PrefixNetwork|Pk[2][40]~53_combout\,
	datac => \PrefixNetwork|Pk[2][52]~88_combout\,
	datad => \PrefixNetwork|Pk[2][44]~61_combout\,
	combout => \c[57]~81_combout\);

-- Location: LCCOMB_X17_Y11_N28
\PrefixNetwork|Gk[1][52]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][52]~206_combout\ = (\A[52]~input_o\ & ((\B[52]~input_o\) # ((\A[51]~input_o\ & \B[51]~input_o\)))) # (!\A[52]~input_o\ & (\A[51]~input_o\ & (\B[52]~input_o\ & \B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \A[51]~input_o\,
	datac => \B[52]~input_o\,
	datad => \B[51]~input_o\,
	combout => \PrefixNetwork|Gk[1][52]~206_combout\);

-- Location: LCCOMB_X17_Y11_N14
\PrefixNetwork|Gk[3][52]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][52]~207_combout\ = (\PrefixNetwork|Gk[1][52]~206_combout\) # ((\PrefixNetwork|Gk[1][50]~199_combout\ & \PrefixNetwork|Gk~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk[1][52]~206_combout\,
	datac => \PrefixNetwork|Gk[1][50]~199_combout\,
	datad => \PrefixNetwork|Gk~205_combout\,
	combout => \PrefixNetwork|Gk[3][52]~207_combout\);

-- Location: LCCOMB_X8_Y11_N10
\PrefixNetwork|Gk[3][52]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][52]~208_combout\ = (\PrefixNetwork|Gk[3][52]~207_combout\) # ((\PrefixNetwork|Pk[2][52]~88_combout\ & !\PrefixNetwork|Gk[3][48]~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][52]~88_combout\,
	datac => \PrefixNetwork|Gk[3][52]~207_combout\,
	datad => \PrefixNetwork|Gk[3][48]~194_combout\,
	combout => \PrefixNetwork|Gk[3][52]~208_combout\);

-- Location: LCCOMB_X8_Y11_N4
\S~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~84_combout\ = (\PrefixNetwork|Gk[3][52]~208_combout\) # ((\PrefixNetwork|Pk[2][48]~69_combout\ & (\PrefixNetwork|Pk[2][52]~88_combout\ & \PrefixNetwork|Gk[3][44]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][52]~208_combout\,
	datab => \PrefixNetwork|Pk[2][48]~69_combout\,
	datac => \PrefixNetwork|Pk[2][52]~88_combout\,
	datad => \PrefixNetwork|Gk[3][44]~179_combout\,
	combout => \S~84_combout\);

-- Location: LCCOMB_X8_Y11_N18
\S~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~85_combout\ = (\PrefixNetwork|Gk~148_combout\) # ((\PrefixNetwork|Gk[3][36]~147_combout\) # ((\PrefixNetwork|Pk[4][36]~45_combout\ & \c[21]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~148_combout\,
	datab => \PrefixNetwork|Gk[3][36]~147_combout\,
	datac => \PrefixNetwork|Pk[4][36]~45_combout\,
	datad => \c[21]~28_combout\,
	combout => \S~85_combout\);

-- Location: LCCOMB_X8_Y11_N12
\S~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~86_combout\ = p(53) $ (((\S~84_combout\) # ((\c[57]~81_combout\ & \S~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => \c[57]~81_combout\,
	datac => \S~84_combout\,
	datad => \S~85_combout\,
	combout => \S~86_combout\);

-- Location: IOIBUF_X22_Y43_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X41_Y0_N29
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X18_Y11_N30
\PrefixNetwork|Gk[1][53]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][53]~209_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\A[52]~input_o\ & \B[52]~input_o\)))) # (!\B[53]~input_o\ & (\A[52]~input_o\ & (\B[52]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[53]~input_o\,
	datac => \B[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \PrefixNetwork|Gk[1][53]~209_combout\);

-- Location: LCCOMB_X16_Y11_N28
\PrefixNetwork|Pk[2][53]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][53]~89_combout\ = (p(53) & (\PrefixNetwork|Gk~205_combout\ & (\B[50]~input_o\ $ (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[50]~input_o\,
	datac => p(53),
	datad => \PrefixNetwork|Gk~205_combout\,
	combout => \PrefixNetwork|Pk[2][53]~89_combout\);

-- Location: LCCOMB_X16_Y11_N18
\PrefixNetwork|Gk~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~210_combout\ = (p(53) & (\PrefixNetwork|Gk[1][51]~202_combout\ & (\B[52]~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => p(53),
	datac => \PrefixNetwork|Gk[1][51]~202_combout\,
	datad => \A[52]~input_o\,
	combout => \PrefixNetwork|Gk~210_combout\);

-- Location: LCCOMB_X16_Y11_N20
\PrefixNetwork|Gk[3][53]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][53]~211_combout\ = (\PrefixNetwork|Gk[1][53]~209_combout\) # ((\PrefixNetwork|Gk~210_combout\) # ((\PrefixNetwork|Pk[2][53]~89_combout\ & !\PrefixNetwork|Gk[3][49]~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][53]~209_combout\,
	datab => \PrefixNetwork|Pk[2][53]~89_combout\,
	datac => \PrefixNetwork|Gk[3][49]~197_combout\,
	datad => \PrefixNetwork|Gk~210_combout\,
	combout => \PrefixNetwork|Gk[3][53]~211_combout\);

-- Location: LCCOMB_X15_Y13_N14
\c[58]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~83_combout\ = (\PrefixNetwork|Pk[2][45]~63_combout\ & (\PrefixNetwork|Pk[2][49]~70_combout\ & (\PrefixNetwork|Pk[2][41]~55_combout\ & \PrefixNetwork|Pk[2][53]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][45]~63_combout\,
	datab => \PrefixNetwork|Pk[2][49]~70_combout\,
	datac => \PrefixNetwork|Pk[2][41]~55_combout\,
	datad => \PrefixNetwork|Pk[2][53]~89_combout\,
	combout => \c[58]~83_combout\);

-- Location: LCCOMB_X15_Y13_N0
\c[54]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[54]~82_combout\ = (\PrefixNetwork|Pk[2][53]~89_combout\ & (\PrefixNetwork|Pk[2][49]~70_combout\ & \PrefixNetwork|Gk[3][45]~182_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][53]~89_combout\,
	datac => \PrefixNetwork|Pk[2][49]~70_combout\,
	datad => \PrefixNetwork|Gk[3][45]~182_combout\,
	combout => \c[54]~82_combout\);

-- Location: LCCOMB_X15_Y13_N12
\c[54]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[54]~84_combout\ = (\c[54]~82_combout\) # ((\c[58]~83_combout\ & ((\PrefixNetwork|Gk[3][37]~152_combout\) # (\PrefixNetwork|Gk~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][37]~152_combout\,
	datab => \c[58]~83_combout\,
	datac => \PrefixNetwork|Gk~149_combout\,
	datad => \c[54]~82_combout\,
	combout => \c[54]~84_combout\);

-- Location: LCCOMB_X15_Y13_N18
\c[54]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[54]~85_combout\ = (\c[54]~84_combout\) # ((\PrefixNetwork|Pk[4][37]~48_combout\ & (\c[22]~31_combout\ & \c[58]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][37]~48_combout\,
	datab => \c[22]~31_combout\,
	datac => \c[58]~83_combout\,
	datad => \c[54]~84_combout\,
	combout => \c[54]~85_combout\);

-- Location: LCCOMB_X15_Y13_N8
\S~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~87_combout\ = \B[54]~input_o\ $ (\A[54]~input_o\ $ (((\PrefixNetwork|Gk[3][53]~211_combout\) # (\c[54]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \A[54]~input_o\,
	datac => \PrefixNetwork|Gk[3][53]~211_combout\,
	datad => \c[54]~85_combout\,
	combout => \S~87_combout\);

-- Location: IOIBUF_X67_Y11_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X20_Y43_N1
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X14_Y11_N18
\PrefixNetwork|Pk[2][54]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][54]~73_combout\ = (\PrefixNetwork|Gk~205_combout\ & (p(53) & (\A[54]~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datac => \PrefixNetwork|Gk~205_combout\,
	datad => p(53),
	combout => \PrefixNetwork|Pk[2][54]~73_combout\);

-- Location: LCCOMB_X18_Y11_N16
\PrefixNetwork|Gk[1][54]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][54]~212_combout\ = (\A[54]~input_o\ & ((\B[54]~input_o\) # ((\B[53]~input_o\ & \A[53]~input_o\)))) # (!\A[54]~input_o\ & (\B[54]~input_o\ & (\B[53]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datac => \B[53]~input_o\,
	datad => \A[53]~input_o\,
	combout => \PrefixNetwork|Gk[1][54]~212_combout\);

-- Location: LCCOMB_X18_Y11_N14
\PrefixNetwork|Gk~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~213_combout\ = (\A[54]~input_o\ & (!\B[54]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\)))) # (!\A[54]~input_o\ & (\B[54]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[53]~input_o\,
	datac => \B[54]~input_o\,
	datad => \A[53]~input_o\,
	combout => \PrefixNetwork|Gk~213_combout\);

-- Location: LCCOMB_X14_Y11_N4
\PrefixNetwork|Gk~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~214_combout\ = (\PrefixNetwork|Gk~213_combout\ & \PrefixNetwork|Gk[1][52]~206_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk~213_combout\,
	datad => \PrefixNetwork|Gk[1][52]~206_combout\,
	combout => \PrefixNetwork|Gk~214_combout\);

-- Location: LCCOMB_X14_Y11_N8
\PrefixNetwork|Gk[3][54]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][54]~215_combout\ = (\PrefixNetwork|Gk[1][54]~212_combout\) # ((\PrefixNetwork|Gk~214_combout\) # ((!\PrefixNetwork|Gk[3][50]~200_combout\ & \PrefixNetwork|Pk[2][54]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][54]~212_combout\,
	datab => \PrefixNetwork|Gk[3][50]~200_combout\,
	datac => \PrefixNetwork|Gk~214_combout\,
	datad => \PrefixNetwork|Pk[2][54]~73_combout\,
	combout => \PrefixNetwork|Gk[3][54]~215_combout\);

-- Location: LCCOMB_X10_Y15_N14
\c[55]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[55]~86_combout\ = (\PrefixNetwork|Gk[3][54]~215_combout\) # ((\PrefixNetwork|Pk[2][50]~71_combout\ & (\PrefixNetwork|Pk[2][54]~73_combout\ & \PrefixNetwork|Gk[3][46]~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][50]~71_combout\,
	datab => \PrefixNetwork|Pk[2][54]~73_combout\,
	datac => \PrefixNetwork|Gk[3][54]~215_combout\,
	datad => \PrefixNetwork|Gk[3][46]~185_combout\,
	combout => \c[55]~86_combout\);

-- Location: LCCOMB_X10_Y15_N12
\c[55]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[55]~87_combout\ = (\PrefixNetwork|Pk[2][50]~71_combout\ & (\PrefixNetwork|Pk[2][46]~65_combout\ & (\PrefixNetwork|Pk[2][42]~57_combout\ & \PrefixNetwork|Pk[2][54]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][50]~71_combout\,
	datab => \PrefixNetwork|Pk[2][46]~65_combout\,
	datac => \PrefixNetwork|Pk[2][42]~57_combout\,
	datad => \PrefixNetwork|Pk[2][54]~73_combout\,
	combout => \c[55]~87_combout\);

-- Location: LCCOMB_X10_Y15_N26
\c[55]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[55]~90_combout\ = (\PrefixNetwork|Gk[3][30]~123_combout\ & (\PrefixNetwork|Pk[2][54]~73_combout\ & (\PrefixNetwork|Pk[2][34]~39_combout\ & \c[51]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][30]~123_combout\,
	datab => \PrefixNetwork|Pk[2][54]~73_combout\,
	datac => \PrefixNetwork|Pk[2][34]~39_combout\,
	datad => \c[51]~75_combout\,
	combout => \c[55]~90_combout\);

-- Location: LCCOMB_X10_Y15_N30
\c[55]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[55]~88_combout\ = (\PrefixNetwork|Gk[3][22]~83_combout\) # ((\PrefixNetwork|Gk~84_combout\ & \PrefixNetwork|Gk[3][14]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~84_combout\,
	datac => \PrefixNetwork|Gk[3][22]~83_combout\,
	datad => \PrefixNetwork|Gk[3][14]~43_combout\,
	combout => \c[55]~88_combout\);

-- Location: LCCOMB_X10_Y15_N0
\c[55]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[55]~89_combout\ = (\c[55]~87_combout\ & (\PrefixNetwork|Pk[4][38]~50_combout\ & ((\c[55]~88_combout\) # (\c[23]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[55]~87_combout\,
	datab => \PrefixNetwork|Pk[4][38]~50_combout\,
	datac => \c[55]~88_combout\,
	datad => \c[23]~32_combout\,
	combout => \c[55]~89_combout\);

-- Location: LCCOMB_X10_Y15_N28
\c[55]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[55]~91_combout\ = (\c[55]~90_combout\) # ((\c[55]~89_combout\) # ((\c[55]~87_combout\ & \PrefixNetwork|Gk[3][38]~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[55]~87_combout\,
	datab => \PrefixNetwork|Gk[3][38]~156_combout\,
	datac => \c[55]~90_combout\,
	datad => \c[55]~89_combout\,
	combout => \c[55]~91_combout\);

-- Location: LCCOMB_X9_Y15_N0
\S~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~88_combout\ = \A[55]~input_o\ $ (\B[55]~input_o\ $ (((\c[55]~86_combout\) # (\c[55]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B[55]~input_o\,
	datac => \c[55]~86_combout\,
	datad => \c[55]~91_combout\,
	combout => \S~88_combout\);

-- Location: IOIBUF_X38_Y0_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X18_Y11_N18
\PrefixNetwork|Gk~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~217_combout\ = (\A[54]~input_o\ & (!\B[54]~input_o\ & (\B[55]~input_o\ $ (\A[55]~input_o\)))) # (!\A[54]~input_o\ & (\B[54]~input_o\ & (\B[55]~input_o\ $ (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[54]~input_o\,
	datac => \B[55]~input_o\,
	datad => \A[55]~input_o\,
	combout => \PrefixNetwork|Gk~217_combout\);

-- Location: LCCOMB_X18_Y11_N6
\PrefixNetwork|Pk[2][55]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][55]~74_combout\ = (p(53) & (\PrefixNetwork|Gk~217_combout\ & (\A[52]~input_o\ $ (\B[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => p(53),
	datad => \PrefixNetwork|Gk~217_combout\,
	combout => \PrefixNetwork|Pk[2][55]~74_combout\);

-- Location: LCCOMB_X18_Y11_N24
\PrefixNetwork|Gk[1][55]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][55]~216_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\) # ((\A[54]~input_o\ & \B[54]~input_o\)))) # (!\A[55]~input_o\ & (\A[54]~input_o\ & (\B[54]~input_o\ & \B[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \A[55]~input_o\,
	datac => \B[54]~input_o\,
	datad => \B[55]~input_o\,
	combout => \PrefixNetwork|Gk[1][55]~216_combout\);

-- Location: LCCOMB_X18_Y11_N28
\PrefixNetwork|Gk~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~218_combout\ = (\PrefixNetwork|Gk[1][53]~209_combout\ & \PrefixNetwork|Gk~217_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PrefixNetwork|Gk[1][53]~209_combout\,
	datad => \PrefixNetwork|Gk~217_combout\,
	combout => \PrefixNetwork|Gk~218_combout\);

-- Location: LCCOMB_X15_Y11_N18
\PrefixNetwork|Gk[3][55]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[3][55]~219_combout\ = (\PrefixNetwork|Gk[1][55]~216_combout\) # ((\PrefixNetwork|Gk~218_combout\) # ((\PrefixNetwork|Pk[2][55]~74_combout\ & !\PrefixNetwork|Gk[3][51]~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][55]~74_combout\,
	datab => \PrefixNetwork|Gk[1][55]~216_combout\,
	datac => \PrefixNetwork|Gk~218_combout\,
	datad => \PrefixNetwork|Gk[3][51]~203_combout\,
	combout => \PrefixNetwork|Gk[3][55]~219_combout\);

-- Location: LCCOMB_X12_Y14_N16
\c[56]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[56]~93_combout\ = (\PrefixNetwork|Pk[2][47]~67_combout\ & ((\PrefixNetwork|Gk[3][39]~161_combout\) # ((\PrefixNetwork|Pk[4][39]~52_combout\ & \c[24]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][47]~67_combout\,
	datab => \PrefixNetwork|Gk[3][39]~161_combout\,
	datac => \PrefixNetwork|Pk[4][39]~52_combout\,
	datad => \c[24]~36_combout\,
	combout => \c[56]~93_combout\);

-- Location: LCCOMB_X12_Y14_N30
\c[56]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[56]~94_combout\ = (\PrefixNetwork|Pk[2][51]~72_combout\ & ((\PrefixNetwork|Gk[3][47]~190_combout\) # ((\PrefixNetwork|Pk[2][43]~59_combout\ & \c[56]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][51]~72_combout\,
	datab => \PrefixNetwork|Gk[3][47]~190_combout\,
	datac => \PrefixNetwork|Pk[2][43]~59_combout\,
	datad => \c[56]~93_combout\,
	combout => \c[56]~94_combout\);

-- Location: LCCOMB_X11_Y12_N30
\c[56]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[56]~92_combout\ = (\PrefixNetwork|Pk[2][55]~74_combout\ & (\PrefixNetwork|Pk[2][35]~41_combout\ & (\PrefixNetwork|Gk[3][31]~128_combout\ & \c[52]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][55]~74_combout\,
	datab => \PrefixNetwork|Pk[2][35]~41_combout\,
	datac => \PrefixNetwork|Gk[3][31]~128_combout\,
	datad => \c[52]~76_combout\,
	combout => \c[56]~92_combout\);

-- Location: LCCOMB_X12_Y14_N28
\c[56]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[56]~95_combout\ = (\PrefixNetwork|Gk[3][55]~219_combout\) # ((\c[56]~92_combout\) # ((\PrefixNetwork|Pk[2][55]~74_combout\ & \c[56]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][55]~74_combout\,
	datab => \PrefixNetwork|Gk[3][55]~219_combout\,
	datac => \c[56]~94_combout\,
	datad => \c[56]~92_combout\,
	combout => \c[56]~95_combout\);

-- Location: LCCOMB_X12_Y14_N10
\S~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~102_combout\ = \B[56]~input_o\ $ (\A[56]~input_o\ $ (\c[56]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[56]~input_o\,
	datac => \A[56]~input_o\,
	datad => \c[56]~95_combout\,
	combout => \S~102_combout\);

-- Location: IOIBUF_X50_Y0_N22
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X14_Y11_N2
\p[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(56) = \A[56]~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	combout => p(56));

-- Location: LCCOMB_X17_Y11_N22
\PrefixNetwork|Pk[2][56]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][56]~75_combout\ = (\PrefixNetwork|Gk~213_combout\ & (p(56) & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B[55]~input_o\,
	datac => \PrefixNetwork|Gk~213_combout\,
	datad => p(56),
	combout => \PrefixNetwork|Pk[2][56]~75_combout\);

-- Location: LCCOMB_X8_Y11_N30
\c[57]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~99_combout\ = (\PrefixNetwork|Pk[2][48]~69_combout\ & (\PrefixNetwork|Pk[2][52]~88_combout\ & \PrefixNetwork|Pk[2][56]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][48]~69_combout\,
	datac => \PrefixNetwork|Pk[2][52]~88_combout\,
	datad => \PrefixNetwork|Pk[2][56]~75_combout\,
	combout => \c[57]~99_combout\);

-- Location: LCCOMB_X8_Y10_N30
\c[57]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~101_combout\ = (\PrefixNetwork|Pk[2][56]~75_combout\ & (\c[57]~81_combout\ & \PrefixNetwork|Gk~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][56]~75_combout\,
	datac => \c[57]~81_combout\,
	datad => \PrefixNetwork|Gk~165_combout\,
	combout => \c[57]~101_combout\);

-- Location: LCCOMB_X8_Y10_N20
\c[57]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~100_combout\ = (\PrefixNetwork|Pk[4][40]~54_combout\ & (\PrefixNetwork|Pk[2][44]~61_combout\ & (\c[57]~99_combout\ & \c[25]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][40]~54_combout\,
	datab => \PrefixNetwork|Pk[2][44]~61_combout\,
	datac => \c[57]~99_combout\,
	datad => \c[25]~38_combout\,
	combout => \c[57]~100_combout\);

-- Location: LCCOMB_X8_Y10_N12
\c[57]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~102_combout\ = (\c[57]~101_combout\) # ((\c[57]~100_combout\) # ((\c[57]~99_combout\ & \c[49]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[57]~99_combout\,
	datab => \c[49]~70_combout\,
	datac => \c[57]~101_combout\,
	datad => \c[57]~100_combout\,
	combout => \c[57]~102_combout\);

-- Location: LCCOMB_X18_Y11_N12
\PrefixNetwork|Gk~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~221_combout\ = (p(56) & (\PrefixNetwork|Gk[1][54]~212_combout\ & (\B[55]~input_o\ $ (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \A[55]~input_o\,
	datac => p(56),
	datad => \PrefixNetwork|Gk[1][54]~212_combout\,
	combout => \PrefixNetwork|Gk~221_combout\);

-- Location: LCCOMB_X17_Y11_N12
\PrefixNetwork|Gk[1][56]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][56]~220_combout\ = (\A[56]~input_o\ & ((\B[56]~input_o\) # ((\A[55]~input_o\ & \B[55]~input_o\)))) # (!\A[56]~input_o\ & (\A[55]~input_o\ & (\B[56]~input_o\ & \B[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \B[55]~input_o\,
	combout => \PrefixNetwork|Gk[1][56]~220_combout\);

-- Location: LCCOMB_X17_Y11_N4
\c[57]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~96_combout\ = (\PrefixNetwork|Gk~221_combout\) # ((\PrefixNetwork|Gk[1][56]~220_combout\) # ((\PrefixNetwork|Pk[2][56]~75_combout\ & \PrefixNetwork|Gk[1][52]~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][56]~75_combout\,
	datab => \PrefixNetwork|Gk[1][52]~206_combout\,
	datac => \PrefixNetwork|Gk~221_combout\,
	datad => \PrefixNetwork|Gk[1][56]~220_combout\,
	combout => \c[57]~96_combout\);

-- Location: LCCOMB_X17_Y11_N6
\c[57]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~97_combout\ = (\c[57]~96_combout\) # ((\PrefixNetwork|Pk[2][56]~75_combout\ & (\PrefixNetwork|Gk[1][50]~199_combout\ & \PrefixNetwork|Gk~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][56]~75_combout\,
	datab => \PrefixNetwork|Gk[1][50]~199_combout\,
	datac => \c[57]~96_combout\,
	datad => \PrefixNetwork|Gk~205_combout\,
	combout => \c[57]~97_combout\);

-- Location: LCCOMB_X17_Y11_N24
\c[57]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[57]~98_combout\ = (\c[57]~97_combout\) # ((\PrefixNetwork|Pk[2][52]~88_combout\ & (\PrefixNetwork|Gk[3][48]~195_combout\ & \PrefixNetwork|Pk[2][56]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][52]~88_combout\,
	datab => \PrefixNetwork|Gk[3][48]~195_combout\,
	datac => \PrefixNetwork|Pk[2][56]~75_combout\,
	datad => \c[57]~97_combout\,
	combout => \c[57]~98_combout\);

-- Location: LCCOMB_X1_Y10_N16
\S~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~89_combout\ = \B[57]~input_o\ $ (\A[57]~input_o\ $ (((\c[57]~102_combout\) # (\c[57]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \A[57]~input_o\,
	datac => \c[57]~102_combout\,
	datad => \c[57]~98_combout\,
	combout => \S~89_combout\);

-- Location: IOIBUF_X22_Y0_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X15_Y11_N20
\PrefixNetwork|Pk[2][59]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][59]~76_combout\ = (\A[57]~input_o\ & (!\B[57]~input_o\ & (\A[56]~input_o\ $ (\B[56]~input_o\)))) # (!\A[57]~input_o\ & (\B[57]~input_o\ & (\A[56]~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \B[57]~input_o\,
	combout => \PrefixNetwork|Pk[2][59]~76_combout\);

-- Location: LCCOMB_X15_Y11_N2
\c[58]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~104_combout\ = (\PrefixNetwork|Gk~217_combout\ & (\PrefixNetwork|Pk[2][59]~76_combout\ & (\PrefixNetwork|Pk[2][49]~70_combout\ & \PrefixNetwork|Pk[2][53]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~217_combout\,
	datab => \PrefixNetwork|Pk[2][59]~76_combout\,
	datac => \PrefixNetwork|Pk[2][49]~70_combout\,
	datad => \PrefixNetwork|Pk[2][53]~89_combout\,
	combout => \c[58]~104_combout\);

-- Location: LCCOMB_X14_Y13_N14
\c[58]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~106_combout\ = (\PrefixNetwork|Pk[2][59]~76_combout\ & (\PrefixNetwork|Gk~217_combout\ & (\c[58]~83_combout\ & \PrefixNetwork|Gk~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][59]~76_combout\,
	datab => \PrefixNetwork|Gk~217_combout\,
	datac => \c[58]~83_combout\,
	datad => \PrefixNetwork|Gk~169_combout\,
	combout => \c[58]~106_combout\);

-- Location: LCCOMB_X14_Y13_N16
\c[58]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~105_combout\ = (\PrefixNetwork|Pk[2][45]~63_combout\ & (\c[58]~104_combout\ & (\c[26]~40_combout\ & \PrefixNetwork|Pk[4][41]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][45]~63_combout\,
	datab => \c[58]~104_combout\,
	datac => \c[26]~40_combout\,
	datad => \PrefixNetwork|Pk[4][41]~56_combout\,
	combout => \c[58]~105_combout\);

-- Location: LCCOMB_X14_Y13_N8
\c[58]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~107_combout\ = (\c[58]~106_combout\) # ((\c[58]~105_combout\) # ((\c[50]~73_combout\ & \c[58]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[50]~73_combout\,
	datab => \c[58]~104_combout\,
	datac => \c[58]~106_combout\,
	datad => \c[58]~105_combout\,
	combout => \c[58]~107_combout\);

-- Location: LCCOMB_X15_Y11_N12
\c[58]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~148_combout\ = (\PrefixNetwork|Gk[1][55]~216_combout\) # ((\PrefixNetwork|Gk~217_combout\ & (\PrefixNetwork|Pk[2][53]~89_combout\ & \PrefixNetwork|Gk[3][49]~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~217_combout\,
	datab => \PrefixNetwork|Pk[2][53]~89_combout\,
	datac => \PrefixNetwork|Gk[1][55]~216_combout\,
	datad => \PrefixNetwork|Gk[3][49]~198_combout\,
	combout => \c[58]~148_combout\);

-- Location: LCCOMB_X16_Y11_N10
\c[58]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~103_combout\ = (\PrefixNetwork|Gk~217_combout\ & ((\PrefixNetwork|Gk[1][53]~209_combout\) # (\PrefixNetwork|Gk~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][53]~209_combout\,
	datac => \PrefixNetwork|Gk~217_combout\,
	datad => \PrefixNetwork|Gk~210_combout\,
	combout => \c[58]~103_combout\);

-- Location: LCCOMB_X22_Y11_N28
\PrefixNetwork|Gk[1][57]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][57]~222_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\A[57]~input_o\ & (\A[56]~input_o\ & (\B[57]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \A[57]~input_o\,
	datac => \B[57]~input_o\,
	datad => \B[56]~input_o\,
	combout => \PrefixNetwork|Gk[1][57]~222_combout\);

-- Location: LCCOMB_X15_Y11_N26
\c[58]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[58]~149_combout\ = (\PrefixNetwork|Gk[1][57]~222_combout\) # ((\PrefixNetwork|Pk[2][59]~76_combout\ & ((\c[58]~148_combout\) # (\c[58]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[58]~148_combout\,
	datab => \PrefixNetwork|Pk[2][59]~76_combout\,
	datac => \c[58]~103_combout\,
	datad => \PrefixNetwork|Gk[1][57]~222_combout\,
	combout => \c[58]~149_combout\);

-- Location: LCCOMB_X14_Y13_N18
\S~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~90_combout\ = \B[58]~input_o\ $ (\A[58]~input_o\ $ (((\c[58]~107_combout\) # (\c[58]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \A[58]~input_o\,
	datac => \c[58]~107_combout\,
	datad => \c[58]~149_combout\,
	combout => \S~90_combout\);

-- Location: IOIBUF_X67_Y11_N22
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X25_Y43_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X14_Y11_N6
\PrefixNetwork|Pk[1][58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[1][58]~combout\ = (\B[58]~input_o\ & (!\A[58]~input_o\ & (\A[57]~input_o\ $ (\B[57]~input_o\)))) # (!\B[58]~input_o\ & (\A[58]~input_o\ & (\A[57]~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \A[58]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \PrefixNetwork|Pk[1][58]~combout\);

-- Location: LCCOMB_X14_Y11_N24
\PrefixNetwork|Pk[2][58]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][58]~77_combout\ = (p(56) & (\PrefixNetwork|Pk[1][58]~combout\ & (\B[55]~input_o\ $ (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => p(56),
	datac => \A[55]~input_o\,
	datad => \PrefixNetwork|Pk[1][58]~combout\,
	combout => \PrefixNetwork|Pk[2][58]~77_combout\);

-- Location: LCCOMB_X14_Y11_N0
\c[59]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[59]~112_combout\ = (\PrefixNetwork|Pk[2][46]~65_combout\ & (\PrefixNetwork|Pk[2][58]~77_combout\ & (\PrefixNetwork|Pk[2][50]~71_combout\ & \PrefixNetwork|Pk[2][54]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][46]~65_combout\,
	datab => \PrefixNetwork|Pk[2][58]~77_combout\,
	datac => \PrefixNetwork|Pk[2][50]~71_combout\,
	datad => \PrefixNetwork|Pk[2][54]~73_combout\,
	combout => \c[59]~112_combout\);

-- Location: LCCOMB_X14_Y11_N10
\c[59]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[59]~108_combout\ = (\PrefixNetwork|Pk[1][58]~combout\ & ((\PrefixNetwork|Gk[1][56]~220_combout\) # ((\PrefixNetwork|Pk[2][58]~77_combout\ & \PrefixNetwork|Gk[1][54]~212_combout\)))) # (!\PrefixNetwork|Pk[1][58]~combout\ & 
-- (\PrefixNetwork|Pk[2][58]~77_combout\ & (\PrefixNetwork|Gk[1][54]~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][58]~combout\,
	datab => \PrefixNetwork|Pk[2][58]~77_combout\,
	datac => \PrefixNetwork|Gk[1][54]~212_combout\,
	datad => \PrefixNetwork|Gk[1][56]~220_combout\,
	combout => \c[59]~108_combout\);

-- Location: LCCOMB_X14_Y11_N16
\PrefixNetwork|Gk[1][58]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][58]~223_combout\ = (\B[58]~input_o\ & ((\A[58]~input_o\) # ((\B[57]~input_o\ & \A[57]~input_o\)))) # (!\B[58]~input_o\ & (\B[57]~input_o\ & (\A[57]~input_o\ & \A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \A[57]~input_o\,
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \PrefixNetwork|Gk[1][58]~223_combout\);

-- Location: LCCOMB_X14_Y11_N12
\c[59]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[59]~109_combout\ = (\c[59]~108_combout\) # ((\PrefixNetwork|Gk[1][58]~223_combout\) # ((\PrefixNetwork|Gk~214_combout\ & \PrefixNetwork|Pk[2][58]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[59]~108_combout\,
	datab => \PrefixNetwork|Gk[1][58]~223_combout\,
	datac => \PrefixNetwork|Gk~214_combout\,
	datad => \PrefixNetwork|Pk[2][58]~77_combout\,
	combout => \c[59]~109_combout\);

-- Location: LCCOMB_X14_Y11_N30
\c[59]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[59]~110_combout\ = (\PrefixNetwork|Gk~213_combout\ & (\PrefixNetwork|Gk~205_combout\ & \PrefixNetwork|Pk[2][58]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~213_combout\,
	datac => \PrefixNetwork|Gk~205_combout\,
	datad => \PrefixNetwork|Pk[2][58]~77_combout\,
	combout => \c[59]~110_combout\);

-- Location: LCCOMB_X9_Y12_N30
\c[59]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[59]~111_combout\ = (\c[59]~110_combout\ & ((\PrefixNetwork|Gk[3][50]~201_combout\) # ((\PrefixNetwork|Gk[3][34]~138_combout\ & \c[51]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[59]~110_combout\,
	datab => \PrefixNetwork|Gk[3][34]~138_combout\,
	datac => \c[51]~75_combout\,
	datad => \PrefixNetwork|Gk[3][50]~201_combout\,
	combout => \c[59]~111_combout\);

-- Location: LCCOMB_X9_Y12_N20
\c[59]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[59]~113_combout\ = (\c[59]~111_combout\) # ((\PrefixNetwork|Pk[4][42]~58_combout\ & (\c[59]~112_combout\ & \c[27]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][42]~58_combout\,
	datab => \c[59]~112_combout\,
	datac => \c[59]~111_combout\,
	datad => \c[27]~43_combout\,
	combout => \c[59]~113_combout\);

-- Location: LCCOMB_X9_Y12_N10
\c[59]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[59]~114_combout\ = (\c[59]~109_combout\) # ((\c[59]~113_combout\) # ((\c[59]~112_combout\ & \PrefixNetwork|Gk[3][42]~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[59]~112_combout\,
	datab => \PrefixNetwork|Gk[3][42]~172_combout\,
	datac => \c[59]~109_combout\,
	datad => \c[59]~113_combout\,
	combout => \c[59]~114_combout\);

-- Location: LCCOMB_X9_Y12_N8
\S~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~91_combout\ = \A[59]~input_o\ $ (\B[59]~input_o\ $ (\c[59]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	datad => \c[59]~114_combout\,
	combout => \S~91_combout\);

-- Location: IOIBUF_X48_Y0_N22
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X45_Y0_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X22_Y11_N0
\PrefixNetwork|Pk[1][59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[1][59]~combout\ = (\A[58]~input_o\ & (!\B[58]~input_o\ & (\B[59]~input_o\ $ (\A[59]~input_o\)))) # (!\A[58]~input_o\ & (\B[58]~input_o\ & (\B[59]~input_o\ $ (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	datad => \B[58]~input_o\,
	combout => \PrefixNetwork|Pk[1][59]~combout\);

-- Location: LCCOMB_X11_Y10_N6
\PrefixNetwork|Pk[2][59]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[2][59]~78_combout\ = (p(56) & (\PrefixNetwork|Pk[1][59]~combout\ & (\B[57]~input_o\ $ (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \A[57]~input_o\,
	datac => p(56),
	datad => \PrefixNetwork|Pk[1][59]~combout\,
	combout => \PrefixNetwork|Pk[2][59]~78_combout\);

-- Location: LCCOMB_X22_Y11_N30
\PrefixNetwork|Gk[1][59]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][59]~224_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & (\A[58]~input_o\ & \B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \PrefixNetwork|Gk[1][59]~224_combout\);

-- Location: LCCOMB_X11_Y10_N28
\c[60]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[60]~115_combout\ = (\PrefixNetwork|Pk[1][59]~combout\ & ((\PrefixNetwork|Gk[1][57]~222_combout\) # ((\PrefixNetwork|Gk[1][55]~216_combout\ & \PrefixNetwork|Pk[2][59]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][55]~216_combout\,
	datab => \PrefixNetwork|Pk[2][59]~76_combout\,
	datac => \PrefixNetwork|Gk[1][57]~222_combout\,
	datad => \PrefixNetwork|Pk[1][59]~combout\,
	combout => \c[60]~115_combout\);

-- Location: LCCOMB_X11_Y10_N0
\c[60]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[60]~116_combout\ = (\PrefixNetwork|Gk[1][59]~224_combout\) # ((\c[60]~115_combout\) # ((\PrefixNetwork|Pk[2][59]~78_combout\ & \PrefixNetwork|Gk~218_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][59]~78_combout\,
	datab => \PrefixNetwork|Gk[1][59]~224_combout\,
	datac => \PrefixNetwork|Gk~218_combout\,
	datad => \c[60]~115_combout\,
	combout => \c[60]~116_combout\);

-- Location: LCCOMB_X11_Y10_N4
\c[60]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[60]~119_combout\ = (\PrefixNetwork|Pk[2][55]~74_combout\ & (\PrefixNetwork|Pk[2][47]~67_combout\ & (\PrefixNetwork|Pk[2][51]~72_combout\ & \PrefixNetwork|Pk[2][59]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][55]~74_combout\,
	datab => \PrefixNetwork|Pk[2][47]~67_combout\,
	datac => \PrefixNetwork|Pk[2][51]~72_combout\,
	datad => \PrefixNetwork|Pk[2][59]~78_combout\,
	combout => \c[60]~119_combout\);

-- Location: LCCOMB_X15_Y11_N4
\c[60]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[60]~117_combout\ = (\PrefixNetwork|Pk[2][59]~76_combout\ & (\PrefixNetwork|Pk[1][59]~combout\ & \PrefixNetwork|Pk[2][55]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[2][59]~76_combout\,
	datac => \PrefixNetwork|Pk[1][59]~combout\,
	datad => \PrefixNetwork|Pk[2][55]~74_combout\,
	combout => \c[60]~117_combout\);

-- Location: LCCOMB_X11_Y10_N10
\c[60]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[60]~118_combout\ = (\c[60]~117_combout\ & ((\PrefixNetwork|Gk[3][51]~204_combout\) # ((\c[52]~76_combout\ & \PrefixNetwork|Gk[3][35]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[60]~117_combout\,
	datab => \PrefixNetwork|Gk[3][51]~204_combout\,
	datac => \c[52]~76_combout\,
	datad => \PrefixNetwork|Gk[3][35]~143_combout\,
	combout => \c[60]~118_combout\);

-- Location: LCCOMB_X11_Y10_N2
\c[60]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[60]~120_combout\ = (\c[60]~118_combout\) # ((\PrefixNetwork|Pk[4][43]~60_combout\ & (\c[60]~119_combout\ & \c[28]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][43]~60_combout\,
	datab => \c[60]~119_combout\,
	datac => \c[28]~46_combout\,
	datad => \c[60]~118_combout\,
	combout => \c[60]~120_combout\);

-- Location: LCCOMB_X11_Y10_N16
\c[60]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[60]~121_combout\ = (\c[60]~116_combout\) # ((\c[60]~120_combout\) # ((\PrefixNetwork|Gk[3][43]~176_combout\ & \c[60]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[60]~116_combout\,
	datab => \PrefixNetwork|Gk[3][43]~176_combout\,
	datac => \c[60]~119_combout\,
	datad => \c[60]~120_combout\,
	combout => \c[60]~121_combout\);

-- Location: LCCOMB_X11_Y10_N22
\S~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~92_combout\ = \B[60]~input_o\ $ (\A[60]~input_o\ $ (\c[60]~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \A[60]~input_o\,
	datad => \c[60]~121_combout\,
	combout => \S~92_combout\);

-- Location: LCCOMB_X22_Y11_N6
\PrefixNetwork|Pk[1][60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[1][60]~combout\ = (\A[59]~input_o\ & (!\B[59]~input_o\ & (\A[60]~input_o\ $ (\B[60]~input_o\)))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & (\A[60]~input_o\ $ (\B[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \A[60]~input_o\,
	datac => \B[59]~input_o\,
	datad => \B[60]~input_o\,
	combout => \PrefixNetwork|Pk[1][60]~combout\);

-- Location: LCCOMB_X8_Y11_N20
\c[61]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[61]~128_combout\ = (\PrefixNetwork|Pk[1][60]~combout\ & (\PrefixNetwork|Pk[1][58]~combout\ & \PrefixNetwork|Pk[2][56]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][60]~combout\,
	datac => \PrefixNetwork|Pk[1][58]~combout\,
	datad => \PrefixNetwork|Pk[2][56]~75_combout\,
	combout => \c[61]~128_combout\);

-- Location: LCCOMB_X7_Y11_N12
\c[61]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[61]~129_combout\ = (\c[61]~128_combout\ & ((\PrefixNetwork|Gk[3][52]~208_combout\) # ((\PrefixNetwork|Gk[3][36]~147_combout\ & \c[57]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[61]~128_combout\,
	datab => \PrefixNetwork|Gk[3][52]~208_combout\,
	datac => \PrefixNetwork|Gk[3][36]~147_combout\,
	datad => \c[57]~81_combout\,
	combout => \c[61]~129_combout\);

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

-- Location: IOIBUF_X48_Y0_N29
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X22_Y11_N26
\p[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(61) = \B[61]~input_o\ $ (\A[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => p(61));

-- Location: LCCOMB_X7_Y11_N4
\c[61]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[61]~126_combout\ = (\PrefixNetwork|Pk[1][58]~combout\ & (\c[57]~99_combout\ & \PrefixNetwork|Pk[1][60]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][58]~combout\,
	datac => \c[57]~99_combout\,
	datad => \PrefixNetwork|Pk[1][60]~combout\,
	combout => \c[61]~126_combout\);

-- Location: LCCOMB_X7_Y11_N26
\c[61]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[61]~127_combout\ = (\PrefixNetwork|Pk[4][44]~62_combout\ & (\c[61]~126_combout\ & \c[29]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[4][44]~62_combout\,
	datac => \c[61]~126_combout\,
	datad => \c[29]~48_combout\,
	combout => \c[61]~127_combout\);

-- Location: LCCOMB_X14_Y11_N22
\c[61]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[61]~122_combout\ = ((!\PrefixNetwork|Gk[1][58]~223_combout\ & ((!\PrefixNetwork|Gk[1][56]~220_combout\) # (!\PrefixNetwork|Pk[1][58]~combout\)))) # (!\PrefixNetwork|Pk[1][60]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][58]~combout\,
	datab => \PrefixNetwork|Gk[1][56]~220_combout\,
	datac => \PrefixNetwork|Pk[1][60]~combout\,
	datad => \PrefixNetwork|Gk[1][58]~223_combout\,
	combout => \c[61]~122_combout\);

-- Location: LCCOMB_X22_Y11_N16
\PrefixNetwork|Gk[1][60]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][60]~225_combout\ = (\A[60]~input_o\ & ((\B[60]~input_o\) # ((\A[59]~input_o\ & \B[59]~input_o\)))) # (!\A[60]~input_o\ & (\A[59]~input_o\ & (\B[59]~input_o\ & \B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \A[60]~input_o\,
	datac => \B[59]~input_o\,
	datad => \B[60]~input_o\,
	combout => \PrefixNetwork|Gk[1][60]~225_combout\);

-- Location: LCCOMB_X14_Y11_N20
\c[61]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[61]~123_combout\ = (\c[61]~122_combout\ & !\PrefixNetwork|Gk[1][60]~225_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c[61]~122_combout\,
	datad => \PrefixNetwork|Gk[1][60]~225_combout\,
	combout => \c[61]~123_combout\);

-- Location: LCCOMB_X7_Y11_N16
\c[61]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[61]~124_combout\ = (\PrefixNetwork|Gk~221_combout\) # ((\c[57]~99_combout\ & \PrefixNetwork|Gk[3][44]~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~221_combout\,
	datac => \c[57]~99_combout\,
	datad => \PrefixNetwork|Gk[3][44]~179_combout\,
	combout => \c[61]~124_combout\);

-- Location: LCCOMB_X7_Y11_N2
\c[61]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[61]~125_combout\ = ((\PrefixNetwork|Pk[1][58]~combout\ & (\PrefixNetwork|Pk[1][60]~combout\ & \c[61]~124_combout\))) # (!\c[61]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][58]~combout\,
	datab => \c[61]~123_combout\,
	datac => \PrefixNetwork|Pk[1][60]~combout\,
	datad => \c[61]~124_combout\,
	combout => \c[61]~125_combout\);

-- Location: LCCOMB_X7_Y11_N18
\S~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~93_combout\ = p(61) $ (((\c[61]~129_combout\) # ((\c[61]~127_combout\) # (\c[61]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[61]~129_combout\,
	datab => p(61),
	datac => \c[61]~127_combout\,
	datad => \c[61]~125_combout\,
	combout => \S~93_combout\);

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

-- Location: IOIBUF_X67_Y13_N15
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X22_Y11_N12
\PrefixNetwork|Pk[1][61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[1][61]~combout\ = (\A[61]~input_o\ & (!\B[61]~input_o\ & (\A[60]~input_o\ $ (\B[60]~input_o\)))) # (!\A[61]~input_o\ & (\B[61]~input_o\ & (\A[60]~input_o\ $ (\B[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \A[60]~input_o\,
	datac => \B[61]~input_o\,
	datad => \B[60]~input_o\,
	combout => \PrefixNetwork|Pk[1][61]~combout\);

-- Location: LCCOMB_X22_Y11_N22
\c[62]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~130_combout\ = ((!\PrefixNetwork|Gk[1][59]~224_combout\ & ((!\PrefixNetwork|Gk[1][57]~222_combout\) # (!\PrefixNetwork|Pk[1][59]~combout\)))) # (!\PrefixNetwork|Pk[1][61]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][61]~combout\,
	datab => \PrefixNetwork|Pk[1][59]~combout\,
	datac => \PrefixNetwork|Gk[1][59]~224_combout\,
	datad => \PrefixNetwork|Gk[1][57]~222_combout\,
	combout => \c[62]~130_combout\);

-- Location: LCCOMB_X22_Y11_N20
\PrefixNetwork|Gk[1][61]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][61]~226_combout\ = (\B[61]~input_o\ & ((\A[61]~input_o\) # ((\B[60]~input_o\ & \A[60]~input_o\)))) # (!\B[61]~input_o\ & (\B[60]~input_o\ & (\A[61]~input_o\ & \A[60]~input_o\)))

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
	combout => \PrefixNetwork|Gk[1][61]~226_combout\);

-- Location: LCCOMB_X22_Y11_N14
\c[62]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~131_combout\ = (\c[62]~130_combout\ & !\PrefixNetwork|Gk[1][61]~226_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c[62]~130_combout\,
	datad => \PrefixNetwork|Gk[1][61]~226_combout\,
	combout => \c[62]~131_combout\);

-- Location: LCCOMB_X15_Y11_N6
\c[62]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~132_combout\ = (\PrefixNetwork|Gk[3][45]~182_combout\ & ((\c[58]~104_combout\) # ((\PrefixNetwork|Pk[2][59]~76_combout\ & \PrefixNetwork|Gk[1][55]~216_combout\)))) # (!\PrefixNetwork|Gk[3][45]~182_combout\ & (\PrefixNetwork|Pk[2][59]~76_combout\ & 
-- (\PrefixNetwork|Gk[1][55]~216_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][45]~182_combout\,
	datab => \PrefixNetwork|Pk[2][59]~76_combout\,
	datac => \PrefixNetwork|Gk[1][55]~216_combout\,
	datad => \c[58]~104_combout\,
	combout => \c[62]~132_combout\);

-- Location: LCCOMB_X15_Y11_N16
\c[62]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~133_combout\ = ((\PrefixNetwork|Pk[1][61]~combout\ & (\PrefixNetwork|Pk[1][59]~combout\ & \c[62]~132_combout\))) # (!\c[62]~131_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][61]~combout\,
	datab => \c[62]~131_combout\,
	datac => \PrefixNetwork|Pk[1][59]~combout\,
	datad => \c[62]~132_combout\,
	combout => \c[62]~133_combout\);

-- Location: LCCOMB_X16_Y13_N22
\c[62]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~136_combout\ = (\PrefixNetwork|Pk[1][59]~combout\ & (\PrefixNetwork|Pk[1][61]~combout\ & \c[58]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Pk[1][59]~combout\,
	datac => \PrefixNetwork|Pk[1][61]~combout\,
	datad => \c[58]~104_combout\,
	combout => \c[62]~136_combout\);

-- Location: LCCOMB_X16_Y13_N30
\c[62]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~134_combout\ = (\PrefixNetwork|Gk~217_combout\ & (\PrefixNetwork|Pk[1][61]~combout\ & (\PrefixNetwork|Pk[2][59]~76_combout\ & \PrefixNetwork|Pk[1][59]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~217_combout\,
	datab => \PrefixNetwork|Pk[1][61]~combout\,
	datac => \PrefixNetwork|Pk[2][59]~76_combout\,
	datad => \PrefixNetwork|Pk[1][59]~combout\,
	combout => \c[62]~134_combout\);

-- Location: LCCOMB_X16_Y13_N16
\c[62]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~135_combout\ = (\c[62]~134_combout\ & ((\PrefixNetwork|Gk[3][53]~211_combout\) # ((\PrefixNetwork|Gk[3][37]~152_combout\ & \c[58]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[62]~134_combout\,
	datab => \PrefixNetwork|Gk[3][37]~152_combout\,
	datac => \PrefixNetwork|Gk[3][53]~211_combout\,
	datad => \c[58]~83_combout\,
	combout => \c[62]~135_combout\);

-- Location: LCCOMB_X16_Y13_N28
\c[62]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[62]~137_combout\ = (\c[62]~135_combout\) # ((\PrefixNetwork|Pk[4][45]~64_combout\ & (\c[30]~50_combout\ & \c[62]~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][45]~64_combout\,
	datab => \c[30]~50_combout\,
	datac => \c[62]~136_combout\,
	datad => \c[62]~135_combout\,
	combout => \c[62]~137_combout\);

-- Location: LCCOMB_X16_Y13_N10
\S~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~94_combout\ = \A[62]~input_o\ $ (\B[62]~input_o\ $ (((\c[62]~133_combout\) # (\c[62]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[62]~input_o\,
	datac => \c[62]~133_combout\,
	datad => \c[62]~137_combout\,
	combout => \S~94_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X14_Y11_N14
\c[63]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[63]~140_combout\ = ((\PrefixNetwork|Pk[1][60]~combout\ & (\PrefixNetwork|Pk[2][58]~77_combout\ & \PrefixNetwork|Gk[3][54]~215_combout\))) # (!\c[61]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][60]~combout\,
	datab => \PrefixNetwork|Pk[2][58]~77_combout\,
	datac => \PrefixNetwork|Gk[3][54]~215_combout\,
	datad => \c[61]~123_combout\,
	combout => \c[63]~140_combout\);

-- Location: LCCOMB_X22_Y11_N18
\PrefixNetwork|Pk[4][62]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][62]~79_combout\ = (\A[61]~input_o\ & (!\B[61]~input_o\ & (\A[62]~input_o\ $ (\B[62]~input_o\)))) # (!\A[61]~input_o\ & (\B[61]~input_o\ & (\A[62]~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[61]~input_o\,
	datad => \B[62]~input_o\,
	combout => \PrefixNetwork|Pk[4][62]~79_combout\);

-- Location: LCCOMB_X14_Y11_N26
\PrefixNetwork|Pk[4][62]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][62]~80_combout\ = (\PrefixNetwork|Pk[1][60]~combout\ & (\PrefixNetwork|Pk[4][62]~79_combout\ & (\PrefixNetwork|Pk[2][50]~71_combout\ & \c[59]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][60]~combout\,
	datab => \PrefixNetwork|Pk[4][62]~79_combout\,
	datac => \PrefixNetwork|Pk[2][50]~71_combout\,
	datad => \c[59]~110_combout\,
	combout => \PrefixNetwork|Pk[4][62]~80_combout\);

-- Location: LCCOMB_X10_Y12_N30
\c[63]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[63]~139_combout\ = (\PrefixNetwork|Pk[4][62]~80_combout\ & ((\PrefixNetwork|Gk~186_combout\) # (\PrefixNetwork|Gk[3][46]~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PrefixNetwork|Gk~186_combout\,
	datac => \PrefixNetwork|Pk[4][62]~80_combout\,
	datad => \PrefixNetwork|Gk[3][46]~185_combout\,
	combout => \c[63]~139_combout\);

-- Location: LCCOMB_X22_Y11_N24
\PrefixNetwork|Gk[1][62]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][62]~227_combout\ = (\B[62]~input_o\ & ((\A[62]~input_o\) # ((\A[61]~input_o\ & \B[61]~input_o\)))) # (!\B[62]~input_o\ & (\A[61]~input_o\ & (\B[61]~input_o\ & \A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[62]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[62]~input_o\,
	combout => \PrefixNetwork|Gk[1][62]~227_combout\);

-- Location: LCCOMB_X14_Y11_N28
\PrefixNetwork|Gk~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk~228_combout\ = (\PrefixNetwork|Pk[2][46]~65_combout\ & (\PrefixNetwork|Pk[2][42]~57_combout\ & (\PrefixNetwork|Pk[4][62]~80_combout\ & \PrefixNetwork|Pk[4][38]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][46]~65_combout\,
	datab => \PrefixNetwork|Pk[2][42]~57_combout\,
	datac => \PrefixNetwork|Pk[4][62]~80_combout\,
	datad => \PrefixNetwork|Pk[4][38]~49_combout\,
	combout => \PrefixNetwork|Gk~228_combout\);

-- Location: LCCOMB_X10_Y11_N28
\c[63]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[63]~138_combout\ = (\PrefixNetwork|Gk[1][62]~227_combout\) # ((\PrefixNetwork|Gk~228_combout\ & ((\c~51_combout\) # (\PrefixNetwork|Gpre[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[1][62]~227_combout\,
	datab => \c~51_combout\,
	datac => \PrefixNetwork|Gpre[30]~6_combout\,
	datad => \PrefixNetwork|Gk~228_combout\,
	combout => \c[63]~138_combout\);

-- Location: LCCOMB_X10_Y11_N26
\c[63]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[63]~141_combout\ = (\c[63]~139_combout\) # ((\c[63]~138_combout\) # ((\c[63]~140_combout\ & \PrefixNetwork|Pk[4][62]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[63]~140_combout\,
	datab => \PrefixNetwork|Pk[4][62]~79_combout\,
	datac => \c[63]~139_combout\,
	datad => \c[63]~138_combout\,
	combout => \c[63]~141_combout\);

-- Location: LCCOMB_X9_Y11_N0
\S~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~95_combout\ = \A[63]~input_o\ $ (\B[63]~input_o\ $ (\c[63]~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \c[63]~141_combout\,
	combout => \S~95_combout\);

-- Location: LCCOMB_X18_Y11_N22
\PrefixNetwork|Pk[4][63]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][63]~81_combout\ = (\B[62]~input_o\ & (!\A[62]~input_o\ & (\A[63]~input_o\ $ (\B[63]~input_o\)))) # (!\B[62]~input_o\ & (\A[62]~input_o\ & (\A[63]~input_o\ $ (\B[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[62]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => \PrefixNetwork|Pk[4][63]~81_combout\);

-- Location: LCCOMB_X15_Y11_N22
\PrefixNetwork|Pk[4][63]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Pk[4][63]~82_combout\ = (\PrefixNetwork|Pk[1][61]~combout\ & (\PrefixNetwork|Pk[2][51]~72_combout\ & (\c[60]~117_combout\ & \PrefixNetwork|Pk[4][63]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][61]~combout\,
	datab => \PrefixNetwork|Pk[2][51]~72_combout\,
	datac => \c[60]~117_combout\,
	datad => \PrefixNetwork|Pk[4][63]~81_combout\,
	combout => \PrefixNetwork|Pk[4][63]~82_combout\);

-- Location: LCCOMB_X18_Y11_N8
\PrefixNetwork|Gk[1][63]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \PrefixNetwork|Gk[1][63]~229_combout\ = (\A[63]~input_o\ & ((\B[63]~input_o\) # ((\B[62]~input_o\ & \A[62]~input_o\)))) # (!\A[63]~input_o\ & (\B[62]~input_o\ & (\A[62]~input_o\ & \B[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[62]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => \PrefixNetwork|Gk[1][63]~229_combout\);

-- Location: LCCOMB_X15_Y11_N28
\c~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~144_combout\ = (\PrefixNetwork|Pk[1][61]~combout\ & (\PrefixNetwork|Pk[2][59]~76_combout\ & (\PrefixNetwork|Pk[1][59]~combout\ & \PrefixNetwork|Gk[3][55]~219_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[1][61]~combout\,
	datab => \PrefixNetwork|Pk[2][59]~76_combout\,
	datac => \PrefixNetwork|Pk[1][59]~combout\,
	datad => \PrefixNetwork|Gk[3][55]~219_combout\,
	combout => \c~144_combout\);

-- Location: LCCOMB_X15_Y11_N14
\c~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~145_combout\ = (\PrefixNetwork|Gk[1][63]~229_combout\) # ((\PrefixNetwork|Pk[4][63]~81_combout\ & ((\c~144_combout\) # (!\c[62]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][63]~81_combout\,
	datab => \c[62]~131_combout\,
	datac => \PrefixNetwork|Gk[1][63]~229_combout\,
	datad => \c~144_combout\,
	combout => \c~145_combout\);

-- Location: LCCOMB_X11_Y11_N26
\c~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~142_combout\ = (\PrefixNetwork|Pk[4][63]~82_combout\ & ((\PrefixNetwork|Gk[3][47]~190_combout\) # ((\c~52_combout\ & \c[48]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk[3][47]~190_combout\,
	datab => \c~52_combout\,
	datac => \PrefixNetwork|Pk[4][63]~82_combout\,
	datad => \c[48]~65_combout\,
	combout => \c~142_combout\);

-- Location: LCCOMB_X11_Y11_N20
\c~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~143_combout\ = (\c~142_combout\) # ((\PrefixNetwork|Pk[4][63]~82_combout\ & (\PrefixNetwork|Gpre\(31) & \PrefixNetwork|Pk[4][47]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[4][63]~82_combout\,
	datab => \PrefixNetwork|Gpre\(31),
	datac => \c~142_combout\,
	datad => \PrefixNetwork|Pk[4][47]~68_combout\,
	combout => \c~143_combout\);

-- Location: LCCOMB_X11_Y11_N22
\c~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~146_combout\ = (\c~145_combout\) # ((\c~143_combout\) # ((\PrefixNetwork|Gk~191_combout\ & \PrefixNetwork|Pk[4][63]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Gk~191_combout\,
	datab => \PrefixNetwork|Pk[4][63]~82_combout\,
	datac => \c~145_combout\,
	datad => \c~143_combout\,
	combout => \c~146_combout\);

-- Location: LCCOMB_X11_Y11_N8
\Ovfl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~4_combout\ = (\PrefixNetwork|Pk[2][43]~59_combout\ & (\PrefixNetwork|Pk[2][47]~67_combout\ & (\PrefixNetwork|Pk[4][63]~82_combout\ & \PrefixNetwork|Gk[3][39]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PrefixNetwork|Pk[2][43]~59_combout\,
	datab => \PrefixNetwork|Pk[2][47]~67_combout\,
	datac => \PrefixNetwork|Pk[4][63]~82_combout\,
	datad => \PrefixNetwork|Gk[3][39]~161_combout\,
	combout => \Ovfl~4_combout\);

-- Location: LCCOMB_X11_Y11_N12
\Ovfl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~2_combout\ = (!\c[63]~139_combout\ & (!\c[63]~138_combout\ & ((!\PrefixNetwork|Pk[4][62]~79_combout\) # (!\c[63]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[63]~140_combout\,
	datab => \PrefixNetwork|Pk[4][62]~79_combout\,
	datac => \c[63]~139_combout\,
	datad => \c[63]~138_combout\,
	combout => \Ovfl~2_combout\);

-- Location: LCCOMB_X11_Y11_N30
\Ovfl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~3_combout\ = \Ovfl~2_combout\ $ (((!\c~145_combout\ & (!\c~143_combout\ & !\Ovfl~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~145_combout\,
	datab => \c~143_combout\,
	datac => \Ovfl~4_combout\,
	datad => \Ovfl~2_combout\,
	combout => \Ovfl~3_combout\);

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


